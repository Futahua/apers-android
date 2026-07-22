.class public Lcom/goterl/lazysodium/utils/KeyPair;
.super Ljava/lang/Object;
.source "KeyPair.java"


# instance fields
.field private publicKey:Lcom/goterl/lazysodium/utils/Key;

.field private secretKey:Lcom/goterl/lazysodium/utils/Key;


# direct methods
.method public constructor <init>(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/goterl/lazysodium/utils/KeyPair;->publicKey:Lcom/goterl/lazysodium/utils/Key;

    .line 18
    iput-object p2, p0, Lcom/goterl/lazysodium/utils/KeyPair;->secretKey:Lcom/goterl/lazysodium/utils/Key;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 31
    instance-of v0, p1, Lcom/goterl/lazysodium/utils/KeyPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 32
    :cond_0
    check-cast p1, Lcom/goterl/lazysodium/utils/KeyPair;

    .line 33
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getSecretKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-virtual {p0}, Lcom/goterl/lazysodium/utils/KeyPair;->getSecretKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/goterl/lazysodium/utils/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    invoke-virtual {p0}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/goterl/lazysodium/utils/Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getPublicKey()Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/KeyPair;->publicKey:Lcom/goterl/lazysodium/utils/Key;

    return-object v0
.end method

.method public getSecretKey()Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/KeyPair;->secretKey:Lcom/goterl/lazysodium/utils/Key;

    return-object v0
.end method
