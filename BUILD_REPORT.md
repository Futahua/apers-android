# APERS Terminal Agent — Standalone APK Build Report

Build of a standalone, installable Android APK from the apktool-decoded
`Futahua/apers-android-src` project, packaged as **`apers.terminal.agent.ap`** so
it installs **alongside** the original Hermes Agent app (`com.hermesagent.android`).

> **Note on paths:** this report was written during the original build under a scratch
> workspace where artifacts went to `output/`. In this standalone repo the build
> scripts write to **`dist/`** instead (see `README.md`); read every `output/…` path
> below as `dist/…`. The absolute `/d/apers-build/…` tool paths were the original
> author's local install and are configurable via `scripts/env.sh`.

---

## 1. Result

| | |
|---|---|
| **Final APK** | `output/apers-signed.apk` |
| **Package (application id)** | `apers.terminal.agent.ap` |
| **versionCode / versionName** | `23` / `3.0.0` |
| **minSdk / targetSdk** | `26` / `35`  (Android 12 = API 31 is in range) |
| **ABI** | `arm64-v8a` (merged from the original ABI split) |
| **Size** | 120,111,912 bytes (~114.5 MiB) |
| **SHA-256** | see `output/apers-signed.apk.sha256` (signing is not byte-reproducible) |
| **Signature** | v2 + v3 schemes — `apksigner verify` → **Verifies** |
| **Structural checks** | `unzip -t` OK · `zipalign -c 4` OK · `aapt2 badging` OK |

> The signed APK is **not byte-for-byte reproducible** across runs because
> apksigner embeds fresh signature-block salt each time. The *content* is
> identical; only the signature bytes differ. Two example digests observed:
> `c7253079…6de` and `98957450…7e`. Always trust the digest emitted by the
> build run that produced the APK you are shipping (`output/apers-signed.apk.sha256`).

---

## 2. Source

| | |
|---|---|
| Repository | https://github.com/Futahua/apers-android-src |
| Commit | `47e332c1829de641649fcd08ebbca9d1690913e7` (only commit on `main`) |
| Commit subject | "Apktool-decoded project (rebuildable) — package renamed to apers.terminal.agent.ap, custom icons, billing/ads stripped" |
| Working branch | `local/apk-build-fix` |
| Project type | apktool-decoded APK (base of a Play split-APK set). **Not** a Gradle project. |
| apktool.yml | `apkFileName: base.apk`, minSdk 26, targetSdk 35, versionCode 23, packageId 127 |

Originals preserved before edits in `/d/apers-build/preserve/`
(`AndroidManifest.original.xml`, `apktool.original.yml`).

---

## 3. Toolchain (all local, on `D:` — nothing installed to `C:`)

| Tool | Version | Path |
|---|---|---|
| JDK (Android Studio JBR) | OpenJDK 21.0.10 | `D:\Programs\Android Studio\jbr` |
| apktool | 2.11.1 | `D:\apers-build\tools\apktool.jar` |
| Android SDK cmdline-tools | 12.0 | `D:\apers-build\tools\android-sdk\cmdline-tools\latest` |
| Build-Tools | 35.0.0 | `…\android-sdk\build-tools\35.0.0` |
| aapt2 | 2.19-11948202 | build-tools 35.0.0 |
| apksigner | 0.9 | build-tools 35.0.0 |
| zipalign | (build-tools 35.0.0) | build-tools 35.0.0 |
| platform | android-35 | `…\android-sdk\platforms\android-35` |
| adb (platform-tools) | 1.0.41 | `…\android-sdk\platform-tools` |

No Android SDK or apktool existed on the machine at start. They were downloaded
(GitHub release for apktool; `dl.google.com` for cmdline-tools) and the SDK
packages installed via `sdkmanager` into `D:\apers-build\tools\android-sdk`.

---

## 4. Changes made (minimal, targeted patches)

Diff summary (`git diff --stat`, excluding scripts): **5 source files changed**.

