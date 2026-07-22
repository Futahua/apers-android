.class public Lcom/goterl/lazysodium/utils/SessionPair;
.super Ljava/lang/Object;
.source "SessionPair.java"


# instance fields
.field private rx:[B

.field private tx:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/goterl/lazysodium/LazySodium;->toBin(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/goterl/lazysodium/utils/SessionPair;->rx:[B

    .line 24
    invoke-static {p2}, Lcom/goterl/lazysodium/LazySodium;->toBin(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/goterl/lazysodium/utils/SessionPair;->tx:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/goterl/lazysodium/utils/SessionPair;->rx:[B

    .line 19
    iput-object p2, p0, Lcom/goterl/lazysodium/utils/SessionPair;->tx:[B

    return-void
.end method


# virtual methods
.method public getRx()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/SessionPair;->rx:[B

    return-object v0
.end method

.method public getRxString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/SessionPair;->rx:[B

    invoke-static {v0}, Lcom/goterl/lazysodium/LazySodium;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTx()[B
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/SessionPair;->tx:[B

    return-object v0
.end method

.method public getTxString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/SessionPair;->tx:[B

    invoke-static {v0}, Lcom/goterl/lazysodium/LazySodium;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
