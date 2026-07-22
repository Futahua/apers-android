package com.hermes.android;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import com.google.android.play.core.splitinstall.SplitInstallManager;
import com.hermes.android.LocalLlmModuleBridge;
import com.hermes.android.data.HermesConfigRepository;
import com.hermes.android.llama.BackendPreference;
import com.hermes.android.llama.LocalInferenceEngine;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1", f = "MainActivity.kt", i = {}, l = {2938, 2947, 2954}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    final /* synthetic */ MutableState<String> $localLlmModuleError$delegate;
    final /* synthetic */ MutableState<Integer> $localLlmModuleProgress$delegate;
    final /* synthetic */ long $selectionToken;
    final /* synthetic */ MutableState<Boolean> $showLocalLlmScreen$delegate;
    final /* synthetic */ SplitInstallManager $splitInstallManager;
    int label;

    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LocalLlmModuleBridge.LocalLlmClickAction.values().length];
            try {
                iArr[LocalLlmModuleBridge.LocalLlmClickAction.DIRECT_SWITCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LocalLlmModuleBridge.LocalLlmClickAction.OPEN_SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1(SplitInstallManager splitInstallManager, AppCompatActivity appCompatActivity, long j, HermesConfigRepository hermesConfigRepository, MutableState<Boolean> mutableState, MutableState<String> mutableState2, MutableState<Integer> mutableState3, Continuation<? super MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1> continuation) {
        super(2, continuation);
        this.$splitInstallManager = splitInstallManager;
        this.$activity = appCompatActivity;
        this.$selectionToken = j;
        this.$hermesRepo = hermesConfigRepository;
        this.$showLocalLlmScreen$delegate = mutableState;
        this.$localLlmModuleError$delegate = mutableState2;
        this.$localLlmModuleProgress$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1(this.$splitInstallManager, this.$activity, this.$selectionToken, this.$hermesRepo, this.$showLocalLlmScreen$delegate, this.$localLlmModuleError$delegate, this.$localLlmModuleProgress$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public final Object invokeSuspend(Object obj) throws NoWhenBranchMatchedException {
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            int i2 = WhenMappings.$EnumSwitchMapping$0[LocalLlmModuleBridge.INSTANCE.localLlmClickAction(this.$splitInstallManager.getInstalledModules().contains("llama_native"), LocalLlmModuleBridge.INSTANCE.isRuntimeReady((Context) this.$activity)).ordinal()];
            if (i2 == 1) {
                LocalLlmModuleBridge.INSTANCE.ensureServerRunning((Context) this.$activity, true);
                LocalInferenceEngine localInferenceEngineCurrentEngine = LocalLlmModuleBridge.INSTANCE.currentEngine();
                String str2 = BackendPreference.INSTANCE.read(this.$activity);
                if (Intrinsics.areEqual(str2, "npu")) {
                    str = "NPU";
                } else {
                    str = Intrinsics.areEqual(str2, "gpu") ? "GPU" : "CPU";
                }
                LocalLlmModuleBridge localLlmModuleBridge = LocalLlmModuleBridge.INSTANCE;
                boolean z = false;
                if (localInferenceEngineCurrentEngine != null && localInferenceEngineCurrentEngine.isModelLoaded()) {
                    z = true;
                }
                if (localLlmModuleBridge.loadSucceededForBackend(z, localInferenceEngineCurrentEngine != null ? localInferenceEngineCurrentEngine.getBackendInfo() : null, str)) {
                    this.label = 1;
                    if (MainActivityKt.SettingsTabContent$writeLocalLlmActiveConfig(this.$hermesRepo, this.$activity, this.$selectionToken, (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    this.label = 2;
                    if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass1(this.$selectionToken, this.$splitInstallManager, this.$showLocalLlmScreen$delegate, this.$localLlmModuleError$delegate, this.$localLlmModuleProgress$delegate, null), (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i2 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                this.label = 3;
                if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(this.$selectionToken, this.$splitInstallManager, this.$showLocalLlmScreen$delegate, this.$localLlmModuleError$delegate, this.$localLlmModuleProgress$delegate, null), (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i != 1 && i != 2 && i != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableState<String> $localLlmModuleError$delegate;
        final /* synthetic */ MutableState<Integer> $localLlmModuleProgress$delegate;
        final /* synthetic */ long $selectionToken;
        final /* synthetic */ MutableState<Boolean> $showLocalLlmScreen$delegate;
        final /* synthetic */ SplitInstallManager $splitInstallManager;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, SplitInstallManager splitInstallManager, MutableState<Boolean> mutableState, MutableState<String> mutableState2, MutableState<Integer> mutableState3, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$selectionToken = j;
            this.$splitInstallManager = splitInstallManager;
            this.$showLocalLlmScreen$delegate = mutableState;
            this.$localLlmModuleError$delegate = mutableState2;
            this.$localLlmModuleProgress$delegate = mutableState3;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$selectionToken, this.$splitInstallManager, this.$showLocalLlmScreen$delegate, this.$localLlmModuleError$delegate, this.$localLlmModuleProgress$delegate, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (ProviderSwitchCoordinator.INSTANCE.isLatest(this.$selectionToken)) {
                MainActivityKt.SettingsTabContent$startLocalLlmFlow(this.$splitInstallManager, this.$showLocalLlmScreen$delegate, this.$localLlmModuleError$delegate, this.$localLlmModuleProgress$delegate);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1$2", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableState<String> $localLlmModuleError$delegate;
        final /* synthetic */ MutableState<Integer> $localLlmModuleProgress$delegate;
        final /* synthetic */ long $selectionToken;
        final /* synthetic */ MutableState<Boolean> $showLocalLlmScreen$delegate;
        final /* synthetic */ SplitInstallManager $splitInstallManager;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(long j, SplitInstallManager splitInstallManager, MutableState<Boolean> mutableState, MutableState<String> mutableState2, MutableState<Integer> mutableState3, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$selectionToken = j;
            this.$splitInstallManager = splitInstallManager;
            this.$showLocalLlmScreen$delegate = mutableState;
            this.$localLlmModuleError$delegate = mutableState2;
            this.$localLlmModuleProgress$delegate = mutableState3;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$selectionToken, this.$splitInstallManager, this.$showLocalLlmScreen$delegate, this.$localLlmModuleError$delegate, this.$localLlmModuleProgress$delegate, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (ProviderSwitchCoordinator.INSTANCE.isLatest(this.$selectionToken)) {
                MainActivityKt.SettingsTabContent$startLocalLlmFlow(this.$splitInstallManager, this.$showLocalLlmScreen$delegate, this.$localLlmModuleError$delegate, this.$localLlmModuleProgress$delegate);
            }
            return Unit.INSTANCE;
        }
    }
}
