.class public Lcom/goterl/lazysodium/utils/Key;
.super Ljava/lang/Object;
.source "Key.java"


# instance fields
.field private key:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/goterl/lazysodium/utils/Key;->key:[B

    return-void
.end method

.method public static fromBase64String(Ljava/lang/String;)Lcom/goterl/lazysodium/utils/Key;
    .locals 2

    .line 55
    new-instance v0, Lcom/goterl/lazysodium/utils/Key;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/goterl/lazysodium/utils/Key;-><init>([B)V

    return-object v0
.end method

.method public static fromBytes([B)Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    .line 86
    new-instance v0, Lcom/goterl/lazysodium/utils/Key;

    invoke-direct {v0, p0}, Lcom/goterl/lazysodium/utils/Key;-><init>([B)V

    return-object v0
.end method

.method public static fromHexString(Ljava/lang/String;)Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    .line 46
    new-instance v0, Lcom/goterl/lazysodium/utils/Key;

    invoke-static {p0}, Lcom/goterl/lazysodium/LazySodium;->toBin(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/goterl/lazysodium/utils/Key;-><init>([B)V

    return-object v0
.end method

.method public static fromPlainString(Ljava/lang/String;)Lcom/goterl/lazysodium/utils/Key;
    .locals 2

    .line 64
    new-instance v0, Lcom/goterl/lazysodium/utils/Key;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/goterl/lazysodium/utils/Key;-><init>([B)V

    return-object v0
.end method

.method public static fromPlainString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    .line 74
    new-instance v0, Lcom/goterl/lazysodium/utils/Key;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/goterl/lazysodium/utils/Key;-><init>([B)V

    return-object v0
.end method

.method public static generate(Lcom/goterl/lazysodium/LazySodium;I)Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    .line 97
    new-instance v0, Lcom/goterl/lazysodium/utils/Key;

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/goterl/lazysodium/utils/Key;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 102
    instance-of v0, p1, Lcom/goterl/lazysodium/utils/Key;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_0
    check-cast p1, Lcom/goterl/lazysodium/utils/Key;

    .line 104
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/Key;->getAsHexString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/goterl/lazysodium/utils/Key;->getAsHexString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAsBytes()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/Key;->key:[B

    return-object v0
.end method

.method public getAsHexString()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/goterl/lazysodium/utils/Key;->key:[B

    invoke-static {v0}, Lcom/goterl/lazysodium/LazySodium;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsPlainString()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/utils/Key;->getAsPlainString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsPlainString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/goterl/lazysodium/utils/Key;->key:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
