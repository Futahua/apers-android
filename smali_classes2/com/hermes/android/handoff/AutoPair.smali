.class public final Lcom/hermes/android/handoff/AutoPair;
.super Ljava/lang/Object;
.source "AutoPair.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile sBusy:Z

.field public static volatile sLastHost:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final controller:Lcom/hermes/android/mesh/MeshController;

.field private final mode:I

.field private final online:Landroidx/compose/runtime/MutableState;

.field private final paired:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/hermes/android/handoff/AutoPair;->sLastHost:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/hermes/android/mesh/MeshController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/handoff/AutoPair;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/hermes/android/handoff/AutoPair;->controller:Lcom/hermes/android/mesh/MeshController;

    iput-object p3, p0, Lcom/hermes/android/handoff/AutoPair;->paired:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/handoff/AutoPair;->online:Landroidx/compose/runtime/MutableState;

    iput p5, p0, Lcom/hermes/android/handoff/AutoPair;->mode:I

    return-void
.end method

.method private static sendProbe(Ljava/net/DatagramSocket;[BLjava/lang/String;I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/DatagramPacket;

    move-object v1, p1

    array-length v2, p1

    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    move v4, p3

    invoke-direct/range {v0 .. v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private static subnetBroadcast()Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v2

    if-nez v2, :goto_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :goto_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :goto_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :goto_1

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static discover(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :try_start_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    invoke-virtual {v0, p0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const-string v1, "APERS_MESH_DISCOVER_V1"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const v2, 0xbed8

    const-string v3, "255.255.255.255"

    invoke-static {v0, v1, v3, v2}, Lcom/hermes/android/handoff/AutoPair;->sendProbe(Ljava/net/DatagramSocket;[BLjava/lang/String;I)V

    invoke-static {}, Lcom/hermes/android/handoff/AutoPair;->subnetBroadcast()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0, v1, v3, v2}, Lcom/hermes/android/handoff/AutoPair;->sendProbe(Ljava/net/DatagramSocket;[BLjava/lang/String;I)V

    :cond_0
    const/16 v1, 0x1000

    new-array v1, v1, [B

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    invoke-direct {v2, v1, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    const-string p0, "UTF-8"

    invoke-direct {v3, v4, v1, v2, p0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :catch_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static displayHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lcom/hermes/android/handoff/AutoPair;->sLastHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "PC"

    return-object v0
.end method

.method public static start(Landroid/content/Context;Lcom/hermes/android/mesh/MeshController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 6

    sget-boolean v0, Lcom/hermes/android/handoff/AutoPair;->sBusy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hermes/android/mesh/MeshController;->isPaired()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hermes/android/handoff/AutoPair;->sBusy:Z

    new-instance v0, Lcom/hermes/android/handoff/AutoPair;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/handoff/AutoPair;-><init>(Landroid/content/Context;Lcom/hermes/android/mesh/MeshController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "apers-autopair"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static acquireLock(Landroid/content/Context;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 3

    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Landroid/net/wifi/WifiManager;

    const-string v0, "apers-autopair"

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    iget v0, p0, Lcom/hermes/android/handoff/AutoPair;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hermes/android/handoff/AutoPair;->paired:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v1}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$134(Landroidx/compose/runtime/MutableState;Z)V

    iget-object v0, p0, Lcom/hermes/android/handoff/AutoPair;->online:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v1}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$137(Landroidx/compose/runtime/MutableState;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hermes/android/handoff/AutoPair;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/hermes/android/handoff/AutoPair;->acquireLock(Landroid/content/Context;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v7

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x5a

    if-ge v0, v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/hermes/android/handoff/AutoPair;->controller:Lcom/hermes/android/mesh/MeshController;

    invoke-virtual {v1}, Lcom/hermes/android/mesh/MeshController;->isPaired()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v1, :cond_4

    :try_start_1
    const/16 v1, 0x640

    invoke-static {v1}, Lcom/hermes/android/handoff/AutoPair;->discover(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_2

    :try_start_2
    iget-object v2, p0, Lcom/hermes/android/handoff/AutoPair;->controller:Lcom/hermes/android/mesh/MeshController;

    invoke-virtual {v2, v1}, Lcom/hermes/android/mesh/MeshController;->pairFromQr(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hermes/android/handoff/AutoPair;->sLastHost:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/hermes/android/handoff/AutoPair;

    iget-object v2, p0, Lcom/hermes/android/handoff/AutoPair;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/hermes/android/handoff/AutoPair;->controller:Lcom/hermes/android/mesh/MeshController;

    iget-object v4, p0, Lcom/hermes/android/handoff/AutoPair;->paired:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/handoff/AutoPair;->online:Landroidx/compose/runtime/MutableState;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/hermes/android/handoff/AutoPair;-><init>(Landroid/content/Context;Lcom/hermes/android/mesh/MeshController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_2
    :try_start_3
    const-wide/16 v1, 0x898

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_2
    move-exception v0

    :cond_4
    :goto_1
    if-eqz v7, :cond_5

    :try_start_4
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/hermes/android/handoff/AutoPair;->sBusy:Z

    return-void
.end method
