package com.hermes.android.ui.localllm;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$2", f = "LocalLlmSetupScreen.kt", i = {}, l = {316}, m = "invokeSuspend", n = {}, s = {})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<Continuation<? super Unit>, Object> $onActivated;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$2(Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$2> continuation) {
        super(1, continuation);
        this.$onActivated = function1;
    }

    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$2(this.$onActivated, continuation);
    }

    public final Object invoke(Continuation<? super Unit> continuation) {
        return create(continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Function1<Continuation<? super Unit>, Object> function1 = this.$onActivated;
            this.label = 1;
            if (function1.invoke(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
