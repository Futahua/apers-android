package com.hermes.android.ui;

import androidx.compose.runtime.MutableState;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
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

/* JADX INFO: compiled from: HermesHudScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
@DebugMetadata(c = "com.hermes.android.ui.HermesHudScreenKt$HermesHudScreen$1$1", f = "HermesHudScreen.kt", i = {}, l = {78}, m = "invokeSuspend", n = {}, s = {})
final class HermesHudScreenKt$HermesHudScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<List<HermesHudRepository.CronJob>> $cronJobs$delegate;
    final /* synthetic */ HermesHudRepository $hudRepo;
    final /* synthetic */ MutableState<Boolean> $isLoading$delegate;
    final /* synthetic */ MutableState<List<HermesHudRepository.MemoryEntry>> $memories$delegate;
    final /* synthetic */ MutableState<HermesHudRepository.HudOverview> $overview$delegate;
    final /* synthetic */ MutableState<List<HermesHudRepository.SessionInfo>> $sessions$delegate;
    final /* synthetic */ MutableState<List<HermesHudRepository.ToolUsage>> $tools$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HermesHudScreenKt$HermesHudScreen$1$1(MutableState<Boolean> mutableState, HermesHudRepository hermesHudRepository, MutableState<HermesHudRepository.HudOverview> mutableState2, MutableState<List<HermesHudRepository.SessionInfo>> mutableState3, MutableState<List<HermesHudRepository.ToolUsage>> mutableState4, MutableState<List<HermesHudRepository.MemoryEntry>> mutableState5, MutableState<List<HermesHudRepository.CronJob>> mutableState6, Continuation<? super HermesHudScreenKt$HermesHudScreen$1$1> continuation) {
        super(2, continuation);
        this.$isLoading$delegate = mutableState;
        this.$hudRepo = hermesHudRepository;
        this.$overview$delegate = mutableState2;
        this.$sessions$delegate = mutableState3;
        this.$tools$delegate = mutableState4;
        this.$memories$delegate = mutableState5;
        this.$cronJobs$delegate = mutableState6;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HermesHudScreenKt$HermesHudScreen$1$1(this.$isLoading$delegate, this.$hudRepo, this.$overview$delegate, this.$sessions$delegate, this.$tools$delegate, this.$memories$delegate, this.$cronJobs$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HermesHudScreenKt.HermesHudScreen$lambda$17(this.$isLoading$delegate, true);
            this.label = 1;
            if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$hudRepo, this.$overview$delegate, this.$sessions$delegate, this.$tools$delegate, this.$memories$delegate, this.$cronJobs$delegate, this.$isLoading$delegate, null), (Continuation) this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.hermes.android.ui.HermesHudScreenKt$HermesHudScreen$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: HermesHudScreen.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.HermesHudScreenKt$HermesHudScreen$1$1$1", f = "HermesHudScreen.kt", i = {}, l = {84}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableState<List<HermesHudRepository.CronJob>> $cronJobs$delegate;
        final /* synthetic */ HermesHudRepository $hudRepo;
        final /* synthetic */ MutableState<Boolean> $isLoading$delegate;
        final /* synthetic */ MutableState<List<HermesHudRepository.MemoryEntry>> $memories$delegate;
        final /* synthetic */ MutableState<HermesHudRepository.HudOverview> $overview$delegate;
        final /* synthetic */ MutableState<List<HermesHudRepository.SessionInfo>> $sessions$delegate;
        final /* synthetic */ MutableState<List<HermesHudRepository.ToolUsage>> $tools$delegate;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HermesHudRepository hermesHudRepository, MutableState<HermesHudRepository.HudOverview> mutableState, MutableState<List<HermesHudRepository.SessionInfo>> mutableState2, MutableState<List<HermesHudRepository.ToolUsage>> mutableState3, MutableState<List<HermesHudRepository.MemoryEntry>> mutableState4, MutableState<List<HermesHudRepository.CronJob>> mutableState5, MutableState<Boolean> mutableState6, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$hudRepo = hermesHudRepository;
            this.$overview$delegate = mutableState;
            this.$sessions$delegate = mutableState2;
            this.$tools$delegate = mutableState3;
            this.$memories$delegate = mutableState4;
            this.$cronJobs$delegate = mutableState5;
            this.$isLoading$delegate = mutableState6;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$hudRepo, this.$overview$delegate, this.$sessions$delegate, this.$tools$delegate, this.$memories$delegate, this.$cronJobs$delegate, this.$isLoading$delegate, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HermesHudRepository.HudOverview hudOverviewCollectOverview = this.$hudRepo.collectOverview();
                List listRecentSessions$default = HermesHudRepository.recentSessions$default(this.$hudRepo, 0, 1, null);
                List list = HermesHudRepository.topTools$default(this.$hudRepo, 0, 1, null);
                List<HermesHudRepository.MemoryEntry> listMemoryEntries = this.$hudRepo.memoryEntries();
                List<HermesHudRepository.CronJob> listCronJobs = this.$hudRepo.cronJobs();
                this.label = 1;
                if (BuildersKt.withContext(Dispatchers.getMain(), new C00301(hudOverviewCollectOverview, listRecentSessions$default, list, listMemoryEntries, listCronJobs, this.$overview$delegate, this.$sessions$delegate, this.$tools$delegate, this.$memories$delegate, this.$cronJobs$delegate, this.$isLoading$delegate, null), (Continuation) this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.hermes.android.ui.HermesHudScreenKt$HermesHudScreen$1$1$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: HermesHudScreen.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        @DebugMetadata(c = "com.hermes.android.ui.HermesHudScreenKt$HermesHudScreen$1$1$1$1", f = "HermesHudScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00301 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ List<HermesHudRepository.CronJob> $c;
            final /* synthetic */ MutableState<List<HermesHudRepository.CronJob>> $cronJobs$delegate;
            final /* synthetic */ MutableState<Boolean> $isLoading$delegate;
            final /* synthetic */ List<HermesHudRepository.MemoryEntry> $m;
            final /* synthetic */ MutableState<List<HermesHudRepository.MemoryEntry>> $memories$delegate;
            final /* synthetic */ HermesHudRepository.HudOverview $o;
            final /* synthetic */ MutableState<HermesHudRepository.HudOverview> $overview$delegate;
            final /* synthetic */ List<HermesHudRepository.SessionInfo> $s;
            final /* synthetic */ MutableState<List<HermesHudRepository.SessionInfo>> $sessions$delegate;
            final /* synthetic */ List<HermesHudRepository.ToolUsage> $t;
            final /* synthetic */ MutableState<List<HermesHudRepository.ToolUsage>> $tools$delegate;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00301(HermesHudRepository.HudOverview hudOverview, List<HermesHudRepository.SessionInfo> list, List<HermesHudRepository.ToolUsage> list2, List<HermesHudRepository.MemoryEntry> list3, List<HermesHudRepository.CronJob> list4, MutableState<HermesHudRepository.HudOverview> mutableState, MutableState<List<HermesHudRepository.SessionInfo>> mutableState2, MutableState<List<HermesHudRepository.ToolUsage>> mutableState3, MutableState<List<HermesHudRepository.MemoryEntry>> mutableState4, MutableState<List<HermesHudRepository.CronJob>> mutableState5, MutableState<Boolean> mutableState6, Continuation<? super C00301> continuation) {
                super(2, continuation);
                this.$o = hudOverview;
                this.$s = list;
                this.$t = list2;
                this.$m = list3;
                this.$c = list4;
                this.$overview$delegate = mutableState;
                this.$sessions$delegate = mutableState2;
                this.$tools$delegate = mutableState3;
                this.$memories$delegate = mutableState4;
                this.$cronJobs$delegate = mutableState5;
                this.$isLoading$delegate = mutableState6;
            }

            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C00301(this.$o, this.$s, this.$t, this.$m, this.$c, this.$overview$delegate, this.$sessions$delegate, this.$tools$delegate, this.$memories$delegate, this.$cronJobs$delegate, this.$isLoading$delegate, continuation);
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
                this.$overview$delegate.setValue(this.$o);
                this.$sessions$delegate.setValue(this.$s);
                this.$tools$delegate.setValue(this.$t);
                this.$memories$delegate.setValue(this.$m);
                this.$cronJobs$delegate.setValue(this.$c);
                HermesHudScreenKt.HermesHudScreen$lambda$17(this.$isLoading$delegate, false);
                return Unit.INSTANCE;
            }
        }
    }
}
