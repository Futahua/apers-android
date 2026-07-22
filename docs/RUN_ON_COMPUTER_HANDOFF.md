# "Run on Computer" — make it frictionless & automatic (implementation handoff)

## Copy-paste pickup prompt

You are taking ownership of making the Apers/Hermes Android app's **"Run on Computer"**
feature work automatically with the creator's existing Hermes on this machine. The
creator is **not a coder** and does **not** want to run any terminal commands, paste
anything, or scan QR codes if it can be avoided. Acceptance is: the creator opens the
"Run on Computer" screen on the phone, and within a few seconds it connects to their
computer and can run a task there — demonstrated with screenshots and plain language,
not diffs. Research the real code and installed products on the machine, implement the
smallest robust change across the phone app and the PC companion, rebuild both, and
continue until it actually works end to end. Do not return an architecture proposal
unless a hard technical fact makes the requested behavior impossible.

Read completely before editing:
1. This file.
2. `BUILD_REPORT.md` (how the phone APK is decoded, patched, rebuilt, signed).
3. `README.md` (build/verify/install scripts).
4. In the Papers repo: `docs/HERMES_BATCH_HANDOFF.md`, `docs/ARCHITECTURE.md`,
   `docs/PRODUCT.md`, `HERMES.md`.

## Plain-language goal (what "done" looks like for the creator)

Today the phone screen says *"Paste and run `python -m handoff.mesh_broker` in your
terminal, then scan a QR."* The creator will never do that, and **that command doesn't
even exist** (the phone shows the wrong command). "Done" means:

- The creator does **not** open a terminal.
- The companion is **already running** on the PC (auto-started with Papers/Hermes), or
  starts with one click from Papers.
- The phone finds the PC **by itself** on the same Wi-Fi and connects. Pairing happens
  once, silently or with a single tap — no typing a pairing code.
- The creator can send a task from the phone and see the result come back.

## The three real problems (root causes, verified in code)

1. **Wrong command shown.** The phone hardcodes `python -m handoff.mesh_broker`
   (`smali_classes3/.../MainActivityKt.smali` field `MESH_BROKER_CMD`, and
   `MainActivityKt$MeshScreen$2$1$3.smali`). No such module ships in the app or in
   stock Hermes. The **actual** companion is a separate project (see below), so the
   instruction the creator sees is simply wrong.

2. **The companion is a separate program that isn't installed or running.** The phone's
   "Download the companion" button points at
   `https://github.com/HenWorks/Hermes-agent-android-PC-companion-app`
   ("PC-side companion … mesh + handoff, NaCl-encrypted, pair-once, no cloud"). It is
   **not** wired to auto-start, and it targets stock Hermes, not the creator's
   Papers-embedded Hermes.

3. **Friction by design.** Even with the companion running, the current flow needs a
   terminal paste + QR scan / pairing-code copy. The creator wants zero of that.

## The protocol the phone ALREADY speaks (this is the contract — do not reinvent it)

The phone already contains a complete client in
`smali_classes2/com/hermes/android/handoff/` — `HandoffClient`, `HandoffController`,
`HandoffCrypto`, `HandoffDiscovery`. The PC companion must match it:

- **Discovery:** mDNS/DNS-SD service type **`_hermes-handoff._tcp.`** on the LAN
  (the phone uses Android `NsdManager` to find the PC — no IP typing needed). The
  companion must **advertise** this service. This is the key to "finds the PC by
  itself." TXT/records expose at least `host` and `port`; the phone also keeps a
  `peers.json` of known peers (fields: `deviceId`/`did`, `host`, `port`, `peerPk`,
  `alts`, `sid`).
- **Crypto:** NaCl **box** (`boxEncrypt`/`boxDecrypt` in `HandoffCrypto`) — Curve25519
  keypairs, `generateIdentity`, `getPublicKey`/`getSecretKey`. The app bundles
  `libsodium.so` for exactly this. Companion pairs by exchanging public keys once
  (`pair-once`), then all payloads are NaCl-box encrypted. **No cloud, LAN only.**
- **Pairing QR schema:** `QR_SCHEMA` / `HANDOFF_QR_SCHEMA`, version **v2**, must carry a
  session id (`sid`) — the phone rejects "handoff QR (v2) missing sid" and
  "unsupported QR schema:". QR/pairing-code content is JSON with peer id + public key +
  host/port + sid.
- **Two capabilities over the same channel:**
  - **mesh** = "Run on Computer": phone sends a task, PC (Hermes) runs it, result
    returns. This is the screen in question.
  - **handoff** = move/sync conversations: uses the bundle format in the app's own
    `assets/handoff/handoff_core.py` (`export_all`/`import_all` against
    `~/.hermes/state.db` + `memories/`; secrets never included). Bundle files are
    `outgoing.json`/`incoming.json`; ops tagged `HANDOFF_EXPORT_OK:` / `HANDOFF_STATS:`
    / `HANDOFF_ERROR:`.

