# Mobile UI implementation status and remaining work

Last verified against `main`: 2026-07-24.

The primary mobile UI is now the bundled Hermes WebUI hosted by
`ChatWebActivity`. The former plan to restyle the native Compose terminal into a chat
surface is obsolete. Native Compose remains behind **Original** as a fallback and
capability surface.

This document records what has shipped and how future design changes should be made.

## Product direction

The phone should feel like Hermes Desktop adapted to a narrow touch screen, wearing
the Papers warm-light theme. This means preserving Desktop's information hierarchy and
capabilities without copying its desktop geometry literally.

Core principles:

- warm paper canvas, dark readable ink, quiet separators, restrained accents;
- one clear hierarchy rather than decorative cards and icons;
- existing functions remain available during visual changes;
- phone and Desktop conversations use one navigation model;
- touch gestures must not conflict with row selection;
- no gradients, neon terminal treatment, or redundant branding.

## Implemented shell

### Main conversation

- system status bar matches the app surface;
- title bar contains sidebar, current title, new session, and refresh;
- assistant responses are borderless flowing content;
- repeated Hermes avatar/name labels are removed;
- user messages remain right-aligned rounded pills;
- tool activity uses the WebUI's compact worklog treatment;
- remote Desktop worklogs use the same visual behavior and persist;
- composer stays anchored at the bottom with existing attachment, voice, agent/tool,
  file, context, and send functions;
- the removed target/mode pill must not return.

### Empty state

The empty conversation uses the restrained **HERMES AGENT** wordmark and short agent
description. It does not show the older caduceus graphic or suggestion cards.

### Sidebar

- the rail preserves the WebUI destinations and capabilities;
- redundant New session/Capabilities/Messaging/Artifacts duplicates are not added
  above the content;
- **Desktop** and **Original** are bottom destinations;
- Desktop toggles the same sidebar between phone and PC sessions;
- tapping outside the open drawer or Android Back closes it;
- the closed drawer leaves no persistent shadow strip over the chat;
- there is no close control overlapping the top-right new-session control.

### Projects and sessions

- a standalone **Projects** row owns the add button;
- the add button is not attached to the first project;
- project headings replace date grouping;
- conversations are slightly indented beneath their project;
- hierarchy uses spacing and readable text color, not folder icons;
- project colors drive the dot and a darkened/readable heading color;
- creation includes name and color selection;
- long-press exposes rename, color change, and destructive deletion;
- deleting a project explicitly confirms deletion of all contained conversations;
- tapping a project heading collapses/expands it without a chevron;
- every project, including Unassigned, has an invisible right-edge reorder grip;
- sessions use the same separate right-edge grip so the action menu does not block
  reordering;
- project and session order persist.

### Desktop mode

- PC sessions appear in the same sidebar rather than a popup;
- PC workspaces are shown as project-like headings;
- headings use a restrained blue and conversations are indented;
- workspace groups collapse and reorder;
- Desktop is a two-way toggle;
- Desktop sessions support open, rename, and archive;
- a phone session can be continued on Desktop from its long-press menu.

## Interaction zones

Rows have three conceptually separate touch behaviors:

```text
main row area       tap to open
main row long-press open management actions
right-edge grip     drag to reorder
```

The grip may be visually invisible but must have a practical touch target. Grip events
must stop propagation so they do not also open the row or action menu.

Project headings similarly use:

```text
heading tap         collapse or expand
heading long-press  project actions (named phone projects only)
right-edge grip     reorder the group
```

## Theme tokens

Android-specific styles are in `assets/webui/static/apers-android.css`. Current
direction:

```text
canvas/background   #f8f7f3
sidebar             #f0eee8
surface             #ffffff
input               #fbfaf7
ink                 #292823
muted               #75716a
line                #d9d6ce
warm accent         #c97865
desktop blue        #586b87
```

Project palette colors may be brighter than accessible heading text. Display heading
text as a mixture with the base ink; do not use raw yellow or cyan text on paper.

## Remaining work

Highest-priority remaining work is behavioral reliability, not another reskin:

1. Fix the indefinitely stuck Desktop-session preparation flow.
2. Add bounded native control request expiry and retry.
3. Continue auditing phone/Desktop session persistence and ownership.
4. Check long titles, large project counts, keyboard resize, and accessibility labels.
5. Add dark mode only as a complete, coherent theme; do not partially invert the
   current light UI.

## Implementation locations

| Concern | Files |
|---|---|
| Android behavior and DOM additions | `assets/webui/static/apers-android.js` |
| Android theme and layout | `assets/webui/static/apers-android.css` |
| Base markup and asset query revision | `assets/webui/static/index.html` |
| Base session/dialog behavior | `sessions.js`, `ui.js`, `workspace.js` |
| Android WebView and bridge | `smali_classes5/com/hermes/android/webui/` |
| Asset seeding revision | `WebUiServer.smali` |

## Review checklist

For each UI change:

- compare against the actual phone screenshot, not a desktop browser alone;
- preserve the functions already present in the affected region;
- check both phone and Desktop sidebar modes;
- check open and closed drawer states;
- check active, inactive, empty, collapsed, and long-title rows;
- check touch/long-press/drag separation;
- check the Android keyboard and Back button;
- bump the WebUI asset revision;
- build, install, and verify on the SM-N975F.

See [`CHAT_UI_SPEC.md`](CHAT_UI_SPEC.md) for the concise approved target.
