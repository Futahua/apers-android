package com.hermes.android;

import androidx.core.view.MotionEventCompat;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: ProviderSwitchCoordinator.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tJ4\u0010\r\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u001c\u0010\u000e\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000fH\u0086@¢\u0006\u0002\u0010\u0012J\u001c\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00110\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/hermes/android/ProviderSwitchCoordinator;", "", "<init>", "()V", "seq", "Ljava/util/concurrent/atomic/AtomicLong;", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "onSelected", "", "isLatest", "", "token", "commitIfLatest", "write", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "commitIfLatestBlocking", "Lkotlin/Function0;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ProviderSwitchCoordinator {
    public static final ProviderSwitchCoordinator INSTANCE = new ProviderSwitchCoordinator();
    private static final AtomicLong seq = new AtomicLong(0);
    private static final Mutex mutex = MutexKt.Mutex$default(false, 1, (Object) null);
    public static final int $stable = 8;

    /* JADX INFO: renamed from: com.hermes.android.ProviderSwitchCoordinator$commitIfLatest$1, reason: invalid class name */
    /* JADX INFO: compiled from: ProviderSwitchCoordinator.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.ProviderSwitchCoordinator", f = "ProviderSwitchCoordinator.kt", i = {0, 0, 0, 1}, l = {58, MotionEventCompat.AXIS_GENERIC_12}, m = "commitIfLatest", n = {"write", "$this$withLock_u24default$iv", "token", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "J$0", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ProviderSwitchCoordinator.this.commitIfLatest(0L, null, (Continuation) this);
        }
    }

    private ProviderSwitchCoordinator() {
    }

    public final long onSelected() {
        return seq.incrementAndGet();
    }

    public final boolean isLatest(long token) {
        return seq.get() == token;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object commitIfLatest(long j, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super Boolean> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Function1<? super Continuation<? super Unit>, ? extends Object> function12;
        Mutex mutex2;
        Mutex mutex3;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        boolean z = true;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Mutex mutex4 = mutex;
                anonymousClass1.L$0 = function1;
                anonymousClass1.L$1 = mutex4;
                anonymousClass1.J$0 = j;
                anonymousClass1.label = 1;
                if (mutex4.lock((Object) null, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function12 = function1;
                mutex2 = mutex4;
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex3 = (Mutex) anonymousClass1.L$0;
                    try {
                        ResultKt.throwOnFailure(obj);
                        Boolean boolBoxBoolean = Boxing.boxBoolean(z);
                        mutex3.unlock((Object) null);
                        return boolBoxBoolean;
                    } catch (Throwable th) {
                        th = th;
                        mutex3.unlock((Object) null);
                        throw th;
                    }
                }
                j = anonymousClass1.J$0;
                mutex2 = (Mutex) anonymousClass1.L$1;
                function12 = (Function1) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj);
            }
            if (seq.get() != j) {
                z = false;
            } else {
                anonymousClass1.L$0 = mutex2;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 2;
                if (function12.invoke(anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            mutex3 = mutex2;
            Boolean boolBoxBoolean2 = Boxing.boxBoolean(z);
            mutex3.unlock((Object) null);
            return boolBoxBoolean2;
        } catch (Throwable th2) {
            th = th2;
            mutex3 = mutex2;
            mutex3.unlock((Object) null);
            throw th;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.ProviderSwitchCoordinator$commitIfLatestBlocking$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ProviderSwitchCoordinator.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.ProviderSwitchCoordinator$commitIfLatestBlocking$1", f = "ProviderSwitchCoordinator.kt", i = {}, l = {50}, m = "invokeSuspend", n = {}, s = {})
    static final class C01191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ long $token;
        final /* synthetic */ Function0<Unit> $write;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01191(long j, Function0<Unit> function0, Continuation<? super C01191> continuation) {
            super(2, continuation);
            this.$token = j;
            this.$write = function0;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C01191(this.$token, this.$write, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.hermes.android.ProviderSwitchCoordinator$commitIfLatestBlocking$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: ProviderSwitchCoordinator.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "com.hermes.android.ProviderSwitchCoordinator$commitIfLatestBlocking$1$1", f = "ProviderSwitchCoordinator.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00231 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
            final /* synthetic */ Function0<Unit> $write;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00231(Function0<Unit> function0, Continuation<? super C00231> continuation) {
                super(1, continuation);
                this.$write = function0;
            }

            public final Continuation<Unit> create(Continuation<?> continuation) {
                return new C00231(this.$write, continuation);
            }

            public final Object invoke(Continuation<? super Unit> continuation) {
                return create(continuation).invokeSuspend(Unit.INSTANCE);
            }

            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.$write.invoke();
                return Unit.INSTANCE;
            }
        }

        public final Object invokeSuspend(Object obj) throws Throwable {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = ProviderSwitchCoordinator.INSTANCE.commitIfLatest(this.$token, new C00231(this.$write, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final boolean commitIfLatestBlocking(long token, Function0<Unit> write) {
        Intrinsics.checkNotNullParameter(write, "write");
        return ((Boolean) BuildersKt.runBlocking$default((CoroutineContext) null, new C01191(token, write, null), 1, (Object) null)).booleanValue();
    }
}
