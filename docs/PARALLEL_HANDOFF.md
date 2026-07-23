# Current engineering handoff

Last verified against `main`: 2026-07-24.

This file keeps its historical name so old links continue to work. It is no longer a
plan for two parallel feature branches. The WebUI chat surface and Run on Computer
transport have shipped and are integrated on `main`.

Use this document to orient a new agent before changing the Android app. For details,
follow the focused documents:

- [`WEBUI_CHAT_HANDOFF.md`](WEBUI_CHAT_HANDOFF.md) — WebView/server architecture,
  Android asset revisioning, and WebUI maintenance.
- [`RUN_ON_COMPUTER_HANDOFF.md`](RUN_ON_COMPUTER_HANDOFF.md) — Desktop-session
  transport, Android bridge, companion behavior, and failure handling.
- [`CHAT_UI_SPEC.md`](CHAT_UI_SPEC.md) — current approved phone interaction and visual
  rules.
- [`UI_REDESIGN_PLAN.md`](UI_REDESIGN_PLAN.md) — implemented UI state and remaining
  design work.

## Repository and product

- Repository: `github.com/Futahua/apers-android`
- Local checkout: `D:\Letters\MatTroiSeConMoc\apers-android`
- Package: `apers.terminal.agent.ap`
- Target device: Samsung SM-N975F, Android 12, arm64-v8a
- Project type: apktool-decoded APK, not Gradle
- Primary branch: `main`
- Build output: `dist/apers-signed.apk`

Always inspect `git status`, `git log -1`, and the current Android asset revision
before editing. Do not assume the commit or revision recorded in a handoff is still
HEAD. Preserve unrelated dirty files; `artifacts/development/` is intentionally
untracked and must not be committed.

## Shipped architecture

### Phone chat

`com.hermes.android.webui.ChatWebActivity` is the launcher activity. It hosts a
WebView pointed at `http://127.0.0.1:8787/`.

`com.hermes.android.webui.WebUiServer` seeds `assets/webui/` to the app runtime and
starts the bundled Python server. The server is the lean Hermes WebUI in
`assets/webui/server.py`, `assets/webui/api/`, and `assets/webui/static/`.

The old Compose/terminal application remains available through the sidebar's
**Original** destination. It is a fallback and capability surface, not the primary
chat UI. Do not route users to it only through Android Back.

### Phone/PC conversation model

The sidebar's **Desktop** destination is a toggle between:

- phone WebUI sessions served by the on-device backend; and
- real Hermes PC sessions supplied by the encrypted companion.

Desktop sessions render in the same sidebar and main chat surface. A local hidden
phone session acts as the owner/shell for a selected PC conversation. The binding is
durable, while the transcript and canonical Hermes `session_id` remain on the PC.

The WebView calls the native `AndroidBridge` in
`ChatWebActivity$AndroidBridge.smali`. The native bridge sends and polls encrypted
computer messages. `assets/webui/static/apers-android.js` owns the browser-side
session catalogue, binding map, pending requests, transcript mapping, worklog
rendering, and Desktop/phone navigation.

The companion is reachable over LAN or the paired Tailscale alternate. Tailscale
provides reachability; NaCl Box still protects the application payload. There is no
public Apers relay.

### Current phone UI

The shipped WebUI uses the warm Papers light treatment and preserves the underlying
Hermes WebUI capabilities. Current custom behavior includes:

- Desktop and Original destinations at the bottom of the sidebar;
- a phone/Desktop sidebar toggle rather than a separate session picker;
- phone projects and Desktop workspaces in the same hierarchical list;
- collapsible and reorderable projects, including Unassigned;
- slightly indented conversations below project headings;
- project creation, rename, color editing, destructive delete confirmation, and
  invisible right-edge reorder grips;
- conversation action menus and phone-to-Desktop continuation;
- native-style persistent worklogs for remote Desktop turns;
- no redundant Hermes avatar/name above every assistant response.

Do not reintroduce the removed WebUI/CLI pills, redundant rail destinations, a
composer mode button, folder icons, or a one-way Desktop switch.

## Active defect: Desktop preparation can remain stuck

Observed on the installed asset revision 32:

1. Start in a normal phone conversation.
2. Switch the sidebar to Desktop.
3. Select a PC session that has no existing local shell.
4. The sidebar displays **Preparing this Desktop conversation…** indefinitely.

Expected preparation is usually 2–5 seconds. The generic WebUI request timeout is
30 seconds, so the UI must never remain in that state beyond a bounded failure.

Relevant flow in `assets/webui/static/apers-android.js`:

- `openDesktopSession()`
- `bindDesktopSession()`
- `ensureDesktopShell()`
- `dispatchControl()`
- `onDispatch()`
- `handleControlResult()`
- `controlRequests` and `pending`

