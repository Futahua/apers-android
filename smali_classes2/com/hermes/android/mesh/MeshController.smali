.class public final Lcom/hermes/android/mesh/MeshController;
.super Ljava/lang/Object;
.source "MeshController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeshController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeshController.kt\ncom/hermes/android/mesh/MeshController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 HostFailover.kt\ncom/hermes/android/mesh/HostFailover\n*L\n1#1,109:1\n57#1,6:120\n63#1,3:127\n66#1,2:139\n54#1,9:141\n63#1,3:151\n66#1,2:163\n54#1,9:165\n63#1,3:175\n66#1,2:187\n54#1,9:189\n63#1,3:199\n66#1,2:211\n1#2:110\n1#2:126\n1#2:150\n1#2:174\n1#2:198\n17#3,9:111\n17#3,9:130\n17#3,9:154\n17#3,9:178\n17#3,9:202\n*S KotlinDebug\n*F\n+ 1 MeshController.kt\ncom/hermes/android/mesh/MeshController\n*L\n78#1:120,6\n78#1:127,3\n78#1:139,2\n88#1:141,9\n88#1:151,3\n88#1:163,2\n96#1:165,9\n96#1:175,3\n96#1:187,2\n104#1:189,9\n104#1:199,3\n104#1:211,2\n78#1:126\n88#1:150\n96#1:174\n104#1:198\n65#1:111,9\n78#1:130,9\n88#1:154,9\n96#1:178,9\n104#1:202,9\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019JI\u0010 \u001a\u0002H!\"\u0004\u0008\u0000\u0010!2\u0006\u0010\"\u001a\u00020\u00192\u0008\u0008\u0002\u0010#\u001a\u00020\u001b2!\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\u001f\u00a2\u0006\u000c\u0008&\u0012\u0008\u0008\'\u0012\u0004\u0008\u0008((\u0012\u0004\u0012\u0002H!0%H\u0082\u0008\u00a2\u0006\u0002\u0010)J\u000e\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u001fJ\u000e\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u001fJ\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u0002000/J\u0014\u00101\u001a\u0002022\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001f0/R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u001a\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001cR\u001c\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/hermes/android/mesh/MeshController;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "crypto",
        "Lcom/hermes/android/handoff/HandoffCrypto;",
        "dir",
        "Ljava/io/File;",
        "identityStore",
        "Lcom/hermes/android/handoff/HandoffIdentityStore;",
        "client",
        "Lcom/hermes/android/mesh/MeshClient;",
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
        "broker",
        "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
        "isPaired",
        "",
        "()Z",
        "lastGood",
        "Lkotlin/Pair;",
        "",
        "withFailover",
        "T",
        "b",
        "useLastGood",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "host",
        "(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "pairFromQr",
        "qrJson",
        "dispatch",
        "prompt",
        "poll",
        "",
        "Lcom/hermes/android/mesh/MeshClient$Result;",
        "ack",
        "",
        "ids",
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

.field private final identity$delegate:Lkotlin/Lazy;

.field private final identityStore:Lcom/hermes/android/handoff/HandoffIdentityStore;

.field private volatile lastGood:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final peers:Lcom/hermes/android/handoff/HandoffPeerStore;


