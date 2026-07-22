.class public final Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
.super Ljava/lang/Object;
.source "HandoffCrypto.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/handoff/HandoffCrypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyPair"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u000bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008R\u0011\u0010\n\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;",
        "",
        "secretKey",
        "",
        "publicKey",
        "<init>",
        "([B[B)V",
        "getSecretKey",
        "()[B",
        "getPublicKey",
        "deviceId",
        "",
        "getDeviceId",
        "()Ljava/lang/String;",
        "publicB64",
        "getPublicB64",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final publicKey:[B

.field private final secretKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    const-string v0, "secretKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->secretKey:[B

    iput-object p2, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;[B[BILjava/lang/Object;)Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->secretKey:[B

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->copy([B[B)Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[B
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->secretKey:[B

    return-object v0
.end method

.method public final component2()[B
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    return-object v0
.end method

.method public final copy([B[B)Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;
    .locals 1

    const-string v0, "secretKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    invoke-direct {v0, p1, p2}, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;-><init>([B[B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;

    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->secretKey:[B

    iget-object v3, p1, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->secretKey:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    iget-object p1, p1, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 2

    .line 27
    sget-object v0, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    invoke-virtual {v0, v1}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->deviceIdFor([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPublicB64()Ljava/lang/String;
    .locals 2

    .line 28
    sget-object v0, Lcom/hermes/android/handoff/HandoffCrypto;->Companion:Lcom/hermes/android/handoff/HandoffCrypto$Companion;

    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    invoke-virtual {v0, v1}, Lcom/hermes/android/handoff/HandoffCrypto$Companion;->b64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPublicKey()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    return-object v0
.end method

.method public final getSecretKey()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->secretKey:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->secretKey:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->secretKey:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;->publicKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "KeyPair(secretKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", publicKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
