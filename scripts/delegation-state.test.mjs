// The delegation state machine, driven directly, under replies that arrive late and out of order.
//
// On-device tapping proves the happy path and nothing else: every reply comes back in order and
// within a second, so it cannot distinguish a correct design from one that merely wins the race
// most of the time. The earlier version passed a device hammer and was still wrong -- a read
// issued before a tap could land after it and silently undo the tap.
//
// This harness extracts the state functions from the shipped file and drives them with the
// transport stubbed, so replies can be held, reordered, dropped, and delivered after the write they
// would contradict. It reads apers-android.js itself rather than a copy, so it cannot drift.
import assert from "node:assert/strict";
import fs from "node:fs";
import path from "node:path";
import test from "node:test";
import { fileURLToPath } from "node:url";

const HERE = path.dirname(fileURLToPath(import.meta.url));
const SOURCE = path.join(HERE, "..", "assets", "webui", "static", "apers-android.js");

// Pull the delegation block out of the IIFE and give it the handful of globals it touches. Sliced
// by the comment banners that delimit it, so a rename inside the block cannot silently empty this.
function loadStateMachine() {
  const text = fs.readFileSync(SOURCE, "utf8");
  const from = text.indexOf("  // DELEGATION STATE: PER COMPUTER, DESIRED vs CONFIRMED.");
  const to = text.indexOf("  function markPeerSeen(deviceId)");
  assert.ok(from > 0 && to > from, "delegation block not found in apers-android.js");
  const block = text.slice(from, to);

  const sent = [];
  const harness = `
    var delegationReadAt = 0;
    var target = 'pc-a';
    var offlinePeers = {};
    var CONTROL_DELEGATION_GET_ID = 'get', CONTROL_DELEGATION_SET_ID = 'set';
    var CONTROL_DELEGATION_GET_PROMPT = 'GET', CONTROL_DELEGATION_SET_PROMPT = 'SET';
    function delegationTargetDevice() { return target; }
    function peerLabel(id) { return id; }
    function refreshLinkStatus() { return true; }
    function hasPendingControl() { return false; }
    function dropControlRequests() {}
    function dispatchControl(_conversation, kind, _prompt, _session, extra) {
      sent.push({ kind: kind, deviceId: extra.deviceId, gen: extra.gen });
    }
    var pillState = { on: false, disabled: false, hidden: false };
    function document_getElementById() {}
    var document = { getElementById: function (id) {
      if (id === 'apersDelegationPill') {
        return {
          classList: { toggle: function (name, value) { if (name === 'is-on') pillState.on = !!value; } },
          setAttribute: function () {}, set disabled(v) { pillState.disabled = v; },
          get disabled() { return pillState.disabled; },
          set hidden(v) { pillState.hidden = v; }, get hidden() { return pillState.hidden; },
          set title(v) {}, get title() { return ''; },
        };
      }
      return { textContent: '' };
    } };
    ${block}
    return {
      sent: sent, pill: pillState,
      setTarget: function (t) { target = t; },
      tap: setDelegationState, read: requestDelegationState,
      onRead: applyDelegationRead, onWrite: applyDelegationWrite,
      abandon: abandonDelegationWrite, state: delegationStateFor,
      entry: delegationEntry, sync: syncDelegationTarget,
    };
  `;
  // eslint-disable-next-line no-new-func
  return new Function("sent", harness)(sent);
}

test("a tap is never swallowed, and a write in flight queues the newer intent", () => {
  const m = loadStateMachine();

  m.tap(true);
  assert.equal(m.sent.length, 1, "the first tap sends immediately");
  assert.equal(m.state("pc-a"), true, "the pill shows the intent at once");

  // Tap again while the first write is still in the air. This used to be dropped.
  m.tap(false);
  assert.equal(m.sent.length, 1, "no second write races the first");
  assert.equal(m.state("pc-a"), false, "but the newer intent is what the pill shows");

  // First write lands. The follow-up must be sent without another tap.
  m.onWrite("pc-a", true, m.sent[0].gen);
  assert.equal(m.sent.length, 2, "the queued intent is sent when the slot frees");
  assert.equal(m.state("pc-a"), false);

  m.onWrite("pc-a", false, m.sent[1].gen);
  assert.equal(m.state("pc-a"), false, "and it settles on what the user asked for");
  assert.equal(m.entry("pc-a").desired, null, "intent is cleared once confirmed");
});

