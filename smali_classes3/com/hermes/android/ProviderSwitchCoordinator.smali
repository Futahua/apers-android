.class public final Lcom/hermes/android/ProviderSwitchCoordinator;
.super Ljava/lang/Object;
.source "ProviderSwitchCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProviderSwitchCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProviderSwitchCoordinator.kt\ncom/hermes/android/ProviderSwitchCoordinator\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,52:1\n120#2,10:53\n*S KotlinDebug\n*F\n+ 1 ProviderSwitchCoordinator.kt\ncom/hermes/android/ProviderSwitchCoordinator\n*L\n41#1:53,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tJ4\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\t2\u001c\u0010\u000e\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000fH\u0086@\u00a2\u0006\u0002\u0010\u0012J\u001c\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\t2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/hermes/android/ProviderSwitchCoordinator;",
        "",
        "<init>",
        "()V",
        "seq",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "onSelected",
        "",
        "isLatest",
        "",
        "token",
        "commitIfLatest",
        "write",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "commitIfLatestBlocking",
        "Lkotlin/Function0;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

.field private static final mutex:Lkotlinx/coroutines/sync/Mutex;

.field private static final seq:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hermes/android/ProviderSwitchCoordinator;

    invoke-direct {v0}, Lcom/hermes/android/ProviderSwitchCoordinator;-><init>()V

    sput-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 29
    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->mutex:Lkotlinx/coroutines/sync/Mutex;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/ProviderSwitchCoordinator;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final commitIfLatest(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;

    iget v1, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;

    invoke-direct {v0, p0, p4}, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;-><init>(Lcom/hermes/android/ProviderSwitchCoordinator;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 41
    iget v2, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-wide p1, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->J$0:J

    iget-object p3, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->L$1:Ljava/lang/Object;

    check-cast p3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p4, Lcom/hermes/android/ProviderSwitchCoordinator;->mutex:Lkotlinx/coroutines/sync/Mutex;

    .line 58
    iput-object p3, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->L$0:Ljava/lang/Object;

    iput-object p4, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->L$1:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->J$0:J

    iput v4, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->label:I

    invoke-interface {p4, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p3

    move-object p3, p4

    .line 42
    :goto_1
    :try_start_1
    sget-object p4, Lcom/hermes/android/ProviderSwitchCoordinator;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    cmp-long p1, v6, p1

    if-eqz p1, :cond_6

    const/4 v4, 0x0

    :cond_5
    move-object p1, p3

    goto :goto_2

    .line 43
    :cond_6
    iput-object p3, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatest$1;->label:I

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 44
    :goto_2
    :try_start_2
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :catchall_1
    move-exception p2

    move-object p1, p3

    :goto_3
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2
.end method

.method public final commitIfLatestBlocking(JLkotlin/jvm/functions/Function0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "write"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatestBlocking$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/hermes/android/ProviderSwitchCoordinator$commitIfLatestBlocking$1;-><init>(JLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final isLatest(J)Z
    .locals 2

    .line 35
    sget-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onSelected()J
    .locals 2

    .line 32
    sget-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->seq:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method
