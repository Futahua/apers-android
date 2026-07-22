package com.hermes.android;

import com.hermes.android.mesh.MeshClient;
import com.hermes.android.mesh.MeshController;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/hermes/android/mesh/MeshClient$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$MeshScreen$1$1$fresh$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$MeshScreen$1$1$fresh$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends MeshClient.Result>>, Object> {
    final /* synthetic */ MeshController $controller;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$MeshScreen$1$1$fresh$1(MeshController meshController, Continuation<? super MainActivityKt$MeshScreen$1$1$fresh$1> continuation) {
        super(2, continuation);
        this.$controller = meshController;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$MeshScreen$1$1$fresh$1(this.$controller, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<MeshClient.Result>> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return this.$controller.poll();
    }
}
