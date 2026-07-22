.class public final Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
.super Ljava/lang/Object;
.source "Ristretto255.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Ristretto255;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RistrettoPoint"
.end annotation


# instance fields
.field private final ls:Lcom/goterl/lazysodium/LazySodium;

.field private final repr:[B


# direct methods
.method private constructor <init>(Lcom/goterl/lazysodium/LazySodium;Ljava/lang/String;)V
    .locals 0

    .line 824
    invoke-virtual {p1, p2}, Lcom/goterl/lazysodium/LazySodium;->decodeFromString(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;-><init>(Lcom/goterl/lazysodium/LazySodium;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/goterl/lazysodium/LazySodium;[B)V
    .locals 1

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 815
    invoke-virtual {p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255IsValidPoint([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iput-object p2, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->repr:[B

    .line 820
    iput-object p1, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->ls:Lcom/goterl/lazysodium/LazySodium;

    return-void

    .line 816
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The passed point is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static base(Lcom/goterl/lazysodium/LazySodium;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 959
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarmultRistretto255Base(Ljava/math/BigInteger;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p0

    return-object p0
.end method

.method public static fromBytes(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1

    .line 996
    new-instance v0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    invoke-direct {v0, p0, p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;-><init>(Lcom/goterl/lazysodium/LazySodium;[B)V

    return-object v0
.end method

.method public static fromHex(Lcom/goterl/lazysodium/LazySodium;Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1

    .line 971
    new-instance v0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->toBinary(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;-><init>(Lcom/goterl/lazysodium/LazySodium;[B)V

    return-object v0
.end method

.method public static fromString(Lcom/goterl/lazysodium/LazySodium;Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1

    .line 984
    new-instance v0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    invoke-direct {v0, p0, p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;-><init>(Lcom/goterl/lazysodium/LazySodium;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hashToPoint(Lcom/goterl/lazysodium/LazySodium;Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1012
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->decodeFromString(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->hashToPoint(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p0

    return-object p0
.end method

.method public static hashToPoint(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x40

    .line 1027
    new-array v0, v0, [B

    .line 1028
    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/goterl/lazysodium/LazySodium;->cryptoHashSha512([B[BJ)Z

    .line 1030
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255FromHash([B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p0

    return-object p0
.end method

.method public static random(Lcom/goterl/lazysodium/LazySodium;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 0

    .line 949
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255Random()Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p0

    return-object p0
.end method

.method public static zero(Lcom/goterl/lazysodium/LazySodium;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1

    .line 939
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->pointBuffer()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->fromBytes(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->ls:Lcom/goterl/lazysodium/LazySodium;

    iget-object v1, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->repr:[B

    invoke-virtual {v0, v1}, Lcom/goterl/lazysodium/LazySodium;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 838
    :cond_0
    instance-of v0, p1, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 842
    :cond_1
    check-cast p1, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    .line 843
    iget-object v0, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->repr:[B

    iget-object p1, p1, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->repr:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->repr:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public minus(Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 918
    iget-object v0, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->ls:Lcom/goterl/lazysodium/LazySodium;

    invoke-virtual {v0, p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255Sub(Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 929
    iget-object v0, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->ls:Lcom/goterl/lazysodium/LazySodium;

    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->zero(Lcom/goterl/lazysodium/LazySodium;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->minus(Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->ls:Lcom/goterl/lazysodium/LazySodium;

    invoke-virtual {v0, p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255Add(Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1
.end method

.method public scalarMult(Ljava/math/BigInteger;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->ls:Lcom/goterl/lazysodium/LazySodium;

    invoke-virtual {v0, p1, p0}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarmultRistretto255(Ljava/math/BigInteger;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1
.end method

.method public times(Ljava/math/BigInteger;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 896
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->scalarMult(Ljava/math/BigInteger;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1
.end method

.method public toBytes()[B
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->repr:[B

    return-object v0
.end method

.method public toHex()Ljava/lang/String;
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->ls:Lcom/goterl/lazysodium/LazySodium;

    iget-object v1, p0, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->repr:[B

    invoke-virtual {v0, v1}, Lcom/goterl/lazysodium/LazySodium;->toHexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