test("twenty alternating taps produce twenty transitions", () => {
  const m = loadStateMachine();
  let expected = false;

  for (let i = 0; i < 20; i += 1) {
    expected = !expected;
    m.tap(expected);
    assert.equal(m.state("pc-a"), expected, `tap ${i + 1} must be reflected immediately`);
    // Settle whatever is outstanding before the next tap, the way a real reply would.
    while (m.entry("pc-a").inFlight) {
      const inFlight = m.entry("pc-a").inFlight;
      m.onWrite("pc-a", inFlight.value, inFlight.gen);
    }
    assert.equal(m.entry("pc-a").confirmed, expected, `tap ${i + 1} must reach the PC`);
  }
  assert.equal(m.state("pc-a"), expected);
});

test("a read issued before a tap cannot undo it by landing afterwards", () => {
  const m = loadStateMachine();
  m.entry("pc-a").confirmed = false;

  m.read();                                   // GET issued while the value is false
  const staleGen = m.sent[0].gen;
  m.tap(true);                                // user flips it
  const writeGen = m.sent[1].gen;
  m.onWrite("pc-a", true, writeGen);          // write lands and is confirmed
  assert.equal(m.state("pc-a"), true);

  // The stale GET finally arrives, carrying the OLD value and nothing in flight to guard it.
  m.onRead("pc-a", false, staleGen);
  assert.equal(m.state("pc-a"), true, "a read older than the last write must not repaint");
  assert.equal(m.entry("pc-a").confirmed, true);
});

test("a read that lands while a write is in flight is ignored", () => {
  const m = loadStateMachine();
  m.entry("pc-a").confirmed = true;
  m.tap(false);
  // Mid-write, a read arrives carrying the value the PC still holds. It must not be recorded as
  // confirmed: the write about to land is what decides, and treating this as truth would make the
  // pill flick back under the user's finger.
  m.onRead("pc-a", false, 99);
  assert.equal(m.state("pc-a"), false, "the PC is about to be told something newer");
  assert.equal(m.entry("pc-a").confirmed, true, "confirmed is untouched while a write is in flight");
  assert.equal(m.entry("pc-a").desired, false, "and the intent survives the read");
});

test("a reply from a superseded write generation is ignored", () => {
  const m = loadStateMachine();
  m.tap(true);
  const first = m.sent[0].gen;
  m.abandon("pc-a");            // certainty lost; slot released
  m.tap(false);
  const second = m.sent.filter((item) => item.kind === "delegation-set").pop().gen;
  assert.notEqual(first, second);

  m.onWrite("pc-a", true, first);   // the abandoned write finally answers
  assert.equal(m.state("pc-a"), false, "an older generation cannot settle the current intent");
});

test("each computer keeps its own state, and switching does not carry one across", () => {
  const m = loadStateMachine();
  m.entry("pc-a").confirmed = true;
  m.entry("pc-b").confirmed = false;

  m.setTarget("pc-b");
  assert.equal(m.state("pc-b"), false);

  // A late reply about PC A while PC B is on screen updates A and leaves B alone.
  m.onRead("pc-a", true, 0);
  assert.equal(m.state("pc-b"), false, "B still shows B");
  assert.equal(m.entry("pc-a").confirmed, true, "A's own row is still updated");

  // And tapping targets B, computed from B's state -- not from whatever A holds.
  m.tap(true);
  const write = m.sent.filter((item) => item.kind === "delegation-set").pop();
  assert.equal(write.deviceId, "pc-b");
});

test("a lost write does not wedge the control", () => {
  const m = loadStateMachine();
  m.tap(true);
  assert.ok(m.entry("pc-a").inFlight);

  m.abandon("pc-a");                       // what an expired control does
  assert.equal(m.entry("pc-a").inFlight, null);

  m.tap(false);
  const writes = m.sent.filter((item) => item.kind === "delegation-set");
  assert.equal(writes.length, 2, "a later tap still sends after a lost reply");
});