## The creator's actual environment (target it precisely — discover, don't assume)

- Installed Hermes runtime/source:
  `D:\LapSlop brotherhood\Programs\Assistant\HermesAI\.hermes\hermes-agent`
- Hermes home (session store the handoff reads): `~/.hermes` →
  `C:\Users\admin\.hermes\` (contains `state.db`, `memories/`, `config.yaml`;
  `auth.json`/`.env` must NEVER be sent).
- Papers (the product Hermes is embedded in):
  - source `D:\Letters\MatTroiSeConMoc\PAPERS 3\Papers-3` (repo
    `https://github.com/Futahua/Papers-3`)
  - installed `D:\LapSlop brotherhood\Programs\Papers` (exe `App\Papers.exe`,
    data `Data\` — note it already holds a `hermes-backend-token`).
  - Papers runs Hermes locally on **`127.0.0.1:9119`** (see Papers
    `docs/HERMES_BATCH_HANDOFF.md`). The companion should talk to *that* Hermes, not
    spawn a competing one.
- Phone app (this repo): package `apers.terminal.agent.ap`, decoded apktool project;
  rebuild with `bash scripts/build-apk.sh` (see `BUILD_REPORT.md`). Phone-side edits are
  **smali**, not Kotlin source.

## Recommended implementation (smallest robust path)

Choose the smallest approach that yields the zero-friction outcome. A sensible shape:

1. **Adopt/adapt the existing companion**
   (`HenWorks/Hermes-agent-android-PC-companion-app`) rather than writing a broker from
   scratch — it already implements `_hermes-handoff._tcp.` + NaCl box + the QR v2
   schema. Verify it against the smali contract above; fix any drift.
2. **Auto-start the companion with Papers.** Papers already launches Hermes on
   `127.0.0.1:9119`; have Papers also start the companion (child process or bundled)
   and have the companion advertise `_hermes-handoff._tcp.` and forward mesh tasks to
   the local Hermes. Result: the creator never touches a terminal — the companion is
   "just there" whenever Papers is running.
3. **Auto-discover + auto/one-tap pair on the phone.** The phone already does mDNS
   discovery; make the "Run on Computer" screen **auto-detect** the advertised PC and
   offer a single "Connect" (or connect silently if a peer is already trusted in
   `peers.json`). De-emphasize the terminal/QR UI to an "advanced/manual" fallback.
4. **Fix the misleading UI.** Remove/replace the hardcoded
   `python -m handoff.mesh_broker` command and the paste-a-command instruction, since
   the companion now auto-starts. If a manual fallback is kept, show the *correct*
   command/way to start the real companion, not the non-existent module. (Phone-side:
   patch `MESH_BROKER_CMD` and the `MeshScreen` strings; rebuild per `BUILD_REPORT.md`.)

## Guardrails

- LAN-only, no cloud. Never transmit `auth.json`/`.env`; handoff bundles read only
  `state.db` + `memories/` (already enforced in `handoff_core.py`).
- One Hermes. Do not start a second Hermes backend; reuse Papers' `127.0.0.1:9119`.
- Preserve creator data and any dirty work in all three checkouts.
- Reuse the existing phone protocol exactly (mDNS type, NaCl box, QR v2 + `sid`) — the
  phone binary is the fixed contract; the PC side conforms to it.
- Rebuild real artifacts: rebuild the signed APK (`scripts/build-apk.sh`) AND the PC
  companion/Papers; don't edit only a packaged bundle and call it done.

## Acceptance test (demonstrate, in plain language)

1. Launch Papers on the PC (companion auto-starts, no terminal).
2. On the phone, open "Run on Computer." It shows the computer found automatically.
3. Tap Connect once (or it's already paired). It connects.
4. Send a small task from the phone; the result comes back. Screenshot both screens.
5. Move a conversation PC→phone and phone→PC (handoff) and show the counts merged.

## Key source references

Phone (this repo, smali):
- `smali_classes3/com/hermes/android/MainActivityKt.smali` — `MESH_BROKER_CMD` field.
- `smali_classes3/com/hermes/android/MainActivityKt$MeshScreen$2$1$3.smali` — the
  paste-command UI; `$2$1$2.smali` — the companion GitHub link.
- `smali_classes2/com/hermes/android/handoff/` — `HandoffClient`, `HandoffController`,
  `HandoffCrypto`, `HandoffDiscovery` (the protocol client).
- `assets/handoff/handoff_core.py|handoff_export.py|handoff_import.py` — bundle format.
- `res/values/strings.xml` — `mesh_*`, `handoff_*`, `settings_handoff_desc`.

Companion: `https://github.com/HenWorks/Hermes-agent-android-PC-companion-app`.

Papers: `docs/HERMES_BATCH_HANDOFF.md` (Hermes on `127.0.0.1:9119`), `HERMES.md`.