`ensureDesktopShell()` awaits `newSession(undefined, {worktree: false})`.
`newSession()` is defined in `assets/webui/static/sessions.js` and calls
`api('/api/session/new')`. `api()` is defined in
`assets/webui/static/workspace.js`.

The immediate defect is that `bindDesktopSession()` sets the preparing state and
awaits shell creation without a catch/finally path. A rejection or timeout leaves the
old status visible. A complete fix must also audit accepted native control requests,
which can otherwise remain pending without an expiry.

Acceptance for the fix:

- tapping once cannot dispatch duplicate bind operations;
- shell creation either succeeds or produces a useful error within a bounded time;
- successful preparation advances to **Loading conversation…** and opens the selected
  PC transcript;
- failure leaves the catalogue usable and offers a retry;
- retry does not create duplicate or orphan local shells;
- offline and companion-no-result paths terminate cleanly;
- an already-bound Desktop session still opens immediately;
- phone sessions and data remain untouched.

## Source map

| Area | Primary files |
|---|---|
| Android WebView host | `smali_classes5/com/hermes/android/webui/ChatWebActivity*.smali` |
| Native bridge | `smali_classes5/com/hermes/android/webui/ChatWebActivity$AndroidBridge*.smali` |
| Local WebUI server/seeding | `smali_classes5/com/hermes/android/webui/WebUiServer.smali` |
| Android WebUI integration | `assets/webui/static/apers-android.js`, `apers-android.css` |
| Base WebUI session logic | `assets/webui/static/sessions.js`, `workspace.js`, `ui.js` |
| Server/API | `assets/webui/server.py`, `assets/webui/api/` |
| Activity registration | `AndroidManifest.xml` |
| Native mesh/handoff | `smali_classes2/com/hermes/android/handoff/` |
| Build tooling | `scripts/build-apk.sh`, `scripts/verify-apk.sh`, `scripts/install-apk.sh` |

Readable decompiled Java is reference material only. The built application consumes
smali and bundled assets.

## Android asset revision rule

Changes under `assets/webui/` are copied into persistent app storage. Every shipped
WebUI asset change must bump the same revision in both places:

1. cache-busting `apers=` values in `assets/webui/static/index.html`;
2. seed revision and matching log text in
   `smali_classes5/com/hermes/android/webui/WebUiServer.smali`.

If this is skipped, an installed app may continue running stale JavaScript or CSS even
when the APK contains the new files.

## Build and device verification

From the repository root:

```powershell
node --check assets/webui/static/apers-android.js
git diff --check
& 'C:\Program Files\Git\bin\bash.exe' scripts/build-apk.sh
```

Install on the connected device:

```powershell
$adb = 'D:\LapSlop brotherhood\Programs\scrcpy-win64-v3.3.4\adb.exe'
& $adb devices
& $adb install -r 'D:\Letters\MatTroiSeConMoc\apers-android\dist\apers-signed.apk'
```

`adb install` may first report that incremental installation is not allowed and then
fall back to a streamed install. A final `Success` is the relevant result.

Verification must include the real phone UI, not only syntax/build checks. Capture
screenshots with:

```powershell
& $adb exec-out screencap -p > 'D:\Programs\evTEMP\apers-check.png'
```

For Desktop transport changes, verify the successful bind, offline failure, timeout,
restart persistence, and pickup of an already-existing Hermes PC session.

## Working rules

- Do not resurrect the old `feat/webui-chat` or `feat/run-on-computer` plans; both
  streams are already merged.
- Do not replace the WebView with the historical Compose redesign.
- Do not start a second Hermes PC backend.
- Do not weaken NaCl payload encryption because Tailscale is present.
- Do not delete projects or conversations during testing.
- Use temporary data only when necessary and remove it afterward.
- Demonstrate behavior on-device before committing.
- Commit only intentional files and push `main` after verification when requested.

## Copy-paste prompt for the current defect

```text
Work in D:\Letters\MatTroiSeConMoc\apers-android on the current main branch.
Read docs/PARALLEL_HANDOFF.md, docs/WEBUI_CHAT_HANDOFF.md, and
docs/RUN_ON_COMPUTER_HANDOFF.md as current architecture references.

Fix the Android Desktop-session flow that remains indefinitely at “Preparing this
Desktop conversation…” when selecting a PC session without an existing local shell.
Diagnose the failed /api/session/new path and the subsequent native bind lifecycle.
Add bounded failure handling and a safe retry without creating duplicate local shells
or duplicate control requests. Preserve the unified sidebar and all phone sessions.

Bump the Android WebUI asset revision, run node --check and git diff --check, build the
signed APK, install it on the connected SM-N975F, and verify successful, offline,
timeout, restart, and already-bound session cases. Do not commit
artifacts/development/.
```
