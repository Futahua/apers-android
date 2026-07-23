# Apers Android — Hermes-Desktop-style UI (Papers theme) — design & plan

Goal: make the phone app's chat **look like Hermes Desktop with the Papers theme** —
message cards, not a green-on-black terminal — **while keeping the app fully
functional.** This is presentation over a preserved engine, not a rewrite.

> **Hard constraint (do not violate):** the agent engine runs through the embedded
> terminal pipeline — `com.termux.view.TerminalView` + the Python/termux bootstrap +
> `TerminalSessionManager`. Sessions, tool execution and agent I/O all flow through it.
> **Never remove or bypass the terminal engine for the sake of looks.** The redesign
> changes what the user *sees*, not how the agent *runs*.

---

## 1. What the app is today (verified in code)

- UI is **Jetpack Compose** already (`MainActivityKt`: `HermesTheme`, `HermesApp`,
  `MainTabsScreen`, `TerminalTabContent`, `ExtraKeysBar`). Editable only as **smali**
  (decompiled Java in `reference/decompiled-java/` is readable but not recompilable).
- Current theme = a **blue "glass"** look: Compose colors `BlueBg`, `Glass`,
  `GlassBorder`, `TextPrimary/Secondary/Muted` (in `MainActivityKt`).
- The chat surface is a real terminal: `com.termux.view.TerminalView` embedded via
  `AndroidView` inside `TerminalTabContent`. A cosmetic "chat skin" already exists
  (`chat/ChatSkinState`, `ChatBubble`, `ChatSkinController`, `chatMode` state).
- **Key enabler:** the app already has **structured chat data**, independent of the
  terminal. `data/HermesHudRepository.readSessionMessages(sessionId)` runs SQL against
  `~/.hermes/state.db` and returns `ChatMessage(role, content, toolName)` lists — the
  same session store Hermes Desktop uses. Today these render in a HUD/preview overlay
  (`showHudOverlay`, `previewSessionId`, `messages`), not as the primary chat.

**Implication:** a desktop-style transcript is feasible because the *content* already
exists as role-tagged messages. We present those as Papers-styled cards while the
terminal keeps running underneath as the execution engine.

## 2. The target look (from the real sources — not invented)

### Hermes Desktop tokens (`…/hermes-agent/apps/desktop/src/styles.css`)
- Text hierarchy: `--ui-text-primary 94%` / `secondary 74%` / `tertiary 54%` /
  `quaternary 36%` of base — four deliberate levels, not one.
- Radii: xs .125 → sm .5 → md .625 → lg .75 → xl 1rem (rounded, soft).
- Soft shadows: `--shadow-composer: 0 .0625rem .125rem rgba(0,0,0,.05)`.
- Layout: **sidebar** (`session-row`, `virtual-session-list`) + **transcript** +
  **rich composer** (model pill, status-stack rows). Assistant bubble seed is a faint
  tint of the accent, not a hard box.

### Papers theme (creator's canonical skin — `Papers-3/src/host/styles.css`,
`docs/HERMES_SKIN.md`)
- **Philosophy: "refinement, not redesign. No gradients, colored card outlines, neon
  terminal aesthetic, glowing buttons."** The current blue-glass look is the *opposite*
  of this and should go.
- **Papers Light:** canvas `#f4f2ec` (warm paper), ink `#20201e`, raised `#fbfaf6`,
  input `#ffffff`, line `rgba(32,32,30,.13)`, muted `#747169`, faint `#9c988f`.
  Accents (used sparingly): green `#4e705a`, blue `#516b79`, amber `#9d7134`,
  red `#9a4c42`.
- **Papers Dark:** canvas `#0a0a18` (deep navy-black), card `#111124`,
  foreground `#f3f0e8` (warm off-white), quiet panel separation, restrained
  lavender/blue character, thin borders only where structure is needed.
- Text tiers via `color-mix(ink, canvas)`: primary 96% / secondary 78% / tertiary 62%
  / quaternary 46%.

**Net target:** Hermes Desktop's *layout and hierarchy*, wearing *Papers colors* —
warm paper (or deep navy in dark), soft cards, four-tier text, quiet borders, one
restrained accent. Calm, readable, "at home beside Papers."

## 3. Strategy — three layers, increasing risk. Do them in order; stop when satisfied.

Each layer keeps the terminal engine intact. Ship and review after each.

### Layer A — Repalette (low risk, high impact)
Replace the blue-glass theme with the Papers palette everywhere.
- In `MainActivityKt` smali, change the theme color literals: `BlueBg` (brush) →
  flat Papers canvas; `Glass`/`GlassBorder` → Papers raised/line; `TextPrimary/
  Secondary/Muted` → Papers ink tiers. Add a 4th (quaternary) where the desktop uses it.
