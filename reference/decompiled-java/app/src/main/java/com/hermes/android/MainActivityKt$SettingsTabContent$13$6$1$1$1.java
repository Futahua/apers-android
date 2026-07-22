package com.hermes.android;

import androidx.compose.runtime.MutableState;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$13$6$1$1$1", f = "MainActivity.kt", i = {}, l = {3343, 3370}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$13$6$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<String> $apiKeyDialogInput$delegate;
    final /* synthetic */ MutableState<String> $baseUrlInput$delegate;
    final /* synthetic */ HermesConfigRepository.CustomProviderConfig $customExisting;
    final /* synthetic */ boolean $hasInput;
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    final /* synthetic */ MutableState<String> $modelIdInput$delegate;
    final /* synthetic */ AiProvider $provider;
    final /* synthetic */ long $saveToken;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$13$6$1$1$1(boolean z, AiProvider aiProvider, HermesConfigRepository hermesConfigRepository, HermesConfigRepository.CustomProviderConfig customProviderConfig, long j, MutableState<String> mutableState, MutableState<String> mutableState2, MutableState<String> mutableState3, Continuation<? super MainActivityKt$SettingsTabContent$13$6$1$1$1> continuation) {
        super(2, continuation);
        this.$hasInput = z;
        this.$provider = aiProvider;
        this.$hermesRepo = hermesConfigRepository;
        this.$customExisting = customProviderConfig;
        this.$saveToken = j;
        this.$apiKeyDialogInput$delegate = mutableState;
        this.$baseUrlInput$delegate = mutableState2;
        this.$modelIdInput$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$13$6$1$1$1(this.$hasInput, this.$provider, this.$hermesRepo, this.$customExisting, this.$saveToken, this.$apiKeyDialogInput$delegate, this.$baseUrlInput$delegate, this.$modelIdInput$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        String str;
        String apiMode;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.$hasInput && !StringsKt.isBlank(this.$provider.getEnvVar())) {
                this.$hermesRepo.writeApiKey(this.$provider.getEnvVar(), MainActivityKt.SettingsTabContent$lambda$241(this.$apiKeyDialogInput$delegate));
            }
            if (this.$provider.isCustom()) {
                String strSettingsTabContent$lambda$330$lambda$317 = MainActivityKt.SettingsTabContent$lambda$330$lambda$317(this.$baseUrlInput$delegate);
                HermesConfigRepository.CustomProviderConfig customProviderConfig = this.$customExisting;
                if (StringsKt.isBlank(strSettingsTabContent$lambda$330$lambda$317)) {
                    strSettingsTabContent$lambda$330$lambda$317 = customProviderConfig != null ? customProviderConfig.getBaseUrl() : null;
                    if (strSettingsTabContent$lambda$330$lambda$317 == null) {
                        strSettingsTabContent$lambda$330$lambda$317 = "";
                    }
                }
                String defaultBaseUrl = strSettingsTabContent$lambda$330$lambda$317;
                AiProvider aiProvider = this.$provider;
                if (StringsKt.isBlank(defaultBaseUrl)) {
                    defaultBaseUrl = aiProvider.getDefaultBaseUrl();
                }
                String str2 = defaultBaseUrl;
                String strEffectiveCustomKey = this.$hermesRepo.effectiveCustomKey(this.$provider.getId(), MainActivityKt.SettingsTabContent$lambda$241(this.$apiKeyDialogInput$delegate));
                String strSettingsTabContent$lambda$330$lambda$322 = MainActivityKt.SettingsTabContent$lambda$330$lambda$322(this.$modelIdInput$delegate);
                HermesConfigRepository.CustomProviderConfig customProviderConfig2 = this.$customExisting;
                if (StringsKt.isBlank(strSettingsTabContent$lambda$330$lambda$322)) {
                    String modelId = customProviderConfig2 != null ? customProviderConfig2.getModelId() : null;
                    strSettingsTabContent$lambda$330$lambda$322 = modelId != null ? modelId : "";
                }
                String str3 = strSettingsTabContent$lambda$330$lambda$322;
                HermesConfigRepository.CustomProviderConfig customProviderConfig3 = this.$customExisting;
                if (customProviderConfig3 == null || (apiMode = customProviderConfig3.getApiMode()) == null) {
                    apiMode = this.$provider.getApiMode();
                }
                String str4 = apiMode;
                if (!StringsKt.isBlank(str2)) {
                    this.label = 1;
                    if (ProviderSwitchCoordinator.INSTANCE.commitIfLatest(this.$saveToken, new AnonymousClass1(this.$hermesRepo, this.$provider, str2, strEffectiveCustomKey, str3, str4, null), (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (!StringsKt.isBlank(this.$provider.getBaseUrlEnvVar()) && !StringsKt.isBlank(MainActivityKt.SettingsTabContent$lambda$330$lambda$317(this.$baseUrlInput$delegate))) {
                    this.$hermesRepo.writeApiKey(this.$provider.getBaseUrlEnvVar(), MainActivityKt.SettingsTabContent$lambda$330$lambda$317(this.$baseUrlInput$delegate));
                }
                if (!StringsKt.isBlank(this.$provider.getHermesProvider())) {
                    if (this.$provider.getAllowsCustomModel()) {
                        String strSettingsTabContent$lambda$330$lambda$3222 = MainActivityKt.SettingsTabContent$lambda$330$lambda$322(this.$modelIdInput$delegate);
                        AiProvider aiProvider2 = this.$provider;
                        if (StringsKt.isBlank(strSettingsTabContent$lambda$330$lambda$3222)) {
                            strSettingsTabContent$lambda$330$lambda$3222 = aiProvider2.getHermesDefaultModel();
                        }
                        str = strSettingsTabContent$lambda$330$lambda$3222;
                    } else {
                        String hermesDefaultModel = this.$provider.getHermesDefaultModel();
                        MutableState<String> mutableState = this.$modelIdInput$delegate;
                        if (StringsKt.isBlank(hermesDefaultModel)) {
                            hermesDefaultModel = MainActivityKt.SettingsTabContent$lambda$330$lambda$322(mutableState);
                        }
                        str = hermesDefaultModel;
                    }
                    this.label = 2;
                    if (ProviderSwitchCoordinator.INSTANCE.commitIfLatest(this.$saveToken, new AnonymousClass2(this.$hermesRepo, this.$provider, str, null), (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
        } else {
            if (i != 1 && i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$13$6$1$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$13$6$1$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ String $effectiveApiMode;
        final /* synthetic */ String $effectiveKey;
        final /* synthetic */ String $effectiveModel;
        final /* synthetic */ String $effectiveUrl;
        final /* synthetic */ HermesConfigRepository $hermesRepo;
        final /* synthetic */ AiProvider $provider;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HermesConfigRepository hermesConfigRepository, AiProvider aiProvider, String str, String str2, String str3, String str4, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$hermesRepo = hermesConfigRepository;
            this.$provider = aiProvider;
            this.$effectiveUrl = str;
            this.$effectiveKey = str2;
            this.$effectiveModel = str3;
            this.$effectiveApiMode = str4;
        }

        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$hermesRepo, this.$provider, this.$effectiveUrl, this.$effectiveKey, this.$effectiveModel, this.$effectiveApiMode, continuation);
        }

        public final Object invoke(Continuation<? super Unit> continuation) {
            return create(continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$hermesRepo.upsertCustomProvider(this.$provider.getId(), this.$effectiveUrl, this.$effectiveKey, this.$effectiveModel, this.$effectiveApiMode);
            HermesConfigRepository.writeModelConfig$default(this.$hermesRepo, this.$provider.getId(), this.$effectiveModel, this.$effectiveUrl, this.$effectiveKey, this.$effectiveApiMode, (Integer) null, 32, (Object) null);
            ModelSwitchPrompt.INSTANCE.offer(this.$provider.getName(), this.$provider.getId(), this.$effectiveModel);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$13$6$1$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$13$6$1$1$1$2", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ String $effectiveModel;
        final /* synthetic */ HermesConfigRepository $hermesRepo;
        final /* synthetic */ AiProvider $provider;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(HermesConfigRepository hermesConfigRepository, AiProvider aiProvider, String str, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.$hermesRepo = hermesConfigRepository;
            this.$provider = aiProvider;
            this.$effectiveModel = str;
        }

        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass2(this.$hermesRepo, this.$provider, this.$effectiveModel, continuation);
        }

        public final Object invoke(Continuation<? super Unit> continuation) {
            return create(continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            HermesConfigRepository.writeModelConfig$default(this.$hermesRepo, this.$provider.getHermesProvider(), this.$effectiveModel, (String) null, (String) null, (String) null, (Integer) null, 60, (Object) null);
            ModelSwitchPrompt.INSTANCE.offer(this.$provider.getName(), this.$provider.getHermesProvider(), this.$effectiveModel);
            return Unit.INSTANCE;
        }
    }
}
