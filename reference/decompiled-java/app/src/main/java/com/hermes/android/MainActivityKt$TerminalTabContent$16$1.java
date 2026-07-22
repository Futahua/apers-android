package com.hermes.android;

import androidx.compose.runtime.MutableState;
import com.hermes.android.data.HermesHudRepository;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$16$1", f = "MainActivity.kt", i = {0}, l = {4368, 4369}, m = "invokeSuspend", n = {"sid"}, s = {"L$0"})
final class MainActivityKt$TerminalTabContent$16$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ HermesHudRepository $hudRepo;
    final /* synthetic */ MutableState<List<HermesHudRepository.ChatMessage>> $messages$delegate;
    final /* synthetic */ MutableState<String> $previewSessionId$delegate;
    final /* synthetic */ MutableState<HermesHudRepository.SessionInfo> $sessionInfo$delegate;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$TerminalTabContent$16$1(MutableState<String> mutableState, HermesHudRepository hermesHudRepository, MutableState<List<HermesHudRepository.ChatMessage>> mutableState2, MutableState<HermesHudRepository.SessionInfo> mutableState3, Continuation<? super MainActivityKt$TerminalTabContent$16$1> continuation) {
        super(2, continuation);
        this.$previewSessionId$delegate = mutableState;
        this.$hudRepo = hermesHudRepository;
        this.$messages$delegate = mutableState2;
        this.$sessionInfo$delegate = mutableState3;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$TerminalTabContent$16$1(this.$previewSessionId$delegate, this.$hudRepo, this.$messages$delegate, this.$sessionInfo$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        MutableState<List<HermesHudRepository.ChatMessage>> mutableState;
        String str;
        MutableState<HermesHudRepository.SessionInfo> mutableState2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strTerminalTabContent$lambda$482 = MainActivityKt.TerminalTabContent$lambda$482(this.$previewSessionId$delegate);
            if (strTerminalTabContent$lambda$482 == null) {
                return Unit.INSTANCE;
            }
            mutableState = this.$messages$delegate;
            this.L$0 = strTerminalTabContent$lambda$482;
            this.L$1 = mutableState;
            this.label = 1;
            Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$hudRepo, strTerminalTabContent$lambda$482, null), (Continuation) this);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            str = strTerminalTabContent$lambda$482;
            obj = objWithContext;
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                mutableState2 = (MutableState) this.L$0;
                ResultKt.throwOnFailure(obj);
                mutableState2.setValue((HermesHudRepository.SessionInfo) obj);
                return Unit.INSTANCE;
            }
            mutableState = (MutableState) this.L$1;
            str = (String) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        mutableState.setValue((List) obj);
        MutableState<HermesHudRepository.SessionInfo> mutableState3 = this.$sessionInfo$delegate;
        this.L$0 = mutableState3;
        this.L$1 = null;
        this.label = 2;
        Object objWithContext2 = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(this.$hudRepo, str, null), (Continuation) this);
        if (objWithContext2 == coroutine_suspended) {
            return coroutine_suspended;
        }
        mutableState2 = mutableState3;
        obj = objWithContext2;
        mutableState2.setValue((HermesHudRepository.SessionInfo) obj);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$TerminalTabContent$16$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/hermes/android/data/HermesHudRepository$ChatMessage;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$16$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends HermesHudRepository.ChatMessage>>, Object> {
        final /* synthetic */ HermesHudRepository $hudRepo;
        final /* synthetic */ String $sid;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HermesHudRepository hermesHudRepository, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$hudRepo = hermesHudRepository;
            this.$sid = str;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$hudRepo, this.$sid, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<HermesHudRepository.ChatMessage>> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return this.$hudRepo.readSessionMessages(this.$sid, 30);
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$TerminalTabContent$16$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$16$1$2", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HermesHudRepository.SessionInfo>, Object> {
        final /* synthetic */ HermesHudRepository $hudRepo;
        final /* synthetic */ String $sid;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(HermesHudRepository hermesHudRepository, String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$hudRepo = hermesHudRepository;
            this.$sid = str;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$hudRepo, this.$sid, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HermesHudRepository.SessionInfo> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            List listRecentSessions = this.$hudRepo.recentSessions(50);
            String str = this.$sid;
            for (Object obj2 : listRecentSessions) {
                if (Intrinsics.areEqual(((HermesHudRepository.SessionInfo) obj2).getId(), str)) {
                    return obj2;
                }
            }
            return null;
        }
    }
}
