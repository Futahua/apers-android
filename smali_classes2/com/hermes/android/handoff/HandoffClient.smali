.class public final Lcom/hermes/android/handoff/HandoffClient;
.super Ljava/lang/Object;
.source "HandoffClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/handoff/HandoffClient$Companion;,
        Lcom/hermes/android/handoff/HandoffClient$HandoffException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JL\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000bJ@\u0010\u0012\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/hermes/android/handoff/HandoffClient;",
        "",
        "crypto",
        "Lcom/hermes/android/handoff/HandoffCrypto;",
        "<init>",
        "(Lcom/hermes/android/handoff/HandoffCrypto;)V",
        "pullSession",
        "",
        "",
        "host",
        "port",
        "",
        "mySecretKey",
        "",
        "myPublicKey",
        "serverPublicKey",
        "sessionId",
        "timeoutMs",
        "pullSessionRaw",
        "HandoffException",
        "Companion",
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

.field public static final Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

.field public static final MAX_FRAME:I = 0x4000000


# instance fields
.field private final crypto:Lcom/hermes/android/handoff/HandoffCrypto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/handoff/HandoffClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/handoff/HandoffClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/handoff/HandoffClient;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/handoff/HandoffCrypto;)V
    .locals 1

    const-string v0, "crypto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    return-void
.end method

.method public static synthetic pullSession$default(Lcom/hermes/android/handoff/HandoffClient;Ljava/lang/String;I[B[B[BLjava/lang/String;IILjava/lang/Object;)Ljava/util/Map;
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x3a98

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 23
    invoke-virtual/range {v1 .. v8}, Lcom/hermes/android/handoff/HandoffClient;->pullSession(Ljava/lang/String;I[B[B[BLjava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic pullSessionRaw$default(Lcom/hermes/android/handoff/HandoffClient;Ljava/lang/String;I[B[B[BLjava/lang/String;IILjava/lang/Object;)[B
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x3a98

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 41
    invoke-virtual/range {v1 .. v8}, Lcom/hermes/android/handoff/HandoffClient;->pullSessionRaw(Ljava/lang/String;I[B[B[BLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final pullSession(Ljava/lang/String;I[B[B[BLjava/lang/String;I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B[B[B",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mySecretKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "myPublicKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverPublicKey"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual/range {p0 .. p7}, Lcom/hermes/android/handoff/HandoffClient;->pullSessionRaw(Ljava/lang/String;I[B[B[BLjava/lang/String;I)[B

    move-result-object p1

    .line 31
    new-instance p2, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {p2}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    new-instance p3, Ljava/lang/String;

    sget-object p4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p1, p4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p3}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    return-object p1

    .line 32
    :cond_0
    new-instance p1, Lcom/hermes/android/handoff/HandoffClient$HandoffException;

    const-string p2, "bundle \u89e3\u6790\u5931\u6557"

    invoke-direct {p1, p2}, Lcom/hermes/android/handoff/HandoffClient$HandoffException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final pullSessionRaw(Ljava/lang/String;I[B[B[BLjava/lang/String;I)[B
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    const-string v7, "ok"

    const-string v8, "getBytes(...)"

    const-string v9, "\u8acb\u6c42\u5931\u6557\uff1a"

    const-string v10, "\u63e1\u624b\u88ab\u62d2\uff1a"

    const-string v11, "host"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "mySecretKey"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "myPublicKey"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "serverPublicKey"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "sessionId"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v11, Ljava/net/Socket;

    invoke-direct {v11}, Ljava/net/Socket;-><init>()V

    check-cast v11, Ljava/io/Closeable;

    :try_start_0
    move-object v12, v11

    check-cast v12, Ljava/net/Socket;

    .line 48
    new-instance v13, Ljava/net/InetSocketAddress;

    move/from16 v14, p2

    invoke-direct {v13, v0, v14}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v13, Ljava/net/SocketAddress;

    invoke-virtual {v12, v13, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 49
    invoke-virtual {v12, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 50
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v12}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 51
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v12}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 54
    sget-object v12, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    invoke-virtual {v12, v3}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->deviceIdFor([B)Ljava/lang/String;

    move-result-object v12

    .line 55
    sget-object v13, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    sget-object v14, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    invoke-virtual {v14, v3}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->b64UrlEncode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v12, v3}, Lcom/hermes/android/handoff/HandoffClient$Companion;->helloJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v13, v0, v3}, Lcom/hermes/android/handoff/HandoffClient$Companion;->sendFrame(Ljava/io/DataOutputStream;[B)V

    const/4 v3, 0x2

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 57
    invoke-static {v13, v6, v12, v3, v14}, Lcom/hermes/android/handoff/HandoffClient$Companion;->recvFrame$default(Lcom/hermes/android/handoff/HandoffClient$Companion;Ljava/io/DataInputStream;IILjava/lang/Object;)[B

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/hermes/android/handoff/HandoffClient$Companion;->parseJson([B)Ljava/util/Map;

    move-result-object v15

    .line 58
    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "unknown"

    const-string v14, "err"

    if-nez v3, :cond_1

    :try_start_1
    new-instance v0, Lcom/hermes/android/handoff/HandoffClient$HandoffException;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/hermes/android/handoff/HandoffClient$HandoffException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    invoke-virtual {v13, v5}, Lcom/hermes/android/handoff/HandoffClient$Companion;->sessionRequestJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v5, v1, Lcom/hermes/android/handoff/HandoffClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    invoke-virtual {v5, v2, v4, v3}, Lcom/hermes/android/handoff/HandoffCrypto;->boxEncrypt([B[B[B)[B

    move-result-object v3

    invoke-virtual {v13, v0, v3}, Lcom/hermes/android/handoff/HandoffClient$Companion;->sendFrame(Ljava/io/DataOutputStream;[B)V

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 63
    invoke-static {v13, v6, v3, v0, v5}, Lcom/hermes/android/handoff/HandoffClient$Companion;->recvFrame$default(Lcom/hermes/android/handoff/HandoffClient$Companion;Ljava/io/DataInputStream;IILjava/lang/Object;)[B

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/hermes/android/handoff/HandoffClient$Companion;->parseJson([B)Ljava/util/Map;

    move-result-object v0

    .line 64
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v2, Lcom/hermes/android/handoff/HandoffClient$HandoffException;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v12, v0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/hermes/android/handoff/HandoffClient$HandoffException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-static {v13, v6, v3, v0, v5}, Lcom/hermes/android/handoff/HandoffClient$Companion;->recvFrame$default(Lcom/hermes/android/handoff/HandoffClient$Companion;Ljava/io/DataInputStream;IILjava/lang/Object;)[B

    move-result-object v0

    .line 68
    iget-object v3, v1, Lcom/hermes/android/handoff/HandoffClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    invoke-virtual {v3, v2, v4, v0}, Lcom/hermes/android/handoff/HandoffCrypto;->boxDecrypt([B[B[B)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    invoke-static {v11, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 69
    :cond_4
    :try_start_2
    new-instance v0, Lcom/hermes/android/handoff/HandoffClient$HandoffException;

    const-string v2, "bundle \u89e3\u5bc6\u5931\u6557\uff08\u7ac4\u6539\u6216\u975e\u767b\u8a18 server\uff09"

    invoke-direct {v0, v2}, Lcom/hermes/android/handoff/HandoffClient$HandoffException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 68
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method
