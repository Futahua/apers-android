# Web-UI chat surface — implementation handoff (Phase 2)

Goal: replace the app's chat surface with a **WebView showing `nesquena/hermes-webui`**,
served locally by the on-device Hermes agent. Slick + maintainable: consumes the agent's
structured stream (via `AIAgent(quiet_mode=True)`), no terminal scraping. Stays one
self-contained app (tap icon → chat); the agent still runs on-device.

## Phase 1 — PROVEN on-device (do not re-litigate)

Verified on the real device (Samsung SM-N975F, Android 12), agent `apers.terminal.agent.ap`:

- ❌ **Bundled `hermes web` (`:9119`) is a DEAD END.** Returns
  `{"error":"Frontend not built. Run: cd web && npm run build"}`. The React frontend is
  NOT in `assets/hermes-agent-source.zip` and cannot be built on-device (no Node).
- ✅ **`nesquena/hermes-webui` WORKS on-device.** Vanilla JS (no build step), Python
  `http.server`, only extra dep is PyYAML (present). Runs the agent in-process.
- ✅ On-device checks passed: `python3 -c "import yaml, run_agent; print(hasattr(run_agent.AIAgent,'run_conversation'))"` → `OK True`.
- ✅ Launched successfully and rendered a real chat UI in the phone browser at
  `http://127.0.0.1:8787` — session list, composer, **file upload** (saved to
  `~/.hermes/webui/attachments/`), **structured error/disclosure cards**, model switch.
- Known: webui stores its own sessions in `~/.hermes/webui/sessions/*.json`, SEPARATE
  from the agent's `state.db` (so it won't show the terminal's history — acceptable).

### Exact working launch (what proved it)
Files staged, then run in the app's terminal (Termux/Python env):
```sh
mkdir -p ~/hermes-webui
tar xzf /sdcard/hermes-webui.tgz -C ~/hermes-webui   # server.py + api/ + static/ (~3.6 MB)
cd ~/hermes-webui
HERMES_WEBUI_AGENT_DIR="$HOME/.hermes-android/hermes-agent" \
HERMES_HOME="$HOME/.hermes" \
HERMES_WEBUI_PORT=8787 \
python3 server.py
# → "host:port : 127.0.0.1:8787"; open http://127.0.0.1:8787
```
- Agent lives at `~/.hermes-android/hermes-agent` (set `HERMES_WEBUI_AGENT_DIR` to it).
- Source: `github.com/nesquena/hermes-webui` (MIT). Lean bundle = `server.py`, `api/`, `static/`.

## Phase 2 — the build (hand to a from-source coding agent)

Per the reviewer's guidance: **do NOT hand-author the WebView in smali.** Build a tiny
normal Android donor project, compile it, transplant generated smali + manifest.

### A. Bundle hermes-webui into the APK
- Add the lean webui tree under `assets/webui/` (server.py, api/, static/).
- On bootstrap (extend `BootstrapManager.installPatches()` or `monkey_patch.py`), copy
  `assets/webui/` → `~/hermes-webui/` if absent (mirrors how patches are seeded).

### B. Launch the server
- Reuse the app's existing Termux exec service (same path that runs the `hermes`
  wrapper / `TerminalSessionManager`) to run `python3 ~/hermes-webui/server.py` with the
  env above, as a background process. Health-poll `http://127.0.0.1:8787/` until ready.

### C. Donor Android project → WebView Activity
Build a minimal Kotlin/Java Activity (`ChatWebActivity`) in a normal Android project:
- WebView with `javaScriptEnabled`, `domStorageEnabled`, loads `http://127.0.0.1:8787`.
- Loading/splash while health-polling; back-button handling; keep server alive while
  foregrounded.
- Compile → `d8`/dex → baksmali → copy generated smali into the apktool project.
- Add `<activity>` to `AndroidManifest.xml`; route the launcher (or the Terminal tab) to it.
- Keep the existing native/terminal screen behind a "Diagnostics" action (fallback).
- Loopback cleartext is ALREADY permitted (`res/xml/network_security_config.xml` allows
  127.0.0.1 + localhost) — no manifest security change needed.

### D. Papers polish (optional, easy)
Restyle `static/style.css` to the Papers palette (canvas `#0a0a18`, ink `#f3f0e8`,
accent `#cf806d`) so it matches the rest of the app. Pure CSS, no smali.

## Toolchain (on the build machine)
JDK 21 (Android Studio JBR), apktool 2.11.1, Android build-tools 35.0.0 (`d8`, `aapt2`,
`zipalign`, `apksigner`), platform-tools (`adb`). Build via `scripts/build-apk.sh`; sign
with the existing keystore (same key → installs over current build).

## Fallback already shipped
If the WebView route is abandoned, the current native Compose chat + Papers agent skin
(committed) is a working, good-looking result on its own.
