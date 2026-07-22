.class public Lcom/goterl/lazysodium/interfaces/KeyDerivation$Checker;
.super Lcom/goterl/lazysodium/utils/BaseChecker;
.source "KeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/KeyDerivation;
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

.method public static contextIsCorrect(I)Z
    .locals 1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static masterKeyIsCorrect(J)Z
    .locals 2

    const-wide/16 v0, 0x20

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static subKeyIsCorrect(I)Z
    .locals 6

    int-to-long v0, p0

    const-wide/16 v2, 0x10

    const-wide/16 v4, 0x40

    .line 79
    invoke-static/range {v0 .. v5}, Lcom/goterl/lazysodium/interfaces/KeyDerivation$Checker;->isBetween(JJJ)Z

    move-result p0

    return p0
.end method
