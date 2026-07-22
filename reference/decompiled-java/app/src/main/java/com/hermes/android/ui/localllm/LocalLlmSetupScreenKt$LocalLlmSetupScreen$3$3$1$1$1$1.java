package com.hermes.android.ui.localllm;

import android.content.Context;
import androidx.compose.runtime.MutableIntState;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.LocalLlmModuleBridge;
import com.hermes.android.NpuModuleBridge;
import com.hermes.android.llama.LocalInferenceEngine;
import com.hermes.android.llama.LocalLlmCrashGuard;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1$1$1$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {602}, m = "invokeSuspend", n = {}, s = {})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableIntState $refreshKey$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1$1$1$1(Context context, MutableIntState mutableIntState, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1$1$1$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$refreshKey$delegate = mutableIntState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1$1$1$1(this.$context, this.$refreshKey$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$context, null), (Continuation) this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        Pair pair = (Pair) obj;
        boolean zBooleanValue = ((Boolean) pair.component1()).booleanValue();
        if (((Boolean) pair.component2()).booleanValue() && zBooleanValue) {
            int iLocalLlmSetupScreen$lambda$5 = LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$5(this.$refreshKey$delegate);
            this.$refreshKey$delegate.setIntValue(iLocalLlmSetupScreen$lambda$5 + 1);
            Boxing.boxInt(iLocalLlmSetupScreen$lambda$5);
        } else {
            LocalLlmSetupScreenKt.restartAppProcess(this.$context);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1$1$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Pair;", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1$1$1$1$1", f = "LocalLlmSetupScreen.kt", i = {0}, l = {607}, m = "invokeSuspend", n = {"npuOk"}, s = {"Z$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Pair<? extends Boolean, ? extends Boolean>>, Object> {
        final /* synthetic */ Context $context;
        private /* synthetic */ Object L$0;
        boolean Z$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            Continuation<Unit> anonymousClass1 = new AnonymousClass1(this.$context, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Pair<Boolean, Boolean>> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ba  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            boolean zBooleanValue;
            boolean z;
            Throwable th;
            Object obj3;
            boolean zDeleteActiveModel;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            boolean z2 = false;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                try {
                    Result.Companion companion = Result.Companion;
                    obj2 = Result.constructor-impl(Boxing.boxBoolean(NpuModuleBridge.INSTANCE.unload()));
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.Companion;
                    obj2 = Result.constructor-impl(ResultKt.createFailure(th2));
                }
                Boolean boolBoxBoolean = Boxing.boxBoolean(false);
                if (Result.isFailure-impl(obj2)) {
                    obj2 = boolBoxBoolean;
                }
                zBooleanValue = ((Boolean) obj2).booleanValue();
                try {
                    Result.Companion companion3 = Result.Companion;
                    LocalInferenceEngine localInferenceEngineCurrentEngine = LocalLlmModuleBridge.INSTANCE.currentEngine();
                    if (localInferenceEngineCurrentEngine != null && localInferenceEngineCurrentEngine.isModelLoaded()) {
                        this.Z$0 = zBooleanValue;
                        this.label = 1;
                        if (localInferenceEngineCurrentEngine.unloadModel(this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        z = zBooleanValue;
                    }
                    z = zBooleanValue;
                    obj3 = Result.constructor-impl(Boxing.boxBoolean(true));
                } catch (Throwable th3) {
                    z = zBooleanValue;
                    th = th3;
                    Result.Companion companion4 = Result.Companion;
                    obj3 = Result.constructor-impl(ResultKt.createFailure(th));
                }
                Boolean boolBoxBoolean2 = Boxing.boxBoolean(false);
                if (Result.isFailure-impl(obj3)) {
                    obj3 = boolBoxBoolean2;
                }
                boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                zDeleteActiveModel = LocalLlmModuleBridge.INSTANCE.deleteActiveModel(this.$context);
                boolean zDeleteBundle = NpuModuleBridge.INSTANCE.deleteBundle(this.$context);
                if (zDeleteActiveModel && zDeleteBundle) {
                    LocalLlmCrashGuard.INSTANCE.reset(this.$context);
                }
                Boolean boolBoxBoolean3 = Boxing.boxBoolean(!z && zBooleanValue2);
                if (zDeleteActiveModel && zDeleteBundle) {
                    z2 = true;
                }
                return new Pair(boolBoxBoolean3, Boxing.boxBoolean(z2));
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = this.Z$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable th4) {
                th = th4;
                Result.Companion companion42 = Result.Companion;
                obj3 = Result.constructor-impl(ResultKt.createFailure(th));
            }
            zBooleanValue = z;
            z = zBooleanValue;
            obj3 = Result.constructor-impl(Boxing.boxBoolean(true));
            Boolean boolBoxBoolean22 = Boxing.boxBoolean(false);
            if (Result.isFailure-impl(obj3)) {
            }
            boolean zBooleanValue22 = ((Boolean) obj3).booleanValue();
            zDeleteActiveModel = LocalLlmModuleBridge.INSTANCE.deleteActiveModel(this.$context);
            boolean zDeleteBundle2 = NpuModuleBridge.INSTANCE.deleteBundle(this.$context);
            if (zDeleteActiveModel) {
                LocalLlmCrashGuard.INSTANCE.reset(this.$context);
            }
            Boolean boolBoxBoolean32 = Boxing.boxBoolean(!z && zBooleanValue22);
            if (zDeleteActiveModel) {
                z2 = true;
            }
            return new Pair(boolBoxBoolean32, Boxing.boxBoolean(z2));
        }
    }
}
