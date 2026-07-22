package com.hermes.android;

import androidx.appcompat.app.AppCompatActivity;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$MeshScreen$2$1$5$2$1$1", f = "MainActivity.kt", i = {}, l = {2219}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$MeshScreen$2$1$5$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<String> $brokerHost$delegate;
    final /* synthetic */ MutableState<Boolean> $busy$delegate;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MeshController $controller;
    final /* synthetic */ MutableState<String> $pairCode$delegate;
    final /* synthetic */ MutableState<Boolean> $paired$delegate;
    final /* synthetic */ MutableState<String> $status$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$MeshScreen$2$1$5$2$1$1(AppCompatActivity appCompatActivity, MeshController meshController, MutableState<String> mutableState, MutableState<String> mutableState2, MutableState<Boolean> mutableState3, MutableState<String> mutableState4, MutableState<Boolean> mutableState5, Continuation<? super MainActivityKt$MeshScreen$2$1$5$2$1$1> continuation) {
        super(2, continuation);
        this.$context = appCompatActivity;
        this.$controller = meshController;
        this.$pairCode$delegate = mutableState;
        this.$brokerHost$delegate = mutableState2;
        this.$paired$delegate = mutableState3;
        this.$status$delegate = mutableState4;
        this.$busy$delegate = mutableState5;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$MeshScreen$2$1$5$2$1$1(this.$context, this.$controller, this.$pairCode$delegate, this.$brokerHost$delegate, this.$paired$delegate, this.$status$delegate, this.$busy$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$MeshScreen$2$1$5$2$1$1$peer$1(this.$controller, this.$pairCode$delegate, null), (Continuation) this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$brokerHost$delegate.setValue(((HandoffCrypto.PeerInfo) obj).getHost());
                MainActivityKt.MeshScreen$lambda$134(this.$paired$delegate, true);
                this.$status$delegate.setValue(this.$context.getString(R.string.mesh_connected_ok));
            } catch (Exception e) {
                this.$status$delegate.setValue(this.$context.getString(R.string.mesh_connect_fail, new Object[]{UiErrorKt.uiMessage(e, this.$context)}));
            }
            MainActivityKt.MeshScreen$lambda$152(this.$busy$delegate, false);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            MainActivityKt.MeshScreen$lambda$152(this.$busy$delegate, false);
            throw th;
        }
    }
}
