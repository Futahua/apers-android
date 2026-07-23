(function () {
  'use strict';

  var TARGET_KEY = 'apers-chat-target-v1';
  var THREAD_PREFIX = 'apers-computer-thread-v1:';
  var PENDING_KEY = 'apers-computer-pending-v1';
  var BINDINGS_KEY = 'apers-computer-bindings-v1';
  var RESULT_PREFIX = '__APERS_CHAT_RESULT_V1__:';
  var PROGRESS_PREFIX = '__APERS_PROGRESS_V1__\n';
  var CONTROL_LIST_ID = '__desktop_sessions__';
  var CONTROL_BIND_ID = '__desktop_bind__';
  var CONTROL_NEW_ID = '__desktop_new__';
  var CONTROL_LIST_PROMPT = '__APERS_LIST_DESKTOP_SESSIONS_V1__';
  var CONTROL_BIND_PROMPT = '__APERS_BIND_DESKTOP_SESSION_V1__';
  var CONTROL_NEW_PROMPT = '__APERS_NEW_DESKTOP_SESSION_V1__';
  var target = localStorage.getItem(TARGET_KEY) === 'computer' ? 'computer' : 'phone';
  var linked = false;
  var online = false;
  var connectionChecked = false;
  var lastActiveSessionId = null;
  var lastDesktopSync = 0;
  var pending = readJson(PENDING_KEY, {});
  var bindings = readJson(BINDINGS_KEY, {});
  var dispatching = {};
  var controlRequests = {};
  var desktopSessions = [];
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

  function setComposerBusy(busy, status) {
    if (typeof setBusy === 'function') setBusy(!!busy);
    if (typeof setComposerStatus === 'function') setComposerStatus(status || '');
    var button = document.getElementById('apersComputerTarget');
    if (button) button.classList.toggle('is-running', !!busy);
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
    if (!owner || target !== 'computer' || owner.sessionId !== activeSessionId()) return;
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
    if (target !== 'computer' || !sessionId || activeSessionId() !== sessionId) return;
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
    var button = document.getElementById('apersComputerTarget');
    var label = document.getElementById('apersComputerTargetLabel');
    var desktopStatus = document.getElementById('apersDesktopStatus');
    document.querySelectorAll('[data-apers-destination="desktop"]').forEach(function (element) {
      element.classList.toggle('is-active', target === 'computer');
      element.classList.toggle('is-linked', online);
      element.classList.toggle('is-paired', linked);
    });
    if (desktopStatus) {
      var binding = activeBinding();
      desktopStatus.textContent = online
        ? (binding ? binding.title : 'Hermes · PC connected')
        : (linked
          ? (connectionChecked ? 'Hermes · PC unreachable' : 'Hermes · PC checking…')
          : 'Computer not linked');
    }
    if (!button || !label) return;
    button.setAttribute('aria-pressed', target === 'computer' ? 'true' : 'false');
    button.classList.toggle('is-linked', online);
    button.classList.toggle('is-paired', linked);
    button.classList.toggle('is-offline', !online);
    var selected = activeBinding();
    label.textContent = target === 'computer'
      ? (online
        ? (selected ? selected.title : 'Hermes · PC')
        : (linked
          ? (connectionChecked ? 'PC unreachable' : 'PC checking…')
          : 'Computer not linked'))
      : 'This phone';
    button.title = online
      ? 'Hermes on your computer is online'
      : (linked
        ? 'Hermes is paired; checking the live connection'
        : 'Link a computer in the original app, then use it from this chat');
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

  function restorePhoneSession() {
    var sessionId = activeSessionId();
    if (sessionId && typeof loadSession === 'function') {
      Promise.resolve(loadSession(sessionId)).catch(function () {});
    }
  }

  function toggleTarget() {
    setTarget(target === 'computer' ? 'phone' : 'computer');
  }

  function setTarget(nextTarget) {
    target = nextTarget === 'computer' ? 'computer' : 'phone';
    localStorage.setItem(TARGET_KEY, target);
    refreshLinkStatus();
    if (target === 'computer') {
      renderThread(activeSessionId());
    } else {
      setComposerBusy(false, '');
      restorePhoneSession();
    }
  }

  function openDesktop() {
    setTarget('computer');
    if (typeof switchPanel === 'function') {
      switchPanel('chat', { fromRailClick: true });
    }
    if (typeof closeMobileSidebar === 'function') {
      closeMobileSidebar();
    }
    openDesktopSessions();
  }

  async function ensurePhoneSession() {
    if (!S.session && typeof newSession === 'function') {
      await newSession();
      if (typeof renderSessionList === 'function') await renderSessionList();
    }
    return activeSessionId();
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
          '<small>Continue a Hermes PC conversation on this phone</small></div>' +
          '<button type="button" data-apers-picker-close aria-label="Close">×</button>' +
        '</header>' +
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
    var picker = createDesktopPicker();
    var list = picker.querySelector('[data-apers-desktop-list]');
    list.innerHTML = '';
    var state = document.createElement('div');
    state.className = 'apers-desktop-picker-state' + (isError ? ' is-error' : '');
    state.textContent = message;
    list.appendChild(state);
  }

  function renderDesktopSessionList() {
    var picker = createDesktopPicker();
    var list = picker.querySelector('[data-apers-desktop-list]');
    var search = picker.querySelector('[data-apers-desktop-search]');
    var query = String(search && search.value || '').trim().toLowerCase();
    var selected = activeBinding();
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
    var picker = createDesktopPicker();
    picker.hidden = false;
    picker.classList.add('is-open');
    pickerOpen = true;
    if (!pickerHistory) {
      history.pushState({ apersDesktopPicker: true }, '');
      pickerHistory = true;
    }
    showPickerState('Loading sessions…', false);
    var sessionId = await ensurePhoneSession();
    if (!sessionId) {
      showPickerState('Could not create a local conversation.', true);
      return;
    }
    requestDesktopSessions(sessionId);
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
    if (!host || typeof host.sendToComputer !== 'function' || !refreshLinkStatus()) {
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

  function bindDesktopSession(desktopSessionId, silent) {
    var sessionId = activeSessionId();
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

  function startNewDesktopSession() {
    var sessionId = activeSessionId();
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
      var selectedId = String(value.selected_session_id || '');
      var selected = desktopSessions.find(function (session) {
        return session.id === selectedId;
      });
      if (selected) {
        bindings[owner.sessionId] = selected;
        writeJson(BINDINGS_KEY, bindings);
      } else if (!selectedId && bindings[owner.sessionId]) {
        delete bindings[owner.sessionId];
        writeJson(BINDINGS_KEY, bindings);
      }
      updateTargetUi();
      renderDesktopSessionList();
      if (selected && !hasPendingControl('bind')) {
        bindDesktopSession(selected.id, true);
      }
      return;
    }
    if (owner.kind === 'bind') {
      var remoteSession = value.session || {};
      bindings[owner.sessionId] = remoteSession;
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
      if (!owner.silent) {
        closeDesktopSessions();
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
      writeJson(BINDINGS_KEY, bindings);
      saveThread(owner.sessionId, {
        conversationId: owner.conversationId,
        messages: []
      });
      updateTargetUi();
      renderThread(owner.sessionId);
      closeDesktopSessions();
      if (typeof showToast === 'function') {
        showToast('New Desktop session ready.', 2200);
      }
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
  }

  function onPollStatus(event) {
    online = !!(event && event.ok);
    connectionChecked = true;
    updateTargetUi();
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
    toggleTarget: toggleTarget,
    setTarget: setTarget,
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
      if (target === 'computer') return sendComputerMessage();
      return phoneSend.apply(this, arguments);
    };
  }

  function start() {
    revealAndroidActions();
    installDrawerBackdrop();
    createDesktopPicker();
    window.addEventListener('popstate', function () {
      if (pickerOpen) closeDesktopSessions(true);
    });
    updateTargetUi();
    setInterval(function () {
      var current = activeSessionId();
      if (target === 'computer' && current && current !== lastActiveSessionId) {
        lastActiveSessionId = current;
        renderThread(current);
      } else {
        lastActiveSessionId = current;
      }
      var binding = activeBinding();
      var normalPending = Object.keys(pending).some(function (id) {
        return pending[id] && !pending[id].kind;
      });
      if (target === 'computer' && binding && !normalPending &&
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
