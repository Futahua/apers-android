.class public Lcom/goterl/lazysodium/utils/BaseChecker;
.super Ljava/lang/Object;
.source "BaseChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static correctLen(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBetween(JJJ)Z
    .locals 0

    cmp-long p2, p2, p0

    if-gtz p2, :cond_0

    cmp-long p0, p0, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBetween(Lcom/sun/jna/NativeLong;Lcom/sun/jna/NativeLong;Lcom/sun/jna/NativeLong;)Z
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide v0

    .line 21
    invoke-virtual {p1}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    invoke-virtual {p2}, Lcom/sun/jna/NativeLong;->longValue()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
