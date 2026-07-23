# WebUI chat architecture and maintenance handoff

Last verified against `main`: 2026-07-24.

The WebUI chat surface is implemented and shipped. This is a maintenance document,
not a future-phase plan.

## Runtime architecture

The launcher activity is
`com.hermes.android.webui.ChatWebActivity`, registered in `AndroidManifest.xml`.
It creates the Android WebView, installs the native JavaScript bridge, handles the
startup screen and Back behavior, and loads:

```text
http://127.0.0.1:8787/
```

`com.hermes.android.webui.WebUiServer` copies the bundled tree from
`assets/webui/` into the app runtime, launches the Python server, and waits for the
loopback endpoint. The bundle contains:

```text
assets/webui/server.py
assets/webui/api/
assets/webui/static/
```

The server runs the phone's Hermes agent in-process and exposes the full WebUI API.
Phone WebUI sessions live in the on-device WebUI session store. They are distinct
from Hermes PC sessions shown in Desktop mode.

The original Compose/terminal app remains available through the **Original**
destination. It must stay reachable without relying solely on Android Back.

## Custom integration layer

The base WebUI remains largely upstream-shaped. Android-specific behavior belongs in:

- `assets/webui/static/apers-android.js`
- `assets/webui/static/apers-android.css`

`assets/webui/static/index.html` loads those files last. Prefer targeted integration
over broad edits to the large upstream files unless the behavior is genuinely shared.

The Android layer currently owns:

- the Papers warm-light treatment and matching status/navigation bars;
- Desktop and Original sidebar destinations;
- the unified phone/Desktop session sidebar;
- phone project and Desktop workspace grouping;
- project collapse, reorder, creation, rename, color selection, and deletion;
- session long-press actions and invisible reorder grips;
- phone-to-Desktop continuation;
- Desktop transcript rendering and persistent worklogs;
- removal of redundant assistant identity labels and mode controls;
- the Hermes Agent empty-state wordmark.

Base WebUI behavior still comes from files such as:

- `sessions.js` — session creation, loading, projects, and session actions;
- `workspace.js` — `api()` and its default request timeout;
- `ui.js` — dialogs, messages, composer, and shared UI utilities;
- `panels.js` — settings and auxiliary panels;
- `style.css` — base styles.

## Native bridge

`ChatWebActivity$AndroidBridge.smali` exposes the computer-transport methods consumed
by `apers-android.js`, including send, poll, and acknowledgement operations. The
bridge does not replace the phone server API. These are separate paths:

```text
Phone chat:
WebView → loopback WebUI API → on-device Hermes

Desktop chat:
WebView → AndroidBridge → encrypted companion → Hermes PC session
```

Do not send Desktop work through the phone API or create an independent PC Hermes
backend.

## Asset revisioning

WebUI assets are seeded into persistent application storage. An APK reinstall does not
guarantee that unchanged revision metadata will overwrite the previous seeded copy.

Whenever any shipped file under `assets/webui/` changes, bump:

1. both `apers=` query values in `assets/webui/static/index.html`;
2. the seed revision string in
   `smali_classes5/com/hermes/android/webui/WebUiServer.smali`;
3. the matching `Webui assets seeded (rev N)` log text.

Keep all three values identical. The current revision must be discovered from source
before editing rather than copied from this document.

## UI and interaction constraints

- Preserve all base WebUI functions while applying the Papers/Hermes presentation.
- The Desktop destination is a toggle, not a one-way switch.
- Desktop sessions appear in the same sidebar, not a separate popup.
- Original remains a bottom sidebar destination.
- Closing the sidebar uses Android Back or the blank area outside it; do not add a
  conflicting close button over the chat.
- The closed drawer must not leave a shadow strip over the main conversation.
- Projects are not date buckets.
- Sessions are slightly indented below project headings.
- Project colors affect both the dot and readable heading text.
- Do not add folder icons merely to communicate hierarchy.
- Long-press opens management actions; the invisible right-edge zone is reserved for
  drag reordering.
- Assistant replies do not repeat the Hermes avatar/name on every message.
- Remote worklogs should match native phone worklogs and persist after reload.

See [`CHAT_UI_SPEC.md`](CHAT_UI_SPEC.md) for the complete approved behavior.

## Current defect to fix

Selecting an uncached Desktop session can remain indefinitely at:

```text
Preparing this Desktop conversation…
```

The relevant browser flow is in `apers-android.js`:

```text
openDesktopSession
  → bindDesktopSession
    → ensureDesktopShell
      → newSession(undefined, {worktree: false})
        → POST /api/session/new
```

`bindDesktopSession()` currently lacks complete failure cleanup around shell creation.
The generic API timeout is 30 seconds, but the visible preparing state is not cleared
after rejection. The later native control request lifecycle also needs an explicit
expiry. The acceptance criteria are maintained in
[`PARALLEL_HANDOFF.md`](PARALLEL_HANDOFF.md).

## Build and verification

Run at minimum:

```powershell
node --check assets/webui/static/apers-android.js
git diff --check
& 'C:\Program Files\Git\bin\bash.exe' scripts/build-apk.sh
```

Install the signed APK on the real SM-N975F and inspect screenshots. Browser-only
testing is insufficient because Android WebView sizing, system bars, keyboard resize,
Back behavior, asset seeding, and the native bridge are part of the product.

Do not call a WebUI change complete until:

- the updated asset revision actually appears on-device;
- phone chat still sends and reloads;
- sidebar open/close behavior is intact;
- project/session gestures work without opening the wrong action;
- Desktop mode still loads its catalogue;
- Original still opens and can return to the WebUI.

## Historical note

The original proof used the lean `nesquena/hermes-webui` server and led to the current
bundle. Earlier instructions to “implement Phase 2,” create `ChatWebActivity`, or
decide whether to use a WebView are complete historical steps and must not be treated
as open work.