# direct methods
.method public static synthetic $r8$lambda$JyQFxgXmf4sqomCXkKVj6u-proU(Lcom/hermes/android/mesh/MeshController;)Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/mesh/MeshController;->identity_delegate$lambda$0(Lcom/hermes/android/mesh/MeshController;)Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/hermes/android/handoff/HandoffCrypto;

    new-instance v1, Lcom/goterl/lazysodium/LazySodiumAndroid;

    new-instance v2, Lcom/goterl/lazysodium/SodiumAndroid;

    invoke-direct {v2}, Lcom/goterl/lazysodium/SodiumAndroid;-><init>()V

    invoke-direct {v1, v2}, Lcom/goterl/lazysodium/LazySodiumAndroid;-><init>(Lcom/goterl/lazysodium/SodiumAndroid;)V

    check-cast v1, Lcom/goterl/lazysodium/LazySodium;

    invoke-direct {v0, v1}, Lcom/hermes/android/handoff/HandoffCrypto;-><init>(Lcom/goterl/lazysodium/LazySodium;)V

    iput-object v0, p0, Lcom/hermes/android/mesh/MeshController;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    .line 24
    sget-object v1, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    invoke-virtual {v1, p1}, Lcom/hermes/android/HermesPaths;->meshDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/mesh/MeshController;->dir:Ljava/io/File;

    .line 25
    new-instance v1, Lcom/hermes/android/handoff/HandoffIdentityStore;

    new-instance v2, Ljava/io/File;

    const-string v3, "id.key"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/hermes/android/handoff/HandoffIdentityStore;-><init>(Ljava/io/File;Lcom/hermes/android/handoff/HandoffCrypto;)V

    iput-object v1, p0, Lcom/hermes/android/mesh/MeshController;->identityStore:Lcom/hermes/android/handoff/HandoffIdentityStore;

    .line 26
    new-instance v1, Lcom/hermes/android/mesh/MeshClient;

    invoke-direct {v1, v0}, Lcom/hermes/android/mesh/MeshClient;-><init>(Lcom/hermes/android/handoff/HandoffCrypto;)V

    iput-object v1, p0, Lcom/hermes/android/mesh/MeshController;->client:Lcom/hermes/android/mesh/MeshClient;

    .line 27
    new-instance v0, Lcom/hermes/android/handoff/HandoffPeerStore;

    new-instance v1, Ljava/io/File;

    const-string v2, "peers.json"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/hermes/android/handoff/HandoffPeerStore;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/hermes/android/mesh/MeshController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    .line 30
    new-instance p1, Lcom/hermes/android/mesh/MeshController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/hermes/android/mesh/MeshController$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/mesh/MeshController;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/mesh/MeshController;->identity$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getLastGood$p(Lcom/hermes/android/mesh/MeshController;)Lkotlin/Pair;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/hermes/android/mesh/MeshController;->lastGood:Lkotlin/Pair;

    return-object p0
.end method

.method public static final synthetic access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/hermes/android/mesh/MeshController;->lastGood:Lkotlin/Pair;

    return-void
.end method

.method private static final identity_delegate$lambda$0(Lcom/hermes/android/mesh/MeshController;)Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/hermes/android/mesh/MeshController;->identityStore:Lcom/hermes/android/handoff/HandoffIdentityStore;

    invoke-virtual {p0}, Lcom/hermes/android/handoff/HandoffIdentityStore;->loadOrCreate()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object p0

    return-object p0
.end method

