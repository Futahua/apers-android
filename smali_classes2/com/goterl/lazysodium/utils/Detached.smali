.class public Lcom/goterl/lazysodium/utils/Detached;
.super Ljava/lang/Object;
.source "Detached.java"


# instance fields
.field mac:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/goterl/lazysodium/utils/Detached;->mac:[B

    return-void
.end method


# virtual methods
.method public getMac()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/Detached;->mac:[B

    return-object v0
.end method

.method public getMacString()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/goterl/lazysodium/utils/Detached;->getMac()[B

    move-result-object v0

    invoke-static {v0}, Lcom/goterl/lazysodium/LazySodium;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
