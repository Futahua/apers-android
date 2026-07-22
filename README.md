# apers-android

Standalone, rebuildable Android build of the **Apers Terminal Agent**
(`apers.terminal.agent.ap`) — an apktool-decoded project derived from the Hermes
Agent app, repackaged to install **alongside** the original app with Play Store
split delivery, advertising, billing, and licensing removed/disabled.

> This is an **apktool-decoded APK project**, not a Gradle project. It is rebuilt
> with `apktool` + Android build-tools, then zipaligned and signed with a local key.

## Status

- ✅ Builds cleanly with apktool (aapt2).
- ✅ Signs (v2 + v3) and passes `apksigner verify`.
- ✅ **Installs and launches on-device** (verified: Samsung SM-N975F, Android 12 /
  API 31 / arm64-v8a), alongside the original `com.hermesagent.android`.
- ✅ No Play Store split APKs required; arm64-v8a native libs merged into the base APK.

See [`BUILD_REPORT.md`](BUILD_REPORT.md) for the full audit, the exact changes made,
and the on-device test results.

## What's here

```
AndroidManifest.xml     decoded manifest (split/ads/billing/license stripped)
apktool.yml             apktool project metadata (minSdk 26, targetSdk 35, v3.0.0)
smali*/                 decoded Dalvik bytecode (4 dex trees)
res/                    resources (incl. custom launcher icons)
assets/                 app assets (python/termux bootstrap zips, wheels, handoff, ...)
lib/arm64-v8a/          native libraries (libtermux, libjnidispatch, libsodium, ...)
original/, unknown/     apktool passthrough metadata
scripts/                reproducible build/verify/install tooling
BUILD_REPORT.md         full build report
```

Build outputs (APK, keystore, logs) go to `./dist/` and are **gitignored**.

## Prerequisites

Provide these tools (any location; override via env vars in `scripts/env.sh`):

| Tool | Version used | Env var |
|---|---|---|
| JDK 17+ | OpenJDK 21 (Android Studio JBR) | `JAVA_HOME` |
| apktool | 2.11.1 | `APKTOOL_JAR` (path to `apktool.jar`) |
| Android build-tools | 35.0.0 (`aapt2`, `zipalign`, `apksigner`) | `ANDROID_SDK` / `BUILD_TOOLS` |
| Android platform-tools | `adb` (for install/test) | `ANDROID_SDK` |

Install the SDK bits with `sdkmanager "build-tools;35.0.0" "platform-tools" "platforms;android-35"`.

## Build

```bash
# from the repo root (Git Bash on Windows, or any bash):
export JAVA_HOME="/path/to/jdk"
export ANDROID_SDK="/path/to/android-sdk"
export APKTOOL_JAR="/path/to/apktool.jar"
export KEYSTORE_PASS="choose-a-local-password"   # only needed the first time, to create the keystore

bash scripts/build-apk.sh      # clean → apktool build → zipalign → sign → verify → sha256
```

Output: `dist/apers-signed.apk` (+ `.sha256`, `build.log`, `verification.txt`).

The first run creates a local RSA-4096 keystore at `dist/apers-local-release.jks`
using `KEYSTORE_PASS`. Keep that keystore and password safe and **out of git** — the
same key must be reused to ship updates that install over a prior version.

## Verify

```bash
bash scripts/verify-apk.sh     # unzip -t, zipalign -c, apksigner verify, badging, parse-failure checklist
```

## Install on a device

```bash
bash scripts/install-apk.sh    # adb install -r + launch + filtered logcat
```

Because the package id (`apers.terminal.agent.ap`) differs from the original app, it
installs as a separate app; the original Hermes Agent is left untouched.

## Notes on further development

- Ads and in-app billing are **disabled** at the app's own init points
  (`AdManager.initialize()`, `BillingRepository.connect()` are no-ops); the SDK
  classes remain packaged but unreachable. To re-enable, revert those smali no-ops and
  restore the corresponding manifest components.
- Play licensing (PairIP) is **bypassed** via a no-op in
  `smali/com/pairip/licensecheck/LicenseClient.smali` (`checkLicense`). There is **no
  encrypted DEX payload** — all app code is plain smali, so ordinary smali edits +
  `apktool b` are sufficient.
- Only `arm64-v8a` is packaged (matches the target device). An x86_64 emulator would
  fail to load the native libs.
- 5 unreferenced Compose material-icon classes (`AddChartKt`, upper-case variant) are
  absent due to a case-insensitive-filesystem collision with `AddchartKt`; they are
  referenced nowhere and have no functional effect. See `BUILD_REPORT.md` §12.

## Provenance

Originally derived from the apktool project `Futahua/apers-android-src`
@ `47e332c1829de641649fcd08ebbca9d1690913e7` (now retired — this repo supersedes and
fully contains it). Human-readable decompiled Java of the same app is preserved under
[`reference/decompiled-java/`](reference/decompiled-java/) (folded in from the former
`Futahua/hermes-agent-android`, also retired). This is now the single source of truth.
