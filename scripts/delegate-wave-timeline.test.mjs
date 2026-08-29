import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";
import test from "node:test";
import { fileURLToPath } from "node:url";

const HERE = path.dirname(fileURLToPath(import.meta.url));
const SOURCE = path.join(HERE, "..", "assets", "webui", "static", "apers-android.js");

function extractFunction(source, name, nextName) {
  const from = source.indexOf(`  function ${name}(`);
  const to = source.indexOf(`  function ${nextName}(`, from + 1);
  assert.ok(from >= 0 && to > from, `${name} block not found`);
  return source.slice(from, to);
}

function loadPresentation() {
  const source = fs.readFileSync(SOURCE, "utf8");
  const block = extractFunction(source, "delegateWaveWakePresentation", "applyDesktopHistory");
  // eslint-disable-next-line no-new-func
  return new Function(`${block}\nreturn delegateWaveWakePresentation;`)();
}

const WAKE = `The delegate-wave session working on "ship it" finished and its result is on the branch.

Use session_poll on asess_123 for what changed.

[delegate-wave-wake:wake_123]`;

test("only a durable typed row can become a Delegate Wave card", () => {
  const present = loadPresentation();
  assert.equal(present({ role: "user", content: WAKE }), null,
    "marker-shaped human prose must remain an ordinary message");
  assert.deepEqual(present({
    role: "user", content: WAKE, display_kind: "delegate_wave_wake",
  }), {
    kind: "completed",
    label: "Delegate Wave · Completed",
    body: "Finished ship it and published the result.",
  });
});

test("typed authority still requires the exact wake marker", () => {
  const present = loadPresentation();
  assert.equal(present({
    role: "user",
    content: "The delegate-wave session working on ship it finished.",
    display_kind: "delegate_wave_wake",
  }), null);
});

test("Desktop history mapping preserves typed timeline identity", () => {
  const source = fs.readFileSync(SOURCE, "utf8");
  const presentation = extractFunction(
    source, "delegateWaveWakePresentation", "applyDesktopHistory");
  const mapping = extractFunction(source, "applyDesktopHistory", "handleControlResult");
  const harness = `
    var sidebarMode, lastDesktopSync, saved;
    var bindings = {};
    var BINDINGS_KEY = 'bindings';
    var S = { session: null };
    function reflectSidebarMode() {}
    function defaultDeviceId() { return 'pc-a'; }
    function markDesktopConversation() {}
    function writeJson() {}
    function saveThread(_id, thread) { saved = thread; }
    function updateTargetUi() {}
    function renderThread() {}
    function api() { return Promise.resolve(); }
    ${presentation}
    ${mapping}
    applyDesktopHistory(
      { sessionId: 'phone-s', conversationId: 'phone-c', deviceId: 'pc-a' },
      { session: { id: 'desktop-s' }, messages: [input] });
    return saved.messages[0];
  `;
  const metadata = { event_id: "wake_123", source: "delegate-wave" };
  // eslint-disable-next-line no-new-func
  const mapped = new Function("input", harness)({
    role: "user",
    content: WAKE,
    timestamp: 1234,
    row_id: 106,
    display_kind: "delegate_wave_wake",
    display_metadata: metadata,
  });
  assert.equal(mapped.role, "user", "a machine event is not rewritten as assistant speech");
  assert.equal(mapped._ts, 1234);
  assert.equal(mapped.row_id, 106);
  assert.equal(mapped.display_kind, "delegate_wave_wake");
  assert.deepEqual(mapped.display_metadata, metadata);
  assert.equal(mapped._source, "delegate_wave_wake");
  assert.equal(mapped._delegateWaveWake.kind, "completed");
});