### 4.1 Manifest — `AndroidManifest.xml`

Removed / neutralized:

| Item | Action | Why |
|---|---|---|
| `android:requiredSplitTypes="base__abi,base__density"` | removed attr | forced installer to demand ABI/density split APKs → root cause of "Problem parsing the package" |
| `android:splitTypes=""` | removed attr | leftover split declaration |
| `<meta-data com.android.vending.splits.required=true>` | removed | required Play split delivery |
| `<meta-data com.android.vending.splits @xml/splits0>` | removed | split map (file also deleted) |
| `<meta-data com.android.vending.derived.apk.id>` | removed | Play-derived APK id |
| `<meta-data com.android.stamp.source / .type>` | removed | Play Store distribution stamp |
| `<uses-permission com.android.vending.CHECK_LICENSE>` | removed | Play licensing |
| `<activity com.pairip.licensecheck.LicenseActivity>` | removed | license paywall/error UI (unreachable after §4.3) |
| AdMob `com.google.android.gms.ads.APPLICATION_ID` meta | removed | ads |
| `MobileAdsInitProvider`, `AdService`, `AdActivity`, `OutOfContextTestingActivity`, `NotificationHandlerActivity` | removed | ads components / auto-init |
| ads flag metas (`OPTIMIZE_AD_LOADING`, `OPTIMIZE_INITIALIZATION`) | removed | ads |
| `com.google.android.play.billingclient.version` meta | removed | billing |
| `ProxyBillingActivity`, `ProxyBillingActivityV2` | removed | billing UI |
| `com.google.android.gms.common.api.GoogleApiActivity` + `com.google.android.gms.version` meta | removed | GMS-common (only consumed by ads/billing here; no `GoogleApiAvailability` use in app code) |
| `com.google.android.gms.permission.AD_ID` | removed | ads |
| `ACCESS_ADSERVICES_AD_ID / _ATTRIBUTION / _TOPICS` | removed | ads (privacy sandbox) |
| `com.android.vending.BILLING` permission | removed | billing |

**Kept intentionally:** `android:name="com.pairip.application.Application"` (the app's
Application class — see §4.3), `<uses-native-library>` optional entries, the
`<queries>` billing intents (inert visibility queries), app-functional permissions
(INTERNET, FOREGROUND_SERVICE[_SPECIAL_USE], CAMERA, BOOT, WAKE_LOCK, etc.),
`MainActivity` / `HermesService` / `BootReceiver`, all AndroidX Startup / WorkManager
/ Room / profileinstaller / datatransport components.

Provider authorities verified **unique** and already carrying the new id
(`apers.terminal.agent.ap.androidx-startup`; the mobileadsinitprovider authority was
removed with its provider).

### 4.2 Split resource — `res/xml/splits0.xml`

Deleted (only referenced by the removed `com.android.vending.splits` meta). The
matching `<public type="xml" name="splits0" …/>` entry in `res/values/public.xml`
was also removed to avoid a dangling resource reference at build time.

### 4.3 PairIP / license — `smali/com/pairip/licensecheck/LicenseClient.smali`

**Investigated first.** `com.pairip.application.Application` here does **not** decrypt
or load any protected/encrypted DEX — its only action is:

```
attachBaseContext(ctx) → LicenseClient.checkLicense(ctx) → super.attachBaseContext(ctx)
```

i.e. all app code is present as plain smali; PairIP's only live behavior is the Play
license check, which on a non-Play install fails and launches the blocking
`LicenseActivity`. Therefore the Application class was **kept unchanged** (so init
order / class loading is untouched) and only `LicenseClient.checkLicense(Context)`
was turned into a no-op (logs and returns). No integrity/signature check gates
startup (see §4.5).

### 4.4 Ads & billing — app code no-ops (classes kept packaged)

Rather than delete the large GMS-ads / billing-client class trees (which risks
dangling references), initialization was disabled at the app's own entry points so
the SDKs are **never reached**:

