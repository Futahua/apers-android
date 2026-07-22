# Decompiled Java source (read-only reference)

Human-readable **decompiled Java** of the app under `app/src/main/java/com/hermes/android/`.
Folded into this repo from the former `Futahua/hermes-agent-android` repo (now deleted;
this repo is the single source of truth).

## What this is / isn't

- **Is:** a readable view of the app's logic — far easier to understand than the smali.
  Use it to *understand* behavior (e.g. the handoff/pairing protocol, ads/billing).
- **Isn't:** buildable. This decompiled Java does **not** recompile into the app.
  The authoritative, rebuildable form is the **smali / apktool project at the repo root**
  (`smali*/`, `res/`, `lib/`, `assets/`, `AndroidManifest.xml`). Build with
  `scripts/build-apk.sh` — never from this folder.

## Most useful for the "Run on Computer" work

`app/src/main/java/com/hermes/android/handoff/` — the readable source of the exact
protocol the phone speaks (see `docs/RUN_ON_COMPUTER_HANDOFF.md`):

- `HandoffCrypto.java` — NaCl box keypairs / encrypt / decrypt (pairing).
- `HandoffDiscovery.java` — mDNS `_hermes-handoff._tcp.` discovery.
- `HandoffController.java`, `HandoffClient.java` — connection + task/bundle flow.
- `HandoffPeerStore.java` / `HandoffIdentityStore.java` — peers.json / identity.
- `HandoffExporter.java` / `HandoffImporter.java` / `HandoffJson.java` — bundle I/O.

Also relevant: `data/BillingRepository.java`, `data/AdManager.java` (what the root-level
smali no-ops correspond to).

> Decompiled output is approximate (synthetic classes, lost generics, `$Lambda`
> artifacts). Treat it as a guide to intent, and confirm exact bytes against the smali
> when it matters.
