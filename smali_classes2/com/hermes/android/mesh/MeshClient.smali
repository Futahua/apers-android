.class public final Lcom/hermes/android/mesh/MeshClient;
.super Ljava/lang/Object;
.source "MeshClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/mesh/MeshClient$MeshException;,
        Lcom/hermes/android/mesh/MeshClient$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeshClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeshClient.kt\ncom/hermes/android/mesh/MeshClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,209:1\n190#1,4:210\n190#1,4:218\n190#1,4:222\n190#1,4:226\n1557#2:214\n1628#2,3:215\n*S KotlinDebug\n*F\n+ 1 MeshClient.kt\ncom/hermes/android/mesh/MeshClient\n*L\n80#1:210,4\n128#1:218,4\n158#1:222,4\n180#1:226,4\n93#1:214\n93#1:215,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0002)*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J8\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nJ@\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nJ>\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nJF\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00132\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nJ@\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nJL\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u001b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nJL\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u001b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\nH\u0002JF\u0010\u001f\u001a\u0002H \"\u0004\u0008\u0000\u0010 2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u0002H 0\"H\u0082\u0008\u00a2\u0006\u0002\u0010%J \u0010&\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020$2\u0006\u0010\r\u001a\u00020\u000cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/hermes/android/mesh/MeshClient;",
        "",
        "crypto",
        "Lcom/hermes/android/handoff/HandoffCrypto;",
        "<init>",
        "(Lcom/hermes/android/handoff/HandoffCrypto;)V",
        "pair",
        "",
        "host",
        "port",
        "",
        "mySk",
        "",
        "myPk",
        "brokerPk",
        "timeoutMs",
        "push",
        "prompt",
        "poll",
        "",
        "Lcom/hermes/android/mesh/MeshClient$Result;",
        "ack",
        "",
        "ids",
        "pull",
        "sessionId",
        "pushSession",
        "",
        "bundleJson",
        "plainOp",
        "reqJson",
        "connect",
        "T",
        "body",
        "Lkotlin/Function2;",
        "Ljava/io/DataOutputStream;",
        "Ljava/io/DataInputStream;",
        "(Ljava/lang/String;IILkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "handshake",
        "out",
        "ins",
        "MeshException",
        "Result",
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


# instance fields
.field private final crypto:Lcom/hermes/android/handoff/HandoffCrypto;


