package com.hermes.android.ui.localllm;

import android.content.Context;
import android.net.Uri;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1$name$1", f = "LocalLlmSetupScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1$name$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    final /* synthetic */ Context $context;
    final /* synthetic */ Uri $uri;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1$name$1(Context context, Uri uri, Continuation<? super LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1$name$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$uri = uri;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalLlmSetupScreenKt$LocalLlmSetupScreen$startImport$1$name$1(this.$context, this.$uri, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return LocalLlmSetupScreenKt.queryDisplayName(this.$context, this.$uri);
    }
}
