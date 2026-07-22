# Hermes Agent - Android App

Decompiled source code of an Android app that wraps the Hermes Agent AI assistant.

## App Architecture

```
app/src/main/java/com/hermes/android/
├── MainActivity.kt           # Main activity (Compose entry point)
├── MainActivityKt.kt         # Compose UI screens
├── BootstrapManager.kt       # Python/hermes-agent bootstrap + Linux env
├── TerminalSessionManager.kt # Terminal session management
├── ProviderSwitchCoordinator.kt
├── ModelSwitchPrompt.kt
├── TtsPlaybackBridge.kt      # Text-to-speech
├── EnvironmentBuilder.kt
├── HermesService.kt          # Background service
├── HermesPaths.kt            # Path constants
│
├── chat/                     # Chat UI
│   ├── ChatBubble.kt
│   ├── ChatSkinState.kt
│   ├── ChatSkinController.kt
│   ├── ChatSkinBubbleMapper.kt
│   ├── TurnDetector.kt
│   ├── TranscriptCleaner.kt
│   └── ...
│
├── data/                     # Data layer
│   ├── HermesConfigRepository.kt  # Config management
│   ├── HermesHudRepository.kt     # Session/memory/cron HUD
│   ├── AiProvider.kt              # AI provider config
│   ├── ModelCatalogCache.kt
│   ├── MoaPreset.kt, MoaSection.kt, MoaSlot.kt  # Multi-model orchestration
│   ├── CodexAuthFlow.kt, XaiAuthFlow.kt, NousAuthFlow.kt
│   └── oauth/                     # OAuth flows
│
├── handoff/                  # Cross-device session sync
│   ├── HandoffCrypto.kt
│   ├── HandoffController.kt
│   ├── HandoffClient.kt
│   └── ...
│
├── llama/                    # Local LLM (NPU/GGUF)
│   ├── LocalInferenceEngine.kt
│   ├── ModelDownloadState.kt
│   ├── NpuSupport.kt
│   └── ...
│
├── mesh/                     # Peer-to-peer mesh
│   ├── MeshController.kt
│   ├── MeshClient.kt
│   └── ...
│
├── pairing/                  # Device pairing
│   ├── PairingViewModel.kt
│   └── ...
│
└── ui/                       # UI components
    ├── HermesHudScreen.kt    # HUD (memory, cron, tools)
    ├── EdgeFeature.kt
    ├── moa/                  # MOA council screen
    ├── localllm/             # Local LLM setup screen
    └── chatskin/             # Chat skin customization
```

## Dependencies

| Library | Purpose |
|---------|---------|
| `androidx.compose.ui`, `.material3`, `.foundation`, `.runtime` | Jetpack Compose UI |
| `androidx.activity:activity-compose` | Activity + Compose integration |
| `androidx.appcompat:appcompat` | AppCompat |
| `androidx.lifecycle:lifecycle-*` | ViewModel, LiveData |
| `androidx.browser:browser` | Custom Tabs |
| `androidx.navigation:navigation-compose` | Navigation |
| `androidx.webkit:webkit` | WebView |
| `androidx.work:work-runtime-ktx` | Background work |
| `org.jetbrains.kotlinx:kotlinx-coroutines-android` | Coroutines |
| `com.squareup.okhttp3:okhttp` | HTTP client |
| `com.google.zxing:core` | QR code scanning |
| `com.journeyapps:zxing-android-embedded` | Barcode scanner |
| `com.termux:terminal-emulator` | Terminal emulator |
| `com.termux:terminal-view` | Terminal view |
| `com.goterl:lazysodium-android` | libsodium (crypto) |
| `org.yaml:snakeyaml` | YAML parsing |
| `com.sun.jna:jna` | JNI bridge (for local LLM) |

## Build Note

Decompiled from Kotlin bytecode to Java. Reference-only — non-buildable without:
- Gradle build files
- Android resource files (layouts, drawables, strings)
- `AndroidManifest.xml`
- Native libraries (`.so` files for terminal, llama, NPU)
