package com.hermes.android.ui.chatskin;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: ChatSkinScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.chatskin.ChatSkinScreenKt$ChatSkinScreen$1$2$1", f = "ChatSkinScreen.kt", i = {}, l = {144}, m = "invokeSuspend", n = {}, s = {})
final class ChatSkinScreenKt$ChatSkinScreen$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<Boolean> $atBottomByGeometry$delegate;
    final /* synthetic */ LazyListState $listState;
    final /* synthetic */ MutableState<Integer> $programmaticDepth$delegate;
    final /* synthetic */ MutableState<Boolean> $userAtBottom$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatSkinScreenKt$ChatSkinScreen$1$2$1(LazyListState lazyListState, MutableState<Integer> mutableState, MutableState<Boolean> mutableState2, State<Boolean> state, Continuation<? super ChatSkinScreenKt$ChatSkinScreen$1$2$1> continuation) {
        super(2, continuation);
        this.$listState = lazyListState;
        this.$programmaticDepth$delegate = mutableState;
        this.$userAtBottom$delegate = mutableState2;
        this.$atBottomByGeometry$delegate = state;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ChatSkinScreenKt$ChatSkinScreen$1$2$1(this.$listState, this.$programmaticDepth$delegate, this.$userAtBottom$delegate, this.$atBottomByGeometry$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            final LazyListState lazyListState = this.$listState;
            Flow flowSnapshotFlow = SnapshotStateKt.snapshotFlow(new Function0() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$ChatSkinScreen$1$2$1$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return Boolean.valueOf(lazyListState.isScrollInProgress());
                }
            });
            final LazyListState lazyListState2 = this.$listState;
            final MutableState<Integer> mutableState = this.$programmaticDepth$delegate;
            final MutableState<Boolean> mutableState2 = this.$userAtBottom$delegate;
            final State<Boolean> state = this.$atBottomByGeometry$delegate;
            this.label = 1;
            if (flowSnapshotFlow.collect(new FlowCollector() { // from class: com.hermes.android.ui.chatskin.ChatSkinScreenKt$ChatSkinScreen$1$2$1.2
                public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                    return emit(((Boolean) obj2).booleanValue(), (Continuation<? super Unit>) continuation);
                }

                public final Object emit(boolean z, Continuation<? super Unit> continuation) {
                    boolean z2 = ChatSkinScreenKt.ChatSkinScreen$lambda$22$lambda$12(mutableState) > 0;
                    if (z && !z2) {
                        ChatSkinScreenKt.ChatSkinScreen$lambda$22$lambda$10(mutableState2, false);
                    } else if (booleanRef.element && !z && !z2 && lazyListState2.getLayoutInfo().getTotalItemsCount() > 0) {
                        ChatSkinScreenKt.ChatSkinScreen$lambda$22$lambda$10(mutableState2, ChatSkinScreenKt.ChatSkinScreen$lambda$22$lambda$6(state));
                    }
                    booleanRef.element = z;
                    return Unit.INSTANCE;
                }
            }, (Continuation) this) == coroutine_suspended) {
                return coroutine_suspended;
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
