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
  var CONTROL_LIST_PROMPT = '__APERS_LIST_DESKTOP_SESSIONS_V1__';
  var CONTROL_BIND_PROMPT = '__APERS_BIND_DESKTOP_SESSION_V1__';
  var CONTROL_NEW_PROMPT = '__APERS_NEW_DESKTOP_SESSION_V1__';
  var CONTROL_PORT_PROMPT = '__APERS_PORT_PHONE_SESSION_V1__';
  var CONTROL_RENAME_PROMPT = '__APERS_RENAME_DESKTOP_SESSION_V1__';
  var CONTROL_ARCHIVE_PROMPT = '__APERS_ARCHIVE_DESKTOP_SESSION_V1__';
  var linked = false;
  var online = false;
  var connectionChecked = false;
  var lastActiveSessionId = null;
  var lastDesktopSync = 0;
  var pending = readJson(PENDING_KEY, {});
  var bindings = readJson(BINDINGS_KEY, {});
  var routes = readJson(ROUTES_KEY, {});
  var dispatching = {};
  var controlRequests = {};
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

  async function createPhoneProject() {
    var name = await showPromptDialog({
      message: 'Create project',
      confirmLabel: 'Create',
      placeholder: 'Project name'
    });
    name = String(name || '').trim();
    if (!name) return;
    var palette = (typeof PROJECT_COLORS !== 'undefined' && PROJECT_COLORS.length)
      ? PROJECT_COLORS : ['#7cb9ff', '#f5c542', '#e94560', '#50c878'];
    try {
      var result = await api('/api/projects/create', {
        method: 'POST',
        body: JSON.stringify({
          name: name,
          color: palette[_allProjects.length % palette.length]
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
            message: 'Rename project',
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
    if (localId) {
      if (typeof loadSession === 'function') await loadSession(localId);
      renderThread(localId);
      closeSidebarIfOpen();
      if (online) bindDesktopSession(desktopSessionId, true, localId);
      return;
    }
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
      conversationId: conversationId(sessionId)
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

  async function ensureDesktopShell() {
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
      showPickerState('Preparing this Desktop conversation…', false);
      sessionId = await ensureDesktopShell();
    }
    if (!sessionId || hasPendingControl('bind')) return;
    if (!silent) showPickerState('Loading conversation…', false);
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
          showPickerState(
            'Computer connection failed: ' + String(event.error || 'Unknown error'),
            true);
        }
        return;
      }
      online = true;
      connectionChecked = true;
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
        showPickerState(String(value.error || 'Desktop request failed.'), true);
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
      return phoneSend.apply(this, arguments);
    };
  }

  function start() {
    localStorage.removeItem(LEGACY_TARGET_KEY);
    revealAndroidActions();
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
      var binding = activeBinding();
      var normalPending = Object.keys(pending).some(function (id) {
        return pending[id] && !pending[id].kind;
      });
      if (isDesktopConversation(current) && binding && !normalPending &&
          !hasPendingControl('bind') && Date.now() - lastDesktopSync > 20000) {
        bindDesktopSession(binding.id, true);
      }
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
