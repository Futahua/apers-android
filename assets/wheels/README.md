# Pre-built Python Wheels (bundled — required)

此目錄存放 APK 啟動所需的 Python wheel。**屬於專案必備資源，隨
git 一同版控**，不經 CI/Release 流程下載。缺檔會導致 hermes-agent
無法安裝（因 Android 無 Rust toolchain，這些 native 套件無法線上 pip 編譯）。

## 目錄結構
```
wheels/
├── aarch64/      # Android arm64-v8a (真實裝置)
│   ├── pydantic_core-*.whl
│   └── jiter-*.whl
└── x86_64/       # Android x86_64 (模擬器)
    ├── pydantic_core-*.whl
    └── jiter-*.whl
```
放棄 armeabi-v7a 32-bit 舊機支援。

## 必要套件
- `pydantic_core-*.whl` — Rust 編譯，Anthropic / OpenAI SDK 強依賴
- `jiter-*.whl` — Rust 編譯，OpenAI SDK 強依賴

## 檔名規範 (Termux Python 3.13 on Android API 24)
- `pydantic_core-<ver>-cp313-cp313-android_24_arm64_v8a.whl`
- `pydantic_core-<ver>-cp313-cp313-android_24_x86_64.whl`
- `jiter-<ver>-cp313-cp313-android_24_arm64_v8a.whl`
- `jiter-<ver>-cp313-cp313-android_24_x86_64.whl`

## 產製方式 (當需要升版時)
- **aarch64**: 在裝 `hermes-android` 的 arm64 emulator 裡用 `run-as`
  進入 bootstrap 的 Termux 環境後 `python3 -m pip wheel --no-deps pydantic-core jiter`
- **x86_64**: 在 macOS Docker Desktop 執行 `termux/termux-docker:x86_64` (平台 linux/amd64)，
  透過 `curl --resolve` 手動抓 `.deb` 裝齊 rust + clang + ndk-sysroot toolchain，
  再寫入 `/system/etc/hosts` 繞過 Bionic DNS 後 `pip wheel` 編譯
- 詳細步驟見 `memory/android-port.md` 的 "Docker Wheel Build Recipe"

## 運行時行為
`BootstrapManager.installHermesAgent()` → `WheelInstaller.kt` 會：
1. 偵測裝置 ABI (`Build.SUPPORTED_ABIS[0]`)
2. 複製對應架構的 wheels 到 `$HOME/.hermes-android/wheels/`
3. 以 `pip install --no-index --find-links=<dir>` 本地安裝
4. **若缺檔或失敗直接拋 `RuntimeException`** — 不再降級線上安裝
