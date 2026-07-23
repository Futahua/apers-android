# Chat UI target spec — Hermes Desktop look, Papers theme (APPROVED)

Definitive target for the phone chat surface. Confirmed by the creator. Build to this;
do not re-ask. Sources: creator's desktop screenshot, Hermes Desktop source
(`…/hermes-agent/apps/desktop/src/app/chat/**`, `src/styles.css`), Papers theme
(`Papers-3/src/host/styles.css`, `docs/HERMES_SKIN.md`).

Render surface = native Compose `ChatSkinScreenKt.ChatSkinScreen` (ChatBubble list +
ToolCardRow), which is already wired via `chatMode` (defaulted ON). The terminal engine
stays intact underneath — presentation only.

## 1. User messages
- Right-aligned SOLID rounded pill (~16dp radius, all corners).
- Subtle lavender-navy fill, brighter than canvas; primary text inside.
- Content-width (max ~80%), not full width.

## 2. Assistant messages
- NO bubble, NO border, NO box. Plain flowing text on the canvas, left-aligned, full width.
- Real markdown: bold, bullet lists, inline `code`, code blocks, file paths. Not monospace.
- Primary off-white text, comfortable line height.

## 3. Tool calls
- Quiet inline ROWS, not boxes: small leading icon + muted one-line label + faint timing
  on the right (e.g. `Ran rm -f … +5 commands · 205ms`, `Skills List · 69 items · 63ms`).
- Tertiary/muted color, small, subordinate to the conversation, collapsible.

## 4. "Thinking"
- Faint italic gray label (`Thinking`, `Thinking 41s ⌄`). No spinner, no box.

## 5. Composer (bottom)
- Rounded input, soft shadow / quiet border, placeholder (`Push it further`).
- Left `+` attach; right side: model pill (`GPT-5.6-sol · Med`), mic, filled circular send.

## 6. Tone (Papers)
- Flat canvas (Papers navy dark / warm paper light), four-tier text
  (primary/secondary/tertiary/quaternary), soft radii, thin quiet borders only where needed.
- NOT: no `⊕ NOUS HERMES` banner, no ANSI yellow, no box-drawing borders, no `bash-$`
  prompt, no monospace body, no gradients/neon/glow.

## One-line
Right-aligned user pills · borderless markdown assistant text · quiet muted tool-rows ·
faint "thinking" · rounded composer with model pill — on a flat Papers canvas.

## Papers Dark values (in use)
canvas `#0a0a18` · card `#111124` · lifted `#161a2e` · ink off-white `#f3f0e8`
(primary 100%, secondary 78%, tertiary 55%, quaternary/border 15%) · user-pill `#2b4a6f`
· warm accent `#cf806d` (sparingly). Light mode later: paper `#f4f2ec`, ink `#20201e`.
