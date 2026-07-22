.class public Lcom/goterl/lazysodium/interfaces/SecretStream$Checker;
.super Lcom/goterl/lazysodium/utils/BaseChecker;
.source "SecretStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/SecretStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/goterl/lazysodium/utils/BaseChecker;-><init>()V

    return-void
.end method

.method public static headerCheck(I)Z
    .locals 1

    const/16 v0, 0x18

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
