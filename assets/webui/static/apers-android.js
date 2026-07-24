(function () {
  'use strict';

  var LEGACY_TARGET_KEY = 'apers-chat-target-v1';
  var ROUTES_KEY = 'apers-computer-routes-v1';
  var THREAD_PREFIX = 'apers-computer-thread-v1:';
  var PENDING_KEY = 'apers-computer-pending-v1';
  var BINDINGS_KEY = 'apers-computer-bindings-v1';
  var DESKTOP_CATALOG_KEY = 'apers-desktop-catalog-v1';
  var PHONE_ORDER_KEY = 'apers-phone-session-order-v1';
  var PROJECT_ORDER_KEY = 'apers-phone-project-order-v1';
  var DESKTOP_PROJECT_ORDER_KEY = 'apers-desktop-project-order-v1';
  var PHONE_PROJECT_COLLAPSED_KEY = 'apers-phone-project-collapsed-v1';
  var DESKTOP_PROJECT_COLLAPSED_KEY = 'apers-desktop-project-collapsed-v1';
  var RESULT_PREFIX = '__APERS_CHAT_RESULT_V1__:';
  var PROGRESS_PREFIX = '__APERS_PROGRESS_V1__\n';
  var CONTROL_LIST_ID = '__desktop_sessions__';
  var CONTROL_BIND_ID = '__desktop_bind__';
  var CONTROL_NEW_ID = '__desktop_new__';
  var CONTROL_PORT_ID = '__desktop_port__';
  var CONTROL_RENAME_ID = '__desktop_rename__';
  var CONTROL_ARCHIVE_ID = '__desktop_archive__';
  var CONTROL_CANCEL_ID = '__desktop_cancel__';
  var CONTROL_LIST_PROMPT = '__APERS_LIST_DESKTOP_SESSIONS_V1__';
  var CONTROL_BIND_PROMPT = '__APERS_BIND_DESKTOP_SESSION_V1__';
  var CONTROL_NEW_PROMPT = '__APERS_NEW_DESKTOP_SESSION_V1__';
  var CONTROL_PORT_PROMPT = '__APERS_PORT_PHONE_SESSION_V1__';
  var CONTROL_RENAME_PROMPT = '__APERS_RENAME_DESKTOP_SESSION_V1__';
  var CONTROL_ARCHIVE_PROMPT = '__APERS_ARCHIVE_DESKTOP_SESSION_V1__';
  var CONTROL_CANCEL_PROMPT = '__APERS_CANCEL_TASK_V1__';
  var linked = false;
  var online = false;
  var connectionChecked = false;
  var lastActiveSessionId = null;
  var lastDesktopSync = 0;
  var pending = readJson(PENDING_KEY, {});
  // Control requests (bind/list/new/port/rename/archive) are in-flight companion
  // round-trips; they are meaningless across a restart because the companion
  // exchange that would resolve them is already gone. A persisted control entry
  // — especially a bind — otherwise keeps hasPendingControl() true forever and
  // silently blocks every Desktop selection. Drop them at load; keep only real
  // task-result entries (no .kind) awaiting delivery.
  (function purgePersistedControlRequests() {
    var changed = false;
    Object.keys(pending).forEach(function (id) {
      if (pending[id] && pending[id].kind) { delete pending[id]; changed = true; }
    });
    if (changed) {
      try { localStorage.setItem(PENDING_KEY, JSON.stringify(pending)); } catch (_) {}
    }
  })();
  var bindings = readJson(BINDINGS_KEY, {});
  var routes = readJson(ROUTES_KEY, {});
  var dispatching = {};
  var controlRequests = {};
  // A control request that is accepted by the native bridge but never answered
  // by the companion (PC asleep, companion crash, dropped inbox envelope) must
  // not leave the Desktop UI stuck forever. Both stages get a wall-clock deadline
  // enforced by the existing poll loop: controlRequests before native dispatch
  // confirms, pending[...] entries with a .kind afterward. 45s > the 30s phone
  // API timeout, so a genuinely slow /api/session/new is not cut off early.
  var CONTROL_TIMEOUT_MS = 45000;
  // Guards the window between a Desktop-session tap and shell/bind resolution so
  // repeated taps cannot mint parallel shells or duplicate bind requests, and
  // lets a retry reuse the shell a prior attempt already created.
  var preparingDesktopId = '';
  var desktopRetry = null;
  var cachedDesktopSessions = readJson(DESKTOP_CATALOG_KEY, []);
  var desktopSessions = Array.isArray(cachedDesktopSessions)
    ? cachedDesktopSessions : [];
  var sidebarMode = 'phone';
  var sidebarState = '';
  var sidebarStateIsError = false;
  var nativeSessionRenderer = null;
  var suppressSessionClickUntil = 0;
  var pickerOpen = false;
  var pickerHistory = false;
  var pendingBusyAction = null;
  var busyPickerBuilt = false;

  function bridge() {
    var candidate = window.ApersAndroid;
    if (!candidate || typeof candidate.openOriginalApp !== 'function') return null;
    return candidate;
  }

  function readJson(key, fallback) {
    try {
      var parsed = JSON.parse(localStorage.getItem(key) || '');
      return parsed && typeof parsed === 'object' ? parsed : fallback;
    } catch (_) {
      return fallback;
    }
  }

  function writeJson(key, value) {
    try {
      localStorage.setItem(key, JSON.stringify(value));
    } catch (_) {
      // A full localStorage should not make chat unusable.
    }
  }

  function activeSessionId() {
    return typeof S !== 'undefined' && S.session && S.session.session_id
      ? String(S.session.session_id)
      : '';
  }

  function conversationId(sessionId) {
    var source = sessionId || 'main';
    return ('webui-' + source).replace(/[^A-Za-z0-9._:-]/g, '_').slice(0, 160);
  }

  function threadKey(sessionId) {
    return THREAD_PREFIX + conversationId(sessionId);
  }

  function readThread(sessionId) {
    var value = readJson(threadKey(sessionId), null);
    if (!value || !Array.isArray(value.messages)) {
      return { conversationId: conversationId(sessionId), messages: [] };
    }
    return value;
  }

  function saveThread(sessionId, thread) {
    writeJson(threadKey(sessionId), thread);
  }

  function activeBinding() {
    return bindings[activeSessionId()] || null;
  }

  function isDesktopConversation(sessionId) {
    return !!sessionId && routes[sessionId] === 'computer';
  }

  function markDesktopConversation(sessionId) {
    if (!sessionId) return;
    routes[sessionId] = 'computer';
    writeJson(ROUTES_KEY, routes);
  }

  function setComposerBusy(busy, status) {
    if (typeof setBusy === 'function') setBusy(!!busy);
    if (typeof setComposerStatus === 'function') setComposerStatus(status || '');
  }

  function activePendingOwner() {
    var sessionId = activeSessionId();
    var ids = Object.keys(pending);
    for (var i = ids.length - 1; i >= 0; i--) {
      var owner = pending[ids[i]];
      if (owner && !owner.kind && owner.sessionId === sessionId) return owner;
    }
    return null;
  }

  function remoteStreamId(ref) {
    return 'apers-remote-' + String(ref || 'task');
  }

  function remoteToolCalls(owner) {
    var tools = owner && owner.worklog && owner.worklog.tools;
    if (!tools || typeof tools !== 'object') return [];
    return Object.keys(tools).map(function (id) {
      return tools[id];
    }).filter(Boolean);
  }

  function beginNativeRemoteWorklog(owner, ref) {
    if (!owner || !isDesktopConversation(owner.sessionId) ||
        owner.sessionId !== activeSessionId()) return;
    if (typeof S === 'undefined') return;
    var streamId = remoteStreamId(ref);
    S.toolCalls = remoteToolCalls(owner);
    if (typeof ensureLiveWorklogShell === 'function') {
      if (!S.toolCalls.length) S.activeStreamId = null;
      else S.activeStreamId = streamId;
      ensureLiveWorklogShell();
      S.activeStreamId = streamId;
    } else if (typeof appendThinking === 'function') {
      S.activeStreamId = streamId;
      appendThinking('', {
        pending: true,
        sessionId: activeSessionId(),
        streamId: streamId
      });
    }
  }

  function storeRemoteToolStart(owner, ref, event) {
    var thread = readThread(owner.sessionId);
    owner.worklog = owner.worklog || { tools: {} };
    owner.worklog.tools = owner.worklog.tools || {};
    var callId = String(event.call_id || ('remote-tool-' + Date.now()));
    var existing = owner.worklog.tools[callId];
    if (existing) return existing;
    var args = event.args && typeof event.args === 'object' ? event.args : {};
    var messageIndex = thread.messages.length;
    thread.messages.push({
      role: 'assistant',
      content: '',
      tool_calls: [{
        id: callId,
        call_id: callId,
        type: 'function',
        function: {
          name: String(event.tool || 'tool'),
          arguments: JSON.stringify(args)
        }
      }],
      _ts: Date.now() / 1000,
      _computer: true,
      _remoteActivity: true
    });
    var tool = {
      id: callId,
      tid: callId,
      tool_call_id: callId,
      name: String(event.tool || 'tool'),
      args: args,
      snippet: '',
      preview: String(event.detail || ''),
      done: false,
      started_at: Number(event.started_at) || Date.now() / 1000,
      assistant_msg_idx: messageIndex
    };
    owner.worklog.tools[callId] = tool;
    saveThread(owner.sessionId, thread);
    writeJson(PENDING_KEY, pending);
    if (owner.sessionId === activeSessionId()) {
      S.messages = thread.messages.slice();
      beginNativeRemoteWorklog(owner, ref);
      if (typeof appendLiveToolCard === 'function') {
        appendLiveToolCard(tool, {
          sessionId: activeSessionId(),
          streamId: remoteStreamId(ref)
        });
      }
    }
    return tool;
  }

  function storeRemoteToolCompletion(owner, ref, event) {
    var callId = String(event.call_id || '');
    var tool = callId && owner.worklog && owner.worklog.tools
      ? owner.worklog.tools[callId]
      : null;
    if (!tool) tool = storeRemoteToolStart(owner, ref, event);
    if (!tool) return;
    var thread = readThread(owner.sessionId);
    var hasResult = thread.messages.some(function (message) {
      return message.role === 'tool' && message.tool_call_id === tool.tid;
    });
    if (!hasResult) {
      thread.messages.push({
        role: 'tool',
        content: String(event.result || ''),
        tool_call_id: tool.tid,
        name: tool.name,
        _ts: Date.now() / 1000,
        _computer: true,
        _remoteActivity: true
      });
    }
    tool.done = true;
    tool.snippet = String(event.result || '');
    tool.duration = Math.max(
      0, (Number(event.elapsed) || 0) -
      Math.max(0, (Number(tool.started_at) || 0) - (Number(event.started_at) || 0)));
    saveThread(owner.sessionId, thread);
    writeJson(PENDING_KEY, pending);
    if (owner.sessionId === activeSessionId()) {
      S.messages = thread.messages.slice();
      beginNativeRemoteWorklog(owner, ref);
      if (typeof appendLiveToolCard === 'function') {
        appendLiveToolCard(tool, {
          sessionId: activeSessionId(),
          streamId: remoteStreamId(ref)
        });
      }
    }
  }

  function applyRemoteProgress(owner, ref, event) {
    beginNativeRemoteWorklog(owner, ref);
    if (event.phase === 'tool_started') {
      storeRemoteToolStart(owner, ref, event);
    } else if (event.phase === 'tool_completed') {
      storeRemoteToolCompletion(owner, ref, event);
    }
  }

  function settleUnfinishedRemoteTools(owner, thread, fallback, failed) {
    remoteToolCalls(owner).forEach(function (tool) {
      if (tool.done) return;
      var text = String(fallback || (
        failed ? 'Task ended before this tool returned.' : 'Completed.'));
      tool.done = true;
      tool.is_error = !!failed;
      tool.snippet = text;
      var hasResult = thread.messages.some(function (message) {
        return message.role === 'tool' && message.tool_call_id === tool.tid;
      });
      if (!hasResult) {
        thread.messages.push({
          role: 'tool',
          content: text,
          tool_call_id: tool.tid,
          name: tool.name,
          _ts: Date.now() / 1000,
          _computer: true,
          _remoteActivity: true,
          _error: !!failed
        });
      }
    });
  }

  function renderThread(sessionId) {
    if (!isDesktopConversation(sessionId) || !sessionId ||
        activeSessionId() !== sessionId) return;
    var thread = readThread(sessionId);
    S.messages = thread.messages.slice();
    if (typeof renderMessages === 'function') renderMessages();
    var waiting = Object.keys(pending).some(function (id) {
      return pending[id] && !pending[id].kind &&
        pending[id].sessionId === sessionId;
    });
    setComposerBusy(waiting, waiting ? 'Hermes is working on your computer…' : '');
    if (waiting) {
      var owner = activePendingOwner();
      var ref = Object.keys(pending).find(function (id) {
        return pending[id] === owner;
      });
      beginNativeRemoteWorklog(owner, ref);
      remoteToolCalls(owner).forEach(function (tool) {
        if (typeof appendLiveToolCard === 'function') {
          appendLiveToolCard(tool, {
            sessionId: sessionId,
            streamId: remoteStreamId(ref)
          });
        }
      });
    }
  }

  function updateTargetUi() {
    var desktopStatus = document.getElementById('apersDesktopStatus');
    var desktopActive = isDesktopConversation(activeSessionId());
    document.querySelectorAll('[data-apers-destination="desktop"]').forEach(function (element) {
      element.classList.toggle('is-active', desktopActive);
      element.classList.toggle('is-linked', online);
      element.classList.toggle('is-paired', linked);
    });
    if (desktopStatus) {
      var binding = activeBinding();
      desktopStatus.textContent = online
        ? (desktopActive && binding ? binding.title : 'Hermes · PC connected')
        : (linked
          ? (connectionChecked ? 'Hermes · PC unreachable' : 'Hermes · PC checking…')
          : 'Computer not linked');
    }
    if (desktopActive && !S.busy && typeof setComposerStatus === 'function') {
      setComposerStatus(online
        ? ''
        : (linked
          ? (connectionChecked
            ? 'Hermes PC is offline. This conversation is available read-only.'
            : 'Checking Hermes PC…')
          : 'Link Hermes PC to continue this conversation.'));
    }
  }

  function refreshLinkStatus() {
    var host = bridge();
    try {
      linked = !!(host && typeof host.isComputerLinked === 'function'
        && host.isComputerLinked());
    } catch (_) {
      linked = false;
    }
    if (!linked) {
      online = false;
      connectionChecked = false;
    }
    updateTargetUi();
    return linked;
  }

  async function sendComputerMessage() {
    var host = bridge();
    if (!host || typeof host.sendToComputer !== 'function') {
      if (typeof showToast === 'function') showToast('Computer bridge is unavailable.', 3000, 'error');
      return;
    }
    if (!refreshLinkStatus()) {
      if (typeof showToast === 'function') {
        showToast('Link this phone to Hermes on your computer first.', 3500, 'error');
      }
      return;
    }
    if (connectionChecked && !online) {
      updateTargetUi();
      if (typeof showToast === 'function') {
        showToast('Hermes PC is offline. Reconnect it to continue this conversation.',
          3500, 'error');
      }
      return;
    }
    if (S.busy) return;
    if (S.pendingFiles && S.pendingFiles.length) {
      if (typeof showToast === 'function') {
        showToast('Computer chat attachments are not supported yet.', 3000, 'error');
      }
      return;
    }

    var input = document.getElementById('msg');
    var text = input ? String(input.value || '').trim() : '';
    if (!text) return;
    if (!S.session && typeof newSession === 'function') {
      await newSession();
      if (typeof renderSessionList === 'function') await renderSessionList();
    }
    var sessionId = activeSessionId();
    if (!sessionId) {
      if (typeof showToast === 'function') showToast('Could not create a conversation.', 3000, 'error');
      return;
    }

    var thread = readThread(sessionId);
    thread.messages.push({
      role: 'user',
      content: text,
      _ts: Date.now() / 1000,
      _pending: true
    });
    saveThread(sessionId, thread);
    input.value = '';
    if (typeof _clearComposerDraft === 'function') {
      _clearComposerDraft(sessionId, text, []);
    }
    if (typeof autoResize === 'function') autoResize();
    renderThread(sessionId);
    setComposerBusy(true, 'Sending to Hermes on your computer…');
    dispatching[thread.conversationId] = sessionId;
    host.sendToComputer(thread.conversationId, text);
  }

  // Stop a running Desktop turn. Dispatches a cancel control op to the companion
  // (which kills the running hermes subprocess) and settles the local turn
  // immediately so the composer frees up without waiting for the round-trip.
  // Returns true if a Desktop turn was active and a stop was issued.
  function cancelComputerTask() {
    var sessionId = activeSessionId();
    if (!isDesktopConversation(sessionId)) return false;
    var host = bridge();
    var conversation = conversationId(sessionId);
    // Tell the PC to stop. This is a control op; if the bridge/link is down we
    // still settle locally below so the UI never gets stuck "busy".
    if (host && typeof host.sendToComputer === 'function' && refreshLinkStatus()) {
      controlRequests[CONTROL_CANCEL_ID] = {
        kind: 'cancel',
        sessionId: sessionId,
        conversationId: conversation,
        silent: true,
        created: Date.now()
      };
      host.sendToComputer(
        CONTROL_CANCEL_ID,
        CONTROL_CANCEL_PROMPT + '\n' + JSON.stringify({
          conversation_id: conversation
        }));
    }
    // Settle the local turn: drop the in-flight result owner(s) for this
    // conversation so a late result can't re-render, clear the pending user
    // bubble's spinner, append a "Stopped." marker, and free the composer.
    Object.keys(pending).forEach(function (id) {
      if (pending[id] && !pending[id].kind && pending[id].sessionId === sessionId) {
        delete pending[id];
      }
    });
    delete dispatching[conversation];
    writeJson(PENDING_KEY, pending);
    var thread = readThread(sessionId);
    var changed = false;
    for (var i = thread.messages.length - 1; i >= 0; i--) {
      if (thread.messages[i]._pending) {
        thread.messages[i]._pending = false;
        changed = true;
      }
    }
    thread.messages.push({
      role: 'assistant',
      content: 'Stopped.',
      _ts: Date.now() / 1000,
      _computer: true,
      _stopped: true
    });
    saveThread(sessionId, thread);
    if (typeof S !== 'undefined') {
      if (typeof clearLiveToolCards === 'function') clearLiveToolCards();
      S.activeStreamId = null;
      S.toolCalls = [];
    }
    setComposerBusy(false, '');
    renderThread(sessionId);
    return true;
  }

  function openDesktop() {
    if (typeof switchPanel === 'function') {
      switchPanel('chat', { fromRailClick: true });
    }
    setSidebarMode(sidebarMode === 'desktop' ? 'phone' : 'desktop');
  }

  async function ensurePhoneSession() {
    if (!S.session && typeof newSession === 'function') {
      await newSession();
      if (typeof renderSessionList === 'function') await renderSessionList();
    }
    return activeSessionId();
  }

  function sidebarList() {
    return document.getElementById('sessionList');
  }

  function setSidebarHeading(value) {
    var heading = document.querySelector('#panelChat > .panel-head > span');
    if (heading) heading.textContent = value;
  }

  function reflectSidebarMode() {
    setSidebarHeading(sidebarMode === 'desktop' ? 'Desktop' : 'Chat');
    document.querySelectorAll('[data-apers-destination="desktop"]').forEach(function (element) {
      element.classList.toggle('is-sidebar-active', sidebarMode === 'desktop');
    });
  }

  function setSidebarMode(mode) {
    sidebarMode = mode === 'desktop' ? 'desktop' : 'phone';
    sidebarState = '';
    sidebarStateIsError = false;
    setDesktopRetry(null);
    reflectSidebarMode();
    var newButton = document.getElementById('btnNewChat');
    if (newButton) {
      newButton.setAttribute(
        'aria-label',
        sidebarMode === 'desktop' ? 'New Desktop session' : 'New conversation');
      newButton.setAttribute(
        'data-tooltip',
        sidebarMode === 'desktop' ? 'New Desktop session' : 'New conversation');
    }
    renderUnifiedSidebar();
    if (sidebarMode === 'desktop') {
      requestDesktopSessions(activeSessionId() || '__desktop_sidebar__');
    }
  }

  function installUnifiedSidebar() {
    if (nativeSessionRenderer || typeof window.renderSessionListFromCache !== 'function') return;
    if (typeof window._requestedSessionSidebarSource === 'function') {
      window._requestedSessionSidebarSource = function () { return 'all'; };
    }
    try { _activeProject = null; } catch (_) {}
    nativeSessionRenderer = window.renderSessionListFromCache;
    window.renderSessionListFromCache = function () {
      if (document.documentElement.classList.contains('apers-android-host')) {
        renderUnifiedSidebar();
        return;
      }
      return nativeSessionRenderer.apply(this, arguments);
    };

    document.querySelectorAll('[data-panel="chat"]').forEach(function (button) {
      button.addEventListener('click', function () {
        if (sidebarMode !== 'phone') setSidebarMode('phone');
      }, true);
    });

    var newButton = document.getElementById('btnNewChat');
    if (newButton) {
      newButton.addEventListener('click', function (event) {
        if (sidebarMode !== 'desktop') return;
        event.preventDefault();
        event.stopImmediatePropagation();
        startNewDesktopSession();
      }, true);
    }

    var search = document.getElementById('sessionSearch');
    if (search) {
      search.addEventListener('input', function () {
        renderUnifiedSidebar();
      });
    }
  }

  function phoneSessionRows() {
    var active = activeSessionId();
    var rows = Array.isArray(_allSessions) ? _allSessions.slice() : [];
    if (typeof _sessionRowsWithActiveEphemeralSession === 'function') {
      rows = _sessionRowsWithActiveEphemeralSession(rows);
    }
    rows = rows.filter(function (session) {
      if (!session || !session.session_id || session.archived ||
          session.default_hidden || isDesktopConversation(session.session_id)) return false;
      if (typeof _sidebarRowHasVisibleMessages === 'function' &&
          !_sidebarRowHasVisibleMessages(session, active)) return false;
      return true;
    });
    if (typeof _renderSidebarRowsFromRawSessions === 'function') {
      try {
        rows = _renderSidebarRowsFromRawSessions(rows, rows);
      } catch (_) {
        // A future upstream lineage change should not make the Android list vanish.
      }
    }
    var seen = {};
    return rows.filter(function (session) {
      if (!session || seen[session.session_id]) return false;
      seen[session.session_id] = true;
      return true;
    });
  }

  function phoneOrder() {
    var value = readJson(PHONE_ORDER_KEY, []);
    return Array.isArray(value) ? value : [];
  }

  function orderedPhoneRows(rows) {
    var order = phoneOrder();
    var positions = {};
    order.forEach(function (id, index) { positions[id] = index; });
    return rows.slice().sort(function (a, b) {
      var ai = Object.prototype.hasOwnProperty.call(positions, a.session_id)
        ? positions[a.session_id] : Number.MAX_SAFE_INTEGER;
      var bi = Object.prototype.hasOwnProperty.call(positions, b.session_id)
        ? positions[b.session_id] : Number.MAX_SAFE_INTEGER;
      if (ai !== bi) return ai - bi;
      var at = typeof _sessionTimestampMs === 'function'
        ? _sessionTimestampMs(a) : Number(a.updated_at || a.started_at || 0) * 1000;
      var bt = typeof _sessionTimestampMs === 'function'
        ? _sessionTimestampMs(b) : Number(b.updated_at || b.started_at || 0) * 1000;
      return bt - at;
    });
  }

  function sessionTitle(session) {
    var value = typeof _sessionDisplayTitle === 'function'
      ? _sessionDisplayTitle(session)
      : (session.title || session.display_title || '');
    value = String(value || '').trim();
    return value && value.indexOf('[SYSTEM:') !== 0 ? value : 'Untitled';
  }

  function appendSessionRow(body, session) {
    var row = document.createElement('div');
    row.className = 'session-item apers-unified-session';
    row.dataset.sid = session.session_id;
    row.dataset.projectId = session.project_id || '';
    if (session.session_id === activeSessionId()) row.classList.add('active');

    var text = document.createElement('div');
    text.className = 'session-text';
    var titleRow = document.createElement('div');
    titleRow.className = 'session-title-row';
    var title = document.createElement('span');
    title.className = 'session-title';
    title.textContent = sessionTitle(session);
    var age = document.createElement('span');
    age.className = 'session-time';
    var stamp = typeof _sessionTimestampMs === 'function'
      ? _sessionTimestampMs(session) : Number(session.started_at || 0) * 1000;
    age.textContent = typeof _formatRelativeSessionTime === 'function'
      ? _formatRelativeSessionTime(stamp) : formatSessionAge(stamp / 1000);
    titleRow.appendChild(title);
    titleRow.appendChild(age);
    text.appendChild(titleRow);
    row.appendChild(text);
    if (typeof _buildSessionRenameStarter === 'function') {
      row._startRename = _buildSessionRenameStarter(
        session,
        title,
        function (nextTitle) { title.textContent = nextTitle || 'Untitled'; });
    }
    attachPhoneSessionGesture(row, session);
    body.appendChild(row);
  }

  function renderPhoneSidebar(list) {
    var query = String(
      document.getElementById('sessionSearch') &&
      document.getElementById('sessionSearch').value || '').trim().toLowerCase();
    var rows = orderedPhoneRows(phoneSessionRows()).filter(function (session) {
      if (!query) return true;
      return (sessionTitle(session) + ' ' + String(
        session.preview || session.last_message_preview || '')).toLowerCase()
        .indexOf(query) >= 0;
    });
    var groups = [];
    var projectIds = {};
    (Array.isArray(_allProjects) ? _allProjects : []).forEach(function (project) {
      if (!project || !project.project_id || projectIds[project.project_id]) return;
      projectIds[project.project_id] = true;
      groups.push({ id: project.project_id, name: project.name || 'Project', project: project, rows: [] });
    });
    var unassigned = { id: '', name: 'Unassigned', project: null, rows: [] };
    rows.forEach(function (session) {
      var group = groups.find(function (item) {
        return item.id === String(session.project_id || '');
      });
      (group || unassigned).rows.push(session);
    });
    groups.push(unassigned);
    var projectOrder = readJson(PROJECT_ORDER_KEY, []);
    if (Array.isArray(projectOrder)) {
      groups.sort(function (a, b) {
        var ai = projectOrder.indexOf(projectOrderId(a.id));
        var bi = projectOrder.indexOf(projectOrderId(b.id));
        if (ai < 0) ai = Number.MAX_SAFE_INTEGER;
        if (bi < 0) bi = Number.MAX_SAFE_INTEGER;
        return ai - bi;
      });
    }
    var toolbar = document.createElement('div');
    toolbar.className = 'apers-projects-toolbar';
    var toolbarLabel = document.createElement('span');
    toolbarLabel.textContent = 'Projects';
    var addButton = document.createElement('button');
    addButton.type = 'button';
    addButton.className = 'apers-project-add';
    addButton.setAttribute('aria-label', 'Add project');
    addButton.textContent = '+';
    addButton.addEventListener('click', function (event) {
      event.preventDefault();
      createPhoneProject();
    });
    toolbar.appendChild(toolbarLabel);
    toolbar.appendChild(addButton);
    list.appendChild(toolbar);
    groups.forEach(function (group) {
      if (query && !group.rows.length) return;
      var wrapper = document.createElement('section');
      wrapper.className = 'apers-project-group';
      wrapper.dataset.projectId = group.id;
      wrapper.dataset.projectOrderId = projectOrderId(group.id);
      var header = document.createElement('div');
      header.className = 'apers-project-heading apers-project-heading-manageable';
      if (group.project && group.project.color) {
        header.classList.add('has-project-color');
        header.style.setProperty('--apers-project-color', group.project.color);
        var dot = document.createElement('span');
        dot.className = 'apers-project-dot';
        dot.style.background = group.project.color;
        header.appendChild(dot);
      }
      var label = document.createElement('span');
      label.className = 'apers-project-label';
      label.textContent = group.name;
      header.appendChild(label);
      var body = document.createElement('div');
      body.className = 'apers-project-body';
      body.dataset.projectId = group.id;
      group.rows.forEach(function (session) { appendSessionRow(body, session); });
      var collapsedId = projectOrderId(group.id);
      var collapsed = !query &&
        isProjectCollapsed(PHONE_PROJECT_COLLAPSED_KEY, collapsedId);
      wrapper.classList.toggle('is-collapsed', collapsed);
      body.hidden = collapsed;
      wrapper.appendChild(header);
      wrapper.appendChild(body);
      attachManagedGesture(header, {
        click: function () {
          toggleProjectCollapsed(
            PHONE_PROJECT_COLLAPSED_KEY, collapsedId, wrapper, body);
        },
        menu: function () {
          if (group.project) openPhoneProjectActions(group);
        }
      });
      attachProjectGrip(header, wrapper, persistProjectDomOrder);
      list.appendChild(wrapper);
    });
    if (!rows.length && query) {
      appendSidebarState(list, 'No matching conversations.', false);
    }
  }

  function localShellForDesktop(desktopSessionId) {
    return Object.keys(bindings).find(function (localId) {
      return bindings[localId] &&
        String(bindings[localId].id) === String(desktopSessionId) &&
        isDesktopConversation(localId);
    }) || '';
  }

  function appendDesktopRow(list, session) {
    var row = document.createElement('div');
    row.className = 'session-item apers-unified-session apers-desktop-sidebar-session';
    row.dataset.desktopSessionId = session.id;
    var localId = localShellForDesktop(session.id);
    if (localId && localId === activeSessionId()) row.classList.add('active');
    var text = document.createElement('div');
    text.className = 'session-text';
    var titleRow = document.createElement('div');
    titleRow.className = 'session-title-row';
    var title = document.createElement('span');
    title.className = 'session-title';
    title.textContent = session.title || 'Untitled session';
    var age = document.createElement('span');
    age.className = 'session-time';
    age.textContent = formatSessionAge(session.last_active);
    titleRow.appendChild(title);
    titleRow.appendChild(age);
    text.appendChild(titleRow);
    row.appendChild(text);
    attachDesktopSessionGesture(row, session);
    list.appendChild(row);
  }

  function renderDesktopSidebar(list) {
    var query = String(
      document.getElementById('sessionSearch') &&
      document.getElementById('sessionSearch').value || '').trim().toLowerCase();
    var rows = desktopSessions.filter(function (session) {
      if (!query) return true;
      return (String(session.title || '') + ' ' + String(session.preview || ''))
        .toLowerCase().indexOf(query) >= 0;
    });
    if (sidebarState) {
      appendSidebarState(list, sidebarState, sidebarStateIsError);
    } else if (!rows.length) {
      appendSidebarState(
        list,
        query ? 'No matching Desktop sessions.' :
          (connectionChecked && !online
            ? 'Hermes PC is offline. Cached sessions remain available to read.'
            : 'No Desktop sessions yet.'),
        false);
    }
    var groupsById = {};
    rows.forEach(function (session) {
      var id = String(session.workspace_id || session.workspace || '');
      if (!groupsById[id]) {
        groupsById[id] = {
          id: id,
          name: String(session.workspace_name || 'Unassigned'),
          rows: []
        };
      }
      groupsById[id].rows.push(session);
    });
    var projectOrder = readJson(DESKTOP_PROJECT_ORDER_KEY, []);
    var groups = Object.keys(groupsById).map(function (id) { return groupsById[id]; });
    groups.sort(function (a, b) {
      var ai = projectOrder.indexOf(projectOrderId(a.id));
      var bi = projectOrder.indexOf(projectOrderId(b.id));
      if (ai < 0) ai = Number.MAX_SAFE_INTEGER;
      if (bi < 0) bi = Number.MAX_SAFE_INTEGER;
      if (ai !== bi) return ai - bi;
      return a.name.localeCompare(b.name);
    });
    groups.forEach(function (group) {
      var wrapper = document.createElement('section');
      wrapper.className = 'apers-project-group apers-desktop-project-group';
      wrapper.dataset.desktopProjectId = group.id;
      wrapper.dataset.desktopProjectOrderId = projectOrderId(group.id);
      var header = document.createElement('div');
      header.className = 'apers-project-heading apers-project-heading-manageable';
      if (group.id) header.classList.add('apers-desktop-project-named');
      var label = document.createElement('span');
      label.className = 'apers-project-label';
      label.textContent = group.name;
      header.appendChild(label);
      var body = document.createElement('div');
      body.className = 'apers-project-body';
      group.rows.forEach(function (session) { appendDesktopRow(body, session); });
      var collapsedId = projectOrderId(group.id);
      var collapsed = !query &&
        isProjectCollapsed(DESKTOP_PROJECT_COLLAPSED_KEY, collapsedId);
      wrapper.classList.toggle('is-collapsed', collapsed);
      body.hidden = collapsed;
      wrapper.appendChild(header);
      wrapper.appendChild(body);
      attachManagedGesture(header, {
        click: function () {
          toggleProjectCollapsed(
            DESKTOP_PROJECT_COLLAPSED_KEY, collapsedId, wrapper, body);
        },
        menu: function () {}
      });
      attachProjectGrip(header, wrapper, persistDesktopProjectDomOrder);
      list.appendChild(wrapper);
    });
  }

  function appendSidebarState(list, message, isError) {
    // An error state with a registered retry becomes a button so the user has a
    // one-tap recovery instead of a dead-end message.
    if (isError && typeof desktopRetry === 'function') {
      var retry = desktopRetry;
      var button = document.createElement('button');
      button.type = 'button';
      button.className = 'apers-sidebar-state is-error apers-sidebar-state-retry';
      button.textContent = message;
      button.addEventListener('click', function () {
        setDesktopRetry(null);
        showPickerState('', false);
        retry();
      });
      list.appendChild(button);
      return;
    }
    var state = document.createElement('div');
    state.className = 'apers-sidebar-state' + (isError ? ' is-error' : '');
    state.textContent = message;
    list.appendChild(state);
  }

  function renderUnifiedSidebar() {
    if (!document.documentElement.classList.contains('apers-android-host')) return;
    var list = sidebarList();
    if (!list) return;
    var scroll = list.scrollTop || 0;
    list.innerHTML = '';
    if (sidebarMode === 'desktop') renderDesktopSidebar(list);
    else renderPhoneSidebar(list);
    list.scrollTop = scroll;
  }

  function persistPhoneDomOrder() {
    var ids = Array.prototype.map.call(
      document.querySelectorAll('#sessionList .apers-unified-session[data-sid]'),
      function (row) { return row.dataset.sid; });
    writeJson(PHONE_ORDER_KEY, ids);
  }

  function persistProjectDomOrder() {
    var ids = Array.prototype.map.call(
      document.querySelectorAll(
        '#sessionList .apers-project-group[data-project-order-id]'),
      function (group) { return group.dataset.projectOrderId; });
    writeJson(PROJECT_ORDER_KEY, ids);
  }

  function persistDesktopProjectDomOrder() {
    var ids = Array.prototype.map.call(
      document.querySelectorAll(
        '#sessionList .apers-desktop-project-group' +
        '[data-desktop-project-order-id]'),
      function (group) { return group.dataset.desktopProjectOrderId; });
    writeJson(DESKTOP_PROJECT_ORDER_KEY, ids);
  }

  function projectOrderId(projectId) {
    return projectId || '__unassigned__';
  }

  function isProjectCollapsed(storageKey, projectId) {
    var collapsed = readJson(storageKey, {});
    return !!(collapsed && collapsed[projectId]);
  }

  function toggleProjectCollapsed(storageKey, projectId, wrapper, body) {
    var collapsed = readJson(storageKey, {});
    collapsed[projectId] = !wrapper.classList.contains('is-collapsed');
    if (!collapsed[projectId]) delete collapsed[projectId];
    writeJson(storageKey, collapsed);
    wrapper.classList.toggle('is-collapsed', !!collapsed[projectId]);
    body.hidden = !!collapsed[projectId];
  }

  function projectPalette() {
    return (typeof PROJECT_COLORS !== 'undefined' && PROJECT_COLORS.length)
      ? PROJECT_COLORS : ['#7cb9ff', '#f5c542', '#e94560', '#50c878'];
  }

  function mountProjectColorPicker(selectedColor, onChange) {
    var field = document.createElement('div');
    field.className = 'apers-project-color-field';
    var label = document.createElement('span');
    label.className = 'apers-project-color-label';
    label.textContent = 'Color';
    var swatches = document.createElement('div');
    swatches.className = 'apers-project-color-swatches';
    projectPalette().forEach(function (hex) {
      var swatch = document.createElement('button');
      swatch.type = 'button';
      swatch.className = 'apers-project-color-swatch';
      swatch.style.background = hex;
      swatch.setAttribute('aria-label', 'Select color ' + hex);
      swatch.classList.toggle('is-selected', hex === selectedColor);
      swatch.addEventListener('click', function () {
        selectedColor = hex;
        Array.prototype.forEach.call(swatches.children, function (item) {
          item.classList.toggle('is-selected', item === swatch);
        });
        onChange(hex);
      });
      swatches.appendChild(swatch);
    });
    field.appendChild(label);
    field.appendChild(swatches);
    return field;
  }

  async function showCreateProjectDialog(defaultColor) {
    var selectedColor = defaultColor;
    var pending = showPromptDialog({
      title: 'Create project',
      message: 'Name and color',
      confirmLabel: 'Create',
      placeholder: 'Project name'
    });
    var dialog = document.getElementById('appDialog');
    var actions = dialog && dialog.querySelector('.app-dialog-actions');
    var picker = mountProjectColorPicker(selectedColor, function (hex) {
      selectedColor = hex;
    });
    if (dialog) dialog.insertBefore(picker, actions || null);
    try {
      var name = await pending;
      if (name === null) return null;
      return { name: String(name || '').trim(), color: selectedColor };
    } finally {
      picker.remove();
    }
  }

  async function chooseProjectColor(group) {
    var selectedColor = (group.project && group.project.color) ||
      projectPalette()[0];
    var pending = showConfirmDialog({
      title: 'Change project color',
      message: group.name,
      confirmLabel: 'Save'
    });
    var dialog = document.getElementById('appDialog');
    var actions = dialog && dialog.querySelector('.app-dialog-actions');
    var picker = mountProjectColorPicker(selectedColor, function (hex) {
      selectedColor = hex;
    });
    if (dialog) dialog.insertBefore(picker, actions || null);
    try {
      if (!await pending) return;
      await api('/api/projects/rename', {
        method: 'POST',
        body: JSON.stringify({
          project_id: group.id,
          name: group.name,
          color: selectedColor
        })
      });
      await renderSessionList({ deferWhileInteracting: false });
      showToast('Project color updated.', 2200);
    } catch (error) {
      showToast('Color update failed: ' + String(error.message || error),
        3200, 'error');
    } finally {
      picker.remove();
    }
  }

  async function createPhoneProject() {
    var palette = projectPalette();
    var project = await showCreateProjectDialog(
      palette[_allProjects.length % palette.length]);
    if (!project || !project.name) return;
    try {
      var result = await api('/api/projects/create', {
        method: 'POST',
        body: JSON.stringify({
          name: project.name,
          color: project.color
        })
      });
      if (result.project) _allProjects.push(result.project);
      await renderSessionList({ deferWhileInteracting: false });
      showToast('Project created.', 2200);
    } catch (error) {
      showToast('Project creation failed: ' + String(error.message || error),
        3200, 'error');
    }
  }

  function openPhoneProjectActions(group) {
    openActionSheet(group.name, [
      {
        label: 'Rename project',
        run: async function () {
          var name = await showPromptDialog({
            title: 'Rename project',
            message: 'Project name',
            confirmLabel: 'Rename',
            value: group.name,
            placeholder: 'Project name'
          });
          name = String(name || '').trim();
          if (!name || name === group.name) return;
          try {
            await api('/api/projects/rename', {
              method: 'POST',
              body: JSON.stringify({
                project_id: group.id,
                name: name,
                color: group.project && group.project.color
              })
            });
            await renderSessionList({ deferWhileInteracting: false });
            showToast('Project renamed.', 2200);
          } catch (error) {
            showToast('Rename failed: ' + String(error.message || error),
              3200, 'error');
          }
        }
      },
      {
        label: 'Change project color',
        run: function () { chooseProjectColor(group); }
      },
      {
        label: 'Delete project and conversations',
        danger: true,
        run: function () { deletePhoneProjectAndSessions(group); }
      }
    ]);
  }

  async function deletePhoneProjectAndSessions(group) {
    var sessionsPayload;
    try {
      sessionsPayload = await api(
        '/api/sessions?sidebar_source=all&include_archived=1');
    } catch (error) {
      showToast('Could not inspect project conversations: ' +
        String(error.message || error), 3500, 'error');
      return;
    }
    var targets = (sessionsPayload.sessions || []).filter(function (session) {
      return String(session.project_id || '') === String(group.id);
    });
    var count = targets.length;
    var confirmed = await showConfirmDialog({
      message: 'Delete project “' + group.name + '” and permanently delete ' +
        count + ' conversation' + (count === 1 ? '' : 's') +
        ' inside it? This cannot be undone.',
      confirmLabel: 'Delete all',
      danger: true
    });
    if (!confirmed) return;
    var activeWasDeleted = targets.some(function (session) {
      return session.session_id === activeSessionId();
    });
    var failures = [];
    for (var i = 0; i < targets.length; i += 1) {
      try {
        await api('/api/session/delete', {
          method: 'POST',
          body: JSON.stringify({ session_id: targets[i].session_id })
        });
      } catch (error) {
        failures.push(targets[i]);
      }
    }
    if (failures.length) {
      await renderSessionList({ deferWhileInteracting: false });
      showToast(
        failures.length + ' protected or busy conversation' +
        (failures.length === 1 ? ' could' : 's could') +
        ' not be deleted, so the project was kept.',
        4500,
        'error');
      return;
    }
    try {
      await api('/api/projects/delete', {
        method: 'POST',
        body: JSON.stringify({ project_id: group.id })
      });
      var collapsed = readJson(PHONE_PROJECT_COLLAPSED_KEY, {});
      delete collapsed[group.id];
      writeJson(PHONE_PROJECT_COLLAPSED_KEY, collapsed);
      var order = readJson(PROJECT_ORDER_KEY, []);
      writeJson(PROJECT_ORDER_KEY, order.filter(function (id) {
        return id !== group.id;
      }));
      if (activeWasDeleted) {
        try { localStorage.removeItem('hermes-webui-session'); } catch (_) {}
        if (typeof S !== 'undefined') {
          S.session = null;
          S.messages = [];
          S.entries = [];
        }
      }
      await renderSessionList({ deferWhileInteracting: false });
      if (activeWasDeleted && typeof newSession === 'function') {
        await newSession();
      }
      showToast('Project and conversations deleted.', 2600);
    } catch (error) {
      showToast('Project deletion failed: ' + String(error.message || error),
        3500, 'error');
    }
  }

  function attachProjectGrip(header, wrapper, persistOrder) {
    var grip = document.createElement('span');
    grip.className = 'apers-session-grip apers-project-grip';
    grip.setAttribute('aria-hidden', 'true');
    header.appendChild(grip);
    var dragging = false;
    var startY = 0;
    var pointerId = null;
    var selector = wrapper.classList.contains('apers-desktop-project-group')
      ? '.apers-desktop-project-group[data-desktop-project-order-id]'
      : '.apers-project-group[data-project-order-id]';
    grip.addEventListener('click', function (event) {
      event.preventDefault();
      event.stopPropagation();
    });
    grip.addEventListener('contextmenu', function (event) {
      event.preventDefault();
      event.stopPropagation();
    });
    grip.addEventListener('pointerdown', function (event) {
      if (event.button !== undefined && event.button !== 0) return;
      dragging = false;
      startY = event.clientY;
      pointerId = event.pointerId;
      event.preventDefault();
      event.stopPropagation();
      document.addEventListener('pointermove', move, true);
      document.addEventListener('pointerup', finish, true);
      document.addEventListener('pointercancel', finish, true);
    });
    var move = function (event) {
      if (event.pointerId !== pointerId) return;
      if (!dragging && Math.abs(event.clientY - startY) < 5) return;
      dragging = true;
      wrapper.classList.add('is-dragging');
      event.preventDefault();
      event.stopPropagation();
      var target = document.elementFromPoint(event.clientX, event.clientY);
      var targetGroup = target && target.closest(selector);
      if (!targetGroup || targetGroup === wrapper) return;
      var rect = targetGroup.getBoundingClientRect();
      targetGroup.parentNode.insertBefore(
        wrapper,
        event.clientY < rect.top + rect.height / 2
          ? targetGroup : targetGroup.nextSibling);
    };
    var finish = function (event) {
      if (event.pointerId !== pointerId) return;
      document.removeEventListener('pointermove', move, true);
      document.removeEventListener('pointerup', finish, true);
      document.removeEventListener('pointercancel', finish, true);
      wrapper.classList.remove('is-dragging');
      if (dragging && persistOrder) persistOrder();
      dragging = false;
      pointerId = null;
    };
  }

  function attachPhoneSessionGesture(row, session) {
    var grip = document.createElement('span');
    grip.className = 'apers-session-grip';
    grip.setAttribute('aria-hidden', 'true');
    row.appendChild(grip);
    attachManagedGesture(row, {
      click: function () {
        if (Date.now() < suppressSessionClickUntil) return;
        if (typeof loadSession === 'function') {
          Promise.resolve(loadSession(session.session_id)).then(closeSidebarIfOpen);
        }
      },
      menu: function () { openPhoneSessionActions(session, row); }
    });
    attachSessionDragGrip(grip, row, async function () {
      persistPhoneDomOrder();
      var body = row.closest('.apers-project-body');
      var nextProject = body ? String(body.dataset.projectId || '') : '';
      var previousProject = String(session.project_id || '');
      if (nextProject !== previousProject && typeof api === 'function') {
        try {
          await api('/api/session/move', {
            method: 'POST',
            body: JSON.stringify({
              session_id: session.session_id,
              project_id: nextProject || null
            })
          });
          session.project_id = nextProject || null;
          var cached = _allSessions.find(function (item) {
            return item && item.session_id === session.session_id;
          });
          if (cached) cached.project_id = session.project_id;
        } catch (error) {
          if (typeof showToast === 'function') {
            showToast('Move failed: ' + String(error.message || error), 3000, 'error');
          }
        }
      }
      renderUnifiedSidebar();
    });
  }

  function attachDesktopSessionGesture(row, session) {
    attachManagedGesture(row, {
      click: function () {
        if (Date.now() < suppressSessionClickUntil) return;
        openDesktopSession(session.id);
      },
      menu: function () { openDesktopSessionActions(session); }
    });
  }

  function attachManagedGesture(row, handlers) {
    var timer = null;
    var held = false;
    var menuOpened = false;
    var startX = 0;
    var startY = 0;
    row.addEventListener('click', function (event) {
      if (event.target.closest('.apers-session-grip')) return;
      if (Date.now() < suppressSessionClickUntil) {
        event.preventDefault();
        event.stopPropagation();
        return;
      }
      handlers.click();
    });
    row.addEventListener('pointerdown', function (event) {
      if (event.target.closest('.apers-session-grip')) return;
      if (event.button !== undefined && event.button !== 0) return;
      startX = event.clientX;
      startY = event.clientY;
      held = false;
      menuOpened = false;
      timer = setTimeout(function () {
        held = true;
        row.classList.add('long-pressing');
      }, 360);
    });
    row.addEventListener('pointermove', function (event) {
      var dx = Math.abs(event.clientX - startX);
      var dy = Math.abs(event.clientY - startY);
      if (!held) {
        if ((dx > 9 || dy > 9) && timer) {
          clearTimeout(timer);
          timer = null;
        }
        return;
      }
      if (held && (dx > 7 || dy > 7) && timer) {
        clearTimeout(timer);
        timer = null;
        held = false;
        row.classList.remove('long-pressing');
      }
    }, { passive: false });
    var finish = function () {
      if (timer) clearTimeout(timer);
      timer = null;
      row.classList.remove('long-pressing');
      if (held && !menuOpened) {
        menuOpened = true;
        suppressSessionClickUntil = Date.now() + 700;
        handlers.menu();
      }
      held = false;
    };
    row.addEventListener('pointerup', finish);
    row.addEventListener('pointercancel', finish);
    row.addEventListener('contextmenu', function (event) {
      event.preventDefault();
      if (event.target.closest('.apers-session-grip')) return;
      if (timer) clearTimeout(timer);
      timer = null;
      held = false;
      row.classList.remove('long-pressing');
      if (menuOpened) return;
      menuOpened = true;
      suppressSessionClickUntil = Date.now() + 700;
      handlers.menu();
    });
  }

  function attachSessionDragGrip(grip, row, onDrop) {
    var dragging = false;
    var startY = 0;
    var pointerId = null;
    grip.addEventListener('click', function (event) {
      event.preventDefault();
      event.stopPropagation();
    });
    grip.addEventListener('contextmenu', function (event) {
      event.preventDefault();
      event.stopPropagation();
    });
    grip.addEventListener('pointerdown', function (event) {
      if (event.button !== undefined && event.button !== 0) return;
      dragging = false;
      startY = event.clientY;
      pointerId = event.pointerId;
      event.preventDefault();
      event.stopPropagation();
      document.addEventListener('pointermove', move, true);
      document.addEventListener('pointerup', finish, true);
      document.addEventListener('pointercancel', finish, true);
    });
    var move = function (event) {
      if (event.pointerId !== pointerId) return;
      if (!dragging && Math.abs(event.clientY - startY) < 5) return;
      dragging = true;
      suppressSessionClickUntil = Date.now() + 700;
      row.classList.add('is-dragging');
      event.preventDefault();
      event.stopPropagation();
      var target = document.elementFromPoint(event.clientX, event.clientY);
      if (!target) return;
      var targetRow = target.closest('.apers-unified-session[data-sid]');
      var targetGroup = target.closest('.apers-project-group');
      var targetBody = target.closest('.apers-project-body') ||
        (targetGroup && targetGroup.querySelector('.apers-project-body'));
      if (targetRow && targetRow !== row) {
        var rect = targetRow.getBoundingClientRect();
        targetRow.parentNode.insertBefore(
          row, event.clientY < rect.top + rect.height / 2 ? targetRow : targetRow.nextSibling);
      } else if (targetBody && targetBody !== row.parentNode) {
        targetBody.appendChild(row);
      }
    };
    var finish = function (event) {
      if (event.pointerId !== pointerId) return;
      document.removeEventListener('pointermove', move, true);
      document.removeEventListener('pointerup', finish, true);
      document.removeEventListener('pointercancel', finish, true);
      if (dragging) {
        suppressSessionClickUntil = Date.now() + 700;
        if (onDrop) onDrop();
      }
      row.classList.remove('is-dragging');
      dragging = false;
      pointerId = null;
    };
  }

  function closeActionSheet() {
    var sheet = document.getElementById('apersSessionActions');
    if (sheet) sheet.remove();
  }

  function openActionSheet(title, actions) {
    closeActionSheet();
    var backdrop = document.createElement('div');
    backdrop.id = 'apersSessionActions';
    backdrop.className = 'apers-session-actions';
    var panel = document.createElement('section');
    panel.className = 'apers-session-actions-panel';
    var heading = document.createElement('strong');
    heading.textContent = title;
    panel.appendChild(heading);
    actions.forEach(function (action) {
      var button = document.createElement('button');
      button.type = 'button';
      button.textContent = action.label;
      if (action.danger) button.classList.add('is-danger');
      button.onclick = function () {
        closeActionSheet();
        action.run();
      };
      panel.appendChild(button);
    });
    var cancel = document.createElement('button');
    cancel.type = 'button';
    cancel.className = 'apers-actions-cancel';
    cancel.textContent = 'Cancel';
    cancel.onclick = closeActionSheet;
    panel.appendChild(cancel);
    backdrop.appendChild(panel);
    backdrop.onclick = function (event) {
      if (event.target === backdrop) closeActionSheet();
    };
    document.body.appendChild(backdrop);
  }

  function openPhoneSessionActions(session, row) {
    if (typeof _openSessionActionMenu !== 'function') return;
    _openSessionActionMenu(session, row);
    var menu = document.querySelector('.session-action-menu');
    if (!menu || menu.querySelector('[data-apers-continue-desktop]') ||
        typeof _buildSessionAction !== 'function') return;
    var action = _buildSessionAction(
      'Continue on Desktop',
      'Copy this phone conversation to Hermes PC',
      (typeof ICONS !== 'undefined' && ICONS.dup) ? ICONS.dup : '',
      async function () {
        if (typeof closeSessionActionMenu === 'function') closeSessionActionMenu();
        if (typeof loadSession === 'function') await loadSession(session.session_id);
        portPhoneSession();
      });
    action.setAttribute('data-apers-continue-desktop', '');
    var archiveAction = Array.prototype.find.call(
      menu.querySelectorAll('.session-action-opt'),
      function (item) {
        return item.querySelector('.ws-opt-name') &&
          item.querySelector('.ws-opt-name').textContent ===
            (typeof t === 'function' ? t('session_archive') : 'Archive');
      });
    menu.insertBefore(action, archiveAction || null);
    if (typeof _positionSessionActionMenu === 'function') {
      _positionSessionActionMenu(row);
    }
  }

  function openDesktopSessionActions(session) {
    openActionSheet(session.title || 'Untitled session', [
      {
        label: 'Rename',
        run: async function () {
          var title = await showPromptDialog({
            message: 'Rename Desktop session',
            confirmLabel: 'Rename',
            value: session.title || '',
            placeholder: 'Session name'
          });
          title = String(title || '').trim();
          if (title) renameDesktopSession(session.id, title);
        }
      },
      {
        label: 'Archive',
        danger: true,
        run: async function () {
          var confirmed = await showConfirmDialog({
            message: 'Archive “' + (session.title || 'this Desktop session') + '”?',
            confirmLabel: 'Archive',
            danger: true
          });
          if (confirmed) archiveDesktopSession(session.id);
        }
      }
    ]);
  }

  async function openDesktopSession(desktopSessionId) {
    var localId = localShellForDesktop(desktopSessionId);
    var host = bridge();
    if (localId) {
      // DIAG A: cached-shell fast path taken.
      if (host && typeof host.getHostKind === 'function') host.openOriginalApp();
      if (typeof loadSession === 'function') await loadSession(localId);
      renderThread(localId);
      closeSidebarIfOpen();
      if (online) bindDesktopSession(desktopSessionId, true, localId);
      return;
    }
    // DIAG B: no cached shell -> bind path. (No side effect; watch for "Preparing".)
    bindDesktopSession(desktopSessionId, false);
  }

  function installHermesEmptyState() {
    var empty = document.getElementById('emptyState');
    if (!empty) return;
    empty.innerHTML =
      '<div class="apers-empty-wordmark">HERMES AGENT</div>' +
      '<p class="apers-empty-subtitle">Search the repo, edit files, run tests, open PRs. ' +
      'Tell me the goal and I’ll handle the mechanical parts.</p>';
  }

  function createDesktopPicker() {
    var existing = document.getElementById('apersDesktopPicker');
    if (existing) return existing;
    var backdrop = document.createElement('div');
    backdrop.id = 'apersDesktopPicker';
    backdrop.className = 'apers-desktop-picker';
    backdrop.hidden = true;
    backdrop.innerHTML =
      '<section class="apers-desktop-sheet" role="dialog" aria-modal="true" ' +
        'aria-labelledby="apersDesktopPickerTitle">' +
        '<div class="apers-desktop-sheet-handle" aria-hidden="true"></div>' +
        '<header class="apers-desktop-sheet-head">' +
          '<div><strong id="apersDesktopPickerTitle">Desktop sessions</strong>' +
          '<small>Open a PC conversation or move this phone chat to Desktop</small></div>' +
          '<button type="button" data-apers-picker-close aria-label="Close">×</button>' +
        '</header>' +
        '<button type="button" class="apers-desktop-new" data-apers-desktop-port>' +
          '<span class="apers-desktop-session-icon">⇧</span>' +
          '<span><strong>Continue this chat on Desktop</strong>' +
          '<small>Copy this phone conversation to Hermes PC</small></span>' +
        '</button>' +
        '<button type="button" class="apers-desktop-new" data-apers-desktop-new>' +
          '<span class="apers-desktop-session-icon">＋</span>' +
          '<span><strong>New Desktop session</strong>' +
          '<small>Start a separate conversation on Hermes PC</small></span>' +
        '</button>' +
        '<label class="apers-desktop-search">' +
          '<span aria-hidden="true">⌕</span>' +
          '<input type="search" placeholder="Search Desktop sessions…" ' +
          'data-apers-desktop-search autocomplete="off"></label>' +
        '<div class="apers-desktop-session-list" data-apers-desktop-list>' +
          '<div class="apers-desktop-picker-state">Loading sessions…</div>' +
        '</div>' +
      '</section>';
    backdrop.addEventListener('click', function (event) {
      if (event.target === backdrop ||
          event.target.closest('[data-apers-picker-close]')) {
        closeDesktopSessions();
      }
      var item = event.target.closest('[data-apers-session-id]');
      if (item) bindDesktopSession(item.dataset.apersSessionId, false);
      if (event.target.closest('[data-apers-desktop-port]')) {
        portPhoneSession();
      }
      if (event.target.closest('[data-apers-desktop-new]')) {
        startNewDesktopSession();
      }
    });
    var search = backdrop.querySelector('[data-apers-desktop-search]');
    search.addEventListener('input', renderDesktopSessionList);
    document.body.appendChild(backdrop);
    return backdrop;
  }

  function showPickerState(message, isError) {
    if (sidebarMode === 'desktop') {
      sidebarState = String(message || '');
      sidebarStateIsError = !!isError;
      renderUnifiedSidebar();
      return;
    }
    if (typeof showToast === 'function') {
      showToast(String(message || ''), 3000, isError ? 'error' : undefined);
      return;
    }
    var picker = createDesktopPicker();
    var list = picker.querySelector('[data-apers-desktop-list]');
    list.innerHTML = '';
    var state = document.createElement('div');
    state.className = 'apers-desktop-picker-state' + (isError ? ' is-error' : '');
    state.textContent = message;
    list.appendChild(state);
  }

  function renderDesktopSessionList() {
    writeJson(DESKTOP_CATALOG_KEY, desktopSessions);
    sidebarState = '';
    sidebarStateIsError = false;
    setDesktopRetry(null);
    if (sidebarMode === 'desktop') {
      renderUnifiedSidebar();
      return;
    }
    var picker = createDesktopPicker();
    var list = picker.querySelector('[data-apers-desktop-list]');
    var search = picker.querySelector('[data-apers-desktop-search]');
    var query = String(search && search.value || '').trim().toLowerCase();
    var selected = isDesktopConversation(activeSessionId())
      ? activeBinding() : null;
    list.innerHTML = '';
    var shown = desktopSessions.filter(function (session) {
      if (!query) return true;
      return (String(session.title || '') + ' ' + String(session.preview || ''))
        .toLowerCase().indexOf(query) >= 0;
    });
    if (!shown.length) {
      showPickerState(query ? 'No matching Desktop sessions.' : 'No Desktop sessions yet.', false);
      return;
    }
    shown.forEach(function (session) {
      var row = document.createElement('button');
      row.type = 'button';
      row.className = 'apers-desktop-session';
      row.dataset.apersSessionId = session.id;
      if (selected && selected.id === session.id) row.classList.add('is-selected');
      var icon = document.createElement('span');
      icon.className = 'apers-desktop-session-icon';
      icon.textContent = selected && selected.id === session.id ? '✓' : '▢';
      var copy = document.createElement('span');
      copy.className = 'apers-desktop-session-copy';
      var title = document.createElement('strong');
      title.textContent = session.title || 'Untitled session';
      var preview = document.createElement('small');
      preview.textContent = session.preview || session.source || 'Hermes Desktop';
      copy.appendChild(title);
      copy.appendChild(preview);
      var meta = document.createElement('span');
      meta.className = 'apers-desktop-session-meta';
      meta.textContent = formatSessionAge(session.last_active);
      row.appendChild(icon);
      row.appendChild(copy);
      row.appendChild(meta);
      list.appendChild(row);
    });
  }

  function formatSessionAge(timestamp) {
    var seconds = Math.max(0, Date.now() / 1000 - Number(timestamp || 0));
    if (seconds < 60) return 'now';
    if (seconds < 3600) return Math.floor(seconds / 60) + 'm';
    if (seconds < 86400) return Math.floor(seconds / 3600) + 'h';
    if (seconds < 604800) return Math.floor(seconds / 86400) + 'd';
    return new Date(Number(timestamp || 0) * 1000).toLocaleDateString(
      undefined, { month: 'short', day: 'numeric' });
  }

  async function openDesktopSessions() {
    setSidebarMode('desktop');
  }

  function closeDesktopSessions(fromHistory) {
    var picker = document.getElementById('apersDesktopPicker');
    if (!pickerOpen || !picker) return;
    pickerOpen = false;
    picker.classList.remove('is-open');
    picker.hidden = true;
    if (pickerHistory && !fromHistory) {
      pickerHistory = false;
      history.back();
    } else {
      pickerHistory = false;
    }
  }

  function dispatchControl(conversation, kind, prompt, sessionId, extra) {
    var host = bridge();
    if (!host || typeof host.sendToComputer !== 'function' || !refreshLinkStatus() ||
        (connectionChecked && !online)) {
      showPickerState('Hermes PC is unreachable.', true);
      return;
    }
    controlRequests[conversation] = Object.assign({
      kind: kind,
      sessionId: sessionId,
      conversationId: conversationId(sessionId),
      created: Date.now()
    }, extra || {});
    host.sendToComputer(conversation, prompt);
  }

  function requestDesktopSessions(sessionId) {
    dispatchControl(
      CONTROL_LIST_ID,
      'list',
      CONTROL_LIST_PROMPT + '\n' + JSON.stringify({
        conversation_id: conversationId(sessionId)
      }),
      sessionId);
  }

  function renameDesktopSession(desktopSessionId, title) {
    var owner = activeSessionId() || '__desktop_sidebar__';
    dispatchControl(
      CONTROL_RENAME_ID,
      'rename',
      CONTROL_RENAME_PROMPT + '\n' + JSON.stringify({
        conversation_id: conversationId(owner),
        session_id: desktopSessionId,
        title: title
      }),
      owner,
      { desktopSessionId: desktopSessionId });
  }

  function archiveDesktopSession(desktopSessionId) {
    var owner = activeSessionId() || '__desktop_sidebar__';
    dispatchControl(
      CONTROL_ARCHIVE_ID,
      'archive',
      CONTROL_ARCHIVE_PROMPT + '\n' + JSON.stringify({
        conversation_id: conversationId(owner),
        session_id: desktopSessionId,
        archived: true
      }),
      owner,
      { desktopSessionId: desktopSessionId });
  }

  async function ensureDesktopShell(desktopSessionId) {
    // Reuse before create so a retry after a failed bind never orphans shells.
    // A prior attempt may have already minted a Desktop shell (via a successful
    // newSession that then failed at the bind stage) — that shell is the active
    // Desktop conversation and is reused here rather than duplicated.
    if (desktopSessionId) {
      var existing = localShellForDesktop(desktopSessionId);
      if (existing) return existing;
    }
    var current = activeSessionId();
    if (isDesktopConversation(current)) return current;
    await newSession(undefined, { worktree: false });
    if (typeof renderSessionList === 'function') await renderSessionList();
    var sessionId = activeSessionId();
    markDesktopConversation(sessionId);
    saveThread(sessionId, {
      conversationId: conversationId(sessionId),
      messages: []
    });
    return sessionId;
  }

  async function bindDesktopSession(desktopSessionId, silent, sessionOverride) {
    var sessionId = sessionOverride || activeSessionId();
    if (!silent && !isDesktopConversation(sessionId)) {
      if (!refreshLinkStatus()) {
        showPickerState('Hermes PC is unreachable.', true);
        return;
      }
      // Double-tap guard: a second tap on the same (or any) uncached Desktop
      // session while a prepare is in flight must not start a parallel shell.
      if (preparingDesktopId) return;
      preparingDesktopId = String(desktopSessionId);
      setDesktopRetry(null);
      showPickerState('Preparing this Desktop conversation…', false);
      try {
        sessionId = await ensureDesktopShell(desktopSessionId);
      } catch (err) {
        // A rejected/timed-out /api/session/new (phone backend) previously left
        // "Preparing…" on screen indefinitely. Surface a bounded, actionable
        // error and keep the catalogue usable; retry reuses any shell already made.
        preparingDesktopId = '';
        var timedOut = err && (err.timeout === true || err.name === 'TimeoutError');
        showDesktopError(
          timedOut
            ? 'Preparing this conversation timed out. Tap to try again.'
            : 'Could not prepare this conversation on the phone. Tap to try again.',
          function () { bindDesktopSession(desktopSessionId, false); });
        return;
      }
      preparingDesktopId = '';
    }
    // A user-initiated selection must not be blocked by a stale/silent bind that
    // is still sitting in the pending map (e.g. a background auto-rebind whose
    // result never arrived, possibly persisted across restarts). Clear any
    // outstanding bind requests before dispatching this one, so the newest
    // explicit selection always wins. Silent auto-rebinds still defer to an
    // in-flight bind.
    if (!silent) {
      dropControlRequests('bind');
    }
    if (!sessionId || hasPendingControl('bind')) {
      // A bind is already in flight (e.g. a silent auto-rebind); do not stack a
      // second dispatch. The in-flight bind owns the loading state, so clear any
      // "Preparing…" text this non-silent attempt put up rather than stranding it.
      if (!silent && sidebarState === 'Preparing this Desktop conversation…') {
        showPickerState('', false);
      }
      return;
    }
    if (!silent) {
      setDesktopRetry(null);
      showPickerState('Loading conversation…', false);
    }
    dispatchControl(
      CONTROL_BIND_ID,
      'bind',
      CONTROL_BIND_PROMPT + '\n' + JSON.stringify({
        conversation_id: conversationId(sessionId),
        session_id: desktopSessionId
      }),
      sessionId,
      { desktopSessionId: desktopSessionId, silent: !!silent });
  }

  async function startNewDesktopSession() {
    var sessionId = activeSessionId();
    if (!isDesktopConversation(sessionId)) {
      if (!refreshLinkStatus()) {
        showPickerState('Hermes PC is unreachable.', true);
        return;
      }
      sessionId = await ensureDesktopShell();
    }
    if (!sessionId || hasPendingControl('new')) return;
    showPickerState('Preparing a new Desktop session…', false);
    dispatchControl(
      CONTROL_NEW_ID,
      'new',
      CONTROL_NEW_PROMPT + '\n' + JSON.stringify({
        conversation_id: conversationId(sessionId)
      }),
      sessionId);
  }

  function boundedPhoneTranscript() {
    var source = typeof S !== 'undefined' && Array.isArray(S.messages)
      ? S.messages : [];
    var rows = source.map(function (message) {
      var role = String(message.role || '');
      if (role !== 'user' && role !== 'assistant' && role !== 'tool') return null;
      var row = {
        role: role,
        content: String(message.content || '').slice(0, 12000),
        timestamp: Number(message.timestamp || message._ts) || Date.now() / 1000
      };
      if (role === 'assistant' && Array.isArray(message.tool_calls)) {
        row.tool_calls = message.tool_calls;
      }
      if (role === 'tool') {
        if (!message.tool_call_id) return null;
        row.tool_call_id = String(message.tool_call_id);
        row.name = String(message.name || message.tool_name || '').slice(0, 160);
      }
      if (message.reasoning || message.reasoning_content) {
        row.reasoning = String(
          message.reasoning_content || message.reasoning).slice(0, 12000);
      }
      return row;
    }).filter(Boolean);
    var kept = [];
    var size = 0;
    for (var i = rows.length - 1; i >= 0; i--) {
      var encoded = JSON.stringify(rows[i]);
      if (kept.length && size + encoded.length > 42000) break;
      kept.unshift(rows[i]);
      size += encoded.length;
    }
    while (kept.length && kept[0].role !== 'user') kept.shift();
    return kept;
  }

  function portPhoneSession() {
    var sessionId = activeSessionId();
    if (!sessionId || isDesktopConversation(sessionId) ||
        hasPendingControl('port')) return;
    var messages = boundedPhoneTranscript();
    if (!messages.length) {
      showPickerState('Send at least one message before moving this chat.', true);
      return;
    }
    showPickerState('Copying this conversation to Hermes PC…', false);
    dispatchControl(
      CONTROL_PORT_ID,
      'port',
      CONTROL_PORT_PROMPT + '\n' + JSON.stringify({
        conversation_id: conversationId(sessionId),
        port_id: conversationId(sessionId),
        title: String(S.session && S.session.title || '').slice(0, 120),
        model: String(S.session && S.session.model || '').slice(0, 160),
        workspace: String(S.session && S.session.workspace || '').slice(0, 1024),
        messages: messages
      }),
      sessionId);
  }

  function hasPendingControl(kind) {
    return Object.keys(pending).some(function (id) {
      return pending[id] && pending[id].kind === kind;
    }) || Object.keys(controlRequests).some(function (id) {
      return controlRequests[id] && controlRequests[id].kind === kind;
    });
  }

  // Forget outstanding control requests of a kind (both stages: awaiting dispatch
  // in controlRequests, and awaiting result in pending). Used so a fresh
  // user-initiated selection is never blocked by an earlier control op — most
  // importantly a stale bind, which otherwise persists in localStorage and makes
  // hasPendingControl('bind') true forever, silently swallowing every tap.
  function dropControlRequests(kind) {
    var changed = false;
    Object.keys(controlRequests).forEach(function (id) {
      if (controlRequests[id] && controlRequests[id].kind === kind) {
        delete controlRequests[id];
      }
    });
    Object.keys(pending).forEach(function (id) {
      if (pending[id] && pending[id].kind === kind) {
        delete pending[id];
        changed = true;
      }
    });
    if (changed) writeJson(PENDING_KEY, pending);
  }

  // Records the action that a "Tap to try again" affordance re-runs, and reflects
  // it into whichever surface (unified sidebar or picker) is currently visible.
  function setDesktopRetry(action) {
    desktopRetry = typeof action === 'function' ? action : null;
  }

  function showDesktopError(message, retryAction) {
    setDesktopRetry(retryAction);
    showPickerState(message, true);
  }

  // Expire control requests that were accepted but never answered so a stuck
  // "Loading conversation…" (or any control op) resolves into an actionable
  // error instead of hanging. Runs from the existing poll loop. A control op
  // waiting on a bind result offers a safe retry that reuses the shell.
  function expireStaleControls() {
    var now = Date.now();
    var expired = false;
    var expiredBind = null;
    Object.keys(controlRequests).forEach(function (conversation) {
      var control = controlRequests[conversation];
      if (!control) return;
      // A control request with no timestamp (older format, or restored from a
      // previous run) must be treated as already stale rather than skipped
      // forever — otherwise it blocks hasPendingControl() indefinitely.
      if (control.created && now - control.created <= CONTROL_TIMEOUT_MS) return;
      delete controlRequests[conversation];
      expired = true;
      if (control.kind === 'bind' && !control.silent) expiredBind = control;
    });
    Object.keys(pending).forEach(function (id) {
      var owner = pending[id];
      if (!owner || !owner.kind) return;
      if (owner.created && now - owner.created <= CONTROL_TIMEOUT_MS) return;
      delete pending[id];
      expired = true;
      if (owner.kind === 'bind' && !owner.silent) expiredBind = owner;
    });
    if (!expired) return;
    writeJson(PENDING_KEY, pending);
    if (expiredBind) {
      var desktopSessionId = expiredBind.desktopSessionId;
      showDesktopError(
        'The computer did not respond. Tap to try again.',
        function () { bindDesktopSession(desktopSessionId, false); });
    } else if (sidebarState === 'Loading conversation…' ||
               sidebarState === 'Preparing this Desktop conversation…' ||
               sidebarState === 'Preparing a new Desktop session…') {
      // A non-bind control (or a silent bind) was the only thing keeping a
      // loading state up; clear it so the catalogue is usable again.
      showPickerState('The computer did not respond. Please try again.', true);
    }
  }

  function closeSidebarIfOpen() {
    var sidebar = document.querySelector('.sidebar');
    if (!sidebar || !sidebar.classList.contains('mobile-open')) return false;
    if (typeof closeMobileSidebar === 'function') {
      closeMobileSidebar();
    } else {
      sidebar.classList.remove('mobile-open', 'mobile-session-page', 'mobile-panel-drawer');
      var overlay = document.getElementById('mobileOverlay');
      if (overlay) overlay.classList.remove('visible');
    }
    return true;
  }

  function installDrawerBackdrop() {
    var sidebar = document.querySelector('.sidebar');
    var overlay = document.getElementById('mobileOverlay');
    if (!sidebar || !overlay || overlay.dataset.apersDrawerBackdrop === '1') return;
    overlay.dataset.apersDrawerBackdrop = '1';
    var sync = function () {
      overlay.classList.toggle('visible', sidebar.classList.contains('mobile-open'));
    };
    new MutationObserver(sync).observe(sidebar, {
      attributes: true,
      attributeFilter: ['class']
    });
    sync();
  }

  function onDispatch(event) {
    var conversation = event && event.conversation_id;
    var control = conversation && controlRequests[conversation];
    if (control) {
      delete controlRequests[conversation];
      if (!event.ok || !event.id) {
        online = false;
        connectionChecked = true;
        updateTargetUi();
        if (!control.silent) {
          if (control.kind === 'bind') {
            var retryDesktopId = control.desktopSessionId;
            showDesktopError(
              'Computer connection failed: ' + String(event.error || 'Unknown error') +
                '. Tap to try again.',
              function () { bindDesktopSession(retryDesktopId, false); });
          } else {
            showPickerState(
              'Computer connection failed: ' + String(event.error || 'Unknown error'),
              true);
          }
        }
        return;
      }
      online = true;
      connectionChecked = true;
      // Restart the deadline clock from native-accept so a slow-to-answer
      // companion is timed from when the PC actually received the request.
      control.created = Date.now();
      pending[String(event.id)] = control;
      writeJson(PENDING_KEY, pending);
      updateTargetUi();
      return;
    }
    var sessionId = event && event.conversation_id
      ? dispatching[event.conversation_id] || activeSessionId()
      : activeSessionId();
    if (conversation) delete dispatching[conversation];
    if (!event || !event.ok || !event.id) {
      online = false;
      connectionChecked = true;
      updateTargetUi();
      var failedThread = readThread(sessionId);
      for (var i = failedThread.messages.length - 1; i >= 0; i--) {
        if (failedThread.messages[i]._pending) {
          failedThread.messages[i]._pending = false;
          break;
        }
      }
      failedThread.messages.push({
        role: 'assistant',
        content: 'Computer connection failed: ' + String(event && event.error || 'Unknown error'),
        _ts: Date.now() / 1000
      });
      saveThread(sessionId, failedThread);
      renderThread(sessionId);
      setComposerBusy(false, '');
      return;
    }
    online = true;
    connectionChecked = true;
    updateTargetUi();
    var threadSessionId = sessionId;
    var thread = readThread(threadSessionId);
    for (var j = thread.messages.length - 1; j >= 0; j--) {
      if (thread.messages[j]._pending && !thread.messages[j]._remoteRef) {
        thread.messages[j]._remoteRef = String(event.id);
        break;
      }
    }
    pending[String(event.id)] = {
      sessionId: threadSessionId,
      conversationId: thread.conversationId,
      created: Date.now(),
      worklog: { tools: {} }
    };
    writeJson(PENDING_KEY, pending);
    saveThread(threadSessionId, thread);
    renderThread(threadSessionId);
  }

  function onResults(payload) {
    online = true;
    connectionChecked = true;
    updateTargetUi();
    var results = payload && Array.isArray(payload.results) ? payload.results : [];
    var accepted = [];
    results.forEach(function (result) {
      var ref = String(result && result.ref || '');
      var owner = pending[ref];
      if (!owner) return;
      if (owner.kind) {
        handleControlResult(owner, result);
        delete pending[ref];
        accepted.push(String(result.id));
        return;
      }
      var unwrapped = unwrapComputerResult(result.text || '');
      if (unwrapped.indexOf(PROGRESS_PREFIX) === 0) {
        try {
          applyRemoteProgress(owner, ref, JSON.parse(
            unwrapped.slice(PROGRESS_PREFIX.length) || '{}'));
        } catch (_) {
          // A malformed progress update must not consume the actual task.
        }
        accepted.push(String(result.id));
        return;
      }
      var thread = readThread(owner.sessionId);
      thread.messages.forEach(function (message) {
        if (message._remoteRef === ref) message._pending = false;
      });
      settleUnfinishedRemoteTools(
        owner, thread, result.ok ? '' : unwrapped, !result.ok);
      thread.messages.push({
        role: 'assistant',
        content: unwrapped || (result.ok ? '(no output)' : 'Computer task failed.'),
        _ts: Number(result.created) || Date.now() / 1000,
        _computer: true,
        _error: !result.ok
      });
      saveThread(owner.sessionId, thread);
      if (result.session_id && !bindings[owner.sessionId]) {
        bindings[owner.sessionId] = {
          id: String(result.session_id),
          title: 'Desktop conversation',
          source: 'desktop',
          last_active: Number(result.created) || Date.now() / 1000
        };
        markDesktopConversation(owner.sessionId);
        writeJson(BINDINGS_KEY, bindings);
      }
      delete pending[ref];
      accepted.push(String(result.id));
      if (typeof S !== 'undefined') {
        if (typeof clearLiveToolCards === 'function') clearLiveToolCards();
        S.activeStreamId = null;
        S.toolCalls = [];
      }
      setComposerBusy(false, '');
      renderThread(owner.sessionId);
    });
    if (accepted.length) {
      writeJson(PENDING_KEY, pending);
      var host = bridge();
      if (host && typeof host.ackComputerResults === 'function') {
        host.ackComputerResults(JSON.stringify(accepted));
      }
    }
  }

  function applyDesktopHistory(owner, value) {
    var remoteSession = value.session || {};
    sidebarMode = 'desktop';
    reflectSidebarMode();
    bindings[owner.sessionId] = remoteSession;
    markDesktopConversation(owner.sessionId);
    writeJson(BINDINGS_KEY, bindings);
    var thread = {
      conversationId: owner.conversationId,
      messages: (Array.isArray(value.messages) ? value.messages : []).map(function (message) {
        var mapped = {
          role: message.role,
          content: String(message.content || ''),
          _ts: Number(message.timestamp) || Date.now() / 1000,
          _computer: true
        };
        if (Array.isArray(message.tool_calls)) {
          mapped.tool_calls = message.tool_calls;
        }
        if (message.tool_call_id) {
          mapped.tool_call_id = String(message.tool_call_id);
        }
        if (message.name) mapped.name = String(message.name);
        if (message.reasoning) mapped.reasoning = String(message.reasoning);
        return mapped;
      })
    };
    saveThread(owner.sessionId, thread);
    lastDesktopSync = Date.now();
    updateTargetUi();
    renderThread(owner.sessionId);
    var title = String(remoteSession.title || '').trim();
    if (title && typeof api === 'function') {
      api('/api/session/rename', {
        method: 'POST',
        body: JSON.stringify({ session_id: owner.sessionId, title: title })
      }).then(function () {
        if (S.session && S.session.session_id === owner.sessionId) {
          S.session.title = title;
          if (typeof syncTopbar === 'function') syncTopbar();
        }
        if (typeof renderSessionList === 'function') renderSessionList();
      }).catch(function () {});
    }
    return remoteSession;
  }

  function handleControlResult(owner, result) {
    var body = unwrapComputerResult(result.text || '');
    var value;
    try {
      value = JSON.parse(body || '{}');
    } catch (_) {
      value = { error: 'The Desktop returned an invalid response.' };
    }
    if (!result.ok || value.error) {
      if (!owner.silent) {
        if (owner.kind === 'bind') {
          var failedDesktopId = owner.desktopSessionId;
          showDesktopError(
            String(value.error || 'Desktop request failed.') + ' Tap to try again.',
            function () { bindDesktopSession(failedDesktopId, false); });
        } else {
          showPickerState(String(value.error || 'Desktop request failed.'), true);
        }
      }
      return;
    }
    if (owner.kind === 'list') {
      desktopSessions = Array.isArray(value.sessions) ? value.sessions : [];
      writeJson(DESKTOP_CATALOG_KEY, desktopSessions);
      var selectedId = String(value.selected_session_id || '');
      var selected = desktopSessions.find(function (session) {
        return session.id === selectedId;
      });
      var desktopOwner = isDesktopConversation(owner.sessionId);
      if (desktopOwner && selected) {
        bindings[owner.sessionId] = selected;
        writeJson(BINDINGS_KEY, bindings);
      } else if (desktopOwner && !selectedId && bindings[owner.sessionId]) {
        delete bindings[owner.sessionId];
        writeJson(BINDINGS_KEY, bindings);
      }
      updateTargetUi();
      renderDesktopSessionList();
      if (desktopOwner && selected && !hasPendingControl('bind')) {
        bindDesktopSession(selected.id, true, owner.sessionId);
      }
      return;
    }
    if (owner.kind === 'bind') {
      var remoteSession = applyDesktopHistory(owner, value);
      if (!owner.silent) {
        closeDesktopSessions();
        closeSidebarIfOpen();
        if (typeof showToast === 'function') {
          showToast('Continuing “' + (remoteSession.title || 'Desktop session') + '”.', 2600);
        }
      } else if (pickerOpen) {
        renderDesktopSessionList();
      }
      return;
    }
    if (owner.kind === 'new') {
      delete bindings[owner.sessionId];
      markDesktopConversation(owner.sessionId);
      writeJson(BINDINGS_KEY, bindings);
      saveThread(owner.sessionId, {
        conversationId: owner.conversationId,
        messages: []
      });
      updateTargetUi();
      renderThread(owner.sessionId);
      closeDesktopSessions();
      closeSidebarIfOpen();
      if (typeof showToast === 'function') {
        showToast('New Desktop session ready.', 2200);
      }
      return;
    }
    if (owner.kind === 'port') {
      var ported = applyDesktopHistory(owner, value);
      closeDesktopSessions();
      if (typeof showToast === 'function') {
        showToast(
          '“' + (ported.title || 'Phone conversation') + '” is now available on Desktop.',
          3200);
      }
      renderUnifiedSidebar();
      return;
    }
    if (owner.kind === 'rename') {
      var renamedId = String(value.session_id || owner.desktopSessionId || '');
      var renamed = desktopSessions.find(function (session) {
        return String(session.id) === renamedId;
      });
      if (renamed) renamed.title = String(value.title || renamed.title || '');
      writeJson(DESKTOP_CATALOG_KEY, desktopSessions);
      if (typeof showToast === 'function') showToast('Desktop session renamed.', 2200);
      requestDesktopSessions(owner.sessionId || '__desktop_sidebar__');
      renderUnifiedSidebar();
      return;
    }
    if (owner.kind === 'archive') {
      var archivedId = String(value.session_id || owner.desktopSessionId || '');
      desktopSessions = desktopSessions.filter(function (session) {
        return String(session.id) !== archivedId;
      });
      Object.keys(bindings).forEach(function (localId) {
        if (bindings[localId] && String(bindings[localId].id) === archivedId) {
          delete bindings[localId];
        }
      });
      writeJson(BINDINGS_KEY, bindings);
      writeJson(DESKTOP_CATALOG_KEY, desktopSessions);
      if (typeof showToast === 'function') showToast('Desktop session archived.', 2200);
      renderUnifiedSidebar();
      requestDesktopSessions(owner.sessionId || '__desktop_sidebar__');
    }
  }

  function unwrapComputerResult(value) {
    var text = String(value);
    if (text.indexOf(RESULT_PREFIX) !== 0) return text;
    var newline = text.indexOf('\n');
    return newline < 0 ? '' : text.slice(newline + 1);
  }

  function onPollError() {
    online = false;
    connectionChecked = true;
    updateTargetUi();
    if (sidebarMode === 'desktop') renderUnifiedSidebar();
  }

  function onPollStatus(event) {
    online = !!(event && event.ok);
    connectionChecked = true;
    updateTargetUi();
    if (sidebarMode === 'desktop') renderUnifiedSidebar();
  }

  function pollComputer() {
    var host = bridge();
    if (!host || typeof host.pollComputer !== 'function') return;
    if (!refreshLinkStatus()) return;
    host.pollComputer();
  }

  function revealAndroidActions() {
    var host = bridge();
    if (!host) return;
    document.documentElement.classList.add('apers-android-host');
    if (document.body) document.body.classList.add('apers-android-host');
    document.querySelectorAll('[data-apers-android-only]').forEach(function (element) {
      if (element.closest('.rail')) return;
      element.hidden = false;
      element.removeAttribute('aria-hidden');
    });
    refreshLinkStatus();
  }

  window.openOriginalApp = function () {
    var host = bridge();
    if (!host) return false;
    host.openOriginalApp();
    return true;
  };

  window.ApersComputerChat = {
    openDesktop: openDesktop,
    openDesktopSessions: openDesktopSessions,
    onDispatch: onDispatch,
    onResults: onResults,
    onPollError: onPollError,
    onPollStatus: onPollStatus
  };

  window.ApersAndroidChrome = {
    closeSidebarIfOpen: closeSidebarIfOpen
  };

  if (typeof window.send === 'function') {
    var phoneSend = window.send;
    window.send = function () {
      if (isDesktopConversation(activeSessionId())) return sendComputerMessage();
      if (pendingBusyAction && typeof S !== 'undefined' && S.busy) {
        var input = document.getElementById('msg');
        var draft = input ? String(input.value || '').trim() : '';
        if (draft) {
          var action = pendingBusyAction;
          if (action === 'steer' && !S.activeStreamId) action = 'queue';
          var fnName = action === 'queue' ? 'cmdQueue'
            : action === 'steer' ? 'cmdSteer'
            : action === 'interrupt' ? 'cmdInterrupt' : null;
          pendingBusyAction = null;
          clearBusyActionChip();
          input.value = '';
          if (typeof autoResize === 'function') autoResize();
          if (typeof updateSendBtn === 'function') updateSendBtn();
          if (fnName && typeof window[fnName] === 'function') {
            return window[fnName](draft);
          }
          input.value = draft;
          if (typeof autoResize === 'function') autoResize();
          if (typeof updateSendBtn === 'function') updateSendBtn();
        }
      }
      return phoneSend.apply(this, arguments);
    };
  }

  // Route the composer's Stop button to the Desktop cancel path when the active
  // conversation is a Desktop turn. The base cancelStream() only knows how to
  // cancel the phone's local /api/chat stream, which does nothing for a turn
  // running on the PC. Returning true tells handleComposerPrimaryAction the
  // stop succeeded (no "cancel_failed" toast).
  function installDesktopCancelStreamWrap() {
    if (typeof window.cancelStream !== 'function') return;
    var phoneCancelStream = window.cancelStream;
    window.cancelStream = function () {
      if (isDesktopConversation(activeSessionId())) {
        return Promise.resolve(cancelComputerTask());
      }
      return phoneCancelStream.apply(this, arguments);
    };
  }
  // Install on DOMContentLoaded: cancelStream is defined in boot.js, which loads after this file.
  if (document.readyState === 'complete') installDesktopCancelStreamWrap();
  else document.addEventListener('DOMContentLoaded', installDesktopCancelStreamWrap, { once: true });

  // Make the composer's primary button show Stop for a running Desktop (PC) turn.
  // The base getComposerPrimaryAction only returns 'stop' when S.activeStreamId is
  // set — but a Desktop turn sets S.busy without an activeStreamId until (and
  // unless) the PC starts emitting tool events, so the Stop button never appeared
  // for a PC task that was just thinking or running a single process. A Desktop
  // cancel goes through cancelComputerTask() (companion kill), which needs no
  // stream id, so it's safe to offer Stop whenever the Desktop turn is busy and
  // the composer is empty. With draft text, defer to the base action (send).
  if (typeof window.getComposerPrimaryAction === 'function') {
    var basePrimaryAction = window.getComposerPrimaryAction;
    window.getComposerPrimaryAction = function () {
      if (isDesktopConversation(activeSessionId()) &&
          typeof S !== 'undefined' && S.busy) {
        var input = document.getElementById('msg');
        var hasContent = !!(input && String(input.value || '').trim());
        if (!hasContent) return 'stop';
      }
      if (pendingBusyAction && typeof S !== 'undefined' && S.busy &&
          !isDesktopConversation(activeSessionId())) {
        var pi = document.getElementById('msg');
        if (pi && String(pi.value || '').trim()) {
          var eff = (pendingBusyAction === 'steer' && !S.activeStreamId) ? 'queue' : pendingBusyAction;
          return eff;
        }
      }
      return basePrimaryAction.apply(this, arguments);
    };
  }

  // ── Mobile busy-mode picker (Queue / Steer / Interrupt) ──────────────────
  // Android-host only. While a phone (non-Desktop) turn is running and the
  // composer has a draft, a picker button next to #btnSend lets the user pick
  // the per-message busy action without typing a slash and without changing
  // the global _defaultMessageMode. The choice is held in pendingBusyAction,
  // shown on #btnSend via the getComposerPrimaryAction wrap above, shown as a
  // "Next:" chip, and consumed by the send() wrap above (cmdQueue/cmdSteer/
  // cmdInterrupt). Desktop turns use Stop, not this picker.
  var BUSY_ACTION_ICONS = {
    queue: '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M16 5H3"/><path d="M16 12H3"/><path d="M9 19H3"/><path d="m16 16-3 3 3 3"/><path d="M21 5v12a2 2 0 0 1-2 2h-6"/></svg>',
    steer: '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><circle cx="12" cy="12" r="10"/><path d="m16.24 7.76-1.804 5.411a2 2 0 0 1-1.265 1.265L7.76 16.24l1.804-5.411a2 2 0 0 1 1.265-1.265z"/></svg>',
    interrupt: '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M21 4v16"/><path d="M6.029 4.285A2 2 0 0 0 3 6v12a2 2 0 0 0 3.029 1.715l9.997-5.998a2 2 0 0 0 .003-3.432z"/></svg>'
  };
  var BUSY_ACTION_LABELS = { queue: 'Queue', steer: 'Steer', interrupt: 'Interrupt' };

  function pickerHostReady() {
    return document.documentElement.classList.contains('apers-android-host');
  }

  function pickerEnabledForCurrent() {
    if (!pickerHostReady()) return false;
    if (typeof S === 'undefined' || !S.busy) return false;
    if (isDesktopConversation(activeSessionId())) return false;
    var input = document.getElementById('msg');
    if (!input || !String(input.value || '').trim()) return false;
    return true;
  }

  function clearBusyActionChip() {
    var chip = document.getElementById('apersBusyActionChip');
    if (chip) chip.hidden = true;
    if (typeof updateSendBtn === 'function') updateSendBtn();
  }

  function setPendingBusyAction(action) {
    pendingBusyAction = action;
    var chip = document.getElementById('apersBusyActionChip');
    if (chip) {
      var label = document.getElementById('apersBusyActionChipLabel');
      if (label) label.textContent = BUSY_ACTION_LABELS[action] || action;
      chip.hidden = false;
    }
    if (typeof updateSendBtn === 'function') updateSendBtn();
  }

  function closeBusyActionPicker() {
    var panel = document.getElementById('apersBusyPickerPanel');
    if (panel) panel.classList.remove('open');
  }

  function openBusyActionPicker() {
    var panel = document.getElementById('apersBusyPickerPanel');
    if (!panel) return;
    var cur = pendingBusyAction || window._defaultMessageMode || 'steer';
    panel.querySelectorAll('.apers-busy-picker-item').forEach(function (item) {
      item.classList.toggle('selected', item.dataset.busyAction === cur);
      var dis = item.dataset.busyAction === 'steer' &&
        (typeof S === 'undefined' || !S.activeStreamId);
      item.classList.toggle('disabled', !!dis);
      item.setAttribute('aria-disabled', dis ? 'true' : 'false');
    });
    panel.classList.add('open');
  }

  function updateBusyPickerVisibility() {
    var btn = document.getElementById('apersBusyPickerBtn');
    if (!btn) return;
    var enabled = pickerEnabledForCurrent();
    btn.hidden = !enabled;
    if (!enabled) {
      closeBusyActionPicker();
      if (pendingBusyAction) {
        pendingBusyAction = null;
        clearBusyActionChip();
      }
    }
  }

  function buildBusyActionPicker() {
    if (busyPickerBuilt) return;
    if (!pickerHostReady()) return;
    var composerBox = document.getElementById('composerBox');
    var btnSend = document.getElementById('btnSend');
    if (!composerBox || !btnSend || document.getElementById('apersBusyPickerBtn')) return;

    var btn = document.createElement('button');
    btn.type = 'button';
    btn.id = 'apersBusyPickerBtn';
    btn.className = 'apers-busy-picker-btn';
    btn.hidden = true;
    btn.setAttribute('aria-label', 'Choose send action');
    btn.setAttribute('aria-haspopup', 'menu');
    btn.innerHTML = '<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M8 6h13"/><path d="M8 12h13"/><path d="M8 18h13"/><path d="M3 6h.01"/><path d="M3 12h.01"/><path d="M3 18h.01"/></svg>';
    btn.addEventListener('click', function (e) {
      e.stopPropagation();
      var panel = document.getElementById('apersBusyPickerPanel');
      if (panel && panel.classList.contains('open')) closeBusyActionPicker();
      else openBusyActionPicker();
    });
    btnSend.parentNode.insertBefore(btn, btnSend);

    var panel = document.createElement('div');
    panel.id = 'apersBusyPickerPanel';
    panel.className = 'apers-busy-picker-panel';
    panel.setAttribute('role', 'menu');
    ['queue', 'steer', 'interrupt'].forEach(function (action) {
      var item = document.createElement('button');
      item.type = 'button';
      item.className = 'apers-busy-picker-item apers-busy-' + action;
      item.dataset.busyAction = action;
      item.setAttribute('role', 'menuitem');
      item.innerHTML = '<span class="apers-busy-picker-icon">' + (BUSY_ACTION_ICONS[action] || '') +
        '</span><span class="apers-busy-picker-text">' + (BUSY_ACTION_LABELS[action] || action) + '</span>';
      item.addEventListener('click', function (e) {
        e.stopPropagation();
        if (item.classList.contains('disabled')) return;
        setPendingBusyAction(action);
        closeBusyActionPicker();
      });
      panel.appendChild(item);
    });
    composerBox.appendChild(panel);

    var chip = document.createElement('div');
    chip.id = 'apersBusyActionChip';
    chip.className = 'apers-busy-action-chip';
    chip.hidden = true;
    chip.innerHTML = '<span class="apers-busy-action-chip-next">Next:</span> ' +
      '<span id="apersBusyActionChipLabel">Steer</span>' +
      '<button type="button" id="apersBusyActionChipClear" class="apers-busy-action-chip-clear" aria-label="Clear action">\u00d7</button>';
    composerBox.insertBefore(chip, composerBox.firstChild);
    var clearBtn = document.getElementById('apersBusyActionChipClear');
    if (clearBtn) clearBtn.addEventListener('click', function (e) {
      e.stopPropagation();
      pendingBusyAction = null;
      clearBusyActionChip();
    });

    document.addEventListener('click', function (e) {
      var p = document.getElementById('apersBusyPickerPanel');
      var b = document.getElementById('apersBusyPickerBtn');
      if (!p || !p.classList.contains('open')) return;
      if (p.contains(e.target) || (b && b.contains(e.target))) return;
      closeBusyActionPicker();
    });
    document.addEventListener('keydown', function (e) {
      if (e.key === 'Escape') closeBusyActionPicker();
    });

    var msg = document.getElementById('msg');
    if (msg) msg.addEventListener('input', updateBusyPickerVisibility);

    busyPickerBuilt = true;
  }

  function start() {
    localStorage.removeItem(LEGACY_TARGET_KEY);
    revealAndroidActions();
    buildBusyActionPicker();
    installUnifiedSidebar();
    installHermesEmptyState();
    installDrawerBackdrop();
    window.addEventListener('popstate', function () {
      if (pickerOpen) closeDesktopSessions(true);
    });
    setSidebarMode('phone');
    updateTargetUi();
    setInterval(function () {
      var current = activeSessionId();
      if (current && current !== lastActiveSessionId &&
          isDesktopConversation(current)) {
        lastActiveSessionId = current;
        renderThread(current);
      } else {
        if (current !== lastActiveSessionId &&
            !isDesktopConversation(current) &&
            typeof setComposerStatus === 'function') {
          setComposerStatus('');
        }
        lastActiveSessionId = current;
      }
      updateTargetUi();
      updateBusyPickerVisibility();
      var binding = activeBinding();
      var normalPending = Object.keys(pending).some(function (id) {
        return pending[id] && !pending[id].kind;
      });
      if (isDesktopConversation(current) && binding && !normalPending &&
          !hasPendingControl('bind') && Date.now() - lastDesktopSync > 20000) {
        bindDesktopSession(binding.id, true);
      }
      expireStaleControls();
      pollComputer();
    }, 1500);
    setTimeout(pollComputer, 400);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', start, { once: true });
  } else {
    start();
  }
})();
