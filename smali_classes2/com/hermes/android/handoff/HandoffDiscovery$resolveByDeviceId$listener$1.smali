.class public final Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;
.super Ljava/lang/Object;
.source "HandoffDiscovery.kt"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/handoff/HandoffDiscovery;->resolveByDeviceId(Ljava/lang/String;J)Lcom/hermes/android/handoff/HandoffDiscovery$Addr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1",
        "Landroid/net/nsd/NsdManager$DiscoveryListener;",
        "onDiscoveryStarted",
        "",
        "serviceType",
        "",
        "onServiceFound",
        "serviceInfo",
        "Landroid/net/nsd/NsdServiceInfo;",
        "onServiceLost",
        "onDiscoveryStopped",
        "onStartDiscoveryFailed",
        "errorCode",
        "",
        "onStopDiscoveryFailed",
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


# instance fields
.field final synthetic $deviceId:Ljava/lang/String;

.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $pending:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $resolving:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/hermes/android/handoff/HandoffDiscovery$Addr;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/hermes/android/handoff/HandoffDiscovery;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lcom/hermes/android/handoff/HandoffDiscovery;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/hermes/android/handoff/HandoffDiscovery$Addr;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$resolving:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->this$0:Lcom/hermes/android/handoff/HandoffDiscovery;

    iput-object p4, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$deviceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoveryStarted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDiscoveryStopped(Ljava/lang/String;)V
    .locals 1

    const-string v0, "serviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 7

    const-string v0, "serviceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$resolving:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->this$0:Lcom/hermes/android/handoff/HandoffDiscovery;

    iget-object v4, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$deviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$result:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v1 .. v6}, Lcom/hermes/android/handoff/HandoffDiscovery;->access$resolveByDeviceId$resolveNext(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 1

    const-string v0, "serviceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "serviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "discovery start failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HandoffDiscovery"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "serviceType"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
