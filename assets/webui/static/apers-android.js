(function () {
  'use strict';

  var TARGET_KEY = 'apers-chat-target-v1';
  var THREAD_PREFIX = 'apers-computer-thread-v1:';
  var PENDING_KEY = 'apers-computer-pending-v1';
  var RESULT_PREFIX = '__APERS_CHAT_RESULT_V1__:';
  var target = localStorage.getItem(TARGET_KEY) === 'computer' ? 'computer' : 'phone';
  var linked = false;
  var online = false;
  var connectionChecked = false;
  var lastActiveSessionId = null;
  var pending = readJson(PENDING_KEY, {});
  var dispatching = {};

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

  function setComposerBusy(busy, status) {
    if (typeof setBusy === 'function') setBusy(!!busy);
    if (typeof setComposerStatus === 'function') setComposerStatus(status || '');
    var button = document.getElementById('apersComputerTarget');
    if (button) button.classList.toggle('is-running', !!busy);
  }

  function renderThread(sessionId) {
    if (target !== 'computer' || !sessionId || activeSessionId() !== sessionId) return;
    var thread = readThread(sessionId);
    S.messages = thread.messages.slice();
    if (typeof renderMessages === 'function') renderMessages();
    var waiting = Object.keys(pending).some(function (id) {
      return pending[id] && pending[id].sessionId === sessionId;
    });
    setComposerBusy(waiting, waiting ? 'Hermes is working on your computer…' : '');
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
      desktopStatus.textContent = online
        ? 'Hermes · PC connected'
        : (linked
          ? (connectionChecked ? 'Hermes · PC unreachable' : 'Hermes · PC checking…')
          : 'Computer not linked');
    }
    if (!button || !label) return;
    button.setAttribute('aria-pressed', target === 'computer' ? 'true' : 'false');
    button.classList.toggle('is-linked', online);
    button.classList.toggle('is-paired', linked);
    button.classList.toggle('is-offline', !online);
    label.textContent = target === 'computer'
      ? (online
        ? 'Hermes · PC'
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
    var sessionId = event && event.conversation_id
      ? dispatching[event.conversation_id] || activeSessionId()
      : activeSessionId();
    var conversation = event && event.conversation_id;
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
      created: Date.now()
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
      var thread = readThread(owner.sessionId);
      thread.messages.forEach(function (message) {
        if (message._remoteRef === ref) message._pending = false;
      });
      thread.messages.push({
        role: 'assistant',
        content: unwrapComputerResult(
          result.text || (result.ok ? '(no output)' : 'Computer task failed.')
        ),
        _ts: Number(result.created) || Date.now() / 1000,
        _computer: true,
        _error: !result.ok
      });
      saveThread(owner.sessionId, thread);
      delete pending[ref];
      accepted.push(String(result.id));
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
    updateTargetUi();
    setInterval(function () {
      var current = activeSessionId();
      if (target === 'computer' && current && current !== lastActiveSessionId) {
        lastActiveSessionId = current;
        renderThread(current);
      } else {
        lastActiveSessionId = current;
      }
      pollComputer();
    }, 5000);
    setTimeout(pollComputer, 400);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', start, { once: true });
  } else {
    start();
  }
})();
