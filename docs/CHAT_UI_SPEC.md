# Current mobile chat UI specification

Last verified against `main`: 2026-07-24.

This is the approved target for the primary Android WebUI. Preserve these decisions
unless the creator explicitly changes them.

## Overall character

Hermes Desktop information hierarchy adapted to a phone, with the restrained Papers
warm-light theme:

- warm paper canvas;
- dark readable ink;
- quiet separators and shadows;
- sparse use of warm accent and Desktop blue;
- no neon, gradients, terminal chrome, or decorative clutter.

## Conversation

### User messages

- right-aligned rounded pill;
- content-width with a sensible maximum;
- subtle warm-gray fill and quiet border;
- dark primary text.

### Assistant messages

- plain left-aligned flowing content;
- no surrounding bubble, border, repeated avatar, or repeated “Hermes” label;
- render markdown, lists, inline code, code blocks, and paths normally;
- metadata and action icons remain subordinate.

### Work and thinking

- use compact native-style worklog cards/rows;
- show live progress without hiding the user's sent prompt;
- settle completed work into a collapsible summary;
- preserve tool calls/results after reload;
- phone and Desktop turns should look and behave the same.

## Composer

- anchored to the bottom of the conversation;
- rounded white surface with quiet border/shadow;
- preserve attachment, microphone, agent/tool, file, context, and send controls;
- do not add a phone/Desktop target pill;
- Desktop ownership is selected through the sidebar, not the composer.

## Empty state

- **HERMES AGENT** wordmark;
- short agent-oriented subtitle;
- no caduceus graphic;
- no suggestion cards.

## Title and system bars

- Android status bar matches the app surface;
- top bar shows sidebar, conversation title, unread/count badge where applicable,
  new session, and refresh;
- no redundant app icon beside the title;
- no control overlap at the right edge.

## Sidebar

- preserve the existing capability rail;
- bottom destinations are **Desktop** and **Original**;
- Desktop is a reversible toggle between phone and PC session lists;
- Original opens the native Android application;
- outside blank space and Android Back close the drawer;
- closed drawer casts no visible strip over the chat;
- do not duplicate rail destinations as large top buttons.

## Projects and sessions

- standalone **Projects** header with a `+` action;
- no date grouping or filter pills above the project list;
- project headings remain visually above their indented conversations;
- no folder icons;
- phone project dot and heading text reflect its editable color;
- Desktop workspace headings use restrained blue;
- tap heading to collapse/expand, without a chevron;
- long-press named phone project for rename, color, and delete actions;
- project deletion confirms the number of contained conversations;
- use an invisible right-edge grip for project and conversation reordering;
- Unassigned is collapsible and reorderable like other groups.

## Session actions

The full existing conversation action set should remain available where supported,
including rename, project move, archive, duplicate, export, regenerate title, delete,
and continue on Desktop. Do not replace the full menu with an abbreviated sheet unless
the missing actions are genuinely unsupported for that session type.

## Desktop conversations

- appear in the same sidebar and main chat;
- group by PC workspace/project without date buckets;
- support open, rename, archive, and persistent continuation;
- cached content may remain readable while the PC is offline;
- opening an uncached session must complete or show a bounded actionable error;
- never leave “Preparing this Desktop conversation…” indefinitely.

## One-line target

Warm paper · quiet Desktop hierarchy · right-aligned user pills · borderless assistant
content · persistent worklogs · one sidebar for phone and PC · indented, colored,
manageable projects.
