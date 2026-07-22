.class public Lcom/goterl/lazysodium/utils/DetachedDecrypt;
.super Lcom/goterl/lazysodium/utils/Detached;
.source "DetachedDecrypt.java"


# instance fields
.field charset:Ljava/nio/charset/Charset;

.field message:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Lcom/goterl/lazysodium/utils/Detached;-><init>([B)V

    .line 21
    iput-object p1, p0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;->message:[B

    .line 22
    const-string p1, "UTF-8"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>([B[BLjava/nio/charset/Charset;)V
    .locals 0

    .line 26
    invoke-direct {p0, p2}, Lcom/goterl/lazysodium/utils/Detached;-><init>([B)V

    .line 27
    iput-object p1, p0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;->message:[B

    .line 28
    iput-object p3, p0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public getMessage()[B
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;->message:[B

    return-object v0
.end method

.method public getMessageString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/goterl/lazysodium/utils/DetachedDecrypt;->getMessage()[B

    move-result-object v1

    iget-object v2, p0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getMessageString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/goterl/lazysodium/utils/DetachedDecrypt;->getMessage()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