.method private final withFailover(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 60
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p2, :cond_0

    .line 62
    invoke-static {p0}, Lcom/hermes/android/mesh/MeshController;->access$getLastGood$p(Lcom/hermes/android/mesh/MeshController;)Lkotlin/Pair;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 65
    sget-object p2, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 112
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    :try_start_0
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hermes/android/mesh/MeshController;->access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V

    :cond_1
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 119
    check-cast v0, Ljava/lang/Throwable;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "no reachable host"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    :goto_1
    throw v0
.end method

.method static synthetic withFailover$default(Lcom/hermes/android/mesh/MeshController;Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 57
    :cond_0
    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object p5

    check-cast p5, Ljava/util/Collection;

    invoke-virtual {p4, p5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 60
    new-instance p5, Ljava/util/LinkedHashSet;

    invoke-direct {p5}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz p2, :cond_1

    .line 62
    invoke-static {p0}, Lcom/hermes/android/mesh/MeshController;->access$getLastGood$p(Lcom/hermes/android/mesh/MeshController;)Lkotlin/Pair;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4, p2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p5, p2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p5, p4}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 65
    sget-object p2, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    check-cast p5, Ljava/lang/Iterable;

    invoke-static {p5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    .line 112
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 65
    :try_start_0
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hermes/android/mesh/MeshController;->access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V

    :cond_2
    return-object p2

    :catch_0
    move-exception p4

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    .line 119
    check-cast p4, Ljava/lang/Throwable;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no reachable host"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object p4, p0

    check-cast p4, Ljava/lang/Throwable;

    :goto_1
    throw p4
.end method


# virtual methods
.method public final ack(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->broker()Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 193
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 195
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 197
    invoke-static {p0}, Lcom/hermes/android/mesh/MeshController;->access$getLastGood$p(Lcom/hermes/android/mesh/MeshController;)Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_1
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 201
    sget-object v1, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 203
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/hermes/android/mesh/MeshController;->client:Lcom/hermes/android/mesh/MeshClient;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v5

    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v8

    const/16 v11, 0x40

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    move-object v9, p1

    invoke-static/range {v3 .. v12}, Lcom/hermes/android/mesh/MeshClient;->ack$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BLjava/util/List;IILjava/lang/Object;)V

    .line 106
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 211
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hermes/android/mesh/MeshController;->access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V

    :cond_2
    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 210
    check-cast v2, Ljava/lang/Throwable;

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "no reachable host"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    :goto_1
    throw v2
.end method

.method public final ack(Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;)V"
        }
    .end annotation

    const-string v0, "ids"
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    invoke-virtual {p0, p2}, Lcom/hermes/android/mesh/MeshController;->brokerFor(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    move-result-object v0
    if-nez v0, :cond_a0
    return-void

    :cond_a0
    new-instance v1, Ljava/util/LinkedHashSet;
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;
    move-result-object v2
    check-cast v2, Ljava/util/Collection;
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    new-instance v2, Ljava/util/LinkedHashSet;
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V
    invoke-static {p0}, Lcom/hermes/android/mesh/MeshController;->access$getLastGood$p(Lcom/hermes/android/mesh/MeshController;)Lkotlin/Pair;
    move-result-object v3
    if-eqz v3, :cond_a1
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_a1
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_a1
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_a1
    check-cast v1, Ljava/util/Collection;
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    sget-object v1, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;
    check-cast v2, Ljava/lang/Iterable;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    const/4 v2, 0x0

    :goto_a0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :cond_a3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    :try_start_a0
    iget-object v3, p0, Lcom/hermes/android/mesh/MeshController;->client:Lcom/hermes/android/mesh/MeshClient;
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I
    move-result v5
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    move-result-object v4
    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B
    move-result-object v6
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    move-result-object v4
    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B
    move-result-object v7
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B
    move-result-object v8
    const/16 v11, 0x40
    const/4 v12, 0x0
    const/4 v10, 0x0
    move-object v4, v2
    move-object v9, p1
    invoke-static/range {v3 .. v12}, Lcom/hermes/android/mesh/MeshClient;->ack$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BLjava/util/List;IILjava/lang/Object;)V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a0} :catch_a0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    if-eqz v2, :cond_a2
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;
    move-result-object p1
    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    move-result-object p1
    invoke-static {p0, p1}, Lcom/hermes/android/mesh/MeshController;->access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V
    :cond_a2
    return-void
    :catch_a0
    move-exception v2
    goto :goto_a0
    :cond_a3
    if-eqz v2, :cond_a4
    check-cast v2, Ljava/lang/Throwable;
    goto :goto_a1
    :cond_a4
    new-instance p1, Ljava/io/IOException;
    const-string v0, "no reachable host"
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    move-object v2, p1
    check-cast v2, Ljava/lang/Throwable;
    :goto_a1
    throw v2
.end method

.method public final broker()Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/hermes/android/mesh/MeshController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffPeerStore;->all()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    return-object v0
.end method

.method public final brokerFor(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    .locals 1

    if-eqz p1, :cond_bf_broker

    iget-object v0, p0, Lcom/hermes/android/mesh/MeshController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    invoke-virtual {v0, p1}, Lcom/hermes/android/handoff/HandoffPeerStore;->get(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object v0

    return-object v0

    :cond_bf_broker
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->broker()Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object v0

    return-object v0
.end method

.method public final dispatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "prompt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->broker()Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 144
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 145
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 147
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 149
    invoke-static {p0}, Lcom/hermes/android/mesh/MeshController;->access$getLastGood$p(Lcom/hermes/android/mesh/MeshController;)Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 153
    sget-object v1, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    :try_start_0
    iget-object v3, p0, Lcom/hermes/android/mesh/MeshController;->client:Lcom/hermes/android/mesh/MeshClient;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v5

    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v8

    const/16 v11, 0x40

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    move-object v9, p1

    invoke-static/range {v3 .. v12}, Lcom/hermes/android/mesh/MeshClient;->push$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BLjava/lang/String;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hermes/android/mesh/MeshController;->access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V

    :cond_1
    return-object p1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 162
    check-cast v2, Ljava/lang/Throwable;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "no reachable host"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    :goto_1
    throw v2

    .line 87
    :cond_4
    new-instance p1, Lcom/hermes/android/mesh/MeshClient$MeshException;

    sget v5, Lcom/hermes/android/R$string;->mesh_err_not_linked:I

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "no computer linked"

    const/4 v6, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final dispatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "prompt"
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/hermes/android/mesh/MeshController;->brokerFor(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    move-result-object v0
    if-eqz v0, :cond_d4

    new-instance v1, Ljava/util/LinkedHashSet;
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;
    move-result-object v2
    check-cast v2, Ljava/util/Collection;
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/LinkedHashSet;
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V
    invoke-static {p0}, Lcom/hermes/android/mesh/MeshController;->access$getLastGood$p(Lcom/hermes/android/mesh/MeshController;)Lkotlin/Pair;
    move-result-object v3
    if-eqz v3, :cond_d0
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_d0
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_d0
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_d0
    check-cast v1, Ljava/util/Collection;
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    sget-object v1, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;
    check-cast v2, Ljava/lang/Iterable;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    const/4 v2, 0x0

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :cond_d2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    :try_start_d0
    iget-object v3, p0, Lcom/hermes/android/mesh/MeshController;->client:Lcom/hermes/android/mesh/MeshClient;
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I
    move-result v5
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    move-result-object v4
    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B
    move-result-object v6
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    move-result-object v4
    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B
    move-result-object v7
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B
    move-result-object v8
    const/16 v11, 0x40
    const/4 v12, 0x0
    const/4 v10, 0x0
    move-object v4, v2
    move-object v9, p1
    invoke-static/range {v3 .. v12}, Lcom/hermes/android/mesh/MeshClient;->push$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BLjava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    move-result-object p1
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d0} :catch_d0
    if-eqz v2, :cond_d1
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/hermes/android/mesh/MeshController;->access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V
    :cond_d1
    return-object p1
    :catch_d0
    move-exception v2
    goto :goto_d0
    :cond_d2
    if-eqz v2, :cond_d3
    check-cast v2, Ljava/lang/Throwable;
    goto :goto_d1
    :cond_d3
    new-instance p1, Ljava/io/IOException;
    const-string v0, "no reachable host"
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    move-object v2, p1
    check-cast v2, Ljava/lang/Throwable;
    :goto_d1
    throw v2
    :cond_d4
    new-instance p1, Lcom/hermes/android/mesh/MeshClient$MeshException;
    sget v5, Lcom/hermes/android/R$string;->mesh_err_not_linked:I
    const/4 v7, 0x4
    const/4 v8, 0x0
    const-string v4, "no computer linked"
    const/4 v6, 0x0
    move-object v3, p1
    invoke-direct/range {v3 .. v8}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    throw p1
.end method

.method public final getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/hermes/android/mesh/MeshController;->identity$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    return-object v0
.end method

.method public final getPeers()Lcom/hermes/android/handoff/HandoffPeerStore;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/hermes/android/mesh/MeshController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    return-object v0
.end method

.method public final peersJson()Ljava/lang/String;
    .locals 7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/hermes/android/mesh/MeshController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    invoke-virtual {v1}, Lcom/hermes/android/handoff/HandoffPeerStore;->all()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :loop_pj
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :done_pj

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "deviceId"

    invoke-virtual {v3}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "host"

    invoke-virtual {v3}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "port"

    invoke-virtual {v3}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :loop_pj

    :done_pj
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isPaired()Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->broker()Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPaired(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/hermes/android/mesh/MeshController;->brokerFor(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final poll(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;)",
            "Ljava/util/List<",
            "Lcom/hermes/android/mesh/MeshClient$Result;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hermes/android/mesh/MeshController;->brokerFor(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    move-result-object v0
    if-nez v0, :cond_p0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;
    move-result-object v0
    return-object v0

    :cond_p0
    new-instance v1, Ljava/util/LinkedHashSet;
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;
    move-result-object v2
    check-cast v2, Ljava/util/Collection;
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    new-instance v2, Ljava/util/LinkedHashSet;
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V
    invoke-static {p0}, Lcom/hermes/android/mesh/MeshController;->access$getLastGood$p(Lcom/hermes/android/mesh/MeshController;)Lkotlin/Pair;
    move-result-object v3
    if-eqz v3, :cond_p1
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;
    move-result-object v5
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_p1
    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :cond_p1
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_p1
    check-cast v1, Ljava/util/Collection;
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z
    sget-object v1, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;
    check-cast v2, Ljava/lang/Iterable;
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;
    move-result-object v1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    const/4 v2, 0x0

    :goto_p0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :cond_p3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
    :try_start_p0
    iget-object v3, p0, Lcom/hermes/android/mesh/MeshController;->client:Lcom/hermes/android/mesh/MeshClient;
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I
    move-result v5
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    move-result-object v4
    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B
    move-result-object v6
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    move-result-object v4
    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B
    move-result-object v7
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B
    move-result-object v8
    const/16 v10, 0x20
    const/4 v11, 0x0
    const/4 v9, 0x0
    move-object v4, v2
    invoke-static/range {v3 .. v11}, Lcom/hermes/android/mesh/MeshClient;->poll$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BIILjava/lang/Object;)Ljava/util/List;
    move-result-object v1
    :try_end_p0
    .catch Ljava/io/IOException; {:try_start_p0 .. :try_end_p0} :catch_p0
    if-eqz v2, :cond_p2
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    move-result-object v0
    invoke-static {p0, v0}, Lcom/hermes/android/mesh/MeshController;->access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V
    :cond_p2
    return-object v1
    :catch_p0
    move-exception v2
    goto :goto_p0
    :cond_p3
    if-eqz v2, :cond_p4
    check-cast v2, Ljava/lang/Throwable;
    goto :goto_p1
    :cond_p4
    new-instance v0, Ljava/io/IOException;
    const-string v1, "no reachable host"
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    move-object v2, v0
    check-cast v2, Ljava/lang/Throwable;
    :goto_p1
    throw v2
.end method

.method public final pairFromQr(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    .locals 11

    const-string v0, "qrJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/hermes/android/mesh/MeshController;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    invoke-virtual {v0, p1}, Lcom/hermes/android/handoff/HandoffCrypto;->parseQr(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object p1

    .line 120
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 123
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 127
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 129
    sget-object v0, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/hermes/android/mesh/MeshController;->client:Lcom/hermes/android/mesh/MeshClient;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v4

    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B

    move-result-object v5

    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v7

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-static/range {v2 .. v10}, Lcom/hermes/android/mesh/MeshClient;->pair$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BIILjava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hermes/android/mesh/MeshController;->access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/mesh/MeshController;->peers:Lcom/hermes/android/handoff/HandoffPeerStore;

    invoke-virtual {v0, p1}, Lcom/hermes/android/handoff/HandoffPeerStore;->add(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;)V

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 138
    check-cast v1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "no reachable host"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    :goto_1
    throw v1
.end method

.method public final poll()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/mesh/MeshClient$Result;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->broker()Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 169
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 171
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 173
    invoke-static {p0}, Lcom/hermes/android/mesh/MeshController;->access$getLastGood$p(Lcom/hermes/android/mesh/MeshController;)Lkotlin/Pair;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1
    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 177
    sget-object v1, Lcom/hermes/android/mesh/HostFailover;->INSTANCE:Lcom/hermes/android/mesh/HostFailover;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/hermes/android/mesh/MeshController;->client:Lcom/hermes/android/mesh/MeshClient;

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v5

    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getSecretKey()[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/hermes/android/mesh/MeshController;->getIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->getPublicKey()[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v8

    const/16 v10, 0x20

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-static/range {v3 .. v11}, Lcom/hermes/android/mesh/MeshClient;->poll$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 187
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hermes/android/mesh/MeshController;->access$setLastGood$p(Lcom/hermes/android/mesh/MeshController;Lkotlin/Pair;)V

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 186
    check-cast v2, Ljava/lang/Throwable;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no reachable host"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    :goto_1
    throw v2
.end method
