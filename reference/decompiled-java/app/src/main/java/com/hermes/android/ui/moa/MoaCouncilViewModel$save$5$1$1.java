package com.hermes.android.ui.moa;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.ModelSwitchPrompt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: MoaCouncilViewModel.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.moa.MoaCouncilViewModel$save$5$1$1", f = "MoaCouncilViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MoaCouncilViewModel$save$5$1$1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ String $name;
    int label;
    final /* synthetic */ MoaCouncilViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MoaCouncilViewModel$save$5$1$1(MoaCouncilViewModel moaCouncilViewModel, String str, Continuation<? super MoaCouncilViewModel$save$5$1$1> continuation) {
        super(1, continuation);
        this.this$0 = moaCouncilViewModel;
        this.$name = str;
    }

    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new MoaCouncilViewModel$save$5$1$1(this.this$0, this.$name, continuation);
    }

    public final Object invoke(Continuation<? super Unit> continuation) {
        return create(continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.repo.writeModelConfig("moa", this.$name, (32 & 4) != 0 ? BuildConfig.FLAVOR : null, (32 & 8) != 0 ? BuildConfig.FLAVOR : null, (32 & 16) != 0 ? BuildConfig.FLAVOR : null, (32 & 32) != 0 ? null : null);
            ModelSwitchPrompt.INSTANCE.offer("MoA · " + this.$name, "moa", this.$name);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
