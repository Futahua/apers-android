# Parallel handoff — Run on Computer + Web-UI chat surface

Orchestrator prompt for running both open handoffs concurrently. Paste this whole
document to a single orchestrating agent (or use it to brief two agents plus a human
merge step). The two individual briefs (`docs/RUN_ON_COMPUTER_HANDOFF.md` and
`docs/WEBUI_CHAT_HANDOFF.md`) remain the authoritative source for each stream; this
file is the coordination layer on top.

---

## Orchestrator prompt

You are the orchestrator for two parallel workstreams on the Android app in repo
**`github.com/Futahua/apers-android`** (local checkout:
`D:\Letters\MatTroiSeConMoc\apers-android`). This is an **apktool-decoded project** —
edits are **smali** (readable Java in `reference/decompiled-java/` is reference only,
not buildable). Rebuild with `bash scripts/build-apk.sh` (JDK 21 / apktool 2.11.1 /
build-tools 35.0.0 incl. `d8`; sign with the existing keystore so it installs over the
current build). Verify on-device via ADB. The creator is not a coder: acceptance is
demonstrated behavior + screenshots, never diffs. Keep the app fully functional at
every step.

Run the two workstreams **in parallel** (separate git worktrees/branches, ideally two
subagents), then integrate. Each has an authoritative brief in `docs/` — read it
completely before touching code.

**Stream A — "Run on Computer" (branch `feat/run-on-computer`).** Brief:
`docs/RUN_ON_COMPUTER_HANDOFF.md` (+
`reference/decompiled-java/app/src/main/java/com/hermes/android/handoff/*.java`,
`HERMES.md`). Goal: phone auto-discovers the PC on the LAN and connects with ≤1 tap —
no terminal, no typing a pairing code. Conform to the verified protocol in the brief
(mDNS `_hermes-handoff._tcp.`, NaCl-box, QR v2). Fix the misleading hardcoded
`python -m handoff.mesh_broker` string (real companion:
`github.com/HenWorks/Hermes-agent-android-PC-companion-app` — verify against the smali
first). **File scope:** `smali*/com/hermes/android/handoff/**`,
`smali*/…/MainActivityKt$MeshScreen*`, `res/values/strings.xml` (mesh_* only),
`assets/handoff/**`.

**Stream B — web-UI chat surface (branch `feat/webui-chat`).** Brief:
`docs/WEBUI_CHAT_HANDOFF.md`. Phase 1 is **already proven on-device — do not
re-litigate**: `nesquena/hermes-webui` (vanilla JS, no build, PyYAML-only, in-process
agent via `AIAgent(quiet_mode=True)`) served a working chat at `127.0.0.1:8787`; the
bundled `hermes web` (:9119) is a dead end. Implement Phase 2: bundle the lean webui
tree into `assets/webui/`; seed it to `~/hermes-webui/` on bootstrap and launch
`python3 server.py` (env per brief) via the app's existing Termux exec service,
health-poll `:8787`; build `ChatWebActivity` as a **normal Kotlin/Java donor Android
project**, compile, and transplant generated smali + manifest entry — **do NOT
hand-author the WebView in smali**; route the launcher/Terminal tab to it, keep the
native screen behind a Diagnostics fallback; optionally restyle `static/style.css` to
Papers (`#0a0a18`/`#f3f0e8`/`#cf806d`). Loopback cleartext is already permitted — no
security-config change. **File scope:** new `assets/webui/**`, new `ChatWebActivity`
smali+resources, bootstrap-seeding smali, and `AndroidManifest.xml` (`<activity>` +
launcher route).

**Coordination rules (your job as orchestrator):**
- The streams are disjoint **except `AndroidManifest.xml`** (both may add components)
  and `scripts/`/build config. Treat the manifest as the shared resource: have each
  stream make only **additive** manifest edits and record them; you perform the final
  merge.
- **Integration order:** land Stream B's manifest/launcher change first, then rebase
  Stream A onto it, so A's mesh `<service>`/`<receiver>` additions apply on top cleanly.
  Resolve the manifest by union, not overwrite.
- Do a **combined build after merge** and verify on-device that BOTH work:
  Run-on-Computer connects with one tap, AND the web-UI chat opens as the chat surface
  — in the same APK, no regressions to onboarding/storage/existing features.
- If the two features conflict on the launcher/Terminal-tab routing (both may want to
  be the entry), reconcile so the web-UI chat is the chat surface and "Run on Computer"
  remains reachable from its existing entry point.
- Report progress per stream; deliver one merged signed APK plus screenshots
  demonstrating each feature. If either stream hits a hard blocker, land the other
  independently rather than blocking both.

---

