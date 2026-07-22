package com.hermes.android.ui;

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
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: EdgeFeaturesSheet.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.EdgeFeaturesSheetKt$startEdgeInstall$1$ok$1$1$1", f = "EdgeFeaturesSheet.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class EdgeFeaturesSheetKt$startEdgeInstall$1$ok$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $msg;
    final /* synthetic */ Function1<String, Unit> $onStatus;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    EdgeFeaturesSheetKt$startEdgeInstall$1$ok$1$1$1(Function1<? super String, Unit> function1, String str, Continuation<? super EdgeFeaturesSheetKt$startEdgeInstall$1$ok$1$1$1> continuation) {
        super(2, continuation);
        this.$onStatus = function1;
        this.$msg = str;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new EdgeFeaturesSheetKt$startEdgeInstall$1$ok$1$1$1(this.$onStatus, this.$msg, continuation);
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
        this.$onStatus.invoke(this.$msg);
        return Unit.INSTANCE;
    }
}
