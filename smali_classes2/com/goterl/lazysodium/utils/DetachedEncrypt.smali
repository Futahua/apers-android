.class public Lcom/goterl/lazysodium/utils/DetachedEncrypt;
.super Lcom/goterl/lazysodium/utils/Detached;
.source "DetachedEncrypt.java"


# instance fields
.field cipher:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 19
    invoke-direct {p0, p2}, Lcom/goterl/lazysodium/utils/Detached;-><init>([B)V

    .line 20
    iput-object p1, p0, Lcom/goterl/lazysodium/utils/DetachedEncrypt;->cipher:[B

    return-void
.end method


# virtual methods
.method public getCipher()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/DetachedEncrypt;->cipher:[B

    return-object v0
.end method

.method public getCipherString()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;->getCipher()[B

    move-result-object v0

    invoke-static {v0}, Lcom/goterl/lazysodium/LazySodium;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
