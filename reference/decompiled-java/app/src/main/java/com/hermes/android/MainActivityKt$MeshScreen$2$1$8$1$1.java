package com.hermes.android;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.snapshots.SnapshotStateList;
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
@DebugMetadata(c = "com.hermes.android.MainActivityKt$MeshScreen$2$1$8$1$1", f = "MainActivity.kt", i = {}, l = {2265}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$MeshScreen$2$1$8$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $busy$delegate;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MeshController $controller;
    final /* synthetic */ String $dispatchedMsg;
    final /* synthetic */ String $p;
    final /* synthetic */ SnapshotStateList<String> $pending;
    final /* synthetic */ MutableState<String> $prompt$delegate;
    final /* synthetic */ MutableState<String> $status$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$MeshScreen$2$1$8$1$1(SnapshotStateList<String> snapshotStateList, String str, String str2, AppCompatActivity appCompatActivity, MeshController meshController, MutableState<String> mutableState, MutableState<String> mutableState2, MutableState<Boolean> mutableState3, Continuation<? super MainActivityKt$MeshScreen$2$1$8$1$1> continuation) {
        super(2, continuation);
        this.$pending = snapshotStateList;
        this.$p = str;
        this.$dispatchedMsg = str2;
        this.$context = appCompatActivity;
        this.$controller = meshController;
        this.$prompt$delegate = mutableState;
        this.$status$delegate = mutableState2;
        this.$busy$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$MeshScreen$2$1$8$1$1(this.$pending, this.$p, this.$dispatchedMsg, this.$context, this.$controller, this.$prompt$delegate, this.$status$delegate, this.$busy$delegate, continuation);
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
                    if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$controller, this.$p, null), (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.$pending.add(0, this.$p);
                this.$prompt$delegate.setValue("");
                this.$status$delegate.setValue(this.$dispatchedMsg);
            } catch (Exception e) {
                this.$status$delegate.setValue(this.$context.getString(R.string.mesh_dispatch_fail, new Object[]{UiErrorKt.uiMessage(e, this.$context)}));
            }
            return Unit.INSTANCE;
        } finally {
            MainActivityKt.MeshScreen$lambda$152(this.$busy$delegate, false);
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$MeshScreen$2$1$8$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$MeshScreen$2$1$8$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
        final /* synthetic */ MeshController $controller;
        final /* synthetic */ String $p;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(MeshController meshController, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$controller = meshController;
            this.$p = str;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$controller, this.$p, continuation);
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
            return this.$controller.dispatch(this.$p);
        }
    }
}