- `com/hermes/android/data/AdManager.initialize()` → no-op (sets `initialized=true`,
  never calls `MobileAds.initialize`). Because `interstitialAd` stays null, the
  existing `shouldShowAd()` returns false and `showInterstitial()` immediately invokes
  its `onDismissed` callback — no ad ever loads or shows.
- `com/hermes/android/data/BillingRepository.connect()` → no-op (sets purchase state
  to `Idle`, never calls `BillingClient.startConnection`). The client is still built
  in the constructor (harmless, no I/O) but never connects.

### 4.5 Cosmetic — `smali_classes3/com/hermes/android/BuildConfig.smali`

`APPLICATION_ID` string updated `"com.hermesagent.android"` → `"apers.terminal.agent.ap"`.
This constant is **read nowhere** in the app (verified), so it is purely for
correctness. `getPackageName()` is used dynamically elsewhere and returns the new id
at runtime.

---

## 5. Package-rename audit

The rename to `apers.terminal.agent.ap` was already applied in the committed manifest.
Systematic search (`com.hermesagent.android`, `com.hermes.android`,
`apers.terminal.agent.ap`, `com.android.vending`, `pairip`), classifying app-ids vs
implementation namespaces:

| Location | State |
|---|---|
| root `<manifest package>` | `apers.terminal.agent.ap` ✓ |
| provider authorities | `apers.terminal.agent.ap.androidx-startup` ✓ (ads provider removed) |
| custom permission | `apers.terminal.agent.ap.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION` ✓ |
| `BuildConfig.APPLICATION_ID` | updated to new id (was old; unused) |
| `LicenseClient.packageName` | was `com.hermesagent.android`; now irrelevant (check no-op'd) |
| `com.hermes.android.*` (MainActivity, HermesService, BootReceiver, …) | **implementation classes — left unchanged** |
| `com.pairip.*` | implementation classes — left unchanged (checkLicense no-op'd) |

Only two files ever referenced the old application id (`BuildConfig`, `LicenseClient`);
neither gates startup. No smali package directories were moved — the Java/Kotlin
namespace `com.hermes.android` is deliberately **not** renamed (it holds real class
names, not the app id).

---

## 6. Native libraries

Target: **Samsung Android 12, API 31, arm64-v8a.** All required libs present and valid
(full detail in `output/native-libraries.txt`):

| lib/arm64-v8a/*.so | size | ELF | loaded by |
|---|---|---|---|
| `libtermux.so` | 9,232 | aarch64, NDK r28 | `System.loadLibrary("termux")` (com/termux/terminal/JNI) |
| `libjnidispatch.so` | 165,992 | aarch64 | JNA (com/sun/jna/Native) |
| `libsodium.so` | 313,304 | aarch64, NDK r29 | via JNA (libsodium/PyNaCl) |
| `libandroidx.graphics.path.so` | 10,096 | aarch64, NDK r25c | androidx.graphics path parser |

- All four are valid non-truncated aarch64 ELF shared objects; none zero-byte; correct ABI.
- The original app delivered ABI as a split (`base__abi`); here the arm64-v8a libs are
  **merged into the base APK**, so no split APK is needed.
- Optional system libs `libOpenCL.so`, `libcdsprpc.so`, `libadsprpc.so` are declared
  `<uses-native-library required="false">` and are **not packaged** (device/vendor
  provides them; the app tolerates absence). x86_64 was not built (target is arm64 only).

---

## 7. Advertising / billing / license status

| System | Status | Detail |
|---|---|---|
| Advertising (GMS Ads / AdMob) | **Disabled** | `AdManager.initialize()` no-op; ads manifest components/permissions/metadata removed. GMS-ads classes remain packaged but are never initialized or reached. No ad ever loads or displays. |
| Billing (Play Billing Client) | **Disabled** | `BillingRepository.connect()` no-op; billing activities/permission/version-meta removed. Billing classes remain packaged but never connect. App runs free-tier. |
| Play licensing (PairIP) | **Bypassed** | `LicenseClient.checkLicense()` no-op; `LicenseActivity` + `CHECK_LICENSE` removed. `com.pairip.application.Application` retained (no encrypted payload; only did the license call). |
| Play split delivery | **Removed** | required-split attrs + all `com.android.vending.splits*` / `derived.apk.id` / stamp metadata removed; `splits0.xml` deleted. |

Honest scope: ads/billing/GMS-ads class trees are **still packaged but unreachable**,
not deleted. This is the deliberately safer choice (no dangling references) and was
the task's stated preference when deleting dependency trees is risky.

---

## 8. Exact build / sign / verify commands

```bash
# environment (see scripts/env.sh)
export JAVA_HOME="/d/Programs/Android Studio/jbr"
SDK=/d/apers-build/tools/android-sdk ; BT="$SDK/build-tools/35.0.0"

# build
java -jar /d/apers-build/tools/apktool.jar b . -o output/apers-unsigned.apk

# align
"$BT/zipalign.exe" -p -f 4 output/apers-unsigned.apk output/apers-aligned.apk
"$BT/zipalign.exe" -c -v 4 output/apers-aligned.apk

# keystore (password kept in output/keystore-password.txt, gitignored)
keytool -genkeypair -keystore output/apers-local-release.jks -alias apers-local \
  -keyalg RSA -keysize 4096 -validity 10000 -storepass <pass> -keypass <pass> \
  -dname "CN=Apers Local Build, OU=Local, O=Local, L=Local, ST=Local, C=US"

# sign (v1+v2+v3)
"$BT/apksigner.bat" sign --ks output/apers-local-release.jks --ks-key-alias apers-local \
  --ks-pass pass:<pass> --key-pass pass:<pass> \
  --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
  --out output/apers-signed.apk output/apers-aligned.apk

# verify
"$BT/apksigner.bat" verify --verbose --print-certs output/apers-signed.apk
"$BT/aapt2.exe" dump badging output/apers-signed.apk
```

One-command reproduction: **`bash scripts/build-apk.sh`** (clean → build → align →
sign → verify → hash). Verify only: `bash scripts/verify-apk.sh`. Install+launch on a
device: `bash scripts/install-apk.sh`.

The first apktool build **succeeded on the first attempt** (no resource/smali errors);
see `output/build.log`.

---

## 9. Signing & verification result

```
Verifies
Verified using v1 scheme (JAR signing): false
Verified using v2 scheme (APK Signature Scheme v2): true
Verified using v3 scheme (APK Signature Scheme v3): true
Signer #1 certificate DN: CN=Apers Local Build, OU=Local, O=Local, …
Signer #1 key algorithm: RSA   key size (bits): 4096
```

v1 (JAR) is not applied, which is fine: v2 is mandatory since API 24 and this app's
minSdk is 26, so v2+v3 fully cover every device that can run the app (including the
Android-12 target). Full output in `output/verification.txt`.

---

## 10. "Problem parsing the package" — evidence it is resolved

The earlier failure was caused by the base manifest still claiming required ABI/density
splits, so the installer demanded split APKs that a standalone install cannot provide.
Post-fix checklist (from `scripts/verify-apk.sh`, all green):

- required-split metadata: **NONE** (removed)
- binary manifest parses cleanly via `aapt2 dump xmltree`
- 4 `classes*.dex` present
- `resources.arsc` **Stored** (uncompressed — required for targetSdk ≥ 30)
- valid v2/v3 signature
- minSdk 26 ≤ 31 (target device)
- `native-code: 'arm64-v8a'`, no `split` declarations in badging
- ZIP integrity OK, 4-byte alignment OK

---

## 11. Install / launch test — PASSED ON DEVICE

Tested on the intended target: **Samsung SM-N975F (Galaxy Note10+), Android 12 /
API 31 / arm64-v8a** (serial RF8M73S4NEM).

| Test | Result |
|---|---|
| `adb install -r apers-signed.apk` | **Success** (no "Problem parsing the package") |
| Installs alongside original | **Yes** — `pm list packages` shows both `com.hermesagent.android` and `apers.terminal.agent.ap` |
| Launch (`monkey … LAUNCHER`) | **Displayed** — `ActivityTaskManager: Displayed apers.terminal.agent.ap/com.hermes.android.MainActivity: +877ms` |
| Process alive after launch | **Yes** (PID 5146) |
| Top / resumed activity | `apers.terminal.agent.ap/com.hermes.android.MainActivity` (main screen rendered, splash dismissed, window focused) |
| License gate | **Bypassed** — no `LicenseActivity`; app went straight to MainActivity |
| Ads | **Disabled** — logcat: `I AdManager: Ads disabled (standalone build).` |
| Native libs | **Loaded OK** — no `UnsatisfiedLinkError` / `SIGSEGV` |
| Fatal exceptions | **None** — no `FATAL`/`E AndroidRuntime` for the app's uid |
| Original app | **Untouched** — remains installed separately |

Reproduce with: `bash scripts/install-apk.sh`.

**One benign warning (not a crash):** the Play Billing library logs
`W BillingClient: Unable to retrieve metadata value for enableBillingOverridesTesting`
(NullPointerException) during its constructor, because the billing metadata was
removed. The library catches this internally, the app never calls `connect()`
(no-op'd), and MainActivity displays normally. No functional impact.

Because the package id differs from the original (`apers.terminal.agent.ap` vs
`com.hermesagent.android`), it installs as a **separate app**; the original Hermes
Agent remains untouched.

---

## 12. Known issues / features expected not to work

- **Ads**: intentionally disabled — no banners/interstitials will appear.
- **In-app purchases / "Pro" upgrade**: intentionally disabled — the purchase flow
  never connects; the app behaves as free-tier. Any previously server/entitlement-gated
  Pro features remain off unless enabled by other means.
- **Play licensing**: bypassed — app no longer verifies a Play license.
- **5 unreferenced Compose icon classes** (`AddChartKt` upper-case variant in
  filled/outlined/rounded/sharp/twotone) are omitted because the case-insensitive
  Windows checkout could not hold both `AddChartKt.smali` and `AddchartKt.smali`. The
  upper-case variant is **referenced nowhere** in the app, so this has no functional
  effect; the lower-case `AddchartKt` (the one actually used) is present.
- **x86_64 / emulator**: not supported — only arm64-v8a libs are packaged (matches the
  physical target device). On an x86_64 emulator the native libs would fail to load.
- **v1 (JAR) signature** absent — irrelevant for minSdk 26, but note if a very old
  installer is ever used.
- Install, launch, and main-screen render are **verified on-device** (§11). Deeper
  runtime flows (starting a terminal session, the Python bootstrap from `assets/*.zip`,
  agent connectivity) were not driven end-to-end in this session — the app starts and
  the UI is interactive, but exercising those features requires manual interaction.

---

## 13. Output files

```
output/apers-signed.apk            signed, aligned, standalone APK (the deliverable)
output/apers-signed.apk.sha256     SHA-256 of the above
output/apers-unsigned.apk          apktool build output (pre-sign)
output/apers-aligned.apk           zipaligned, pre-sign
output/apers-local-release.jks     local signing keystore  (gitignored)
output/keystore-password.txt       keystore password       (gitignored)
output/build.log                   full apktool build log
output/verification.txt            apksigner verify --print-certs output
output/file-inventory.txt          contents listing of the signed APK
output/native-libraries.txt        native lib inventory + ELF details + hashes
BUILD_REPORT.md                    this report
scripts/{env,build-apk,verify-apk,install-apk}.sh   reproducible build tooling
```
