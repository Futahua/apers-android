package com.hermes.android.chat;

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

/* JADX INFO: compiled from: ChatSkinController.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.chat.ChatSkinController$armSettleWatch$1$result$1", f = "ChatSkinController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class ChatSkinController$armSettleWatch$1$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HermesHudRepository.TurnSettle>, Object> {
    final /* synthetic */ String $sid;
    int label;
    final /* synthetic */ ChatSkinController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatSkinController$armSettleWatch$1$result$1(ChatSkinController chatSkinController, String str, Continuation<? super ChatSkinController$armSettleWatch$1$result$1> continuation) {
        super(2, continuation);
        this.this$0 = chatSkinController;
        this.$sid = str;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ChatSkinController$armSettleWatch$1$result$1(this.this$0, this.$sid, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HermesHudRepository.TurnSettle> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return HermesHudRepository.settleCheck$default(this.this$0.hudRepo, this.$sid, 0.0d, 0, 4, (Object) null);
    }
}
