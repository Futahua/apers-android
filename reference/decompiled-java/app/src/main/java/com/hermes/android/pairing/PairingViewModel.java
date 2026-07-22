package com.hermes.android.pairing;

import android.content.Context;
import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.ModelSwitchPrompt;
import com.hermes.android.ProviderSwitchCoordinator;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import com.hermes.android.data.ModelCatalogCache;
import com.hermes.android.pairing.PairingViewModel;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: PairingViewModel.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/hermes/android/pairing/PairingViewModel;", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "configRepo", "Lcom/hermes/android/data/HermesConfigRepository;", "<init>", "(Landroid/content/Context;Lcom/hermes/android/data/HermesConfigRepository;)V", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/hermes/android/pairing/PairingUiState;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "server", "Lcom/hermes/android/pairing/PairingServer;", "startServer", BuildConfig.FLAVOR, "stopServer", "handleConfig", BuildConfig.FLAVOR, "config", "Lcom/hermes/android/pairing/PairingConfig;", "dispose", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class PairingViewModel {
    private static final String TAG = "PairingVM";
    private final MutableStateFlow<PairingUiState> _state;
    private final HermesConfigRepository configRepo;
    private final Context context;
    private PairingServer server;
    private final StateFlow<PairingUiState> state;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public PairingViewModel(Context context, HermesConfigRepository hermesConfigRepository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(hermesConfigRepository, "configRepo");
        this.context = context;
        this.configRepo = hermesConfigRepository;
        MutableStateFlow<PairingUiState> MutableStateFlow = StateFlowKt.MutableStateFlow(new PairingUiState(false, null, null, 0, null, false, null, 127, null));
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
    }

    /* JADX INFO: compiled from: PairingViewModel.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\b\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/hermes/android/pairing/PairingViewModel$Companion;", BuildConfig.FLAVOR, "<init>", "()V", "TAG", BuildConfig.FLAVOR, "applyPairedConfig", "configRepo", "Lcom/hermes/android/data/HermesConfigRepository;", "config", "Lcom/hermes/android/pairing/PairingConfig;", "applyPairedConfig$app_release", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String applyPairedConfig$app_release(final HermesConfigRepository configRepo, PairingConfig config) {
            final String hermesDefaultModel;
            Intrinsics.checkNotNullParameter(configRepo, "configRepo");
            Intrinsics.checkNotNullParameter(config, "config");
            try {
                final AiProvider aiProviderFindById = AiProvider.INSTANCE.findById(config.getProviderId());
                if (aiProviderFindById == null) {
                    return "Unknown provider: " + config.getProviderId();
                }
                if (aiProviderFindById.getRequiresKey() && StringsKt.isBlank(config.getApiKey())) {
                    return "API key is required for " + aiProviderFindById.getName();
                }
                if (!StringsKt.isBlank(config.getApiKey())) {
                    configRepo.writeApiKey(aiProviderFindById.getEnvVar(), config.getApiKey());
                }
                long jOnSelected = ProviderSwitchCoordinator.INSTANCE.onSelected();
                if (aiProviderFindById.isCustom()) {
                    String baseUrl = config.getBaseUrl();
                    if (StringsKt.isBlank(baseUrl)) {
                        baseUrl = aiProviderFindById.getDefaultBaseUrl();
                    }
                    final String str = baseUrl;
                    String modelId = config.getModelId();
                    if (StringsKt.isBlank(modelId)) {
                        modelId = aiProviderFindById.getDefaultModelId();
                    }
                    final String str2 = modelId;
                    if (StringsKt.isBlank(str)) {
                        return "Base URL is required for custom providers";
                    }
                    String apiKey = config.getApiKey();
                    if (StringsKt.isBlank(apiKey)) {
                        apiKey = "no-key-required";
                    }
                    final String str3 = apiKey;
                    String apiMode = config.getApiMode();
                    if (StringsKt.isBlank(apiMode)) {
                        apiMode = aiProviderFindById.getApiMode();
                    }
                    final String str4 = apiMode;
                    ProviderSwitchCoordinator.INSTANCE.commitIfLatestBlocking(jOnSelected, new Function0() { // from class: com.hermes.android.pairing.PairingViewModel$Companion$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return PairingViewModel.Companion.applyPairedConfig$lambda$4(configRepo, aiProviderFindById, str, str3, str2, str4);
                        }
                    });
                } else {
                    if (!StringsKt.isBlank(aiProviderFindById.getBaseUrlEnvVar()) && !StringsKt.isBlank(config.getBaseUrl())) {
                        configRepo.writeApiKey(aiProviderFindById.getBaseUrlEnvVar(), config.getBaseUrl());
                    }
                    if (!StringsKt.isBlank(aiProviderFindById.getHermesProvider()) && !aiProviderFindById.isOAuth() && !aiProviderFindById.isVirtual()) {
                        if (aiProviderFindById.getAllowsCustomModel()) {
                            String modelId2 = config.getModelId();
                            if (StringsKt.isBlank(modelId2)) {
                                modelId2 = aiProviderFindById.getHermesDefaultModel();
                            }
                            hermesDefaultModel = modelId2;
                        } else {
                            hermesDefaultModel = aiProviderFindById.getHermesDefaultModel();
                        }
                        ProviderSwitchCoordinator.INSTANCE.commitIfLatestBlocking(jOnSelected, new Function0() { // from class: com.hermes.android.pairing.PairingViewModel$Companion$$ExternalSyntheticLambda1
                            public final Object invoke() {
                                return PairingViewModel.Companion.applyPairedConfig$lambda$6(configRepo, aiProviderFindById, hermesDefaultModel);
                            }
                        });
                    }
                }
                return null;
            } catch (Exception e) {
                Log.e(PairingViewModel.TAG, "Failed to apply config", e);
                return "Failed to apply: " + e.getMessage();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit applyPairedConfig$lambda$4(HermesConfigRepository hermesConfigRepository, AiProvider aiProvider, String str, String str2, String str3, String str4) {
            hermesConfigRepository.upsertCustomProvider(aiProvider.getId(), str, str2, str3, str4);
            hermesConfigRepository.writeModelConfig(aiProvider.getId(), str3, (32 & 4) != 0 ? BuildConfig.FLAVOR : str, (32 & 8) != 0 ? BuildConfig.FLAVOR : str2, (32 & 16) != 0 ? BuildConfig.FLAVOR : str4, (32 & 32) != 0 ? null : null);
            ModelSwitchPrompt.INSTANCE.offer(aiProvider.getName(), aiProvider.getId(), str3);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit applyPairedConfig$lambda$6(HermesConfigRepository hermesConfigRepository, AiProvider aiProvider, String str) {
            hermesConfigRepository.writeModelConfig(aiProvider.getHermesProvider(), str, (32 & 4) != 0 ? BuildConfig.FLAVOR : null, (32 & 8) != 0 ? BuildConfig.FLAVOR : null, (32 & 16) != 0 ? BuildConfig.FLAVOR : null, (32 & 32) != 0 ? null : null);
            ModelSwitchPrompt.INSTANCE.offer(aiProvider.getName(), aiProvider.getHermesProvider(), str);
            return Unit.INSTANCE;
        }
    }

    public final StateFlow<PairingUiState> getState() {
        return this.state;
    }

    public final void startServer() {
        Object value;
        Object value2;
        if (this.server != null) {
            return;
        }
        String deviceIp = PairingServer.INSTANCE.getDeviceIp(this.context);
        if (deviceIp == null) {
            MutableStateFlow<PairingUiState> mutableStateFlow = this._state;
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value2, PairingUiState.copy$default((PairingUiState) value2, false, null, null, 0, null, false, "Cannot determine device IP. Connect to Wi-Fi first.", 63, null)));
            return;
        }
        String str = "http://" + deviceIp + ":8765";
        try {
            Function0 function0 = new Function0() { // from class: com.hermes.android.pairing.PairingViewModel$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return PairingViewModel.startServer$lambda$1(this.f$0);
                }
            };
            Function1 function1 = new Function1() { // from class: com.hermes.android.pairing.PairingViewModel$$ExternalSyntheticLambda1
                public final Object invoke(Object obj) {
                    return PairingViewModel.startServer$lambda$2(this.f$0, (PairingConfig) obj);
                }
            };
            int i = PairingServer.DEFAULT_PORT;
            PairingServer pairingServer = new PairingServer(PairingServer.DEFAULT_PORT, function0, function1);
            this.server = pairingServer;
            Intrinsics.checkNotNull(pairingServer);
            pairingServer.start();
            MutableStateFlow<PairingUiState> mutableStateFlow2 = this._state;
            while (true) {
                Object value3 = mutableStateFlow2.getValue();
                if (mutableStateFlow2.compareAndSet(value3, PairingUiState.copy$default((PairingUiState) value3, true, str, deviceIp, i, null, false, BuildConfig.FLAVOR, 48, null))) {
                    Log.i(TAG, "Pairing server started at " + str);
                    return;
                }
                i = PairingServer.DEFAULT_PORT;
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to start pairing server", e);
            MutableStateFlow<PairingUiState> mutableStateFlow3 = this._state;
            do {
                value = mutableStateFlow3.getValue();
            } while (!mutableStateFlow3.compareAndSet(value, PairingUiState.copy$default((PairingUiState) value, false, null, null, 0, null, false, "Failed to start server: " + e.getMessage(), 63, null)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map startServer$lambda$1(PairingViewModel pairingViewModel) {
        return ModelCatalogCache.INSTANCE.cachedAll(pairingViewModel.context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String startServer$lambda$2(PairingViewModel pairingViewModel, PairingConfig pairingConfig) {
        Intrinsics.checkNotNullParameter(pairingConfig, "config");
        return pairingViewModel.handleConfig(pairingConfig);
    }

    public final void stopServer() {
        Object value;
        PairingServer pairingServer = this.server;
        if (pairingServer != null) {
            pairingServer.stop();
        }
        this.server = null;
        MutableStateFlow<PairingUiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, PairingUiState.copy$default((PairingUiState) value, false, BuildConfig.FLAVOR, null, 0, null, false, null, 92, null)));
        Log.i(TAG, "Pairing server stopped");
    }

    private final String handleConfig(PairingConfig config) {
        Object value;
        String providerId;
        Object value2;
        String strApplyPairedConfig$app_release = INSTANCE.applyPairedConfig$app_release(this.configRepo, config);
        if (strApplyPairedConfig$app_release == null) {
            AiProvider aiProviderFindById = AiProvider.INSTANCE.findById(config.getProviderId());
            if (aiProviderFindById == null || (providerId = aiProviderFindById.getName()) == null) {
                providerId = config.getProviderId();
            }
            MutableStateFlow<PairingUiState> mutableStateFlow = this._state;
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value2, PairingUiState.copy$default((PairingUiState) value2, false, null, null, 0, providerId, true, null, 79, null)));
        } else {
            MutableStateFlow<PairingUiState> mutableStateFlow2 = this._state;
            do {
                value = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.compareAndSet(value, PairingUiState.copy$default((PairingUiState) value, false, null, null, 0, null, false, strApplyPairedConfig$app_release, 63, null)));
        }
        return strApplyPairedConfig$app_release;
    }

    public final void dispose() {
        stopServer();
    }
}