- Terminal color scheme: point the `TerminalView` palette (bg/fg/ansi) at Papers tones
  so even the raw terminal reads as "paper," not black. (termux terminal colors are set
  in `TerminalSessionManager` / a properties file — confirm and retint.)
- Status bar / window background / Compose `Surface` colors → Papers canvas.
- Support **light + dark** by mapping to the two Papers palettes.
- Risk: editing color constants in smali is safe and reversible. This alone removes the
  "terminal/neon" feel.

### Layer B — Desktop-style transcript as the chat surface (medium risk, the core ask)
Make the structured-message view the primary chat, styled like Hermes Desktop; keep the
terminal running as the engine (optionally reachable via a "raw terminal" toggle).
- Reuse the existing `HermesHudRepository.readSessionMessages` → `ChatMessage` data and
  the existing `ChatSkinState`/`ChatBubble` scaffolding rather than writing a renderer
  from scratch.
- Style message rows to the desktop spec: user vs assistant distinction by alignment +
  faint accent-tint bubble (not hard boxes), four-tier text, soft radii, tool calls as
  a compact labeled row (desktop `status-row`/`coding-row` idiom), markdown/mono for
  code. Keep the composer (input + send) but restyle to the desktop composer (rounded,
  soft shadow, model pill).
- Wiring: the terminal still runs the agent; the transcript reflects `state.db`. The
  existing `chatMode`/`chatSurfaceGen`/`hermesResponseCount` machinery already bridges
  terminal turns → structured messages — lean on it; make chat-mode the default surface.
- Risk: this is Compose-structure work in smali. Prefer **re-pointing existing
  composables and toggles** over authoring new layout bytecode. Where new structure is
  unavoidable, keep it minimal. Test each change on-device; a bad Compose smali edit
  fails at runtime, not build time, so verify by launching.

### Layer C — Desktop shell polish (optional, higher risk)
Sidebar session list + top bar to mirror the desktop shell (`session-row`,
`virtual-session-list`). The app already has a HUD with sessions to draw from.
- Only attempt after A+B are solid. Highest smali-layout risk; easy to defer.

## 4. Explicit non-goals / guardrails
- Do **not** remove `TerminalView`, `TerminalSessionManager`, or the Python bootstrap.
  The terminal is the engine; the redesign sits on top.
- Do **not** attempt to port the desktop's React components; reproduce the *look* with
  native Compose values, not a WebView.
- Do **not** introduce gradients/neon/glow (Papers explicitly forbids it).
- Keep every existing capability working: onboarding, install/bootstrap, sessions,
  extra-keys, mesh/handoff, settings, All-files-access. Reskin them; don't break them.
- Preserve light/dark and RTL (`supportsRtl`) support.

## 5. Build / test loop (already in place)
`bash scripts/build-apk.sh` → `adb install -r` → launch → screenshot. Every smali UI
edit must be verified on-device (Compose smali errors surface at runtime). Same signing
key so it updates in place. Roll back a layer if it regresses function.

## 6. Feasibility summary (honest)
- **Layer A: very feasible** in smali (color constants). Biggest visual win for least risk.
- **Layer B: feasible but careful** — the data + skin scaffolding already exist, so this
  is "activate + restyle," not "build a chat engine." The risk is Compose-in-smali
  fiddliness, mitigated by reusing existing composables and testing on-device.
- **Layer C: optional**, defer unless wanted.
- A true from-scratch desktop rewrite (new rendering pipeline) remains **out of scope**
  for APK patching — it would need the app rebuilt from real source, which we don't have.

## 7. Key source references
- Phone: `smali_classes3/com/hermes/android/MainActivityKt.smali` (theme colors,
  `TerminalTabContent`, `chatMode`, composer); `chat/ChatSkinState|ChatBubble|
  ChatSkinController` (readable in `reference/decompiled-java/.../chat/`);
  `data/HermesHudRepository` (`readSessionMessages` → `ChatMessage`);
  `TerminalSessionManager` (terminal palette).
- Desktop design: `…/.hermes/hermes-agent/apps/desktop/src/styles.css` (tokens),
  `…/apps/desktop/src/app/chat/**` (transcript/composer/sidebar structure).
- Papers theme: `PAPERS 3/Papers-3/src/host/styles.css`,
  `hermes-skin/papers-theme-plugin.js`, `docs/HERMES_SKIN.md`.
