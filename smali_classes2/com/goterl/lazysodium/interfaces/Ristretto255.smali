.class public interface abstract Lcom/goterl/lazysodium/interfaces/Ristretto255;
.super Ljava/lang/Object;
.source "Ristretto255.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;,
        Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;,
        Lcom/goterl/lazysodium/interfaces/Ristretto255$Lazy;,
        Lcom/goterl/lazysodium/interfaces/Ristretto255$Native;
    }
.end annotation


# static fields
.field public static final RISTRETTO255_BYTES:I = 0x20

.field public static final RISTRETTO255_HASH_BYTES:I = 0x40

.field public static final RISTRETTO255_L:Ljava/math/BigInteger;

.field public static final RISTRETTO255_NON_REDUCED_SCALAR_BYTES:I = 0x40

.field public static final RISTRETTO255_SCALAR_BYTES:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x2

    .line 14
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0xfc

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "27742317777372353535851937790883648493"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/goterl/lazysodium/interfaces/Ristretto255;->RISTRETTO255_L:Ljava/math/BigInteger;

    return-void
.end method

.method public static bytesToScalar([B)Ljava/math/BigInteger;
    .locals 4

    .line 42
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 45
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 46
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static pointBuffer()[B
    .locals 1

    const/16 v0, 0x20

    .line 53
    new-array v0, v0, [B

    return-object v0
.end method

.method public static scalarBuffer()[B
    .locals 1

    const/16 v0, 0x20

    .line 57
    new-array v0, v0, [B

    return-object v0
.end method

.method public static scalarToBytes(Ljava/math/BigInteger;)[B
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-static {p0, v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static scalarToBytes(Ljava/math/BigInteger;Z)[B
    .locals 2

    .line 22
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x40

    .line 26
    :goto_0
    array-length v0, p0

    if-gt v0, p1, :cond_2

    .line 32
    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 34
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 35
    array-length v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 27
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The scalar value is too big to be represented in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
