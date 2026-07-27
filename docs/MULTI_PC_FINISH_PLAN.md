# Multi-PC "Run on Computer" — finish plan

**Status as of 2026-07-27.** Reconstructed after the original at
`D:\Programs\evTEMP\opencode\multi-pc-finish-plan.md` was lost with that
directory. Kept in the repo this time so it survives scratch-dir cleanups.

Phase-1 core was finger-verified on rev 54 (two-PC routing, Stop ownership,
orphan drain). Revs 55–64 shipped the ship-quality UX tier and hardening.
Everything below reflects what is actually done vs outstanding.

---

## Current state

**Shipped and pushed:** rev 64, commits `66128f3` (rev 63) and `e143483`
(rev 64) on `main`. Working tree clean.

**Paired PCs:**
- Primary desktop — did `319b237d86f92ab8`, `192.168.192.102:51379`,
  Tailscale `100.69.79.67` (`sloptop`)
- LapDog laptop — did `b73650d68f1e7b36`, `:51379`, Tailscale
  `100.112.127.26`, paired WITH `alts` so it survives network changes
- ~~Test PC~~ — did `22d14980da4e22e8`. **Its home
  (`D:\Programs\evTEMP\opencode\multi-pc-broker-b`) has been deleted**, taking
  `id.key` with it. Restarting it would mint a NEW did; the phone still holds
  the old one as a stale peer. Recommendation: unpair it on the phone rather
  than rebuild — the real laptop supersedes it.

**Not running right now:** the desktop connector and the (now homeless) Test PC
broker were stopped during the Hermes relocation and never restarted. "Run on
Computer" to the desktop is down until the connector is started again.

---

## T2 — Real laptop + the two Phase-2 smali changes

### T2.1 Onboard the real second laptop — **PARTLY DONE**

Done: connector installed on LapDog, Tailscale joined (tailnet
`taild88607.ts.net`, account `Futahua@`), paired to the phone via pasted code
carrying `alts`, autostart enabled.

**Outstanding — the routing matrix [FINGER].** Never run. This is the main
remaining item:

1. **Per-PC routing (the one that matters).** For each PC in turn, open a
   conversation on it and send `whoami && hostname`. Confirm the RIGHT machine
   answers — don't trust the UI label, make the machine identify itself.
   LapDog should say `lapdog`, the desktop `sloptop`.
2. **Stop ownership.** Start a ~60s task on LapDog, hit Stop mid-run, confirm
   it stops on LapDog and the other PC's conversations are undisturbed.
3. **Cross-PC isolation.** With LapDog mid-task, send to the desktop. Both
   should work simultaneously with no crossed replies.
4. **Lid-close mid-turn.** Send a task to LapDog, close the lid while running.
   Expect a friendly named offline error and a read-only composer; reopen and
   the result should arrive.
5. **Roaming payoff.** Phone on mobile data (Wi-Fi off), Tailscale connected on
   the phone. Every paired PC has `alts`, so all should stay reachable. NOTE:
   the phone's Tailscale (`poordroid`, `100.124.102.127`) was last seen offline
   — connect it first or this fails for the wrong reason.

### T2.2 `refreshComputerEndpoints` per-deviceId refresh (smali, MEDIUM RISK)

Problem: `lambda$refreshComputerEndpoints$5` calls `AutoPair.discover(1600)`,
which returns ONE QR string — the discovery winner. The loser's address never
heals after DHCP churn.

Design (additive): keep the existing lambda; ADD a loop after it that, for each
peer NOT matching the just-discovered did, calls
`HandoffDiscovery.resolveByDeviceId(deviceId, timeoutMs)` and updates that
peer's host on a hit. Implement the loop as a NEW private method on
ChatWebActivity invoked from the existing lambda's tail, to minimise edits
inside the dense existing method.

**Open question RESOLVED:** `resolveByDeviceId(String, J)` returns
`Lcom/hermes/android/handoff/HandoffDiscovery$Addr;` — an Addr object, NOT a QR
payload string. Adapt accordingly.

Risk note: runs on activity resume. Keep added blocking time bounded
(≤1500ms per peer) and mirror whatever threading the existing lambda uses.

### T2.3 `MeshPollWorker` polls all peers (smali, HIGHEST RISK)

