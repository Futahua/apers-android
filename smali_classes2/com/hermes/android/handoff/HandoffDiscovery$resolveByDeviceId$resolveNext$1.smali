.class public final Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;
.super Ljava/lang/Object;
.source "HandoffDiscovery.kt"

# interfaces
.implements Landroid/net/nsd/NsdManager$ResolveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/handoff/HandoffDiscovery;->resolveByDeviceId$resolveNext(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1",
        "Landroid/net/nsd/NsdManager$ResolveListener;",
        "onResolveFailed",
        "",
        "serviceInfo",
        "Landroid/net/nsd/NsdServiceInfo;",
        "errorCode",
        "",
        "onServiceResolved",
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
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
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

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$resolving:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p3, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->this$0:Lcom/hermes/android/handoff/HandoffDiscovery;

    iput-object p4, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$deviceId:Ljava/lang/String;

    iput-object p5, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 6

    const-string p2, "serviceInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$resolving:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$resolving:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v2, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->this$0:Lcom/hermes/android/handoff/HandoffDiscovery;

    iget-object v3, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$deviceId:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$result:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v0 .. v5}, Lcom/hermes/android/handoff/HandoffDiscovery;->access$resolveByDeviceId$resolveNext(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 7

    const-string v0, "serviceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "did"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 63
    :goto_0
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$deviceId:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$result:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/hermes/android/handoff/HandoffDiscovery$Addr;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result p1

    invoke-direct {v2, v1, p1}, Lcom/hermes/android/handoff/HandoffDiscovery$Addr;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 66
    iget-object p1, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$resolving:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$resolving:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$pending:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->this$0:Lcom/hermes/android/handoff/HandoffDiscovery;

    iget-object v4, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$deviceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$result:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, p0, Lcom/hermes/android/handoff/HandoffDiscovery$resolveByDeviceId$resolveNext$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v1 .. v6}, Lcom/hermes/android/handoff/HandoffDiscovery;->access$resolveByDeviceId$resolveNext(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    :goto_1
    return-void
.end method