## Individual prompts (if running two separate agents instead of one orchestrator)

### Prompt A — Run on Computer (mesh)

You are picking up the **"Run on Computer"** feature for the Android app in repo
`github.com/Futahua/apers-android` (local checkout:
`D:\Letters\MatTroiSeConMoc\apers-android`). Read `docs/RUN_ON_COMPUTER_HANDOFF.md`
completely first — it is the authoritative brief and contains the verified protocol
(mDNS `_hermes-handoff._tcp.`, NaCl-box pairing, QR v2 schema), the real environment
(Papers/Hermes at the paths listed), and the smallest-path plan. Also read
`reference/decompiled-java/app/src/main/java/com/hermes/android/handoff/*.java`
(readable source of the exact client protocol) and `HERMES.md`.

Goal: make "Run on Computer" frictionless and automatic — the phone auto-discovers the
PC on the LAN and connects with at most one tap; no terminal, no manual pairing-code
typing. It must stay a self-contained flow. Fix the misleading hardcoded
`python -m handoff.mesh_broker` instruction (that module doesn't exist; the real
companion is `github.com/HenWorks/Hermes-agent-android-PC-companion-app` — verify it
against the smali protocol before relying on it).

**Constraints:** This is an apktool-decoded project — edit **smali** and rebuild with
`bash scripts/build-apk.sh` (JDK 21 + apktool 2.11.1 + build-tools 35.0.0; sign with
the existing keystore so it installs over the current build). Keep the app fully
functional. **Work on branch `feat/run-on-computer`.** Your file scope is
`smali*/com/hermes/android/handoff/**`, `smali*/…/MainActivityKt$MeshScreen*`,
`res/values/strings.xml` (mesh_* strings), `assets/handoff/**`. A parallel task is
editing the WebView chat surface — avoid unrelated edits to `MainActivityKt`'s
chat/terminal code and to `AndroidManifest.xml` beyond any `<service>`/`<receiver>` you
must add (note additions in your PR so the manifest merges cleanly). Verify on-device
via ADB. Acceptance is demonstrated behavior + screenshots, not diffs (the creator is
not a coder).

### Prompt B — Web-UI chat surface

You are picking up the **web-UI chat surface** for the Android app in repo
`github.com/Futahua/apers-android` (local checkout:
`D:\Letters\MatTroiSeConMoc\apers-android`). Read `docs/WEBUI_CHAT_HANDOFF.md`
completely first — it is the authoritative brief. **Phase 1 is already proven
on-device** (do not re-litigate): `nesquena/hermes-webui` (vanilla JS, no build,
PyYAML-only, runs the on-device agent in-process via `AIAgent(quiet_mode=True)`)
served a working chat at `http://127.0.0.1:8787` — sessions, composer, file upload,
structured cards, model switch. The bundled `hermes web` (:9119) is a confirmed dead
end (frontend not built, no Node on-device).

Goal: make that web UI the app's chat surface — a slick, maintainable, self-contained
result (tap icon → clean chat; agent still runs on-device). Implement Phase 2 exactly
as the brief specifies: (1) bundle the lean hermes-webui tree into `assets/webui/`;
(2) seed it into `~/hermes-webui/` on bootstrap and launch `python3 server.py` with the
env in the brief via the app's existing Termux exec service, health-polling
`127.0.0.1:8787`; (3) build a `ChatWebActivity` as a **normal Kotlin/Java donor Android
project**, compile it, and transplant the generated smali + `<activity>` manifest entry
into the apktool project — **do NOT hand-author the WebView in smali**; (4) route the
launcher/Terminal tab to it, keep the existing native screen behind a Diagnostics
fallback; (5) optional: restyle `static/style.css` to the Papers palette (canvas
`#0a0a18`, ink `#f3f0e8`, accent `#cf806d`).

**Constraints:** apktool-decoded project; rebuild with `bash scripts/build-apk.sh`
(JDK 21, apktool 2.11.1, build-tools 35.0.0 incl. `d8`; sign with the existing
keystore). Loopback cleartext is already permitted in
`res/xml/network_security_config.xml` — no security-config change needed. **Work on
branch `feat/webui-chat`.** Your file scope is new `assets/webui/**`, the new
`ChatWebActivity` smali + resources, bootstrap-seeding smali, and the `<activity>` +
launcher/route entries in `AndroidManifest.xml`. A parallel task edits the
mesh/handoff feature — don't touch `com/hermes/android/handoff/**` or `mesh_*`
strings; when you edit `AndroidManifest.xml`, only add your `<activity>` and adjust
the launcher intent-filter, and note it in your PR so it merges cleanly. Verify
on-device via ADB; acceptance is demonstrated behavior + screenshots.
