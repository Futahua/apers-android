package com.hermes.android;

import androidx.compose.runtime.MutableState;
import com.hermes.android.handoff.HandoffCrypto;
import com.hermes.android.mesh.MeshController;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$MeshScreen$2$1$5$2$1$1$peer$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$MeshScreen$2$1$5$2$1$1$peer$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HandoffCrypto.PeerInfo>, Object> {
    final /* synthetic */ MeshController $controller;
    final /* synthetic */ MutableState<String> $pairCode$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$MeshScreen$2$1$5$2$1$1$peer$1(MeshController meshController, MutableState<String> mutableState, Continuation<? super MainActivityKt$MeshScreen$2$1$5$2$1$1$peer$1> continuation) {
        super(2, continuation);
        this.$controller = meshController;
        this.$pairCode$delegate = mutableState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$MeshScreen$2$1$5$2$1$1$peer$1(this.$controller, this.$pairCode$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HandoffCrypto.PeerInfo> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return this.$controller.pairFromQr(StringsKt.trim(MainActivityKt.MeshScreen$lambda$142(this.$pairCode$delegate)).toString());
    }
}
