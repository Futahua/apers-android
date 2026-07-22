.class public final Lcom/hermes/android/handoff/HandoffController;
.super Ljava/lang/Object;
.source "HandoffController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandoffController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandoffController.kt\ncom/hermes/android/handoff/HandoffController\n+ 2 HostFailover.kt\ncom/hermes/android/mesh/HostFailover\n*L\n1#1,131:1\n80#1:132\n81#1:137\n82#1:143\n80#1:144\n81#1:149\n82#1:155\n80#1:165\n81#1:170\n82#1:176\n17#2,4:133\n21#2,5:138\n17#2,4:145\n21#2,5:150\n17#2,9:156\n17#2,4:166\n21#2,5:171\n*S KotlinDebug\n*F\n+ 1 HandoffController.kt\ncom/hermes/android/handoff/HandoffController\n*L\n43#1:132\n43#1:137\n43#1:143\n61#1:144\n61#1:149\n61#1:155\n103#1:165\n103#1:170\n103#1:176\n43#1:133,4\n43#1:138,5\n61#1:145,4\n61#1:150,5\n80#1:156,9\n103#1:166,4\n103#1:171,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020!JT\u0010\'\u001a\u0002H(\"\u0004\u0008\u0000\u0010(2\u0006\u0010&\u001a\u00020!26\u0010)\u001a2\u0012\u0013\u0012\u00110#\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008,\u0012\u0004\u0008\u0008(-\u0012\u0013\u0012\u00110.\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008,\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u0002H(0*H\u0082\u0008\u00a2\u0006\u0002\u00100J(\u00101\u001a\u0002022\u0006\u0010-\u001a\u00020#2\u0006\u0010/\u001a\u00020.2\u0006\u0010&\u001a\u00020!2\u0006\u00103\u001a\u00020#H\u0002J\u0006\u00104\u001a\u00020%J4\u00105\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u0001062\u0006\u0010-\u001a\u00020#2\u0006\u0010/\u001a\u00020.2\u0006\u0010&\u001a\u00020!2\u0006\u00107\u001a\u000202H\u0002J\u001c\u00108\u001a\u00020%2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u000106H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001a\u001a\u00020\u001b8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006:"
    }
    d2 = {
        "Lcom/hermes/android/handoff/HandoffController;",
        "",
        "context",
        "Landroid/content/Context;",
        "bootstrap",
        "Lcom/hermes/android/BootstrapManager;",
        "<init>",
        "(Landroid/content/Context;Lcom/hermes/android/BootstrapManager;)V",
        "crypto",
        "Lcom/hermes/android/handoff/HandoffCrypto;",
        "dir",
        "Ljava/io/File;",
        "identityStore",
        "Lcom/hermes/android/handoff/HandoffIdentityStore;",
        "client",
        "Lcom/hermes/android/mesh/MeshClient;",
        "importer",
        "Lcom/hermes/android/handoff/HandoffImporter;",
        "exporter",
        "Lcom/hermes/android/handoff/HandoffExporter;",
        "discovery",
        "Lcom/hermes/android/handoff/HandoffDiscovery;",
        "peers",
        "Lcom/hermes/android/handoff/HandoffPeerStore;",
        "getPeers",
        "()Lcom/hermes/android/handoff/HandoffPeerStore;",
        "identity",
        "Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;",
        "getIdentity",
        "()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;",
        "identity$delegate",
        "Lkotlin/Lazy;",
        "pairFromQr",
        "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
        "qrJson",
        "",
        "receive",
        "Lcom/hermes/android/handoff/HandoffImporter$Stats;",
        "peer",
        "firstReachable",
        "T",
        "op",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "host",
        "",
        "port",
        "(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "pull",
        "",
        "sid",
        "syncBack",
        "push",
        "",
        "bundle",
        "statsFrom",
        "m",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final client:Lcom/hermes/android/mesh/MeshClient;

.field private final crypto:Lcom/hermes/android/handoff/HandoffCrypto;

.field private final dir:Ljava/io/File;

.field private final discovery:Lcom/hermes/android/handoff/HandoffDiscovery;

.field private final exporter:Lcom/hermes/android/handoff/HandoffExporter;

.field private final identity$delegate:Lkotlin/Lazy;

.field private final identityStore:Lcom/hermes/android/handoff/HandoffIdentityStore;

.field private final importer:Lcom/hermes/android/handoff/HandoffImporter;

.field private final peers:Lcom/hermes/android/handoff/HandoffPeerStore;


# direct methods
.method public static synthetic $r8$lambda$U29tvAP_-fDBcpCkYxxofHIrNdY(Lcom/hermes/android/handoff/HandoffController;)Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/handoff/HandoffController;->identity_delegate$lambda$0(Lcom/hermes/android/handoff/HandoffController;)Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hermes/android/BootstrapManager;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bootstrap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/hermes/android/handoff/HandoffCrypto;

    new-instance v1, Lcom/goterl/lazysodium/LazySodiumAndroid;

    new-instance v2, Lcom/goterl/lazysodium/SodiumAndroid;

    invoke-direct {v2}, Lcom/goterl/lazysodium/SodiumAndroid;-><init>()V

    invoke-direct {v1, v2}, Lcom/goterl/lazysodium/LazySodiumAndroid;-><init>(Lcom/goterl/lazysodium/SodiumAndroid;)V

    check-cast v1, Lcom/goterl/lazysodium/LazySodium;

    invoke-direct {v0, v1}, Lcom/hermes/android/handoff/HandoffCrypto;-><init>(Lcom/goterl/lazysodium/LazySodium;)V

    iput-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    .line 22
    sget-object v1, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    invoke-virtual {v1, p1}, Lcom/hermes/android/HermesPaths;->meshDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/hermes/android/handoff/HandoffController;->dir:Ljava/io/File;

    .line 23
    new-instance v2, Lcom/hermes/android/handoff/HandoffIdentityStore;

    new-instance v3, Ljava/io/File;

    const-string v4, "id.key"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lcom/hermes/android/handoff/HandoffIdentityStore;-><init>(Ljava/io/File;Lcom/hermes/android/handoff/HandoffCrypto;)V

    iput-object v2, p0, Lcom/hermes/android/handoff/HandoffController;->identityStore:Lcom/hermes/android/handoff/HandoffIdentityStore;

    .line 24
    new-instance v2, Lcom/hermes/android/mesh/MeshClient;

    invoke-direct {v2, v0}, Lcom/hermes/android/mesh/MeshClient;-><init>(Lcom/hermes/android/handoff/HandoffCrypto;)V

    iput-object v2, p0, Lcom/hermes/android/handoff/HandoffController;->client:Lcom/hermes/android/mesh/MeshClient;

    .line 25
    new-instance v0, Lcom/hermes/android/handoff/HandoffImporter;

    invoke-direct {v0, p1, p2}, Lcom/hermes/android/handoff/HandoffImporter;-><init>(Landroid/content/Context;Lcom/hermes/android/BootstrapManager;)V

    iput-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->importer:Lcom/hermes/android/handoff/HandoffImporter;

    .line 26
    new-instance v0, Lcom/hermes/android/handoff/HandoffExporter;

    invoke-direct {v0, p1, p2}, Lcom/hermes/android/handoff/HandoffExporter;-><init>(Landroid/content/Context;Lcom/hermes/android/BootstrapManager;)V

    iput-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->exporter:Lcom/hermes/android/handoff/HandoffExporter;

    .line 27
    new-instance p2, Lcom/hermes/android/handoff/HandoffDiscovery;

    invoke-direct {p2, p1}, Lcom/hermes/android/handoff/HandoffDiscovery;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hermes/android/handoff/HandoffController;->discovery:Lcom/hermes/android/handoff/HandoffDiscovery;

    .line 28
    new-instance p1, Lcom/hermes/android/handoff/HandoffPeerStore;

    new-instance p2, Ljava/io/File;

    const-string v0, "peers.json"

    invoke-direct {p2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/hermes/android/handoff/HandoffPeerStore;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    .line 31
    new-instance p1, Lcom/hermes/android/handoff/HandoffController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/hermes/android/handoff/HandoffController$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/handoff/HandoffController;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffController;->identity$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final firstReachable(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    :try_start_0
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 164
    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no reachable host"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    :goto_1
    throw v1
.end method

.method private static final identity_delegate$lambda$0(Lcom/hermes/android/handoff/HandoffController;)Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/hermes/android/handoff/HandoffController;->identityStore:Lcom/hermes/android/handoff/HandoffIdentityStore;

    invoke-virtual {p0}, Lcom/hermes/android/handoff/HandoffIdentityStore;->loadOrCreate()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object p0

    return-object p0
.end method

.method private final pull(Ljava/lang/String;ILcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Ljava/lang/String;)[B
    .locals 10

    .line 85
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->client:Lcom/hermes/android/mesh/MeshClient;

    .line 87
    invoke-virtual {p0}, Lcom/hermes/android/handoff/HandoffController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/hermes/android/handoff/HandoffController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B

    move-result-object v4

    .line 88
    invoke-virtual {p3}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v5

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move-object v6, p4

    .line 85
    invoke-static/range {v0 .. v9}, Lcom/hermes/android/mesh/MeshClient;->pull$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BLjava/lang/String;IILjava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method private final push(Ljava/lang/String;ILcom/hermes/android/handoff/HandoffCrypto$PeerInfo;[B)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->client:Lcom/hermes/android/mesh/MeshClient;

    .line 118
    invoke-virtual {p0}, Lcom/hermes/android/handoff/HandoffController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/hermes/android/handoff/HandoffController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B

    move-result-object v4

    .line 119
    invoke-virtual {p3}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v5

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move-object v6, p4

    .line 116
    invoke-static/range {v0 .. v9}, Lcom/hermes/android/mesh/MeshClient;->pushSession$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[B[BIILjava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final statsFrom(Ljava/util/Map;)Lcom/hermes/android/handoff/HandoffImporter$Stats;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/hermes/android/handoff/HandoffImporter$Stats;"
        }
    .end annotation

    .line 124
    new-instance v8, Lcom/hermes/android/handoff/HandoffImporter$Stats;

    .line 125
    const-string v0, "sessions_added"

    invoke-static {p1, v0}, Lcom/hermes/android/handoff/HandoffController;->statsFrom$i(Ljava/util/Map;Ljava/lang/String;)I

    move-result v1

    const-string v0, "sessions_existing"

    invoke-static {p1, v0}, Lcom/hermes/android/handoff/HandoffController;->statsFrom$i(Ljava/util/Map;Ljava/lang/String;)I

    move-result v2

    .line 126
    const-string v0, "messages_added"

    invoke-static {p1, v0}, Lcom/hermes/android/handoff/HandoffController;->statsFrom$i(Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    const-string v0, "messages_skipped"

    invoke-static {p1, v0}, Lcom/hermes/android/handoff/HandoffController;->statsFrom$i(Ljava/util/Map;Ljava/lang/String;)I

    move-result v4

    .line 127
    const-string v0, "mem_added"

    invoke-static {p1, v0}, Lcom/hermes/android/handoff/HandoffController;->statsFrom$i(Ljava/util/Map;Ljava/lang/String;)I

    move-result v5

    const-string v0, "mem_merged"

    invoke-static {p1, v0}, Lcom/hermes/android/handoff/HandoffController;->statsFrom$i(Ljava/util/Map;Ljava/lang/String;)I

    move-result v6

    const-string v0, "mem_unchanged"

    invoke-static {p1, v0}, Lcom/hermes/android/handoff/HandoffController;->statsFrom$i(Ljava/util/Map;Ljava/lang/String;)I

    move-result v7

    move-object v0, v8

    .line 124
    invoke-direct/range {v0 .. v7}, Lcom/hermes/android/handoff/HandoffImporter$Stats;-><init>(IIIIIII)V

    return-object v8
.end method

.method private static final statsFrom$i(Ljava/util/Map;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 123
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->identity$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    return-object v0
.end method

.method public final getPeers()Lcom/hermes/android/handoff/HandoffPeerStore;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    return-object v0
.end method

.method public final pairFromQr(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    .locals 11

    const-string v0, "qrJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    invoke-virtual {v0, p1}, Lcom/hermes/android/handoff/HandoffCrypto;->parseQr(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object p1

    .line 132
    sget-object v0, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 137
    :try_start_0
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v4

    .line 44
    iget-object v2, p0, Lcom/hermes/android/handoff/HandoffController;->client:Lcom/hermes/android/mesh/MeshClient;

    invoke-virtual {p0}, Lcom/hermes/android/handoff/HandoffController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B

    move-result-object v5

    invoke-virtual {p0}, Lcom/hermes/android/handoff/HandoffController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v7

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lcom/hermes/android/mesh/MeshClient;->pair$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BIILjava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    invoke-virtual {v0, p1}, Lcom/hermes/android/handoff/HandoffPeerStore;->add(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;)V

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 142
    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "no reachable host"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    :goto_1
    throw v1
.end method

.method public final receive(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;)Lcom/hermes/android/handoff/HandoffImporter$Stats;
    .locals 11

    const-string v0, "peer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 144
    :try_start_0
    sget-object v1, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :try_start_1
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v3

    .line 61
    invoke-direct {p0, v2, v3, p1, v0}, Lcom/hermes/android/handoff/HandoffController;->pull(Ljava/lang/String;ILcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 154
    :try_start_2
    check-cast v2, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "no reachable host"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/Throwable;

    :goto_1
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 64
    :catch_1
    iget-object v3, p0, Lcom/hermes/android/handoff/HandoffController;->discovery:Lcom/hermes/android/handoff/HandoffDiscovery;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/hermes/android/handoff/HandoffDiscovery;->resolveByDeviceId$default(Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;JILjava/lang/Object;)Lcom/hermes/android/handoff/HandoffDiscovery$Addr;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffDiscovery$Addr;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffDiscovery$Addr;->getPort()I

    move-result v1

    invoke-direct {p0, v2, v1, p1, v0}, Lcom/hermes/android/handoff/HandoffController;->pull(Ljava/lang/String;ILcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Ljava/lang/String;)[B

    move-result-object p1

    .line 70
    :goto_2
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->importer:Lcom/hermes/android/handoff/HandoffImporter;

    invoke-virtual {v0, p1}, Lcom/hermes/android/handoff/HandoffImporter;->importBundle([B)Lcom/hermes/android/handoff/HandoffImporter$Stats;

    move-result-object p1

    return-object p1

    .line 65
    :cond_2
    new-instance v0, Lcom/hermes/android/handoff/HandoffImporter$ImportException;

    .line 66
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "desktop unreachable ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mDNS lookup failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    sget v2, Lcom/hermes/android/R$string;->handoff_err_unreachable:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v4, v3

    .line 65
    invoke-direct {v0, v1, v2, v4}, Lcom/hermes/android/handoff/HandoffImporter$ImportException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw v0

    .line 57
    :cond_3
    new-instance p1, Lcom/hermes/android/handoff/HandoffImporter$ImportException;

    .line 58
    sget v7, Lcom/hermes/android/R$string;->handoff_err_qr_no_session:I

    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 57
    const-string v6, "QR carries no session id (use the desktop\'s send-to-phone QR)"

    const/4 v8, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/hermes/android/handoff/HandoffImporter$ImportException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final syncBack()Lcom/hermes/android/handoff/HandoffImporter$Stats;
    .locals 12

    .line 97
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffPeerStore;->all()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    if-eqz v0, :cond_3

    .line 100
    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffController;->exporter:Lcom/hermes/android/handoff/HandoffExporter;

    invoke-virtual {p0}, Lcom/hermes/android/handoff/HandoffController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hermes/android/handoff/HandoffExporter;->exportAll(Ljava/lang/String;)[B

    move-result-object v1

    .line 165
    :try_start_0
    sget-object v2, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 167
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :try_start_1
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v4

    .line 103
    invoke-direct {p0, v3, v4, v0, v1}, Lcom/hermes/android/handoff/HandoffController;->push(Ljava/lang/String;ILcom/hermes/android/handoff/HandoffCrypto$PeerInfo;[B)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    .line 175
    :try_start_2
    check-cast v3, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "no reachable host"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :goto_1
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    :catch_1
    iget-object v4, p0, Lcom/hermes/android/handoff/HandoffController;->discovery:Lcom/hermes/android/handoff/HandoffDiscovery;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/hermes/android/handoff/HandoffDiscovery;->resolveByDeviceId$default(Lcom/hermes/android/handoff/HandoffDiscovery;Ljava/lang/String;JILjava/lang/Object;)Lcom/hermes/android/handoff/HandoffDiscovery$Addr;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {v2}, Lcom/hermes/android/handoff/HandoffDiscovery$Addr;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/hermes/android/handoff/HandoffDiscovery$Addr;->getPort()I

    move-result v2

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/hermes/android/handoff/HandoffController;->push(Ljava/lang/String;ILcom/hermes/android/handoff/HandoffCrypto$PeerInfo;[B)Ljava/util/Map;

    move-result-object v0

    .line 112
    :goto_2
    invoke-direct {p0, v0}, Lcom/hermes/android/handoff/HandoffController;->statsFrom(Ljava/util/Map;)Lcom/hermes/android/handoff/HandoffImporter$Stats;

    move-result-object v0

    return-object v0

    .line 107
    :cond_2
    new-instance v1, Lcom/hermes/android/handoff/HandoffImporter$ImportException;

    .line 108
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "desktop unreachable ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mDNS lookup failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    sget v3, Lcom/hermes/android/R$string;->handoff_err_unreachable:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v5, v4

    .line 107
    invoke-direct {v1, v2, v3, v5}, Lcom/hermes/android/handoff/HandoffImporter$ImportException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw v1

    .line 98
    :cond_3
    new-instance v0, Lcom/hermes/android/handoff/HandoffImporter$ImportException;

    .line 99
    sget v8, Lcom/hermes/android/R$string;->handoff_err_not_paired:I

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 98
    const-string v7, "no desktop paired"

    const/4 v9, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/hermes/android/handoff/HandoffImporter$ImportException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
