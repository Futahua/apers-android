package com.hermes.android.ui.chatskin;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.MutableState;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.chat.ChatBubble;
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

/* JADX INFO: compiled from: ChatSkinScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.chatskin.ChatSkinScreenKt$ChatSkinScreen$1$3$1", f = "ChatSkinScreen.kt", i = {}, l = {169}, m = "invokeSuspend", n = {}, s = {})
final class ChatSkinScreenKt$ChatSkinScreen$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<ChatBubble> $bubbles;
    final /* synthetic */ LazyListState $listState;
    final /* synthetic */ MutableState<Integer> $programmaticDepth$delegate;
    final /* synthetic */ MutableState<Boolean> $userAtBottom$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatSkinScreenKt$ChatSkinScreen$1$3$1(List<ChatBubble> list, MutableState<Boolean> mutableState, LazyListState lazyListState, MutableState<Integer> mutableState2, Continuation<? super ChatSkinScreenKt$ChatSkinScreen$1$3$1> continuation) {
        super(2, continuation);
        this.$bubbles = list;
        this.$userAtBottom$delegate = mutableState;
        this.$listState = lazyListState;
        this.$programmaticDepth$delegate = mutableState2;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ChatSkinScreenKt$ChatSkinScreen$1$3$1(this.$bubbles, this.$userAtBottom$delegate, this.$listState, this.$programmaticDepth$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (!this.$bubbles.isEmpty() && ChatSkinScreenKt.ChatSkinScreen$lambda$22$lambda$9(this.$userAtBottom$delegate)) {
                this.label = 1;
                if (ChatSkinScreenKt.ChatSkinScreen$lambda$22$followSnap(this.$listState, this.$bubbles, this.$programmaticDepth$delegate, (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
