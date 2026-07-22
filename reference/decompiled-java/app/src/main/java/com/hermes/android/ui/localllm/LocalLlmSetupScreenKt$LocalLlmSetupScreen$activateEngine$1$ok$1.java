package com.hermes.android.ui.localllm;

import android.content.Context;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.LocalLlmModuleBridge;
import com.hermes.android.llama.BackendPreference;
import com.hermes.android.llama.LocalInferenceEngine;
import com.hermes.android.llama.LocalLlmCrashGuard;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {299}, m = "invokeSuspend", n = {}, s = {})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1 extends SuspendLambda implements Function1<Continuation<? super Boolean>, Object> {
    final /* synthetic */ String $backendValue;
    final /* synthetic */ Context $context;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1(Context context, String str, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1> continuation) {
        super(1, continuation);
        this.$context = context;
        this.$backendValue = str;
    }

    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1(this.$context, this.$backendValue, continuation);
    }

    public final Object invoke(Continuation<? super Boolean> continuation) {
        return create(continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ String $backendValue;
        final /* synthetic */ Context $context;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
            this.$backendValue = str;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$context, this.$backendValue, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            String str;
            String backendInfo;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            BackendPreference.INSTANCE.write(this.$context, this.$backendValue);
            LocalLlmCrashGuard.INSTANCE.reset(this.$context);
            LocalLlmModuleBridge.INSTANCE.ensureServerRunning(this.$context, true);
            LocalInferenceEngine localInferenceEngineCurrentEngine = LocalLlmModuleBridge.INSTANCE.currentEngine();
            String str2 = this.$backendValue;
            if (Intrinsics.areEqual(str2, BackendPreference.VALUE_NPU)) {
                str = "NPU";
            } else {
                str = Intrinsics.areEqual(str2, BackendPreference.VALUE_GPU) ? "GPU" : "CPU";
            }
            return Boxing.boxBoolean(localInferenceEngineCurrentEngine != null && localInferenceEngineCurrentEngine.isModelLoaded() && (backendInfo = localInferenceEngineCurrentEngine.getBackendInfo()) != null && StringsKt.startsWith$default(backendInfo, str, false, 2, (Object) null));
        }
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$context, this.$backendValue, null), (Continuation) this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return obj;
    }
}
