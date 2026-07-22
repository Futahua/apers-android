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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$19$1$1$1", f = "MainActivity.kt", i = {}, l = {4474}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$TerminalTabContent$19$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ HermesHudRepository $hudRepo;
    final /* synthetic */ MutableState<List<HermesHudRepository.SessionInfo>> $pastSessions$delegate;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$TerminalTabContent$19$1$1$1(HermesHudRepository hermesHudRepository, MutableState<List<HermesHudRepository.SessionInfo>> mutableState, Continuation<? super MainActivityKt$TerminalTabContent$19$1$1$1> continuation) {
        super(2, continuation);
        this.$hudRepo = hermesHudRepository;
        this.$pastSessions$delegate = mutableState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$TerminalTabContent$19$1$1$1(this.$hudRepo, this.$pastSessions$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$TerminalTabContent$19$1$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$19$1$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends HermesHudRepository.SessionInfo>>, Object> {
        final /* synthetic */ HermesHudRepository $hudRepo;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HermesHudRepository hermesHudRepository, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$hudRepo = hermesHudRepository;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$hudRepo, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super List<HermesHudRepository.SessionInfo>> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return this.$hudRepo.recentSessions(10);
        }
    }

    public final Object invokeSuspend(Object obj) {
        MutableState<List<HermesHudRepository.SessionInfo>> mutableState;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            MutableState<List<HermesHudRepository.SessionInfo>> mutableState2 = this.$pastSessions$delegate;
            this.L$0 = mutableState2;
            this.label = 1;
            Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$hudRepo, null), (Continuation) this);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutableState = mutableState2;
            obj = objWithContext;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            mutableState = (MutableState) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        mutableState.setValue((List) obj);
        return Unit.INSTANCE;
    }
}
