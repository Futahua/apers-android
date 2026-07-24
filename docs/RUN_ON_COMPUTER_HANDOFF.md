# Desktop and Run on Computer maintenance handoff

Last verified against `main`: 2026-07-24.

Run on Computer is implemented. The phone can reach the paired Hermes PC over the LAN
or its saved Tailscale alternate, open real PC sessions, continue them, and render
remote work in the phone chat UI. This document describes the shipped contract and
the next reliability work.

## User-facing model

The sidebar has two conversation modes:

- **Chat** — sessions owned by the phone's local WebUI backend.
- **Desktop** — real Hermes sessions owned by the paired PC.

The **Desktop** destination toggles between them. It does not open a separate session
picker and does not permanently convert the entire application into a special phone
mode.

Selecting a Desktop session:

1. finds an existing local owner/shell for that PC `session_id`, or creates one;
2. sends an encrypted bind request to the companion;
3. loads a bounded transcript from the canonical PC session;
4. renders it in the same main phone conversation surface;
5. resumes the same PC session on later sends.

The local shell is an implementation detail and is hidden from the ordinary phone
session list. The PC remains the owner of the Desktop transcript. If the PC is
offline, a previously cached transcript may remain readable, but live continuation is
unavailable until the companion reconnects.

Phone-to-PC continuation is available from a phone session's long-press action menu.
It creates a real resumable Hermes PC session; it is not a copied screenshot or a
temporary mode flag.

## Transport contract

The existing native handoff client and PC companion are the protocol contract:

- discovery: `_hermes-handoff._tcp.` through Android NSD on the LAN;
- identity and payload protection: NaCl Box;
- pairing: persistent peer identity and public key;
- remote reachability: saved alternate addresses, including private Tailscale;
- broker storage: durable conversation-to-Hermes-session mapping;
- result delivery: encrypted inbox envelopes acknowledged by the main chat;
- progress delivery: `__APERS_PROGRESS_V1__` events mapped into native-style worklogs.

Tailscale is transport reachability, not the application security layer. Do not remove
NaCl protection or deploy a public Apers relay as a shortcut.

The companion should use the creator's existing Hermes/Papers runtime. Do not start a
second competing Hermes backend.

## Phone implementation

### Browser side

`assets/webui/static/apers-android.js` owns:

- Desktop catalogue caching and workspace grouping;
- local-shell-to-PC-session bindings;
- Desktop mode and selected-session state;
- control request dispatch;
- pending result polling and acknowledgement;
- transcript mapping;
- remote composer sends;
- progress and worklog persistence;
- rename and archive requests.

Important state maps include `bindings`, `controlRequests`, and `pending`.

### Native side

`smali_classes5/com/hermes/android/webui/ChatWebActivity$AndroidBridge.smali` exposes
the native bridge called by JavaScript. It connects the WebView to the encrypted
handoff client and provides send, poll, and acknowledgement callbacks.

The lower-level native protocol lives under:

```text
smali_classes2/com/hermes/android/handoff/
```

Readable decompiled Java under `reference/decompiled-java/` is useful for inspection
but is not built.

### PC side

Companion and Hermes Desktop integration changes belong in the companion/Papers
repositories, not in Android WebUI files. Before cross-repository edits, prove which
side violated the contract:

- catalogue unavailable: discovery, pairing, polling, or companion;
- catalogue available but local shell cannot be made: phone WebUI API;
- bind dispatched but no result: native bridge, inbox, or companion control handler;
- transcript returned but not rendered: `apers-android.js`.

## Current reliability defect

On the current installed build, selecting a Desktop session without a reusable local
shell can remain at:

```text
Preparing this Desktop conversation…
```

Expected duration is normally 2–5 seconds. The generic phone API request timeout is
30 seconds. Anything longer is a failed operation and must become an actionable error.

Relevant functions:

- `openDesktopSession()`
- `bindDesktopSession()`
- `ensureDesktopShell()`
- `newSession()` in `sessions.js`
- `api()` in `workspace.js`
- `dispatchControl()`
- `onDispatch()`
- `handleControlResult()`
- the periodic `pollComputer()` loop

Known immediate gap: `bindDesktopSession()` does not catch and clear a rejected
`ensureDesktopShell()` call. The next implementation should:

- give shell creation a bounded lifecycle;
- clear or replace the loading state on every exit;
- prevent duplicate taps from creating parallel shells;
- reuse a successfully created shell on retry;
- expire a native control request if dispatch/result callbacks never arrive;
- distinguish phone-backend failure from PC-unreachable failure;
- keep the Desktop catalogue interactive after failure.

Do not “fix” this by merely hiding the status text or extending the timeout.

## Acceptance matrix

| Case | Required result |
|---|---|
| PC online, uncached Desktop session | Prepare, load, open transcript |
| PC online, already-bound session | Open immediately, refresh silently |
| PC offline before selection | Clear unreachable error, catalogue stays usable |
| `/api/session/new` fails | Bounded phone-session error and safe retry |
| Native dispatch fails | Clear computer-connection error |
| Dispatch accepted but no result | Bounded timeout and safe retry |
| Double tap | One shell and one bind request |
| App restart | Existing binding and transcript restore |
| PC restart | Same canonical Hermes session resumes after reconnect |
| Non-ASCII transcript | Correct UTF-8 content |
| Tool-using turn | Live worklog settles and survives reload |

## Operational verification

Build and install from the Android repository:

```powershell
node --check assets/webui/static/apers-android.js
git diff --check
& 'C:\Program Files\Git\bin\bash.exe' scripts/build-apk.sh

$adb = 'D:\LapSlop brotherhood\Programs\scrcpy-win64-v3.3.4\adb.exe'
& $adb install -r 'D:\Letters\MatTroiSeConMoc\apers-android\dist\apers-signed.apk'
```

Verify on the Samsung SM-N975F. Use an existing harmless Desktop test session rather
than creating or deleting the user's real conversations. Test both Wi-Fi and the
intended away-from-LAN route when transport code changes.

## Proven behavior

The integrated transport has previously demonstrated:

- encrypted LAN execution;
- mobile-data/Tailscale execution;
- durable PC `session_id` reuse across Android and companion restarts;
- pickup of an existing Desktop session;
- Desktop-side reconciliation of externally written sessions;
- persistent remote tool calls and results rendered as the phone's ordinary worklog;
- conversation rename and archive from the phone;
- multiple paired PCs: per-conversation routing, friendly names, presence,
  add/unpair, and a conversation whose PC is offline staying read-only without
  ever silently rebinding onto a different PC's conversation.

These are regression requirements, not open implementation tasks.

## Removed historical instructions

Do not follow older prompts that ask an agent to:

- create the companion from scratch;
- show or run `python -m handoff.mesh_broker`;
- implement first-time QR/manual pairing as the primary UX;
- add a separate Desktop-session popup;
- add a This phone/Hermes PC composer button;
- build the original WebView “Phase 2.”

Those instructions described pre-integration work and conflict with the current app.
