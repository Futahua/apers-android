package com.hermes.android.ui.localllm;

import android.content.Context;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.LocalLlmModuleBridge;
import com.hermes.android.llama.LocalInferenceEngine;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1$ok$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {371}, m = "invokeSuspend", n = {}, s = {})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1$ok$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ Ref.BooleanRef $deleteFailed;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1$ok$1(Context context, Ref.BooleanRef booleanRef, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1$ok$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$deleteFailed = booleanRef;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1$ok$1(this.$context, this.$deleteFailed, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        String backendInfo;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                LocalInferenceEngine localInferenceEngineCurrentEngine = LocalLlmModuleBridge.INSTANCE.currentEngine();
                if (localInferenceEngineCurrentEngine != null && localInferenceEngineCurrentEngine.isModelLoaded() && ((backendInfo = localInferenceEngineCurrentEngine.getBackendInfo()) == null || !StringsKt.startsWith$default(backendInfo, "NPU", false, 2, (Object) null))) {
                    this.label = 1;
                    if (localInferenceEngineCurrentEngine.unloadModel((Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (LocalLlmModuleBridge.INSTANCE.deleteActiveModel(this.$context)) {
                    this.$deleteFailed.element = true;
                    return Boxing.boxBoolean(false);
                }
                return Boxing.boxBoolean(true);
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (LocalLlmModuleBridge.INSTANCE.deleteActiveModel(this.$context)) {
            }
        } catch (Exception unused) {
            return Boxing.boxBoolean(false);
        }
    }
}
