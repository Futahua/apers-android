package com.hermes.android.ui.moa;

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

/* JADX INFO: compiled from: MoaCouncilScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.moa.MoaCouncilScreenKt$MoaCouncilScreen$1$1", f = "MoaCouncilScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MoaCouncilScreenKt$MoaCouncilScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ MoaCouncilViewModel $viewModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MoaCouncilScreenKt$MoaCouncilScreen$1$1(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope, Continuation<? super MoaCouncilScreenKt$MoaCouncilScreen$1$1> continuation) {
        super(2, continuation);
        this.$viewModel = moaCouncilViewModel;
        this.$scope = coroutineScope;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MoaCouncilScreenKt$MoaCouncilScreen$1$1(this.$viewModel, this.$scope, continuation);
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
        this.$viewModel.refresh(this.$scope);
        return Unit.INSTANCE;
    }
}
