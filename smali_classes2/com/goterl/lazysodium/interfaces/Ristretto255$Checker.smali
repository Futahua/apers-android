.class public Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;
.super Ljava/lang/Object;
.source "Ristretto255.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Ristretto255;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHash([B)V
    .locals 1

    if-eqz p0, :cond_1

    .line 775
    array-length p0, p0

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    return-void

    .line 776
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A hash for use with Ristretto255 must be 64 bytes in size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 771
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null pointers are not allowed as Ristretto255 hashes"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkNonReducedScalar([B)V
    .locals 1

    if-eqz p0, :cond_1

    .line 801
    array-length p0, p0

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    return-void

    .line 802
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-reduced Ristretto255 scalar must be 64 bytes in size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 797
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null pointers are not allowed as non-reduced Ristretto255 scalars"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkPoint([B)V
    .locals 1

    if-eqz p0, :cond_1

    .line 762
    array-length p0, p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return-void

    .line 763
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A Ristretto255 point must be 32 bytes in size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 758
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null pointers are not allowed as Ristretto255 points"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkScalar([B)V
    .locals 1

    if-eqz p0, :cond_1

    .line 788
    array-length p0, p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    return-void

    .line 789
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A Ristretto255 scalar must be 32 bytes in size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 784
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null pointers are not allowed as Ristretto255 scalars"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ensurePointFits([B)V
    .locals 1

    if-eqz p0, :cond_1

    .line 734
    array-length p0, p0

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    return-void

    .line 735
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "To hold a Ristretto255 point, the array must be 32 bytes in size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 730
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null pointers are not allowed as target arrays"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ensureScalarFits([B)V
    .locals 1

    if-eqz p0, :cond_1

    .line 748
    array-length p0, p0

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    return-void

    .line 749
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "To hold a Ristretto255 scalar, the array must be 32 bytes in size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 744
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null pointers are not allowed as target arrays"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
