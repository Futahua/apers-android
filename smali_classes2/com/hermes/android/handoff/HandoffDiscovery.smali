.class public final Lcom/hermes/android/handoff/HandoffDiscovery;
.super Ljava/lang/Object;
.source "HandoffDiscovery.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/handoff/HandoffDiscovery$Addr;,
        Lcom/hermes/android/handoff/HandoffDiscovery$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandoffDiscovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandoffDiscovery.kt\ncom/hermes/android/handoff/HandoffDiscovery\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,99:1\n1#2:100\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hermes/android/handoff/HandoffDiscovery;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "nsd",
        "Landroid/net/nsd/NsdManager;",
        "wifi",
        "Landroid/net/wifi/WifiManager;",
        "resolveByDeviceId",
        "Lcom/hermes/android/handoff/HandoffDiscovery$Addr;",
        "deviceId",
        "",
        "timeoutMs",
        "",
        "Companion",
        "Addr",
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

.field public static final Companion:Lcom/hermes/android/handoff/HandoffDiscovery$Companion;

.field private static final SERVICE_TYPE:Ljava/lang/String; = "_hermes-handoff._tcp."

.field private static final TAG:Ljava/lang/String; = "HandoffDiscovery"


# instance fields
.field private final nsd:Landroid/net/nsd/NsdManager;

.field private final wifi:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/handoff/HandoffDiscovery$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/handoff/HandoffDiscovery$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/handoff/HandoffDiscovery;->Companion:Lcom/hermes/android/handoff/HandoffDiscovery$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/handoff/HandoffDiscovery;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "servicediscovery"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.net.nsd.NsdManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lcom/hermes/android/handoff/HandoffDiscovery;->nsd:Landroid/net/nsd/NsdManager;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/net/wifi/WifiManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffDiscovery;->wifi:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static final synthetic access$resolveByDeviceId$resolveNext(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 23
    invoke-static/range {p0 .. p5}, Lcom/hermes/android/handoff/HandoffDiscovery;->resolveByDeviceId$resolveNext(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic resolveByDeviceId$default(Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;JILjava/lang/Object;)Lcom/hermes/android/handoff/HandoffDiscovery$Addr;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0xfa0

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermes/android/handoff/HandoffDiscovery;->resolveByDeviceId(Ljava/lang/String;J)Lcom/hermes/android/handoff/HandoffDiscovery$Addr;

    move-result-object p0

    return-object p0
.end method

.method private static final resolveByDeviceId$resolveNext(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;",
            "Lcom/hermes/android/handoff/HandoffDiscovery;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/hermes/android/handoff/HandoffDiscovery$Addr;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 57
    :cond_1
    iget-object v1, p2, Lcom/hermes/android/handoff/HandoffDiscovery;->nsd:Landroid/net/nsd/NsdManager;

    new-instance v9, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    check-cast v9, Landroid/net/nsd/NsdManager$ResolveListener;

    invoke-virtual {v1, v0, v9}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    return-void
.end method


# virtual methods
.method public final resolveByDeviceId(Ljava/lang/String;J)Lcom/hermes/android/handoff/HandoffDiscovery$Addr;
    .locals 15

    move-object v8, p0

    const-string v0, "deviceId"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 43
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 44
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 45
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    iget-object v1, v8, Lcom/hermes/android/handoff/HandoffDiscovery;->wifi:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    const-string v4, "hermes-handoff-discovery"

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 50
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    move-object v13, v1

    goto :goto_1

    :cond_0
    move-object v13, v10

    .line 74
    :goto_1
    new-instance v14, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;

    move-object v1, v14

    move-object v4, p0

    move-object/from16 v5, p1

    move-object v6, v9

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 88
    :try_start_1
    iget-object v0, v8, Lcom/hermes/android/handoff/HandoffDiscovery;->nsd:Landroid/net/nsd/NsdManager;

    const-string v1, "_hermes-handoff._tcp."

    move-object v2, v14

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v1, v12, v2}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v1, p2

    invoke-virtual {v11, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 90
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hermes/android/handoff/HandoffDiscovery$Addr;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 94
    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v8

    check-cast v0, Lcom/hermes/android/handoff/HandoffDiscovery;

    iget-object v0, v8, Lcom/hermes/android/handoff/HandoffDiscovery;->nsd:Landroid/net/nsd/NsdManager;

    check-cast v14, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v14}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v13, :cond_1

    .line 95
    :try_start_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v8

    check-cast v0, Lcom/hermes/android/handoff/HandoffDiscovery;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_1
    move-object v10, v1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 92
    :try_start_4
    const-string v1, "HandoffDiscovery"

    const-string v2, "NSD resolve error"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 94
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v8, Lcom/hermes/android/handoff/HandoffDiscovery;->nsd:Landroid/net/nsd/NsdManager;

    check-cast v14, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v14}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    if-eqz v13, :cond_2

    .line 95
    :try_start_6
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_2
    :goto_6
    return-object v10

    .line 94
    :goto_7
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, v8, Lcom/hermes/android/handoff/HandoffDiscovery;->nsd:Landroid/net/nsd/NsdManager;

    check-cast v14, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v14}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    if-eqz v13, :cond_3

    .line 95
    :try_start_8
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_9

    :catchall_7
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_3
    throw v1
.end method