`MeshPollWorker$doWork$2` does poll+ack via the implicit first peer. It is a
Kotlin suspend lambda — a coroutine state machine, and the riskiest smali in
this whole plan.

**Use the fallback design, not surgery inside the coroutine:** add a plain
self-contained `pollAllPeers()` method on MeshController (easy, plain smali)
and have `doWork$2` make ONE call to it, replacing the existing poll+ack block.
One clean call site beats editing a state machine.

Also verify `MeshNotifier` doesn't assume a single peer (likely per-result,
probably fine).

Verify: force-stop the app, push a result from EACH broker, expect
notifications from both. WorkManager's minimum interval is ~15 min, so allow
time.

---

## T3 — Ship-quality UX — **DONE** (revs 55–64)

- T3.1 friendly names, presence dots, last-seen, error copy — done
- T3.2 "Add a computer" (find-on-network + paste pairing code) — done
- T3.3 Unpair — done
- T3.4 rev/bump/build — done

Finger-verified: manager sheet, rename, presence dots, friendly offline copy,
unpair, re-add via pairing code, strict one-PC regression (T1.1).

**Eleven bugs were found by finger testing across these revs** — none visible
to the automated served-rev/seed/verifier checks. Notably: offline sessions
untappable; four separate raw-error leak paths; discovery silently re-pairing an
already-added PC; zero-PC installs having no way to pair a first computer;
composer writable on an offline PC; an uncached offline session silently
rebinding onto whatever conversation was open; and three duplicate-session-id
bugs corrupting the wrong PC's row.

---

## T4 — Hardening

- **T4.1** CAS-fail "busy" callback — **DONE**
- **T4.2** Poll economy (visibility gate, 1-in-8 offline throttle) — **DONE**
- **T4.3** Consume the did-echo — **DONE** (deployed when the companion was
  synced; `"did": self.identity.device_id` is in the pair ack)
- **T4.4** MeshScreen multi-peer display — **DEFERRED** by the plan itself;
  Compose smali surgery is high risk for a cosmetic item. Release-note it.
- **T4.5** Edge tests — **PARTLY DONE**
  - Duplicate session ids across PCs — done by code inspection, found 3 real
    bugs (checkmark icon, rename, archive all missing the deviceId guard),
    fixed in rev 64
  - **[FINGER] outstanding:** app restart with an in-flight task (send,
    force-stop app mid-run, relaunch → result arrives, acks, renders)
  - **[FINGER] outstanding:** a cached offline session opens read-only without
    implying connectivity

---

## T5 — Closure — **DONE**

- Repo cleanup — verified: no debug `console.log`, no stray badges
- Stray `C:\Users\admin\mesh` — deleted
- Broker B fate — decided "keep", then its home was deleted during cleanup;
  see the note under Current state
- Docs — `RUN_ON_COMPUTER_HANDOFF.md` gained a multi-PC regression line
- Final commits — pushed

---

## What is actually left

1. **T2.1 routing matrix [FINGER]** — the main one. Needs the phone, both PCs
   up, and Tailscale connected on the phone for step 5.
2. **T2.2 + T2.3 smali** — now testable, since a real second laptop exists.
   Ship as their own rev with its own revert boundary; T2.3 via the
   `pollAllPeers()` fallback.
3. **Two T4.5 finger tests.**
4. **Housekeeping:** unpair the dead Test PC did from the phone; restart the
   desktop connector.

## Environment reminders

- Build: `source scripts/env.sh && bash scripts/build-apk.sh`; keystore from
  `/d/apers-build/output/`, removed from `dist/` before committing
- Asset-rev bump in BOTH `index.html` (two `&apers=N`) and `WebUiServer.smali`
  (two spots). Current shipped: **64**
- Line endings: verify with `od -c` per file — smali history is MIXED;
  `apers-android.js` is LF
- Device: SM-N975F, serial RF8M73S4NEM, pkg `apers.terminal.agent.ap`
- Served-asset check: `adb forward tcp:18787 tcp:8787` + curl; seed check:
  `adb logcat -s WebUiServer | grep seeded`
- Hermes now lives at `D:\Letters\MatTroiSeConMoc\HermesAI\.hermes` (moved
  2026-07-27); the companion venv for brokers is at
  `C:\Users\admin\.hermes\mesh\venv\Scripts\` — NOT uv python
- **[FINGER] items cannot be verified by any agent.** The plan is done only
  when the user signs those off.
