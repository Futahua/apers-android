.class public final Lcom/hermes/android/handoff/HandoffPeerStore;
.super Ljava/lang/Object;
.source "HandoffPeerStore.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandoffPeerStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandoffPeerStore.kt\ncom/hermes/android/handoff/HandoffPeerStore\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1#2:99\n1#2:110\n1611#3,9:100\n1863#3:109\n1864#3:111\n1620#3:112\n1872#3,3:113\n*S KotlinDebug\n*F\n+ 1 HandoffPeerStore.kt\ncom/hermes/android/handoff/HandoffPeerStore\n*L\n39#1:110\n39#1:100,9\n39#1:109\n39#1:111\n39#1:112\n71#1:113,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u000e\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\u0008J\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0015J\u0008\u0010\u0016\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/hermes/android/handoff/HandoffPeerStore;",
        "",
        "file",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/io/File;)V",
        "peers",
        "",
        "",
        "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
        "load",
        "",
        "add",
        "peer",
        "get",
        "deviceId",
        "all",
        "",
        "isPaired",
        "",
        "publicKey",
        "",
        "save",
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
.field private final file:Ljava/io/File;

.field private final peers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$gbrWUYWBErMfCLp8Z8MPWXsAcDc(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/handoff/HandoffPeerStore;->save$lambda$4$lambda$3(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffPeerStore;->file:Ljava/io/File;

    .line 21
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffPeerStore;->peers:Ljava/util/Map;

    .line 24
    invoke-direct {p0}, Lcom/hermes/android/handoff/HandoffPeerStore;->load()V

    return-void
.end method

.method private final load()V
    .locals 16

    move-object/from16 v1, p0

    .line 29
    const-string v2, "null cannot be cast to non-null type kotlin.String"

    iget-object v0, v1, Lcom/hermes/android/handoff/HandoffPeerStore;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 31
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Lcom/hermes/android/handoff/HandoffPeerStore;

    new-instance v0, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    iget-object v4, v1, Lcom/hermes/android/handoff/HandoffPeerStore;->file:Ljava/io/File;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5, v3}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    :cond_1
    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    return-void

    .line 33
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 35
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v6, v1

    check-cast v6, Lcom/hermes/android/handoff/HandoffPeerStore;

    .line 36
    instance-of v6, v0, Ljava/util/Map;

    if-eqz v6, :cond_3

    check-cast v0, Ljava/util/Map;

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_4

    goto/16 :goto_7

    .line 37
    :cond_4
    sget-object v6, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    const-string v7, "pk"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->b64UrlDecode(Ljava/lang/String;)[B

    move-result-object v8

    .line 38
    array-length v6, v8

    const/16 v7, 0x20

    if-ne v6, v7, :cond_b

    sget-object v6, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    invoke-virtual {v6, v8}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->deviceIdFor([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_7

    .line 39
    :cond_5
    const-string v6, "alts"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/util/List;

    if-eqz v7, :cond_6

    check-cast v6, Ljava/util/List;

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_a

    check-cast v6, Ljava/lang/Iterable;

    .line 100
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 109
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 39
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_8

    check-cast v9, Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v9, v3

    :goto_5
    if-eqz v9, :cond_7

    .line 108
    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 112
    :cond_9
    check-cast v7, Ljava/util/List;

    move-object v12, v7

    goto :goto_6

    .line 39
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v12, v6

    .line 40
    :goto_6
    iget-object v15, v1, Lcom/hermes/android/handoff/HandoffPeerStore;->peers:Ljava/util/Map;

    new-instance v14, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    .line 42
    const-string v6, "host"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    const-string v6, "port"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v10

    const/16 v13, 0x10

    const/4 v0, 0x0

    const/4 v11, 0x0

    move-object v6, v14

    move-object v7, v5

    move-object v3, v14

    move-object v14, v0

    .line 40
    invoke-direct/range {v6 .. v14}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v15, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_b
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    return-void
.end method

.method private final save()V
    .locals 18

    move-object/from16 v1, p0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v2, v1, Lcom/hermes/android/handoff/HandoffPeerStore;->peers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 114
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "}"

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    .line 72
    const-string v7, ","

    if-lez v3, :cond_1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    sget-object v3, Lcom/hermes/android/handoff/HandoffJson;->INSTANCE:Lcom/hermes/android/handoff/HandoffJson;

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/hermes/android/handoff/HandoffJson;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ":{\"pk\":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    sget-object v8, Lcom/hermes/android/handoff/HandoffJson;->INSTANCE:Lcom/hermes/android/handoff/HandoffJson;

    sget-object v9, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->b64UrlEncode([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hermes/android/handoff/HandoffJson;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",\"host\":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    sget-object v8, Lcom/hermes/android/handoff/HandoffJson;->INSTANCE:Lcom/hermes/android/handoff/HandoffJson;

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hermes/android/handoff/HandoffJson;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 78
    const-string v3, "\"alts\":["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 79
    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getAlts()Ljava/util/List;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    move-object v10, v7

    check-cast v10, Ljava/lang/CharSequence;

    new-instance v15, Lcom/hermes/android/handoff/HandoffPeerStore$$ExternalSyntheticLambda0;

    invoke-direct {v15}, Lcom/hermes/android/handoff/HandoffPeerStore$$ExternalSyntheticLambda0;-><init>()V

    const/16 v16, 0x1e

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v17}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 80
    const-string v7, "],"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_2
    const-string v3, "\"port\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v6

    goto/16 :goto_0

    .line 84
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v2, v1, Lcom/hermes/android/handoff/HandoffPeerStore;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 87
    :cond_4
    iget-object v2, v1, Lcom/hermes/android/handoff/HandoffPeerStore;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, ".peers-"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 89
    :try_start_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "toString(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v2, v0, v4, v3, v4}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 90
    iget-object v0, v1, Lcom/hermes/android/handoff/HandoffPeerStore;->file:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/hermes/android/LocalizedIllegalState;

    .line 91
    const-string v4, "peers file rename failed"

    sget v5, Lcom/hermes/android/R$string;->handoff_err_peers_write:I

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    .line 90
    invoke-direct/range {v3 .. v8}, Lcom/hermes/android/LocalizedIllegalState;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 94
    throw v0
.end method

.method private static final save$lambda$4$lambda$3(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/hermes/android/handoff/HandoffJson;->INSTANCE:Lcom/hermes/android/handoff/HandoffJson;

    invoke-virtual {v0, p0}, Lcom/hermes/android/handoff/HandoffJson;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public final add(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;)V
    .locals 11

    const-string v0, "peer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 52
    sget-object v0, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->deviceIdFor([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffPeerStore;->peers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x2f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v10}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->copy$default(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/util/List;ILjava/lang/Object;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-direct {p0}, Lcom/hermes/android/handoff/HandoffPeerStore;->save()V

    return-void

    .line 52
    :cond_0
    new-instance p1, Lcom/hermes/android/LocalizedIllegalArgument;

    .line 53
    sget v4, Lcom/hermes/android/R$string;->handoff_err_qr_mismatch:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 52
    const-string v3, "device id does not match public key"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/hermes/android/LocalizedIllegalArgument;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 49
    :cond_1
    new-instance v0, Lcom/hermes/android/LocalizedIllegalArgument;

    .line 50
    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object v1

    array-length v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad public key length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    sget v2, Lcom/hermes/android/R$string;->handoff_err_qr_bad_pubkey:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 49
    invoke-direct {v0, v1, v2, v3}, Lcom/hermes/android/LocalizedIllegalArgument;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw v0
.end method

.method public final remove(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_rm0

    const/4 v0, 0x0

    return v0

    :cond_rm0
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffPeerStore;->peers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_rm1

    const/4 v0, 0x0

    return v0

    :cond_rm1
    invoke-direct {p0}, Lcom/hermes/android/handoff/HandoffPeerStore;->save()V

    const/4 v0, 0x1

    return v0
.end method

.method public final all()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffPeerStore;->peers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffPeerStore;->peers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    return-object p1
.end method

.method public final isPaired(Ljava/lang/String;[B)Z
    .locals 1

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffPeerStore;->peers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getPublicKey()[B

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method
