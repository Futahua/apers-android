package com.hermes.android;

import androidx.compose.runtime.MutableIntState;
import com.hermes.android.data.HermesHudRepository;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ HermesHudRepository $hudRepo;
    final /* synthetic */ HermesHudRepository.SessionInfo $s;
    final /* synthetic */ MutableIntState $sessionListVersion$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1(HermesHudRepository hermesHudRepository, HermesHudRepository.SessionInfo sessionInfo, MutableIntState mutableIntState, Continuation<? super MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1> continuation) {
        super(2, continuation);
        this.$hudRepo = hermesHudRepository;
        this.$s = sessionInfo;
        this.$sessionListVersion$delegate = mutableIntState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1(this.$hudRepo, this.$s, this.$sessionListVersion$delegate, continuation);
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
        this.$hudRepo.deleteSession(this.$s.getId());
        this.$sessionListVersion$delegate.setIntValue(MainActivityKt.TerminalTabContent$lambda$414(this.$sessionListVersion$delegate) + 1);
        return Unit.INSTANCE;
    }
}