# direct methods
.method public static synthetic $r8$lambda$XyQRnI7X_ourqwOQZegYHX30_GA(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/mesh/MeshClient;->ack$lambda$2(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/hermes/android/handoff/HandoffCrypto;->$stable:I

    sput v0, Lcom/hermes/android/mesh/MeshClient;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/handoff/HandoffCrypto;)V
    .locals 1

    const-string v0, "crypto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/mesh/MeshClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    return-void
.end method

.method public static synthetic ack$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BLjava/util/List;IILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x1f40

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

    .line 105
    invoke-virtual/range {v1 .. v8}, Lcom/hermes/android/mesh/MeshClient;->ack(Ljava/lang/String;I[B[B[BLjava/util/List;I)V

    return-void
.end method

.method private static final ack$lambda$2(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/hermes/android/handoff/HandoffJson;->INSTANCE:Lcom/hermes/android/handoff/HandoffJson;

    invoke-virtual {v0, p0}, Lcom/hermes/android/handoff/HandoffJson;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method private final connect(Ljava/lang/String;IILkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/io/DataOutputStream;",
            "-",
            "Ljava/io/DataInputStream;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/net/Socket;

    .line 191
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v2, Ljava/net/SocketAddress;

    invoke-virtual {v1, v2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 192
    invoke-virtual {v1, p3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 193
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p2, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p4, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x2

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    const/4 p3, 0x0

    invoke-static {v0, p3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    const/4 p3, 0x1

    invoke-static {p3}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {p3}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p2
.end method

.method private final handshake(Ljava/io/DataOutputStream;Ljava/io/DataInputStream;[B)V
    .locals 6

    .line 198
    sget-object v0, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    invoke-virtual {v0, p3}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->deviceIdFor([B)Ljava/lang/String;

    move-result-object v0

    .line 199
    sget-object v1, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    sget-object v2, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    sget-object v3, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    invoke-virtual {v3, p3}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->b64UrlEncode([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v0, p3}, Lcom/hermes/android/handoff/HandoffClient$Companion;->helloJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    const-string v0, "getBytes(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, p3}, Lcom/hermes/android/handoff/HandoffClient$Companion;->sendFrame(Ljava/io/DataOutputStream;[B)V

    .line 200
    sget-object p1, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    sget-object p3, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p3, p2, v0, v1, v2}, Lcom/hermes/android/handoff/HandoffClient$Companion;->recvFrame$default(Lcom/hermes/android/handoff/HandoffClient$Companion;Ljava/io/DataInputStream;IILjava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hermes/android/handoff/HandoffClient$Companion;->parseJson([B)Ljava/util/Map;

    move-result-object p1

    .line 201
    const-string p2, "ok"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 202
    const-string p2, "err"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    .line 204
    new-instance p1, Lcom/hermes/android/mesh/MeshClient$MeshException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "handshake rejected: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget v1, Lcom/hermes/android/R$string;->mesh_err_handshake_rejected:I

    new-array p3, p3, [Ljava/lang/String;

    aput-object v2, p3, v0

    invoke-direct {p1, p2, v1, p3}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_0

    .line 205
    :cond_1
    new-instance p1, Lcom/hermes/android/mesh/MeshClient$MeshException;

    sget v2, Lcom/hermes/android/R$string;->mesh_err_handshake_not_paired:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "handshake rejected (not paired?)"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    :goto_0
    throw p1

    :cond_2
    return-void
.end method

.method public static synthetic pair$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BIILjava/lang/Object;)Ljava/lang/String;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/16 p6, 0x1f40

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 45
    invoke-virtual/range {v0 .. v6}, Lcom/hermes/android/mesh/MeshClient;->pair(Ljava/lang/String;I[B[B[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final plainOp(Ljava/lang/String;I[B[B[BLjava/lang/String;I)Ljava/util/Map;
    .locals 3
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

    .line 226
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/net/Socket;

    .line 227
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v2, Ljava/net/SocketAddress;

    invoke-virtual {v1, v2, p7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 228
    invoke-virtual {v1, p7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 229
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p2, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p7

    invoke-direct {p2, p7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    invoke-direct {p0, p1, p2, p4}, Lcom/hermes/android/mesh/MeshClient;->handshake(Ljava/io/DataOutputStream;Ljava/io/DataInputStream;[B)V

    .line 182
    sget-object p4, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    iget-object p7, p0, Lcom/hermes/android/mesh/MeshClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p6, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p6

    const-string v1, "getBytes(...)"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p7, p3, p5, p6}, Lcom/hermes/android/handoff/HandoffCrypto;->boxEncrypt([B[B[B)[B

    move-result-object p3

    invoke-virtual {p4, p1, p3}, Lcom/hermes/android/handoff/HandoffClient$Companion;->sendFrame(Ljava/io/DataOutputStream;[B)V

    .line 183
    sget-object p1, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    sget-object p3, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    const/4 p4, 0x0

    const/4 p5, 0x2

    const/4 p6, 0x0

    invoke-static {p3, p2, p4, p5, p6}, Lcom/hermes/android/handoff/HandoffClient$Companion;->recvFrame$default(Lcom/hermes/android/handoff/HandoffClient$Companion;Ljava/io/DataInputStream;IILjava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hermes/android/handoff/HandoffClient$Companion;->parseJson([B)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, p6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static synthetic poll$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BIILjava/lang/Object;)Ljava/util/List;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/16 p6, 0x1f40

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 74
    invoke-virtual/range {v0 .. v6}, Lcom/hermes/android/mesh/MeshClient;->poll(Ljava/lang/String;I[B[B[BI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic pull$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BLjava/lang/String;IILjava/lang/Object;)[B
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

    .line 123
    invoke-virtual/range {v1 .. v8}, Lcom/hermes/android/mesh/MeshClient;->pull(Ljava/lang/String;I[B[B[BLjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic push$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[BLjava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x1f40

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

    .line 59
    invoke-virtual/range {v1 .. v8}, Lcom/hermes/android/mesh/MeshClient;->push(Ljava/lang/String;I[B[B[BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic pushSession$default(Lcom/hermes/android/mesh/MeshClient;Ljava/lang/String;I[B[B[B[BIILjava/lang/Object;)Ljava/util/Map;
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x7530

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

    .line 153
    invoke-virtual/range {v1 .. v8}, Lcom/hermes/android/mesh/MeshClient;->pushSession(Ljava/lang/String;I[B[B[B[BI)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ack(Ljava/lang/String;I[B[B[BLjava/util/List;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B[B[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p6

    const-string v1, "host"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mySk"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "myPk"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "brokerPk"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ids"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 111
    :cond_0
    move-object v8, v0

    check-cast v8, Ljava/lang/Iterable;

    const-string v0, ","

    move-object v9, v0

    check-cast v9, Ljava/lang/CharSequence;

    new-instance v14, Lcom/hermes/android/mesh/MeshClient$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Lcom/hermes/android/mesh/MeshClient$$ExternalSyntheticLambda0;-><init>()V

    const/16 v15, 0x1e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"op\":\"ack\",\"ids\":["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/hermes/android/mesh/MeshClient;->plainOp(Ljava/lang/String;I[B[B[BLjava/lang/String;I)Ljava/util/Map;

    return-void
.end method

.method public final pair(Ljava/lang/String;I[B[B[BI)Ljava/lang/String;
    .locals 9

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mySk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "myPk"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brokerPk"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v7, "{\"op\":\"pair\"}"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hermes/android/mesh/MeshClient;->plainOp(Ljava/lang/String;I[B[B[BLjava/lang/String;I)Ljava/util/Map;

    move-result-object p1

    .line 51
    const-string p2, "ok"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 52
    const-string p2, "err"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown"

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/hermes/android/mesh/MeshClient$MeshException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "pair failed: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget p5, Lcom/hermes/android/R$string;->mesh_err_pair_failed:I

    new-array p3, p3, [Ljava/lang/String;

    const/4 p6, 0x0

    aput-object p1, p3, p6

    invoke-direct {p2, p4, p5, p3}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw p2

    .line 55
    :cond_1
    const-string p2, "did"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    return-object p1
.end method

.method public final poll(Ljava/lang/String;I[B[B[BI)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B[B[BI)",
            "Ljava/util/List<",
            "Lcom/hermes/android/mesh/MeshClient$Result;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    const-string v6, "null cannot be cast to non-null type kotlin.String"

    const-string v7, "ok"

    const-string v8, "poll failed: "

    const-string v9, "host"

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "mySk"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "myPk"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "brokerPk"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    new-instance v9, Ljava/net/Socket;

    invoke-direct {v9}, Ljava/net/Socket;-><init>()V

    check-cast v9, Ljava/io/Closeable;

    :try_start_0
    move-object v10, v9

    check-cast v10, Ljava/net/Socket;

    .line 211
    new-instance v11, Ljava/net/InetSocketAddress;

    move/from16 v12, p2

    invoke-direct {v11, v0, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v11, Ljava/net/SocketAddress;

    invoke-virtual {v10, v11, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 212
    invoke-virtual {v10, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 213
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    invoke-direct {v1, v0, v5, v3}, Lcom/hermes/android/mesh/MeshClient;->handshake(Ljava/io/DataOutputStream;Ljava/io/DataInputStream;[B)V

    .line 82
    sget-object v3, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    iget-object v10, v1, Lcom/hermes/android/mesh/MeshClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    const-string v11, "{\"op\":\"poll\"}"

    sget-object v12, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    const-string v12, "getBytes(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v2, v4, v11}, Lcom/hermes/android/handoff/HandoffCrypto;->boxEncrypt([B[B[B)[B

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Lcom/hermes/android/handoff/HandoffClient$Companion;->sendFrame(Ljava/io/DataOutputStream;[B)V

    .line 83
    sget-object v0, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    const/4 v3, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v5, v10, v3, v11}, Lcom/hermes/android/handoff/HandoffClient$Companion;->recvFrame$default(Lcom/hermes/android/handoff/HandoffClient$Companion;Ljava/io/DataInputStream;IILjava/lang/Object;)[B

    move-result-object v0

    .line 84
    iget-object v3, v1, Lcom/hermes/android/mesh/MeshClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    invoke-virtual {v3, v2, v4, v0}, Lcom/hermes/android/handoff/HandoffCrypto;->boxDecrypt([B[B[B)[B

    move-result-object v0

    if-eqz v0, :cond_a

    .line 87
    new-instance v2, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v2}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 88
    :cond_0
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    const-string v2, "err"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "unknown"

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v2, Lcom/hermes/android/mesh/MeshClient$MeshException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/hermes/android/R$string;->mesh_err_poll_failed:I

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v10

    invoke-direct {v2, v4, v5, v3}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw v2

    .line 92
    :cond_2
    const-string v2, "results"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_3
    move-object v0, v11

    :goto_0
    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 93
    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    .line 214
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 215
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 216
    check-cast v4, Ljava/util/Map;

    .line 94
    new-instance v5, Lcom/hermes/android/mesh/MeshClient$Result;

    .line 95
    const-string v8, "id"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    const-string v8, "ref"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v8

    check-cast v14, Ljava/lang/String;

    .line 96
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    const-string v8, "text"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_5

    check-cast v8, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v8, v11

    :goto_2
    if-nez v8, :cond_6

    const-string v8, ""

    :cond_6
    move-object/from16 v16, v8

    .line 97
    const-string v8, "created"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Ljava/lang/Number;

    if-eqz v8, :cond_7

    check-cast v4, Ljava/lang/Number;

    goto :goto_3

    :cond_7
    move-object v4, v11

    :goto_3
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    goto :goto_4

    :cond_8
    const-wide/16 v17, 0x0

    :goto_4
    move-object v12, v5

    .line 94
    invoke-direct/range {v12 .. v18}, Lcom/hermes/android/mesh/MeshClient$Result;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;D)V

    .line 216
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 217
    :cond_9
    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 85
    :cond_a
    :try_start_1
    new-instance v0, Lcom/hermes/android/mesh/MeshClient$MeshException;

    const-string v2, "poll decrypt failed (tampered or unregistered broker)"

    .line 86
    sget v3, Lcom/hermes/android/R$string;->mesh_err_decrypt_failed:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move/from16 p3, v3

    move-object/from16 p4, v6

    move/from16 p5, v4

    move-object/from16 p6, v5

    .line 85
    invoke-direct/range {p1 .. p6}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 93
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final pull(Ljava/lang/String;I[B[B[BLjava/lang/String;I)[B
    .locals 5

    const-string v0, "pull failed: "

    const-string v1, "{\"op\":\"pull\",\"session_id\":"

    const-string v2, "host"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mySk"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "myPk"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "brokerPk"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sessionId"

    invoke-static {p6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/net/Socket;

    .line 219
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v4, Ljava/net/SocketAddress;

    invoke-virtual {v3, v4, p7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 220
    invoke-virtual {v3, p7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 221
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p2, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p7

    invoke-direct {p2, p7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    invoke-direct {p0, p1, p2, p4}, Lcom/hermes/android/mesh/MeshClient;->handshake(Ljava/io/DataOutputStream;Ljava/io/DataInputStream;[B)V

    .line 130
    sget-object p4, Lcom/hermes/android/handoff/HandoffJson;->INSTANCE:Lcom/hermes/android/handoff/HandoffJson;

    invoke-virtual {p4, p6}, Lcom/hermes/android/handoff/HandoffJson;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p6, "}"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 131
    sget-object p6, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    iget-object p7, p0, Lcom/hermes/android/mesh/MeshClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    const-string v1, "getBytes(...)"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p7, p3, p5, p4}, Lcom/hermes/android/handoff/HandoffCrypto;->boxEncrypt([B[B[B)[B

    move-result-object p4

    invoke-virtual {p6, p1, p4}, Lcom/hermes/android/handoff/HandoffClient$Companion;->sendFrame(Ljava/io/DataOutputStream;[B)V

    .line 132
    sget-object p1, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    sget-object p4, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    const/4 p6, 0x2

    const/4 p7, 0x0

    const/4 v1, 0x0

    invoke-static {p4, p2, p7, p6, v1}, Lcom/hermes/android/handoff/HandoffClient$Companion;->recvFrame$default(Lcom/hermes/android/handoff/HandoffClient$Companion;Ljava/io/DataInputStream;IILjava/lang/Object;)[B

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/hermes/android/handoff/HandoffClient$Companion;->parseJson([B)Ljava/util/Map;

    move-result-object p1

    .line 133
    const-string p4, "ok"

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 134
    const-string p2, "err"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown"

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 135
    new-instance p2, Lcom/hermes/android/mesh/MeshClient$MeshException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget p4, Lcom/hermes/android/R$string;->mesh_err_pull_failed:I

    new-array p5, v3, [Ljava/lang/String;

    aput-object p1, p5, p7

    invoke-direct {p2, p3, p4, p5}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw p2

    .line 137
    :cond_1
    sget-object p1, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    invoke-static {p1, p2, p7, p6, v1}, Lcom/hermes/android/handoff/HandoffClient$Companion;->recvFrame$default(Lcom/hermes/android/handoff/HandoffClient$Companion;Ljava/io/DataInputStream;IILjava/lang/Object;)[B

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/hermes/android/mesh/MeshClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    invoke-virtual {p2, p3, p5, p1}, Lcom/hermes/android/handoff/HandoffCrypto;->boxDecrypt([B[B[B)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 139
    :cond_2
    :try_start_1
    new-instance p1, Lcom/hermes/android/mesh/MeshClient$MeshException;

    const-string p3, "bundle decrypt failed (tampered or unregistered computer)"

    .line 140
    sget p4, Lcom/hermes/android/R$string;->mesh_err_decrypt_failed:I

    const/4 p6, 0x4

    const/4 p7, 0x0

    const/4 p5, 0x0

    move-object p2, p1

    .line 139
    invoke-direct/range {p2 .. p7}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 138
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final push(Ljava/lang/String;I[B[B[BLjava/lang/String;I)Ljava/lang/String;
    .locals 8

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mySk"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "myPk"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brokerPk"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prompt"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/hermes/android/handoff/HandoffJson;->INSTANCE:Lcom/hermes/android/handoff/HandoffJson;

    invoke-virtual {v0, p6}, Lcom/hermes/android/handoff/HandoffJson;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"op\":\"push\",\"task\":{\"prompt\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v0, "}}"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p7

    .line 65
    invoke-direct/range {v0 .. v7}, Lcom/hermes/android/mesh/MeshClient;->plainOp(Ljava/lang/String;I[B[B[BLjava/lang/String;I)Ljava/util/Map;

    move-result-object p1

    .line 66
    const-string p2, "ok"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 67
    const-string p2, "err"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown"

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/hermes/android/mesh/MeshClient$MeshException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "push failed: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget p5, Lcom/hermes/android/R$string;->mesh_err_push_failed:I

    new-array p3, p3, [Ljava/lang/String;

    const/4 p6, 0x0

    aput-object p1, p3, p6

    invoke-direct {p2, p4, p5, p3}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw p2

    .line 70
    :cond_1
    const-string p2, "id"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    return-object p1
.end method

.method public final pushSession(Ljava/lang/String;I[B[B[B[BI)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[B[B[B[BI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "getBytes(...)"

    const-string v1, "sync back failed: "

    const-string v2, "host"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mySk"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "myPk"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "brokerPk"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bundleJson"

    invoke-static {p6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/net/Socket;

    .line 223
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    check-cast v4, Ljava/net/SocketAddress;

    invoke-virtual {v3, v4, p7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 224
    invoke-virtual {v3, p7}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 225
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance p2, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p7

    invoke-direct {p2, p7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 159
    invoke-direct {p0, p1, p2, p4}, Lcom/hermes/android/mesh/MeshClient;->handshake(Ljava/io/DataOutputStream;Ljava/io/DataInputStream;[B)V

    .line 160
    const-string p4, "{\"op\":\"push_session\",\"bundle\":"

    sget-object p7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, p7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const-string p7, "}"

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p7, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p7

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {p4, p6}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p4

    invoke-static {p4, p7}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p4

    .line 163
    sget-object p6, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    iget-object p7, p0, Lcom/hermes/android/mesh/MeshClient;->crypto:Lcom/hermes/android/handoff/HandoffCrypto;

    invoke-virtual {p7, p3, p5, p4}, Lcom/hermes/android/handoff/HandoffCrypto;->boxEncrypt([B[B[B)[B

    move-result-object p3

    invoke-virtual {p6, p1, p3}, Lcom/hermes/android/handoff/HandoffClient$Companion;->sendFrame(Ljava/io/DataOutputStream;[B)V

    .line 164
    sget-object p1, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    sget-object p3, Lcom/hermes/android/handoff/HandoffClient;->Companion:Lcom/hermes/android/handoff/HandoffClient$Companion;

    const/4 p4, 0x2

    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-static {p3, p2, p5, p4, p6}, Lcom/hermes/android/handoff/HandoffClient$Companion;->recvFrame$default(Lcom/hermes/android/handoff/HandoffClient$Companion;Ljava/io/DataInputStream;IILjava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hermes/android/handoff/HandoffClient$Companion;->parseJson([B)Ljava/util/Map;

    move-result-object p1

    .line 165
    const-string p2, "ok"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 166
    const-string p2, "err"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "unknown"

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 167
    new-instance p2, Lcom/hermes/android/mesh/MeshClient$MeshException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget p6, Lcom/hermes/android/R$string;->mesh_err_syncback_failed:I

    new-array p3, p3, [Ljava/lang/String;

    aput-object p1, p3, p5

    invoke-direct {p2, p4, p6, p3}, Lcom/hermes/android/mesh/MeshClient$MeshException;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw p2

    .line 170
    :cond_1
    const-string p2, "stats"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_2
    move-object p1, p6

    :goto_0
    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-static {v2, p6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
