.class public Lcom/goterl/lazysodium/interfaces/Scrypt$Checker;
.super Lcom/goterl/lazysodium/utils/BaseChecker;
.source "Scrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Scrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/goterl/lazysodium/utils/BaseChecker;-><init>()V

    return-void
.end method

.method public static checkAllScrypt(JJJJJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-wide v0, p0

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/goterl/lazysodium/interfaces/Scrypt$Checker;->isBetween(JJJ)Z

    move-result p0

    const-string p1, "The password provided is not the correct size."

    if-eqz p0, :cond_4

    const-wide/16 v2, 0x10

    const-wide v4, 0x7fffffffffffffffL

    move-wide v0, p4

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/goterl/lazysodium/interfaces/Scrypt$Checker;->isBetween(JJJ)Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/16 p4, 0x20

    .line 63
    invoke-static {p2, p3, p4, p5}, Lcom/goterl/lazysodium/interfaces/Scrypt$Checker;->correctLen(JJ)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 67
    invoke-static {p6, p7}, Lcom/goterl/lazysodium/interfaces/Scrypt$Checker;->checkOpsLimitScrypt(J)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 71
    invoke-static {p8, p9}, Lcom/goterl/lazysodium/interfaces/Scrypt$Checker;->checkMemLimitScrypt(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 72
    :cond_0
    new-instance p0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p1, "The mem limit provided is not between the correct values."

    invoke-direct {p0, p1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_1
    new-instance p0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p1, "The ops limit provided is not between the correct values."

    invoke-direct {p0, p1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_2
    new-instance p0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    invoke-direct {p0, p1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_3
    new-instance p0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p1, "Please supply a hashLen greater than SCRYPTSALSA208SHA256_PASSWD_MIN but less than SCRYPTSALSA208SHA256_PASSWD_MAX"

    invoke-direct {p0, p1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_4
    new-instance p0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    invoke-direct {p0, p1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkMemLimitScrypt(J)Z
    .locals 6

    const-wide/32 v2, 0x1000000

    const-wide v4, 0x1000000000L

    move-wide v0, p0

    .line 43
    invoke-static/range {v0 .. v5}, Lcom/goterl/lazysodium/interfaces/Scrypt$Checker;->isBetween(JJJ)Z

    move-result p0

    return p0
.end method

.method public static checkOpsLimitScrypt(J)Z
    .locals 6

    const-wide/32 v2, 0x8000

    const-wide v4, 0xffffffffL

    move-wide v0, p0

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/goterl/lazysodium/interfaces/Scrypt$Checker;->isBetween(JJJ)Z

    move-result p0

    return p0
.end method
