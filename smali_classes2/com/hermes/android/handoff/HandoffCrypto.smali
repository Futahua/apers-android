.class public final Lcom/hermes/android/handoff/HandoffCrypto;
.super Ljava/lang/Object;
.source "HandoffCrypto.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/handoff/HandoffCrypto$Companion;,
        Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;,
        Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandoffCrypto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandoffCrypto.kt\ncom/hermes/android/handoff/HandoffCrypto\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n1#2:132\n1#2:143\n1611#3,9:133\n1863#3:142\n1864#3:144\n1620#3:145\n*S KotlinDebug\n*F\n+ 1 HandoffCrypto.kt\ncom/hermes/android/handoff/HandoffCrypto\n*L\n105#1:143\n105#1:133,9\n105#1:142\n105#1:144\n105#1:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0003\u0016\u0017\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u001e\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tJ \u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/hermes/android/handoff/HandoffCrypto;",
        "",
        "ls",
        "Lcom/goterl/lazysodium/LazySodium;",
        "<init>",
        "(Lcom/goterl/lazysodium/LazySodium;)V",
        "generateIdentity",
        "Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;",
        "publicFromPrivate",
        "",
        "sk",
        "boxEncrypt",
        "mySk",
        "peerPk",
        "plaintext",
        "boxDecrypt",
        "blob",
        "parseQr",
        "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
        "json",
        "",
        "parsePairQr",
        "KeyPair",
        "PeerInfo",
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

.field public static final Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

.field public static final HANDOFF_QR_SCHEMA:I = 0x2

.field public static final QR_SCHEMA:I = 0x1


# instance fields
.field private final ls:Lcom/goterl/lazysodium/LazySodium;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/handoff/HandoffCrypto;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/goterl/lazysodium/LazySodium;)V
    .locals 1

    const-string v0, "ls"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffCrypto;->ls:Lcom/goterl/lazysodium/LazySodium;

    return-void
.end method


# virtual methods
.method public final boxDecrypt([B[B[B)[B
    .locals 11

    const-string v0, "mySk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerPk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blob"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    array-length v0, p3

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x18

    .line 72
    invoke-static {p3, v0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v8

    .line 73
    array-length v0, p3

    invoke-static {p3, v1, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v5

    .line 74
    array-length p3, v5

    add-int/lit8 p3, p3, -0x10

    new-array p3, p3, [B

    .line 75
    iget-object v3, p0, Lcom/hermes/android/handoff/HandoffCrypto;->ls:Lcom/goterl/lazysodium/LazySodium;

    .line 76
    array-length v0, v5

    int-to-long v6, v0

    move-object v4, p3

    move-object v9, p2

    move-object v10, p1

    .line 75
    invoke-virtual/range {v3 .. v10}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxOpenEasy([B[BJ[B[B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v2, p3

    :cond_1
    return-object v2
.end method

.method public final boxEncrypt([B[B[B)[B
    .locals 10

    const-string v0, "mySk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peerPk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plaintext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffCrypto;->ls:Lcom/goterl/lazysodium/LazySodium;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 63
    array-length v1, p3

    add-int/lit8 v1, v1, 0x10

    new-array v1, v1, [B

    .line 64
    iget-object v2, p0, Lcom/hermes/android/handoff/HandoffCrypto;->ls:Lcom/goterl/lazysodium/LazySodium;

    .line 65
    array-length v3, p3

    int-to-long v5, v3

    move-object v3, v1

    move-object v4, p3

    move-object v7, v0

    move-object v8, p2

    move-object v9, p1

    .line 64
    invoke-virtual/range {v2 .. v9}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxEasy([B[BJ[B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "boxEncrypt failed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final generateIdentity()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffCrypto;->ls:Lcom/goterl/lazysodium/LazySodium;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 48
    new-array v1, v1, [B

    .line 49
    iget-object v2, p0, Lcom/hermes/android/handoff/HandoffCrypto;->ls:Lcom/goterl/lazysodium/LazySodium;

    invoke-virtual {v2, v1, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarMultBase([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    new-instance v2, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v0, v1}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;-><init>([B[B)V

    return-object v2

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scalarMultBase failed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final parsePairQr(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/hermes/android/handoff/HandoffCrypto;->parseQr(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object p1

    return-object p1
.end method

.method public final parseQr(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "json"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v1, Lorg/yaml/snakeyaml/Yaml;

    invoke-direct {v1}, Lorg/yaml/snakeyaml/Yaml;-><init>()V

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/Yaml;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 88
    const-string v1, "v"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v2, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_3

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unsupported QR schema: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_3
    :goto_2
    sget-object v5, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    const-string v6, "pk"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->b64UrlDecode(Ljava/lang/String;)[B

    move-result-object v10

    .line 91
    array-length v6, v10

    const/16 v8, 0x20

    if-ne v6, v8, :cond_e

    .line 94
    const-string v4, "did"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    .line 95
    invoke-virtual {v5, v10}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->deviceIdFor([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez v1, :cond_4

    goto :goto_4

    .line 99
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 100
    const-string v1, "sid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v1, v3

    .line 101
    :goto_3
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_6

    move-object v13, v1

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/hermes/android/LocalizedIllegalArgument;

    .line 102
    sget v13, Lcom/hermes/android/R$string;->handoff_err_qr_missing_sid:I

    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 101
    const-string v12, "handoff QR (v2) missing sid"

    const/4 v14, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/hermes/android/LocalizedIllegalArgument;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_7
    :goto_4
    move-object v13, v3

    .line 105
    :goto_5
    const-string v1, "alts"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_8

    check-cast v1, Ljava/util/List;

    goto :goto_6

    :cond_8
    move-object v1, v3

    :goto_6
    if-eqz v1, :cond_c

    check-cast v1, Ljava/lang/Iterable;

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 142
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 105
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_a

    check-cast v4, Ljava/lang/String;

    goto :goto_8

    :cond_a
    move-object v4, v3

    :goto_8
    if-eqz v4, :cond_9

    .line 141
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 145
    :cond_b
    check-cast v2, Ljava/util/List;

    move-object v14, v2

    goto :goto_9

    .line 105
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v14, v1

    .line 106
    :goto_9
    new-instance v1, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    const-string v2, "host"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    const-string v2, "port"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v12

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/util/List;)V

    return-object v1

    .line 95
    :cond_d
    new-instance v0, Lcom/hermes/android/LocalizedIllegalArgument;

    .line 97
    sget v4, Lcom/hermes/android/R$string;->handoff_err_qr_mismatch:I

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 95
    const-string v3, "QR integrity check failed: device id does not match public key"

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/hermes/android/LocalizedIllegalArgument;-><init>(Ljava/lang/String;I[Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 91
    :cond_e
    new-instance v0, Lcom/hermes/android/LocalizedIllegalArgument;

    .line 92
    array-length v1, v10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid QR: public key length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    sget v2, Lcom/hermes/android/R$string;->handoff_err_qr_bad_pubkey:I

    new-array v3, v4, [Ljava/lang/Integer;

    array-length v4, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 91
    invoke-direct {v0, v1, v2, v3}, Lcom/hermes/android/LocalizedIllegalArgument;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    throw v0

    .line 87
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid QR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final publicFromPrivate([B)[B
    .locals 2

    const-string v0, "sk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 55
    new-array v0, v0, [B

    .line 56
    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffCrypto;->ls:Lcom/goterl/lazysodium/LazySodium;

    invoke-virtual {v1, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarMultBase([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "scalarMultBase failed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
