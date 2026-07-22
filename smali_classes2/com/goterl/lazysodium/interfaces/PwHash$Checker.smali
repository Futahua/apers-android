.class public Lcom/goterl/lazysodium/interfaces/PwHash$Checker;
.super Lcom/goterl/lazysodium/utils/BaseChecker;
.source "PwHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/PwHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/goterl/lazysodium/utils/BaseChecker;-><init>()V

    return-void
.end method

.method public static checkAll(JJJLcom/sun/jna/NativeLong;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 91
    invoke-static {p2, p3}, Lcom/goterl/lazysodium/interfaces/PwHash$Checker;->saltIsCorrect(J)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 94
    invoke-static {p0, p1}, Lcom/goterl/lazysodium/interfaces/PwHash$Checker;->passwordIsCorrect(J)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 97
    invoke-static {p4, p5}, Lcom/goterl/lazysodium/interfaces/PwHash$Checker;->opsLimitIsCorrect(J)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 100
    invoke-static {p6}, Lcom/goterl/lazysodium/interfaces/PwHash$Checker;->memLimitIsCorrect(Lcom/sun/jna/NativeLong;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 101
    :cond_0
    new-instance p0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p1, "The memLimit provided is not the correct value."

    invoke-direct {p0, p1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1
    new-instance p0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p1, "The opsLimit provided is not the correct value."

    invoke-direct {p0, p1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_2
    new-instance p0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p1, "The password provided is not the correct length."

    invoke-direct {p0, p1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 92
    :cond_3
    new-instance p0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p1, "The salt provided is not the correct length."

    invoke-direct {p0, p1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static memLimitIsCorrect(Lcom/sun/jna/NativeLong;)Z
    .locals 2

    .line 83
    sget-object v0, Lcom/goterl/lazysodium/interfaces/PwHash;->MEMLIMIT_MIN:Lcom/sun/jna/NativeLong;

    sget-object v1, Lcom/goterl/lazysodium/interfaces/PwHash;->MEMLIMIT_MAX:Lcom/sun/jna/NativeLong;

    invoke-static {p0, v0, v1}, Lcom/goterl/lazysodium/interfaces/PwHash$Checker;->isBetween(Lcom/sun/jna/NativeLong;Lcom/sun/jna/NativeLong;Lcom/sun/jna/NativeLong;)Z

    move-result p0

    return p0
.end method

.method public static opsLimitIsCorrect(J)Z
    .locals 6

    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x7fffffff

    move-wide v0, p0

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/goterl/lazysodium/interfaces/PwHash$Checker;->isBetween(JJJ)Z

    move-result p0

    return p0
.end method

.method public static passwordIsCorrect(J)Z
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x7fffffff

    move-wide v0, p0

    .line 77
    invoke-static/range {v0 .. v5}, Lcom/goterl/lazysodium/interfaces/PwHash$Checker;->isBetween(JJJ)Z

    move-result p0

    return p0
.end method

.method public static saltIsCorrect(J)Z
    .locals 2

    const-wide/16 v0, 0x10

    .line 74
    invoke-static {p0, p1, v0, v1}, Lcom/goterl/lazysodium/interfaces/PwHash$Checker;->correctLen(JJ)Z

    move-result p0

    return p0
.end method
