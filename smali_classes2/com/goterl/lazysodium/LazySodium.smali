.class public abstract Lcom/goterl/lazysodium/LazySodium;
.super Ljava/lang/Object;
.source "LazySodium.java"

# interfaces
.implements Lcom/goterl/lazysodium/interfaces/Base;
.implements Lcom/goterl/lazysodium/interfaces/Random;
.implements Lcom/goterl/lazysodium/interfaces/AEAD$Native;
.implements Lcom/goterl/lazysodium/interfaces/AEAD$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/GenericHash$Native;
.implements Lcom/goterl/lazysodium/interfaces/GenericHash$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/ShortHash$Native;
.implements Lcom/goterl/lazysodium/interfaces/ShortHash$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/SecureMemory$Native;
.implements Lcom/goterl/lazysodium/interfaces/SecureMemory$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/Auth$Native;
.implements Lcom/goterl/lazysodium/interfaces/Auth$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/SecretStream$Native;
.implements Lcom/goterl/lazysodium/interfaces/SecretStream$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/Stream$Native;
.implements Lcom/goterl/lazysodium/interfaces/Stream$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/Padding$Native;
.implements Lcom/goterl/lazysodium/interfaces/Padding$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/Helpers$Native;
.implements Lcom/goterl/lazysodium/interfaces/Helpers$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/PwHash$Native;
.implements Lcom/goterl/lazysodium/interfaces/PwHash$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/Hash$Native;
.implements Lcom/goterl/lazysodium/interfaces/Hash$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/Sign$Native;
.implements Lcom/goterl/lazysodium/interfaces/Sign$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/Box$Native;
.implements Lcom/goterl/lazysodium/interfaces/Box$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/SecretBox$Native;
.implements Lcom/goterl/lazysodium/interfaces/SecretBox$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/KeyExchange$Native;
.implements Lcom/goterl/lazysodium/interfaces/KeyExchange$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/KeyDerivation$Native;
.implements Lcom/goterl/lazysodium/interfaces/KeyDerivation$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/DiffieHellman$Native;
.implements Lcom/goterl/lazysodium/interfaces/DiffieHellman$Lazy;
.implements Lcom/goterl/lazysodium/interfaces/Ristretto255$Native;
.implements Lcom/goterl/lazysodium/interfaces/Ristretto255$Lazy;


# static fields
.field private static final hexArray:[C


# instance fields
.field protected final charset:Ljava/nio/charset/Charset;

.field protected final messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/goterl/lazysodium/LazySodium;->hexArray:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Lcom/goterl/lazysodium/utils/HexMessageEncoder;

    invoke-direct {v1}, Lcom/goterl/lazysodium/utils/HexMessageEncoder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/goterl/lazysodium/LazySodium;-><init>(Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V
    .locals 1

    .line 65
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;-><init>(Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/goterl/lazysodium/utils/HexMessageEncoder;

    invoke-direct {v0}, Lcom/goterl/lazysodium/utils/HexMessageEncoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/goterl/lazysodium/LazySodium;-><init>(Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->charset:Ljava/nio/charset/Charset;

    .line 53
    iput-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 129
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 130
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 131
    aget-byte v2, p0, v1

    and-int/lit16 v3, v2, 0xff

    mul-int/lit8 v4, v1, 0x2

    .line 132
    sget-object v5, Lcom/goterl/lazysodium/LazySodium;->hexArray:[C

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 133
    aget-char v2, v5, v2

    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private cryptoStreamDefaultXor([B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)[B
    .locals 9

    .line 1663
    array-length v0, p1

    .line 1664
    new-array v8, v0, [B

    .line 1665
    sget-object v1, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {p4, v1}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-long v4, v0

    .line 1666
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamChaCha20Xor([B[BJ[B[B)Z

    goto :goto_0

    .line 1667
    :cond_0
    sget-object v1, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20_IETF:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {p4, v1}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-long v4, v0

    .line 1668
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamChaCha20IetfXor([B[BJ[B[B)Z

    goto :goto_0

    .line 1669
    :cond_1
    sget-object v1, Lcom/goterl/lazysodium/interfaces/Stream$Method;->SALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {p4, v1}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    int-to-long v4, v0

    .line 1670
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamSalsa20Xor([B[BJ[B[B)Z

    goto :goto_0

    :cond_2
    int-to-long v4, v0

    .line 1672
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    move-object v1, p0

    move-object v2, v8

    move-object v3, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamXSalsa20Xor([B[BJ[B[B)Z

    :goto_0
    return-object v8
.end method

.method private static hexToBytes(Ljava/lang/String;)[B
    .locals 7

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 141
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 143
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 144
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static longToInt(J)Ljava/lang/Integer;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    return-void
.end method

.method public static toBin(Ljava/lang/String;)[B
    .locals 0

    .line 121
    invoke-static {p0}, Lcom/goterl/lazysodium/LazySodium;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 0

    .line 110
    invoke-static {p0}, Lcom/goterl/lazysodium/LazySodium;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bytes(Ljava/lang/String;)[B
    .locals 1

    .line 3250
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1
.end method

.method public convertKeyPairEd25519ToCurve25519(Lcom/goterl/lazysodium/utils/KeyPair;)Lcom/goterl/lazysodium/utils/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1258
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v0

    .line 1259
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getSecretKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p1

    const/16 v1, 0x20

    .line 1261
    new-array v2, v1, [B

    .line 1262
    new-array v1, v1, [B

    .line 1264
    invoke-virtual {p0, v2, v0}, Lcom/goterl/lazysodium/LazySodium;->convertPublicKeyEd25519ToCurve25519([B[B)Z

    move-result v0

    .line 1265
    invoke-virtual {p0, v1, p1}, Lcom/goterl/lazysodium/LazySodium;->convertSecretKeyEd25519ToCurve25519([B[B)Z

    move-result p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1271
    new-instance p1, Lcom/goterl/lazysodium/utils/KeyPair;

    invoke-static {v2}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-static {v1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/goterl/lazysodium/utils/KeyPair;-><init>(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)V

    return-object p1

    .line 1268
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Could not convert this key pair."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public convertPublicKeyEd25519ToCurve25519([B[B)Z
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_ed25519_pk_to_curve25519([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public convertSecretKeyEd25519ToCurve25519([B[B)Z
    .locals 1

    .line 1149
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_ed25519_sk_to_curve25519([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoAeadAES256GCMDecrypt([B[J[B[BJ[BJ[B[B)Z
    .locals 12

    .line 2259
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_aes256gcm_decrypt([B[J[B[BJ[BJ[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadAES256GCMDecryptDetached([B[B[BJ[B[BJ[B[B)Z
    .locals 12

    .line 2269
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_aes256gcm_decrypt_detached([B[B[BJ[B[BJ[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadAES256GCMEncrypt([B[J[BJ[BJ[B[B[B)Z
    .locals 12

    .line 2254
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_aes256gcm_encrypt([B[J[BJ[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadAES256GCMEncryptDetached([B[B[J[BJ[BJ[B[B[B)Z
    .locals 13

    .line 2264
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_aes256gcm_encrypt_detached([B[B[J[BJ[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadAES256GCMIsAvailable()Z
    .locals 2

    .line 2274
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_aes256gcm_is_available()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public cryptoAeadAES256GCMKeygen([B)V
    .locals 1

    .line 2249
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_aes256gcm_keygen([B)V

    return-void
.end method

.method public cryptoAeadChaCha20Poly1305Decrypt([B[J[B[BJ[BJ[B[B)Z
    .locals 12

    .line 2184
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_decrypt([B[J[B[BJ[BJ[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadChaCha20Poly1305DecryptDetached([B[B[BJ[B[BJ[B[B)Z
    .locals 12

    .line 2194
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_decrypt_detached([B[B[BJ[B[BJ[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadChaCha20Poly1305Encrypt([B[J[BJ[BJ[B[B[B)Z
    .locals 12

    move-wide/from16 v4, p4

    move-wide/from16 v7, p7

    const-wide/16 v0, 0x0

    cmp-long v2, v4, v0

    if-ltz v2, :cond_1

    move-object v3, p3

    .line 2173
    array-length v2, v3

    int-to-long v9, v2

    cmp-long v2, v4, v9

    if-gtz v2, :cond_1

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    move-object/from16 v6, p6

    .line 2176
    array-length v0, v6

    int-to-long v0, v0

    cmp-long v0, v7, v0

    if-gtz v0, :cond_0

    .line 2179
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_encrypt([B[J[BJ[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 2177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, p0

    .line 2174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoAeadChaCha20Poly1305EncryptDetached([B[B[J[BJ[BJ[B[B[B)Z
    .locals 13

    .line 2189
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_encrypt_detached([B[B[J[BJ[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadChaCha20Poly1305IetfDecrypt([B[J[B[BJ[BJ[B[B)Z
    .locals 12

    .line 2209
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_ietf_decrypt([B[J[B[BJ[BJ[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadChaCha20Poly1305IetfDecryptDetached([B[B[BJ[B[BJ[B[B)Z
    .locals 12

    .line 2219
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_ietf_decrypt_detached([B[B[BJ[B[BJ[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadChaCha20Poly1305IetfEncrypt([B[J[BJ[BJ[B[B[B)Z
    .locals 12

    .line 2204
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_ietf_encrypt([B[J[BJ[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadChaCha20Poly1305IetfEncryptDetached([B[B[J[BJ[BJ[B[B[B)Z
    .locals 13

    .line 2214
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_ietf_encrypt_detached([B[B[J[BJ[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadChaCha20Poly1305IetfKeygen([B)V
    .locals 1

    .line 2199
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_ietf_keygen([B)V

    return-void
.end method

.method public cryptoAeadChaCha20Poly1305Keygen([B)V
    .locals 1

    .line 2168
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_chacha20poly1305_keygen([B)V

    return-void
.end method

.method public cryptoAeadXChaCha20Poly1305IetfDecrypt([B[J[B[BJ[BJ[B[B)Z
    .locals 12

    .line 2234
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_xchacha20poly1305_ietf_decrypt([B[J[B[BJ[BJ[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadXChaCha20Poly1305IetfDecryptDetached([B[B[BJ[B[BJ[B[B)Z
    .locals 12

    .line 2244
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_xchacha20poly1305_ietf_decrypt_detached([B[B[BJ[B[BJ[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadXChaCha20Poly1305IetfEncrypt([B[J[BJ[BJ[B[B[B)Z
    .locals 12

    .line 2229
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_xchacha20poly1305_ietf_encrypt([B[J[BJ[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadXChaCha20Poly1305IetfEncryptDetached([B[B[J[BJ[BJ[B[B[B)Z
    .locals 13

    .line 2239
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_xchacha20poly1305_ietf_encrypt_detached([B[B[J[BJ[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0
.end method

.method public cryptoAeadXChaCha20Poly1305IetfKeygen([B)V
    .locals 1

    .line 2224
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_aead_xchacha20poly1305_ietf_keygen([B)V

    return-void
.end method

.method public cryptoAuth(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1730
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 1731
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1732
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    .line 1733
    array-length p1, v3

    int-to-long v4, p1

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuth([B[BJ[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1739
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1736
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not apply auth tag to your message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuth([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1701
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1704
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_auth([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1702
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "inLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha(Lcom/goterl/lazysodium/interfaces/Auth$Type;Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 6

    .line 1898
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1899
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v5

    .line 1900
    array-length p2, v2

    int-to-long v3, p2

    .line 1901
    sget-object p2, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA256:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    invoke-virtual {p1, p2}, Lcom/goterl/lazysodium/interfaces/Auth$Type;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 p3, 0x20

    if-eqz p2, :cond_0

    .line 1902
    new-array p1, p3, [B

    move-object v0, p0

    move-object v1, p1

    .line 1903
    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha256([B[BJ[B)Z

    .line 1904
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1905
    :cond_0
    sget-object p2, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA512:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    invoke-virtual {p1, p2}, Lcom/goterl/lazysodium/interfaces/Auth$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x40

    .line 1906
    new-array p1, p1, [B

    move-object v0, p0

    move-object v1, p1

    .line 1907
    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512([B[BJ[B)Z

    .line 1908
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1910
    :cond_1
    new-array p1, p3, [B

    move-object v0, p0

    move-object v1, p1

    .line 1911
    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512256([B[BJ[B)Z

    .line 1912
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cryptoAuthHMACSha256([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1758
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1761
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha256([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1759
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "inLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha256Final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[B)Z
    .locals 1

    .line 1790
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha256_final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthHMACSha256Init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BI)Z
    .locals 1

    if-ltz p3, :cond_0

    .line 1774
    array-length v0, p2

    if-gt p3, v0, :cond_0

    .line 1777
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha256_init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1775
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "keyLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha256Keygen([B)V
    .locals 1

    .line 1753
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha256_keygen([B)V

    return-void
.end method

.method public cryptoAuthHMACSha256Update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1782
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1785
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha256_update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1783
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "inLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha256Verify([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1766
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1769
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha256_verify([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1767
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "inLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha512([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1801
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1804
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1802
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "inLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha512256([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1843
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1846
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512256([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1844
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "inLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha512256Final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[B)Z
    .locals 1

    .line 1875
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512256_final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthHMACSha512256Init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BI)Z
    .locals 1

    if-ltz p3, :cond_0

    .line 1859
    array-length v0, p2

    if-gt p3, v0, :cond_0

    .line 1862
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512256_init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1860
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "keyLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha512256Keygen([B)V
    .locals 1

    .line 1838
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512256_keygen([B)V

    return-void
.end method

.method public cryptoAuthHMACSha512256Update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1867
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1870
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512256_update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1868
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "inLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha512256Verify([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1851
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1854
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512256_verify([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1852
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "inLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha512Final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[B)Z
    .locals 1

    .line 1833
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512_final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthHMACSha512Init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BI)Z
    .locals 1

    if-ltz p3, :cond_0

    .line 1817
    array-length v0, p2

    if-gt p3, v0, :cond_0

    .line 1820
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512_init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1818
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "keyLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha512Keygen([B)V
    .locals 1

    .line 1796
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512_keygen([B)V

    return-void
.end method

.method public cryptoAuthHMACSha512Update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1825
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1828
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512_update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1826
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "inLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACSha512Verify([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1809
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1812
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_hmacsha512_verify([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1810
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "inLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACShaFinal(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1946
    new-array v0, v0, [B

    .line 1947
    invoke-virtual {p0, p1, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha256Final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1951
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1949
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Could not finalise SHA Hash."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACShaFinal(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1992
    new-array v0, v0, [B

    .line 1993
    invoke-virtual {p0, p1, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512256Final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1997
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1995
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Could not finalise HMAC Sha 512256."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACShaFinal(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x40

    .line 1969
    new-array v0, v0, [B

    .line 1970
    invoke-virtual {p0, p1, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512Final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1974
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1972
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Could not finalise HMAC Sha 512."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoAuthHMACShaInit(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;Lcom/goterl/lazysodium/utils/Key;)Z
    .locals 1

    .line 1933
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p2

    .line 1934
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha256Init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BI)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthHMACShaInit(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;Lcom/goterl/lazysodium/utils/Key;)Z
    .locals 1

    .line 1979
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p2

    .line 1980
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512256Init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BI)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthHMACShaInit(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;Lcom/goterl/lazysodium/utils/Key;)Z
    .locals 1

    .line 1956
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p2

    .line 1957
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512Init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BI)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthHMACShaKeygen(Lcom/goterl/lazysodium/interfaces/Auth$Type;)Lcom/goterl/lazysodium/utils/Key;
    .locals 2

    .line 1881
    sget-object v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA256:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    invoke-virtual {p1, v0}, Lcom/goterl/lazysodium/interfaces/Auth$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    .line 1882
    new-array p1, v1, [B

    .line 1883
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha256Keygen([B)V

    .line 1884
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1

    .line 1885
    :cond_0
    sget-object v0, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA512:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    invoke-virtual {p1, v0}, Lcom/goterl/lazysodium/interfaces/Auth$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1886
    new-array p1, v1, [B

    .line 1887
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512Keygen([B)V

    .line 1888
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1

    .line 1890
    :cond_1
    new-array p1, v1, [B

    .line 1891
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512256Keygen([B)V

    .line 1892
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1
.end method

.method public cryptoAuthHMACShaUpdate(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;Ljava/lang/String;)Z
    .locals 2

    .line 1939
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 1940
    array-length v0, p2

    int-to-long v0, v0

    .line 1941
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha256Update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BJ)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthHMACShaUpdate(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;Ljava/lang/String;)Z
    .locals 2

    .line 1985
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 1986
    array-length v0, p2

    int-to-long v0, v0

    .line 1987
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512256Update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BJ)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthHMACShaUpdate(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;Ljava/lang/String;)Z
    .locals 2

    .line 1962
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 1963
    array-length v0, p2

    int-to-long v0, v0

    .line 1964
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512Update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BJ)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthHMACShaVerify(Lcom/goterl/lazysodium/interfaces/Auth$Type;Ljava/lang/String;Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Z
    .locals 7

    .line 1918
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 1919
    invoke-virtual {p0, p3}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1920
    invoke-virtual {p4}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    .line 1921
    array-length p2, v3

    int-to-long v4, p2

    .line 1922
    sget-object p2, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA256:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    invoke-virtual {p1, p2}, Lcom/goterl/lazysodium/interfaces/Auth$Type;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move-object v1, p0

    .line 1923
    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha256Verify([B[BJ[B)Z

    move-result p1

    return p1

    .line 1924
    :cond_0
    sget-object p2, Lcom/goterl/lazysodium/interfaces/Auth$Type;->SHA512:Lcom/goterl/lazysodium/interfaces/Auth$Type;

    invoke-virtual {p1, p2}, Lcom/goterl/lazysodium/interfaces/Auth$Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v1, p0

    .line 1925
    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512Verify([B[BJ[B)Z

    move-result p1

    return p1

    :cond_1
    move-object v1, p0

    .line 1927
    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthHMACSha512256Verify([B[BJ[B)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthKeygen()Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    const/16 v0, 0x20

    .line 1723
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 1724
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthKeygen([B)V

    .line 1725
    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    return-object v0
.end method

.method public cryptoAuthKeygen([B)V
    .locals 1

    .line 1717
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_keygen([B)V

    return-void
.end method

.method public cryptoAuthVerify(Ljava/lang/String;Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Z
    .locals 7

    .line 1744
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 1745
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1746
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    .line 1747
    array-length p1, v3

    int-to-long v4, p1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoAuthVerify([B[BJ[B)Z

    move-result p1

    return p1
.end method

.method public cryptoAuthVerify([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1709
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1712
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_auth_verify([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1710
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "inLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxBeforeNm(Lcom/goterl/lazysodium/utils/KeyPair;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 950
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getSecretKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxBeforeNm([B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cryptoBoxBeforeNm([B[B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 934
    new-array v0, v0, [B

    .line 935
    array-length v1, p1

    invoke-static {v1}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkPublicKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 938
    array-length v1, p2

    invoke-static {v1}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkSecretKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 941
    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxBeforeNm([B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 945
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 943
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Unable to encrypt using shared secret key."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 939
    :cond_1
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Secret key length is incorrect."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 936
    :cond_2
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Public key length is incorrect."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxBeforeNm([B[B[B)Z
    .locals 1

    .line 816
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_box_beforenm([B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoBoxDetached([B[B[BJ[B[B[B)Z
    .locals 9

    move-wide v4, p4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    move-object v3, p3

    .line 800
    array-length v0, v3

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/goterl/lazysodium/Sodium;->crypto_box_detached([B[B[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 801
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoBoxDetachedAfterNm(Ljava/lang/String;[BLjava/lang/String;)Lcom/goterl/lazysodium/utils/DetachedEncrypt;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1000
    array-length v0, p2

    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkNonce(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p3}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 1006
    array-length p3, v8

    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkBeforeNmBytes(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1010
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1011
    array-length p1, v4

    new-array p1, p1, [B

    const/16 p3, 0x10

    .line 1012
    new-array p3, p3, [B

    .line 1015
    array-length v0, v4

    int-to-long v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxDetachedAfterNm([B[B[BJ[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1021
    new-instance p2, Lcom/goterl/lazysodium/utils/DetachedEncrypt;

    invoke-direct {p2, p1, p3}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;-><init>([B[B)V

    return-object p2

    .line 1017
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not fully complete shared secret key detached encryption."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1007
    :cond_1
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Incorrect shared secret key length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1001
    :cond_2
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Incorrect nonce length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxDetachedAfterNm([B[B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 837
    array-length v0, p3

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_box_detached_afternm([B[B[BJ[B[B)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    .line 838
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoBoxEasy(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/KeyPair;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 895
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 896
    array-length p1, v2

    add-int/lit8 p1, p1, 0x10

    new-array p1, p1, [B

    .line 897
    array-length v0, v2

    int-to-long v3, v0

    .line 902
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    .line 903
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/KeyPair;->getSecretKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p3

    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 897
    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxEasy([B[BJ[B[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 908
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 906
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not encrypt your message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxEasy([B[BJ[B[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 784
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_box_easy([B[BJ[B[B[B)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    .line 785
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "messageLen out of bounds: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoBoxEasyAfterNm(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 955
    array-length v0, p2

    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkNonce(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p3}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 961
    array-length p3, v7

    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkBeforeNmBytes(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 965
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 966
    array-length p1, v3

    add-int/lit8 p1, p1, 0x10

    new-array p1, p1, [B

    .line 968
    array-length p3, v3

    int-to-long v4, p3

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxEasyAfterNm([B[BJ[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 973
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 970
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not fully complete shared secret key encryption."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 962
    :cond_1
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Incorrect shared secret key length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 956
    :cond_2
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Incorrect nonce length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxEasyAfterNm([B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 821
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_box_easy_afternm([B[BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 822
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "messageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxKeypair()Lcom/goterl/lazysodium/utils/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 871
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v1

    .line 872
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 873
    invoke-virtual {p0, v1, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxKeypair([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    new-instance v2, Lcom/goterl/lazysodium/utils/KeyPair;

    invoke-static {v1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v1

    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/goterl/lazysodium/utils/KeyPair;-><init>(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)V

    return-object v2

    .line 874
    :cond_0
    new-instance v0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v1, "Unable to create a public and private key."

    invoke-direct {v0, v1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoBoxKeypair([B[B)Z
    .locals 1

    .line 774
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_box_keypair([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoBoxOpenDetached([B[B[BJ[B[B[B)Z
    .locals 9

    move-wide v4, p4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    move-object v2, p2

    .line 808
    array-length v0, v2

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    .line 811
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/goterl/lazysodium/Sodium;->crypto_box_open_detached([B[B[BJ[B[B[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 809
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cipherTextLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoBoxOpenDetachedAfterNm(Lcom/goterl/lazysodium/utils/DetachedEncrypt;[BLjava/lang/String;)Lcom/goterl/lazysodium/utils/DetachedDecrypt;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1026
    array-length v0, p2

    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkNonce(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p3}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v8

    .line 1031
    array-length p3, v8

    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkBeforeNmBytes(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1035
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;->getCipher()[B

    move-result-object v3

    .line 1036
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;->getMac()[B

    move-result-object p1

    .line 1037
    array-length p3, v3

    new-array p3, p3, [B

    .line 1039
    array-length v0, v3

    int-to-long v5, v0

    move-object v1, p0

    move-object v2, p3

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v8}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxOpenDetachedAfterNm([B[B[BJ[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1044
    new-instance p2, Lcom/goterl/lazysodium/utils/DetachedDecrypt;

    invoke-direct {p2, p3, p1}, Lcom/goterl/lazysodium/utils/DetachedDecrypt;-><init>([B[B)V

    return-object p2

    .line 1041
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not fully complete shared secret key detached decryption."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1032
    :cond_1
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Incorrect shared secret key length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1027
    :cond_2
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Incorrect nonce length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxOpenDetachedAfterNm([B[B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 845
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_box_open_detached_afternm([B[B[BJ[B[B)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cipherTextLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoBoxOpenEasy(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/KeyPair;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 913
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 914
    array-length p1, v3

    add-int/lit8 p1, p1, -0x10

    new-array p1, p1, [B

    .line 915
    array-length v0, v3

    int-to-long v4, v0

    .line 921
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    .line 922
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/KeyPair;->getSecretKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p3

    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    .line 916
    invoke-virtual/range {v1 .. v8}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxOpenEasy([B[BJ[B[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 929
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 926
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not decrypt your message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxOpenEasy([B[BJ[B[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 792
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_box_open_easy([B[BJ[B[B[B)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "cipherTextLen out of bounds: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoBoxOpenEasyAfterNm(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 978
    array-length v0, p2

    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkNonce(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 982
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p3}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 983
    array-length p3, v7

    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkBeforeNmBytes(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 987
    iget-object p3, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p3, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 988
    array-length p1, v3

    add-int/lit8 p1, p1, -0x10

    new-array p1, p1, [B

    .line 990
    array-length p3, v3

    int-to-long v4, p3

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxOpenEasyAfterNm([B[BJ[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 995
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 992
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not fully complete shared secret key decryption."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 984
    :cond_1
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Incorrect shared secret key length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 979
    :cond_2
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Incorrect nonce length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxOpenEasyAfterNm([B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 829
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_box_open_easy_afternm([B[BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 830
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "cLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxSeal([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 853
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 856
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_box_seal([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 854
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "messageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxSealEasy(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1049
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v5

    .line 1050
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1051
    array-length p1, v2

    add-int/lit8 p1, p1, 0x30

    new-array p1, p1, [B

    .line 1053
    array-length p2, v2

    int-to-long v3, p2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxSeal([B[BJ[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1056
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1054
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not encrypt message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxSealOpen([B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 861
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_box_seal_open([B[BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 862
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "cipherLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxSealOpenEasy(Ljava/lang/String;Lcom/goterl/lazysodium/utils/KeyPair;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 1062
    array-length p1, v3

    add-int/lit8 p1, p1, -0x30

    new-array p1, p1, [B

    .line 1064
    array-length v0, v3

    int-to-long v4, v0

    .line 1067
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    .line 1068
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/KeyPair;->getSecretKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p2

    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    .line 1064
    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxSealOpen([B[BJ[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1072
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1070
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not decrypt your message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxSeedKeypair([B)Lcom/goterl/lazysodium/utils/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 881
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v1

    .line 882
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 883
    array-length v2, p1

    invoke-static {v2}, Lcom/goterl/lazysodium/interfaces/Box$Checker;->checkSeed(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 886
    invoke-virtual {p0, v1, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoBoxSeedKeypair([B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 889
    new-instance p1, Lcom/goterl/lazysodium/utils/KeyPair;

    invoke-static {v1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v1

    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/goterl/lazysodium/utils/KeyPair;-><init>(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)V

    return-object p1

    .line 887
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Unable to create a public and private key."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 884
    :cond_1
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Seed is incorrect size."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoBoxSeedKeypair([B[B[B)Z
    .locals 1

    .line 779
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_box_seed_keypair([B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoCoreRistretto255Add(Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2837
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->pointBuffer()[B

    move-result-object v0

    .line 2838
    invoke-virtual {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->toBytes()[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->toBytes()[B

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255Add([B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2842
    invoke-static {p0, v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->fromBytes(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2839
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Either p or q was not a valid point."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2834
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255Add([B[B[B)Z
    .locals 1

    .line 2643
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensurePointFits([B)V

    .line 2644
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkPoint([B)V

    .line 2645
    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkPoint([B)V

    .line 2647
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_add([B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoCoreRistretto255FromHash(Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2751
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255FromHash([B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2748
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255FromHash([B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 2757
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->pointBuffer()[B

    move-result-object v0

    .line 2759
    invoke-virtual {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255FromHash([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2763
    invoke-static {p0, v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->fromBytes(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2760
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Conversion from hash to Ristretto point failed"

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255FromHash([B[B)Z
    .locals 1

    .line 2618
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensurePointFits([B)V

    .line 2619
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkHash([B)V

    .line 2621
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_from_hash([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoCoreRistretto255IsValidPoint(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2734
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255IsValidPoint([B)Z

    move-result p1

    return p1

    .line 2731
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255IsValidPoint([B)Z
    .locals 2

    .line 2605
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 2606
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_is_valid_point([B)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cryptoCoreRistretto255Random()Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1

    .line 2739
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->pointBuffer()[B

    move-result-object v0

    .line 2740
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255Random([B)V

    .line 2742
    invoke-static {p0, v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->fromBytes(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object v0

    return-object v0
.end method

.method public cryptoCoreRistretto255Random([B)V
    .locals 1

    .line 2611
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensurePointFits([B)V

    .line 2613
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_random([B)V

    return-void
.end method

.method public cryptoCoreRistretto255ScalarAdd(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3012
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3009
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarAdd(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3003
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3000
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarAdd(Ljava/lang/String;[B)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    .line 3021
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3018
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarAdd(Ljava/math/BigInteger;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2994
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2991
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2985
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p2

    .line 2984
    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2981
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarAdd(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 0

    if-eqz p1, :cond_0

    .line 3039
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3036
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarAdd([BLjava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p2, :cond_0

    .line 3030
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3027
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarAdd([BLjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    if-eqz p2, :cond_0

    .line 3048
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3045
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;
    .locals 1

    .line 3053
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarBuffer()[B

    move-result-object v0

    .line 3054
    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarAdd([B[B[B)V

    .line 3056
    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->bytesToScalar([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public cryptoCoreRistretto255ScalarAdd([B[B[B)V
    .locals 1

    .line 2700
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensureScalarFits([B)V

    .line 2701
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2702
    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2704
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_scalar_add([B[B[B)V

    return-void
.end method

.method public cryptoCoreRistretto255ScalarComplement(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    .line 2967
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarComplement([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2964
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarComplement(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    .line 2958
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarComplement([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2955
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarComplement([B)Ljava/math/BigInteger;
    .locals 1

    .line 2972
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarBuffer()[B

    move-result-object v0

    .line 2973
    invoke-virtual {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarComplement([B[B)V

    .line 2975
    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->bytesToScalar([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public cryptoCoreRistretto255ScalarComplement([B[B)V
    .locals 1

    .line 2692
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensureScalarFits([B)V

    .line 2693
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2695
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_scalar_complement([B[B)V

    return-void
.end method

.method public cryptoCoreRistretto255ScalarInvert(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2912
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarInvert([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2909
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarInvert(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2902
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarInvert([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2899
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarInvert([B)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 2917
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarBuffer()[B

    move-result-object v0

    .line 2919
    invoke-virtual {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarInvert([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2923
    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->bytesToScalar([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2920
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Scalar inversion failed. Did you pass 0?"

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarInvert([B[B)Z
    .locals 1

    .line 2676
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensureScalarFits([B)V

    .line 2677
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2679
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_scalar_invert([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoCoreRistretto255ScalarMul(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3174
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3171
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarMul(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3165
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3162
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarMul(Ljava/lang/String;[B)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    .line 3183
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3180
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarMul(Ljava/math/BigInteger;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3156
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3153
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarMul(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3147
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p2

    .line 3146
    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3143
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarMul(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 0

    if-eqz p1, :cond_0

    .line 3201
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3198
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarMul([BLjava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p2, :cond_0

    .line 3192
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3189
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarMul([BLjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    if-eqz p2, :cond_0

    .line 3210
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;
    .locals 1

    .line 3215
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarBuffer()[B

    move-result-object v0

    .line 3216
    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarMul([B[B[B)V

    .line 3218
    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->bytesToScalar([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public cryptoCoreRistretto255ScalarMul([B[B[B)V
    .locals 1

    .line 2718
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensureScalarFits([B)V

    .line 2719
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2720
    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2722
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_scalar_mul([B[B[B)V

    return-void
.end method

.method public cryptoCoreRistretto255ScalarNegate(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    .line 2941
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarNegate([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2938
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarNegate(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    .line 2932
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarNegate([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2929
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarNegate([B)Ljava/math/BigInteger;
    .locals 1

    .line 2946
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarBuffer()[B

    move-result-object v0

    .line 2947
    invoke-virtual {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarNegate([B[B)V

    .line 2949
    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->bytesToScalar([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public cryptoCoreRistretto255ScalarNegate([B[B)V
    .locals 1

    .line 2684
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensureScalarFits([B)V

    .line 2685
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2687
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_scalar_negate([B[B)V

    return-void
.end method

.method public cryptoCoreRistretto255ScalarRandom()Ljava/math/BigInteger;
    .locals 1

    .line 2863
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarBuffer()[B

    move-result-object v0

    .line 2864
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarRandom([B)V

    .line 2866
    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->bytesToScalar([B)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public cryptoCoreRistretto255ScalarRandom([B)V
    .locals 1

    .line 2661
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensureScalarFits([B)V

    .line 2663
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_scalar_random([B)V

    return-void
.end method

.method public cryptoCoreRistretto255ScalarReduce(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    .line 2884
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarReduce([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2881
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2875
    invoke-static {p1, v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;Z)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarReduce([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 2872
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarReduce([B)Ljava/math/BigInteger;
    .locals 1

    .line 2889
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarBuffer()[B

    move-result-object v0

    .line 2890
    invoke-virtual {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarReduce([B[B)V

    .line 2892
    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->bytesToScalar([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public cryptoCoreRistretto255ScalarReduce([B[B)V
    .locals 1

    .line 2668
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensureScalarFits([B)V

    .line 2669
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkNonReducedScalar([B)V

    .line 2671
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_scalar_reduce([B[B)V

    return-void
.end method

.method public cryptoCoreRistretto255ScalarSub(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3093
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3090
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarSub(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3084
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3081
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarSub(Ljava/lang/String;[B)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    .line 3102
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3099
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarSub(Ljava/math/BigInteger;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3075
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3072
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarSub(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3066
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p2

    .line 3065
    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3062
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarSub(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 0

    if-eqz p1, :cond_0

    .line 3120
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarSub([BLjava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    if-eqz p2, :cond_0

    .line 3111
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarSub([BLjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    if-eqz p2, :cond_0

    .line 3129
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 3126
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;
    .locals 1

    .line 3134
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarBuffer()[B

    move-result-object v0

    .line 3135
    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255ScalarSub([B[B[B)V

    .line 3137
    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->bytesToScalar([B)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public cryptoCoreRistretto255ScalarSub([B[B[B)V
    .locals 1

    .line 2709
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensureScalarFits([B)V

    .line 2710
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2711
    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2713
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_scalar_sub([B[B[B)V

    return-void
.end method

.method public cryptoCoreRistretto255Sub(Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2853
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->pointBuffer()[B

    move-result-object v0

    .line 2854
    invoke-virtual {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->toBytes()[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->toBytes()[B

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoCoreRistretto255Sub([B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2858
    invoke-static {p0, v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->fromBytes(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2855
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Either p or q was not a valid point."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2850
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoCoreRistretto255Sub([B[B[B)Z
    .locals 1

    .line 2652
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensurePointFits([B)V

    .line 2653
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkPoint([B)V

    .line 2654
    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkPoint([B)V

    .line 2656
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_core_ristretto255_sub([B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoGenericHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 2128
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 p1, 0x20

    .line 2129
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 2130
    array-length v2, p1

    array-length v0, v3

    int-to-long v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoGenericHash([BI[BJ[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2133
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Could not hash the message."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoGenericHash(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 2113
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 2114
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    const/16 p1, 0x20

    .line 2116
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 2117
    array-length v2, p1

    array-length p2, v3

    int-to-long v4, p2

    array-length v7, v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoGenericHash([BI[BJ[BI)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2123
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2120
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not hash the message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoGenericHash([BI[BJ)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    .line 2053
    array-length v0, p3

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_1

    if-ltz p2, :cond_0

    .line 2056
    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 2059
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash([BI[BJ[BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 2057
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "outLen out of bounds: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2054
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "inLen out of bounds: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoGenericHash([BI[BJ[BI)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_1

    .line 2042
    array-length v0, p3

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_1

    if-ltz p2, :cond_0

    .line 2045
    array-length v0, p1

    if-gt p2, v0, :cond_0

    .line 2048
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash([BI[BJ[BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    .line 2046
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "outLen out of bounds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2043
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoGenericHashFinal([BI)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 2153
    new-array v0, p2, [B

    .line 2154
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash_final([B[BI)I

    move-result p1

    if-nez p1, :cond_0

    .line 2158
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2156
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not finalise the hashing process."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoGenericHashFinal([B[BI)Z
    .locals 1

    .line 2082
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash_final([B[BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoGenericHashInit([BI)Z
    .locals 3

    .line 2069
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash_init([B[BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoGenericHashInit([BLcom/goterl/lazysodium/utils/Key;I)Z
    .locals 2

    .line 2141
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p2

    .line 2142
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash_init([B[BII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cryptoGenericHashInit([B[BII)Z
    .locals 1

    .line 2064
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash_init([B[BII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoGenericHashKeygen()Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    const/16 v0, 0x20

    .line 2099
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 2100
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoGenericHashKeygen([B)V

    .line 2101
    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    return-object v0
.end method

.method public cryptoGenericHashKeygen(I)Lcom/goterl/lazysodium/utils/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 2106
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 2107
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoGenericHashKeygen([B)V

    .line 2108
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1
.end method

.method public cryptoGenericHashKeygen([B)V
    .locals 1

    .line 2092
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash_keygen([B)V

    return-void
.end method

.method public cryptoGenericHashStateBytes()I
    .locals 1

    .line 2087
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash_statebytes()I

    move-result v0

    return v0
.end method

.method public cryptoGenericHashUpdate([BLjava/lang/String;)Z
    .locals 3

    .line 2147
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 2148
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    array-length v1, p2

    int-to-long v1, v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash_update([B[BJ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cryptoGenericHashUpdate([B[BJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 2074
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 2077
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_generichash_update([B[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 2075
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "inLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoHashSha256(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v0, 0x20

    .line 581
    new-array v0, v0, [B

    .line 582
    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/goterl/lazysodium/LazySodium;->cryptoHashSha256([B[BJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 585
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 583
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Unsuccessful sha-256 hash."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoHashSha256([B[BJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 525
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_hash_sha256([B[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "inLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoHashSha256Final(Lcom/goterl/lazysodium/interfaces/Hash$State256;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 607
    new-array v0, v0, [B

    .line 608
    invoke-virtual {p0, p1, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoHashSha256Final(Lcom/goterl/lazysodium/interfaces/Hash$State256;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 611
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 609
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Could not finalise sha-256."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoHashSha256Final(Lcom/goterl/lazysodium/interfaces/Hash$State256;[B)Z
    .locals 1

    .line 546
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_hash_sha256_final(Lcom/goterl/lazysodium/interfaces/Hash$State256;[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoHashSha256Init(Lcom/goterl/lazysodium/interfaces/Hash$State256;)Z
    .locals 1

    .line 533
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_hash_sha256_init(Lcom/goterl/lazysodium/interfaces/Hash$State256;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoHashSha256Update(Lcom/goterl/lazysodium/interfaces/Hash$State256;Ljava/lang/String;)Z
    .locals 2

    .line 601
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 602
    array-length v0, p2

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/goterl/lazysodium/LazySodium;->cryptoHashSha256Update(Lcom/goterl/lazysodium/interfaces/Hash$State256;[BJ)Z

    move-result p1

    return p1
.end method

.method public cryptoHashSha256Update(Lcom/goterl/lazysodium/interfaces/Hash$State256;[BJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 538
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_hash_sha256_update(Lcom/goterl/lazysodium/interfaces/Hash$State256;[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 539
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "inLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoHashSha512(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 590
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v0, 0x40

    .line 591
    new-array v0, v0, [B

    .line 592
    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/goterl/lazysodium/LazySodium;->cryptoHashSha512([B[BJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 595
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 593
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Unsuccessful sha-512 hash."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoHashSha512([B[BJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 551
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_hash_sha512([B[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 552
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "inLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoHashSha512Final(Lcom/goterl/lazysodium/interfaces/Hash$State512;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x40

    .line 623
    new-array v0, v0, [B

    .line 624
    invoke-virtual {p0, p1, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoHashSha512Final(Lcom/goterl/lazysodium/interfaces/Hash$State512;[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 627
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 625
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Could not finalise sha-512."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoHashSha512Final(Lcom/goterl/lazysodium/interfaces/Hash$State512;[B)Z
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_hash_sha512_final(Lcom/goterl/lazysodium/interfaces/Hash$State512;[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoHashSha512Init(Lcom/goterl/lazysodium/interfaces/Hash$State512;)Z
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_hash_sha512_init(Lcom/goterl/lazysodium/interfaces/Hash$State512;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoHashSha512Update(Lcom/goterl/lazysodium/interfaces/Hash$State512;Ljava/lang/String;)Z
    .locals 2

    .line 617
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 618
    array-length v0, p2

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/goterl/lazysodium/LazySodium;->cryptoHashSha512Update(Lcom/goterl/lazysodium/interfaces/Hash$State512;[BJ)Z

    move-result p1

    return p1
.end method

.method public cryptoHashSha512Update(Lcom/goterl/lazysodium/interfaces/Hash$State512;[BJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 564
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_hash_sha512_update(Lcom/goterl/lazysodium/interfaces/Hash$State512;[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 565
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "inLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoKdfDeriveFromKey([BIJ[B[B)I
    .locals 9

    const/16 v0, 0x10

    if-lt p2, v0, :cond_3

    const/16 v0, 0x40

    if-lt v0, p2, :cond_3

    .line 266
    array-length v0, p1

    if-lt v0, p2, :cond_2

    .line 269
    array-length v0, p6

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 272
    array-length v0, p5

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/goterl/lazysodium/Sodium;->crypto_kdf_derive_from_key([BIJ[B[B)I

    move-result p1

    return p1

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Context length is wrong: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, p5

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Master key length is wrong: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p3, p6

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sub Key array is less than specified size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Sub Key Length is out of bounds: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoKdfDeriveFromKey(IJLjava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/Key;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 288
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/KeyDerivation$Checker;->subKeyIsCorrect(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/goterl/lazysodium/interfaces/KeyDerivation$Checker;->masterKeyIsCorrect(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    invoke-virtual {p0, p4}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lcom/goterl/lazysodium/interfaces/KeyDerivation$Checker;->contextIsCorrect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    new-array v0, p1, [B

    .line 299
    invoke-virtual {p0, p4}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 300
    invoke-virtual {p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    .line 301
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, v0

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_kdf_derive_from_key([BIJ[B[B)I

    move-result p1

    .line 309
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 312
    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1

    .line 310
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Failed kdfDeriveFromKey."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :cond_1
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Context is not the correct length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_2
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Master key is not the correct length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :cond_3
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Subkey is not between the correct lengths."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoKdfKeygen()Lcom/goterl/lazysodium/utils/Key;
    .locals 2

    const/16 v0, 0x20

    .line 280
    new-array v0, v0, [B

    .line 281
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/Sodium;->crypto_kdf_keygen([B)V

    .line 282
    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    return-object v0
.end method

.method public cryptoKdfKeygen([B)V
    .locals 3

    .line 255
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_kdf_keygen([B)V

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Master key length is wrong: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoKxClientSessionKeys(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/SessionPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 383
    new-array v7, v0, [B

    .line 384
    new-array v0, v0, [B

    .line 386
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v4

    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v5

    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoKxClientSessionKeys([B[B[B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 390
    new-instance p1, Lcom/goterl/lazysodium/utils/SessionPair;

    invoke-direct {p1, v7, v0}, Lcom/goterl/lazysodium/utils/SessionPair;-><init>([B[B)V

    return-object p1

    .line 387
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Failed creating client session keys."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoKxClientSessionKeys(Lcom/goterl/lazysodium/utils/KeyPair;Lcom/goterl/lazysodium/utils/KeyPair;)Lcom/goterl/lazysodium/utils/SessionPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getSecretKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoKxClientSessionKeys(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/SessionPair;

    move-result-object p1

    return-object p1
.end method

.method public cryptoKxClientSessionKeys([B[B[B[B[B)Z
    .locals 6

    .line 332
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/Sodium;->crypto_kx_client_session_keys([B[B[B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoKxKeypair()Lcom/goterl/lazysodium/utils/KeyPair;
    .locals 3

    const/16 v0, 0x20

    .line 345
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v1

    .line 346
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/goterl/lazysodium/Sodium;->crypto_kx_keypair([B[B)I

    .line 350
    new-instance v2, Lcom/goterl/lazysodium/utils/KeyPair;

    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-static {v1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/goterl/lazysodium/utils/KeyPair;-><init>(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)V

    return-object v2
.end method

.method public cryptoKxKeypair([B)Lcom/goterl/lazysodium/utils/KeyPair;
    .locals 3

    const/16 v0, 0x20

    .line 355
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v1

    .line 356
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_kx_seed_keypair([B[B[B)I

    .line 360
    new-instance p1, Lcom/goterl/lazysodium/utils/KeyPair;

    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-static {v1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/goterl/lazysodium/utils/KeyPair;-><init>(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)V

    return-object p1
.end method

.method public cryptoKxKeypair([B[B)Z
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_kx_keypair([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoKxSeedKeypair([B[B[B)Z
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_kx_seed_keypair([B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoKxServerSessionKeys(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/SessionPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 371
    new-array v7, v0, [B

    .line 372
    new-array v0, v0, [B

    .line 374
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v4

    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v5

    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoKxServerSessionKeys([B[B[B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    new-instance p1, Lcom/goterl/lazysodium/utils/SessionPair;

    invoke-direct {p1, v7, v0}, Lcom/goterl/lazysodium/utils/SessionPair;-><init>([B[B)V

    return-object p1

    .line 375
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Failed creating server session keys."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoKxServerSessionKeys(Lcom/goterl/lazysodium/utils/KeyPair;Lcom/goterl/lazysodium/utils/KeyPair;)Lcom/goterl/lazysodium/utils/SessionPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 395
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/KeyPair;->getSecretKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/KeyPair;->getPublicKey()Lcom/goterl/lazysodium/utils/Key;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoKxServerSessionKeys(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/SessionPair;

    move-result-object p1

    return-object p1
.end method

.method public cryptoKxServerSessionKeys([B[B[B[B[B)Z
    .locals 6

    .line 337
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/Sodium;->crypto_kx_server_session_keys([B[B[B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoPwHash(Ljava/lang/String;I[BJLcom/sun/jna/NativeLong;Lcom/goterl/lazysodium/interfaces/PwHash$Alg;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    move/from16 v0, p2

    .line 461
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 462
    array-length v1, v4

    int-to-long v5, v1

    move-object/from16 v12, p3

    array-length v1, v12

    int-to-long v7, v1

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/goterl/lazysodium/interfaces/PwHash$Checker;->checkAll(JJJLcom/sun/jna/NativeLong;)Z

    .line 463
    new-array v13, v0, [B

    .line 464
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    int-to-long v2, v0

    array-length v0, v4

    int-to-long v5, v0

    invoke-virtual/range {p7 .. p7}, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->getValue()I

    move-result v11

    move-object v0, v1

    move-object v1, v13

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_pwhash([BJ[BJ[BJLcom/sun/jna/NativeLong;I)I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 471
    iget-object v1, v0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v1, v13}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v0, p0

    .line 466
    new-instance v1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v2, "Could not hash your string. This may be due to insufficient memory or your CPU does not support Argon2\'s instruction set."

    invoke-direct {v1, v2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cryptoPwHash([BI[BI[BJLcom/sun/jna/NativeLong;Lcom/goterl/lazysodium/interfaces/PwHash$Alg;)Z
    .locals 12

    move v0, p2

    move/from16 v1, p4

    if-ltz v0, :cond_1

    move-object v2, p1

    .line 412
    array-length v3, v2

    if-gt v0, v3, :cond_1

    if-ltz v1, :cond_0

    move-object v4, p3

    .line 415
    array-length v3, v4

    if-gt v1, v3, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v3

    int-to-long v5, v0

    int-to-long v7, v1

    .line 425
    invoke-virtual/range {p9 .. p9}, Lcom/goterl/lazysodium/interfaces/PwHash$Alg;->getValue()I

    move-result v11

    move-object v0, v3

    move-object v1, p1

    move-wide v2, v5

    move-object v4, p3

    move-wide v5, v7

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    .line 418
    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_pwhash([BJ[BJ[BJLcom/sun/jna/NativeLong;I)I

    move-result v0

    move-object v2, p0

    .line 426
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v2, p0

    .line 416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "passwordLen out of bounds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v2, p0

    .line 413
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "outputHashLen out of bounds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public cryptoPwHashStr(Ljava/lang/String;JLcom/sun/jna/NativeLong;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 476
    new-array v0, v0, [B

    .line 477
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 478
    array-length v4, v3

    move-object v1, p0

    move-object v2, v0

    move-wide v5, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoPwHashStr([B[BIJLcom/sun/jna/NativeLong;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, v0}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 480
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Password hashing failed."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoPwHashStr([B[BIJLcom/sun/jna/NativeLong;)Z
    .locals 9

    if-ltz p3, :cond_0

    .line 435
    array-length v0, p2

    if-gt p3, v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    int-to-long v4, p3

    move-object v2, p1

    move-object v3, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/goterl/lazysodium/Sodium;->crypto_pwhash_str([B[BJJLcom/sun/jna/NativeLong;)I

    move-result p1

    .line 439
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 436
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "passwordLen out of bounds: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoPwHashStrNeedsRehash([BJLcom/sun/jna/NativeLong;)Z
    .locals 1

    .line 452
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_pwhash_str_needs_rehash([BJLcom/sun/jna/NativeLong;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoPwHashStrRemoveNulls(Ljava/lang/String;JLcom/sun/jna/NativeLong;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x80

    .line 487
    new-array v0, v0, [B

    .line 488
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 489
    array-length v4, v3

    move-object v1, p0

    move-object v2, v0

    move-wide v5, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoPwHashStr([B[BIJLcom/sun/jna/NativeLong;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 494
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->removeNulls([B)[B

    move-result-object p1

    .line 495
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 491
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Password hashing failed."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoPwHashStrVerify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 501
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 505
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    if-eqz v0, :cond_0

    .line 508
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 509
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 514
    :cond_0
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoPwHashStrVerify([B[BI)Z

    move-result p1

    return p1
.end method

.method public cryptoPwHashStrVerify([B[BI)Z
    .locals 3

    if-ltz p3, :cond_0

    .line 444
    array-length v0, p2

    if-gt p3, v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    int-to-long v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/goterl/lazysodium/Sodium;->crypto_pwhash_str_verify([B[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 445
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "passwordLen out of bounds: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoScalarMult(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    const/16 v0, 0x20

    .line 762
    new-array v0, v0, [B

    .line 763
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarMult([B[B[B)Z

    .line 764
    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1
.end method

.method public cryptoScalarMult([B[B[B)Z
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_scalarmult([B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoScalarMultBase(Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    const/16 v0, 0x20

    .line 750
    new-array v0, v0, [B

    .line 751
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarMultBase([B[B)Z

    .line 752
    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1
.end method

.method public cryptoScalarMultBase([B[B)Z
    .locals 1

    .line 745
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_scalarmult_base([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoScalarmultRistretto255(Ljava/lang/String;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2783
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarmultRistretto255([BLcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2780
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoScalarmultRistretto255(Ljava/math/BigInteger;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2773
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarmultRistretto255([BLcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2770
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null arguments are invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoScalarmultRistretto255([BLcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 2790
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->pointBuffer()[B

    move-result-object v0

    .line 2792
    invoke-virtual {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->toBytes()[B

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarmultRistretto255([B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2797
    invoke-static {p0, v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->fromBytes(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2793
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Scalar multiplication failed. The resulting point was the identity element."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoScalarmultRistretto255([B[B[B)Z
    .locals 1

    .line 2626
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensurePointFits([B)V

    .line 2627
    invoke-static {p3}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkPoint([B)V

    .line 2628
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2630
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_scalarmult_ristretto255([B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoScalarmultRistretto255Base(Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarmultRistretto255Base([B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2812
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoScalarmultRistretto255Base(Ljava/math/BigInteger;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2805
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->scalarToBytes(Ljava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarmultRistretto255Base([B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2803
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null arguments are invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoScalarmultRistretto255Base([B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 2820
    invoke-static {}, Lcom/goterl/lazysodium/interfaces/Ristretto255;->pointBuffer()[B

    move-result-object v0

    .line 2822
    invoke-virtual {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoScalarmultRistretto255Base([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2827
    invoke-static {p0, v0}, Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;->fromBytes(Lcom/goterl/lazysodium/LazySodium;[B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;

    move-result-object p1

    return-object p1

    .line 2823
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Scalar multiplication failed. n was 0."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoScalarmultRistretto255Base([B[B)Z
    .locals 1

    .line 2635
    invoke-static {p1}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->ensurePointFits([B)V

    .line 2636
    invoke-static {p2}, Lcom/goterl/lazysodium/interfaces/Ristretto255$Checker;->checkScalar([B)V

    .line 2638
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_scalarmult_ristretto255_base([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSecretBoxDetached(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/DetachedEncrypt;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 711
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    .line 712
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 713
    array-length p1, v3

    new-array p1, p1, [B

    const/16 p3, 0x10

    .line 714
    new-array p3, p3, [B

    .line 716
    array-length v0, v3

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoSecretBoxDetached([B[B[BJ[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 720
    new-instance p2, Lcom/goterl/lazysodium/utils/DetachedEncrypt;

    invoke-direct {p2, p1, p3}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;-><init>([B[B)V

    return-object p2

    .line 717
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not encrypt detached message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretBoxDetached([B[B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 658
    array-length v0, p3

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_secretbox_detached([B[B[BJ[B[B)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoSecretBoxEasy(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 684
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    .line 685
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 686
    array-length p1, v2

    add-int/lit8 p1, p1, 0x10

    new-array p1, p1, [B

    .line 688
    array-length p3, v2

    int-to-long v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoSecretBoxEasy([B[BJ[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 692
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 689
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not encrypt message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretBoxEasy([B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 642
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_secretbox_easy([B[BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 643
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "messageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretBoxKeygen()Lcom/goterl/lazysodium/utils/Key;
    .locals 1

    const/16 v0, 0x20

    .line 677
    new-array v0, v0, [B

    .line 678
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->cryptoSecretBoxKeygen([B)V

    .line 679
    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    return-object v0
.end method

.method public cryptoSecretBoxKeygen([B)V
    .locals 1

    .line 637
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_secretbox_keygen([B)V

    return-void
.end method

.method public cryptoSecretBoxOpenDetached(Lcom/goterl/lazysodium/utils/DetachedEncrypt;[BLcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 725
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v7

    .line 726
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;->getCipher()[B

    move-result-object v2

    .line 727
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;->getMac()[B

    move-result-object v3

    .line 728
    array-length p1, v2

    new-array p1, p1, [B

    .line 731
    array-length p3, v2

    int-to-long v4, p3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoSecretBoxOpenDetached([B[B[BJ[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 735
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 732
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not decrypt detached message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretBoxOpenDetached([B[B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    .line 666
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_secretbox_open_detached([B[B[BJ[B[B)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cipherTextLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoSecretBoxOpenEasy(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 697
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    .line 698
    iget-object p3, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p3, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 699
    array-length p1, v2

    add-int/lit8 p1, p1, -0x10

    new-array p1, p1, [B

    .line 702
    array-length p3, v2

    int-to-long v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoSecretBoxOpenEasy([B[BJ[B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 706
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 703
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not decrypt message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretBoxOpenEasy([B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 650
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 653
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_secretbox_open_easy([B[BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 651
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "cipherTextLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretStreamInitPull([BLcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/interfaces/SecretStream$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1437
    new-instance v0, Lcom/goterl/lazysodium/interfaces/SecretStream$State$ByReference;

    invoke-direct {v0}, Lcom/goterl/lazysodium/interfaces/SecretStream$State$ByReference;-><init>()V

    .line 1438
    array-length v1, p1

    invoke-static {v1}, Lcom/goterl/lazysodium/interfaces/SecretStream$Checker;->headerCheck(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1442
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_init_pull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)I

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    .line 1445
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not initialise a decryption state."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1439
    :cond_1
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Header of secret stream incorrect length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretStreamInitPull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)Z
    .locals 1

    .line 1356
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_init_pull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSecretStreamInitPush([BLcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/interfaces/SecretStream$State;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1405
    new-instance v0, Lcom/goterl/lazysodium/interfaces/SecretStream$State$ByReference;

    invoke-direct {v0}, Lcom/goterl/lazysodium/interfaces/SecretStream$State$ByReference;-><init>()V

    .line 1406
    array-length v1, p1

    invoke-static {v1}, Lcom/goterl/lazysodium/interfaces/SecretStream$Checker;->headerCheck(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p2

    invoke-virtual {v1, v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_init_push(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)I

    return-object v0

    .line 1407
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Header of secret stream incorrect length."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretStreamInitPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)Z
    .locals 1

    .line 1286
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_init_push(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSecretStreamKeygen()Lcom/goterl/lazysodium/utils/Key;
    .locals 2

    const/16 v0, 0x20

    .line 1398
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 1399
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_keygen([B)V

    .line 1400
    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    return-object v0
.end method

.method public cryptoSecretStreamKeygen([B)V
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_keygen([B)V

    return-void
.end method

.method public cryptoSecretStreamPull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1453
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 1454
    array-length p2, v6

    add-int/lit8 p2, p2, -0x11

    new-array p2, p2, [B

    .line 1456
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    array-length v0, v6

    int-to-long v7, v0

    const/4 v0, 0x0

    new-array v9, v0, [B

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v11}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_pull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[B[BJ[BJ)I

    move-result p1

    if-nez p1, :cond_0

    .line 1471
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1468
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Error when decrypting a message using secret stream."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretStreamPull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B[BJ)Z
    .locals 11

    move-wide/from16 v6, p5

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_0

    move-object v5, p4

    .line 1381
    array-length v0, v5

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_0

    .line 1384
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [J

    const/4 v1, 0x0

    new-array v8, v1, [B

    const-wide/16 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v10}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_pull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[B[BJ[BJ)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 1382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cipherLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoSecretStreamPull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[B[BJ[BJ)Z
    .locals 11

    move-wide/from16 v6, p6

    move-wide/from16 v9, p9

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-ltz v2, :cond_1

    move-object/from16 v5, p5

    .line 1368
    array-length v2, v5

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gtz v2, :cond_1

    cmp-long v0, v9, v0

    if-ltz v0, :cond_0

    move-object/from16 v8, p8

    .line 1371
    array-length v0, v8

    int-to-long v0, v0

    cmp-long v0, v9, v0

    if-gtz v0, :cond_0

    .line 1374
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_pull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[B[BJ[BJ)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 1372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "additionalDataLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, p0

    .line 1369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cipherLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoSecretStreamPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;Ljava/lang/String;B)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1415
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1416
    array-length p2, v4

    add-int/lit8 p2, p2, 0x11

    new-array p2, p2, [B

    .line 1417
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    array-length v1, v4

    int-to-long v5, v1

    const/4 v1, 0x0

    new-array v7, v1, [B

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_push(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[BJ[BJB)I

    move-result p1

    if-nez p1, :cond_0

    .line 1432
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1429
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Error when encrypting a message using secret stream."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSecretStreamPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[BJB)Z
    .locals 11

    move-wide v5, p4

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-ltz v0, :cond_0

    move-object v4, p3

    .line 1312
    array-length v0, v4

    int-to-long v0, v0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    const/4 v1, 0x0

    new-array v7, v1, [B

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-wide v5, p4

    move/from16 v10, p6

    invoke-virtual/range {v0 .. v10}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_push(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[BJ[BJB)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 1313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoSecretStreamPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[BJB)Z
    .locals 11

    move-wide/from16 v5, p5

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-ltz v0, :cond_0

    move-object v4, p4

    .line 1291
    array-length v0, v4

    int-to-long v0, v0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_0

    .line 1294
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    const/4 v1, 0x0

    new-array v7, v1, [B

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_push(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[BJ[BJB)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 1292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoSecretStreamPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[BJ[BJB)Z
    .locals 11

    move-wide/from16 v5, p5

    move-wide/from16 v8, p8

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-ltz v2, :cond_1

    move-object v4, p4

    .line 1336
    array-length v2, v4

    int-to-long v2, v2

    cmp-long v2, v5, v2

    if-gtz v2, :cond_1

    cmp-long v0, v8, v0

    if-ltz v0, :cond_0

    move-object/from16 v7, p7

    .line 1339
    array-length v0, v7

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_0

    .line 1342
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_push(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[BJ[BJB)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 1340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "additionalDataLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, p0

    .line 1337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "messageLen out of bounds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoSecretStreamRekey(Lcom/goterl/lazysodium/interfaces/SecretStream$State;)V
    .locals 1

    .line 1476
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_secretstream_xchacha20poly1305_rekey(Lcom/goterl/lazysodium/interfaces/SecretStream$State;)V

    return-void
.end method

.method public cryptoShortHash(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 2019
    invoke-static {p1}, Lcom/goterl/lazysodium/LazySodium;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2020
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v5

    const/16 p1, 0x8

    .line 2021
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 2022
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    array-length p2, v2

    int-to-long v3, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/Sodium;->crypto_shorthash([B[BJ[B)I

    move-result p2

    if-nez p2, :cond_0

    .line 2025
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->sodiumBin2Hex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2023
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Failed short-input hashing."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoShortHash([B[BJ[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 2006
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 2009
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_shorthash([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 2007
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "inLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoShortHashKeygen()Lcom/goterl/lazysodium/utils/Key;
    .locals 2

    const/16 v0, 0x10

    .line 2030
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    .line 2031
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/Sodium;->crypto_shorthash_keygen([B)I

    .line 2032
    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    return-object v0
.end method

.method public cryptoShortHashKeygen([B)V
    .locals 1

    .line 2014
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_shorthash_keygen([B)I

    return-void
.end method

.method public cryptoSign(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1210
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsHexString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/goterl/lazysodium/LazySodium;->cryptoSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cryptoSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1196
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1197
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p1, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 1198
    array-length p1, v2

    add-int/lit8 p1, p1, 0x40

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 1199
    array-length p2, v2

    int-to-long v3, p2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/LazySodium;->cryptoSign([B[BJ[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1205
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1202
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not sign your message."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSign([B[BJ[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1112
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    sget-object v2, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    invoke-direct {v0, v2}, Lcom/sun/jna/ptr/PointerByReference;-><init>(Lcom/sun/jna/Pointer;)V

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_sign([BLcom/sun/jna/Pointer;[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "messageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSignDetached(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    .line 1236
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1237
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v5

    const/16 p1, 0x40

    .line 1238
    new-array p1, p1, [B

    .line 1240
    array-length p2, v2

    int-to-long v3, p2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/LazySodium;->cryptoSignDetached([B[BJ[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1244
    iget-object p2, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {p2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1241
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string p2, "Could not create a signature for your message in detached mode."

    invoke-direct {p1, p2}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSignDetached([B[BJ[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1128
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    sget-object v2, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    invoke-direct {v0, v2}, Lcom/sun/jna/ptr/PointerByReference;-><init>(Lcom/sun/jna/Pointer;)V

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_detached([BLcom/sun/jna/Pointer;[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1129
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "messageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSignEd25519SkToPk([B[B)Z
    .locals 1

    .line 1159
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_ed25519_sk_to_pk([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignEd25519SkToSeed([B[B)Z
    .locals 1

    .line 1154
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_ed25519_sk_to_seed([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignFinalCreate(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[BLcom/sun/jna/Pointer;[B)Z
    .locals 1

    .line 1091
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_final_create(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[BLcom/sun/jna/Pointer;[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignFinalVerify(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[B[B)Z
    .locals 1

    .line 1096
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_final_verify(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignInit(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;)Z
    .locals 1

    .line 1081
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_init(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignKeypair()Lcom/goterl/lazysodium/utils/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1166
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    const/16 v1, 0x40

    .line 1167
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v1

    .line 1168
    invoke-virtual {p0, v0, v1}, Lcom/goterl/lazysodium/LazySodium;->cryptoSignKeypair([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1171
    new-instance v2, Lcom/goterl/lazysodium/utils/KeyPair;

    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-static {v1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/goterl/lazysodium/utils/KeyPair;-><init>(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)V

    return-object v2

    .line 1169
    :cond_0
    new-instance v0, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v1, "Could not generate a signing keypair."

    invoke-direct {v0, v1}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoSignKeypair([B[B)Z
    .locals 1

    .line 1101
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_keypair([B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignOpen(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .locals 7

    .line 1215
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    .line 1216
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    .line 1218
    array-length p1, v3

    add-int/lit8 p1, p1, -0x40

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 1220
    array-length p2, v3

    int-to-long v4, p2

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoSignOpen([B[BJ[B)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1231
    :cond_0
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cryptoSignOpen([B[BJ[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1120
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    sget-object v2, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    invoke-direct {v0, v2}, Lcom/sun/jna/ptr/PointerByReference;-><init>(Lcom/sun/jna/Pointer;)V

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v3

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_open([BLcom/sun/jna/Pointer;[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1121
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "signedMessageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSignSecretKeyPair(Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1186
    new-array v0, v0, [B

    .line 1187
    invoke-virtual {p1}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p1

    .line 1188
    invoke-virtual {p0, v0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoSignEd25519SkToPk([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    new-instance v1, Lcom/goterl/lazysodium/utils/KeyPair;

    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/goterl/lazysodium/utils/KeyPair;-><init>(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)V

    return-object v1

    .line 1189
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Could not extract public key."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSignSeedKeypair([B)Lcom/goterl/lazysodium/utils/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1176
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v0

    const/16 v1, 0x40

    .line 1177
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object v1

    .line 1178
    invoke-virtual {p0, v0, v1, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoSignSeedKeypair([B[B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1181
    new-instance p1, Lcom/goterl/lazysodium/utils/KeyPair;

    invoke-static {v0}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v0

    invoke-static {v1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/goterl/lazysodium/utils/KeyPair;-><init>(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)V

    return-object p1

    .line 1179
    :cond_0
    new-instance p1, Lcom/goterl/lazysodium/exceptions/SodiumException;

    const-string v0, "Could not generate a signing keypair with a seed."

    invoke-direct {p1, v0}, Lcom/goterl/lazysodium/exceptions/SodiumException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoSignSeedKeypair([B[B[B)Z
    .locals 1

    .line 1107
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_seed_keypair([B[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignUpdate(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[BJ)Z
    .locals 1

    .line 1086
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_update(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[BJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public cryptoSignVerifyDetached(Ljava/lang/String;Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Z
    .locals 1

    .line 1249
    invoke-virtual {p0, p2}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 1250
    invoke-virtual {p3}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object p3

    .line 1251
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 1253
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/goterl/lazysodium/LazySodium;->cryptoSignVerifyDetached([B[BI[B)Z

    move-result p1

    return p1
.end method

.method public cryptoSignVerifyDetached([B[BI[B)Z
    .locals 7

    if-ltz p3, :cond_0

    .line 1136
    array-length v0, p2

    if-gt p3, v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    int-to-long v4, p3

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_sign_verify_detached([B[BJ[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1137
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "messageLen out of bounds: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoStream([BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)[B
    .locals 8

    const/16 v0, 0x14

    .line 1623
    new-array v7, v0, [B

    .line 1625
    sget-object v1, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {p3, v1}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-long v3, v0

    .line 1626
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, v7

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamChaCha20([BJ[B[B)Z

    goto :goto_0

    .line 1627
    :cond_0
    sget-object v1, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20_IETF:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {p3, v1}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-long v3, v0

    .line 1628
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, v7

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamChaCha20Ietf([BJ[B[B)Z

    goto :goto_0

    .line 1629
    :cond_1
    sget-object v1, Lcom/goterl/lazysodium/interfaces/Stream$Method;->SALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {p3, v1}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    int-to-long v3, v0

    .line 1630
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, v7

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamSalsa20([BJ[B[B)Z

    goto :goto_0

    :cond_2
    int-to-long v3, v0

    .line 1632
    invoke-virtual {p2}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, v7

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamXSalsa20([BJ[B[B)Z

    :goto_0
    return-object v7
.end method

.method public cryptoStreamChaCha20([BJ[B[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 1491
    array-length v0, p1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1494
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_chacha20([BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1492
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "cLen out of bounds: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoStreamChaCha20Ietf([BJ[B[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 1522
    array-length v0, p1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1525
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_chacha20_ietf([BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1523
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "cLen out of bounds: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoStreamChaCha20IetfKeygen([B)V
    .locals 1

    .line 1517
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_chacha20_ietf_keygen([B)V

    return-void
.end method

.method public cryptoStreamChaCha20IetfXor([B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1530
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1533
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_chacha20_ietf_xor([B[BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1531
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "messageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoStreamChaCha20Keygen([B)V
    .locals 1

    .line 1486
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_chacha20_keygen([B)V

    return-void
.end method

.method public cryptoStreamChaCha20Xor([B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1499
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1502
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_chacha20_xor([B[BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1500
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "messageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoStreamChacha20IetfXorIc([B[BJ[BJ[B)Z
    .locals 9

    move-wide v3, p3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_0

    move-object v2, p2

    .line 1538
    array-length v0, v2

    int-to-long v0, v0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_0

    .line 1541
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_chacha20_ietf_xor_ic([B[BJ[BJ[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 1539
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "messageLen out of bounds: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoStreamChacha20XorIc([B[BJ[BJ[B)Z
    .locals 9

    move-wide v3, p3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_0

    move-object v2, p2

    .line 1507
    array-length v0, v2

    int-to-long v0, v0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_0

    .line 1510
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_chacha20_xor_ic([B[BJ[BJ[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 1508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "messageLen out of bounds: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected cryptoStreamDefaultXorIc([B[BJLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)[B
    .locals 10

    move-object v2, p1

    move-object/from16 v0, p6

    .line 1678
    array-length v1, v2

    .line 1679
    new-array v9, v1, [B

    .line 1680
    sget-object v3, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {v0, v3}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    int-to-long v3, v1

    .line 1681
    invoke-virtual {p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v8

    move-object v0, p0

    move-object v1, v9

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamChacha20XorIc([B[BJ[BJ[B)Z

    goto :goto_0

    .line 1682
    :cond_0
    sget-object v3, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20_IETF:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {v0, v3}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    int-to-long v3, v1

    .line 1683
    invoke-virtual {p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v8

    move-object v0, p0

    move-object v1, v9

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamChacha20IetfXorIc([B[BJ[BJ[B)Z

    goto :goto_0

    .line 1684
    :cond_1
    sget-object v3, Lcom/goterl/lazysodium/interfaces/Stream$Method;->SALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {v0, v3}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-long v3, v1

    .line 1685
    invoke-virtual {p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v8

    move-object v0, p0

    move-object v1, v9

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamSalsa20XorIc([B[BJ[BJ[B)Z

    goto :goto_0

    :cond_2
    int-to-long v3, v1

    .line 1689
    invoke-virtual {p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v6

    move-object v0, p0

    move-object v1, v9

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamXSalsa20Xor([B[BJ[B[B)Z

    :goto_0
    return-object v9
.end method

.method public cryptoStreamKeygen(Lcom/goterl/lazysodium/interfaces/Stream$Method;)Lcom/goterl/lazysodium/utils/Key;
    .locals 2

    .line 1601
    sget-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {p1, v0}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    .line 1602
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 1603
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamChaCha20Keygen([B)V

    .line 1604
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1

    .line 1605
    :cond_0
    sget-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->CHACHA20_IETF:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {p1, v0}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1606
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 1607
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamChaCha20Keygen([B)V

    .line 1608
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1

    .line 1609
    :cond_1
    sget-object v0, Lcom/goterl/lazysodium/interfaces/Stream$Method;->SALSA20:Lcom/goterl/lazysodium/interfaces/Stream$Method;

    invoke-virtual {p1, v0}, Lcom/goterl/lazysodium/interfaces/Stream$Method;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1610
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 1611
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamSalsa20Keygen([B)V

    .line 1612
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1

    .line 1614
    :cond_2
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 1615
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamXSalsa20Keygen([B)V

    .line 1616
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1
.end method

.method public cryptoStreamSalsa20([BJ[B[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 1553
    array-length v0, p1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1556
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_salsa20([BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1554
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "cLen out of bounds: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoStreamSalsa20Keygen([B)V
    .locals 1

    .line 1548
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_salsa20_keygen([B)V

    return-void
.end method

.method public cryptoStreamSalsa20Xor([B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1561
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1564
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_salsa20_xor([B[BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1562
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "messageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoStreamSalsa20XorIc([B[BJ[BJ[B)Z
    .locals 9

    move-wide v3, p3

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_0

    move-object v2, p2

    .line 1569
    array-length v0, v2

    int-to-long v0, v0

    cmp-long v0, v3, v0

    if-gtz v0, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-wide v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_salsa20_xor_ic([B[BJ[BJ[B)I

    move-result v0

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v1, p0

    .line 1570
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "messageLen out of bounds: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cryptoStreamXSalsa20([BJ[B[B)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 1583
    array-length v0, p1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 1586
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/goterl/lazysodium/Sodium;->crypto_stream([BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1584
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "cLen out of bounds: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoStreamXSalsa20Keygen([B)V
    .locals 1

    .line 1578
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_keygen([B)V

    return-void
.end method

.method public cryptoStreamXSalsa20Xor([B[BJ[B[B)Z
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 1591
    array-length v0, p2

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 1594
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/Sodium;->crypto_stream_xor([B[BJ[B[B)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1

    .line 1592
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "messageLen out of bounds: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cryptoStreamXor(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)Ljava/lang/String;
    .locals 1

    .line 1639
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1640
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamDefaultXor([B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cryptoStreamXorDecrypt(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)Ljava/lang/String;
    .locals 1

    .line 1645
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamDefaultXor([B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cryptoStreamXorIc(Ljava/lang/String;[BJLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)Ljava/lang/String;
    .locals 7

    .line 1651
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1652
    iget-object p1, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamDefaultXorIc([B[BJLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cryptoStreamXorIcDecrypt(Ljava/lang/String;[BJLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)Ljava/lang/String;
    .locals 8

    .line 1657
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 1658
    invoke-virtual/range {v1 .. v7}, Lcom/goterl/lazysodium/LazySodium;->cryptoStreamDefaultXorIc([B[BJLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeFromString(Ljava/lang/String;)[B
    .locals 1

    .line 3272
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2377
    invoke-virtual/range {v0 .. v6}, Lcom/goterl/lazysodium/LazySodium;->decrypt(Ljava/lang/String;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    .line 2382
    iget-object v2, v12, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    move-object v3, p1

    invoke-interface {v2, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 2383
    new-array v2, v2, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    move-object v7, v2

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 2384
    :cond_1
    array-length v0, v7

    int-to-long v2, v0

    :goto_1
    move-wide v8, v2

    .line 2385
    invoke-virtual/range {p5 .. p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v11

    .line 2387
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2388
    array-length v0, v4

    add-int/lit8 v0, v0, -0x10

    new-array v13, v0, [B

    .line 2389
    array-length v0, v4

    int-to-long v5, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305Decrypt([B[J[B[BJ[BJ[B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2402
    invoke-virtual {p0, v13}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2400
    :cond_2
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    throw v0

    .line 2403
    :cond_3
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2404
    array-length v0, v4

    add-int/lit8 v0, v0, -0x10

    new-array v13, v0, [B

    .line 2405
    array-length v0, v4

    int-to-long v5, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305IetfDecrypt([B[J[B[BJ[BJ[B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2418
    invoke-virtual {p0, v13}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2416
    :cond_4
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    throw v0

    .line 2419
    :cond_5
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->XCHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2420
    array-length v0, v4

    add-int/lit8 v0, v0, -0x10

    new-array v13, v0, [B

    .line 2421
    array-length v0, v4

    int-to-long v5, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadXChaCha20Poly1305IetfDecrypt([B[J[B[BJ[BJ[B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2434
    invoke-virtual {p0, v13}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2432
    :cond_6
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    throw v0

    .line 2436
    :cond_7
    array-length v0, v4

    add-int/lit8 v0, v0, -0x10

    new-array v13, v0, [B

    .line 2437
    array-length v0, v4

    int-to-long v5, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadAES256GCMDecrypt([B[J[B[BJ[BJ[B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2450
    invoke-virtual {p0, v13}, Lcom/goterl/lazysodium/LazySodium;->str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2448
    :cond_8
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    throw v0
.end method

.method public decryptDetached(Lcom/goterl/lazysodium/utils/DetachedEncrypt;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Lcom/goterl/lazysodium/utils/DetachedDecrypt;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    .line 2528
    invoke-virtual/range {p1 .. p1}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;->getCipher()[B

    move-result-object v3

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 2529
    new-array v2, v2, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    move-object v7, v2

    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_1

    .line 2530
    :cond_1
    array-length v0, v7

    int-to-long v4, v0

    :goto_1
    move-wide v8, v4

    .line 2531
    invoke-virtual/range {p5 .. p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v11

    .line 2532
    array-length v0, v3

    new-array v13, v0, [B

    .line 2533
    invoke-virtual/range {p1 .. p1}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;->getMac()[B

    move-result-object v14

    .line 2535
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2536
    array-length v0, v3

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    move-object v6, v14

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305DecryptDetached([B[B[BJ[B[BJ[B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2549
    new-instance v0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;

    iget-object v1, v12, Lcom/goterl/lazysodium/LazySodium;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v13, v14, v1}, Lcom/goterl/lazysodium/utils/DetachedDecrypt;-><init>([B[BLjava/nio/charset/Charset;)V

    return-object v0

    .line 2547
    :cond_2
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    throw v0

    .line 2550
    :cond_3
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2551
    array-length v0, v3

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    move-object v6, v14

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305IetfDecryptDetached([B[B[BJ[B[BJ[B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2564
    new-instance v0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;

    iget-object v1, v12, Lcom/goterl/lazysodium/LazySodium;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v13, v14, v1}, Lcom/goterl/lazysodium/utils/DetachedDecrypt;-><init>([B[BLjava/nio/charset/Charset;)V

    return-object v0

    .line 2562
    :cond_4
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    throw v0

    .line 2565
    :cond_5
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->XCHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2566
    array-length v0, v3

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    move-object v6, v14

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadXChaCha20Poly1305IetfDecryptDetached([B[B[BJ[B[BJ[B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2579
    new-instance v0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;

    iget-object v1, v12, Lcom/goterl/lazysodium/LazySodium;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v13, v14, v1}, Lcom/goterl/lazysodium/utils/DetachedDecrypt;-><init>([B[BLjava/nio/charset/Charset;)V

    return-object v0

    .line 2577
    :cond_6
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    throw v0

    .line 2581
    :cond_7
    array-length v0, v3

    int-to-long v4, v0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    move-object v6, v14

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadAES256GCMDecryptDetached([B[B[BJ[B[BJ[B[B)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2594
    new-instance v0, Lcom/goterl/lazysodium/utils/DetachedDecrypt;

    iget-object v1, v12, Lcom/goterl/lazysodium/LazySodium;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v13, v14, v1}, Lcom/goterl/lazysodium/utils/DetachedDecrypt;-><init>([B[BLjava/nio/charset/Charset;)V

    return-object v0

    .line 2592
    :cond_8
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    throw v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1

    .line 3261
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, p1}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 2305
    invoke-virtual/range {v0 .. v6}, Lcom/goterl/lazysodium/LazySodium;->encrypt(Ljava/lang/String;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;
    .locals 14

    move-object v12, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    .line 2310
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 2311
    new-array v2, v2, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    move-object v6, v2

    if-nez v0, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_1

    .line 2312
    :cond_1
    array-length v0, v6

    int-to-long v4, v0

    :goto_1
    move-wide v7, v4

    .line 2313
    invoke-virtual/range {p5 .. p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v11

    .line 2315
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2316
    array-length v0, v3

    add-int/lit8 v0, v0, 0x10

    new-array v13, v0, [B

    .line 2317
    array-length v0, v3

    int-to-long v4, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305Encrypt([B[J[BJ[BJ[B[B[B)Z

    .line 2328
    iget-object v0, v12, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, v13}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2329
    :cond_2
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2330
    array-length v0, v3

    add-int/lit8 v0, v0, 0x10

    new-array v13, v0, [B

    .line 2331
    array-length v0, v3

    int-to-long v4, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305IetfEncrypt([B[J[BJ[BJ[B[B[B)Z

    .line 2342
    iget-object v0, v12, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, v13}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2343
    :cond_3
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->XCHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2344
    array-length v0, v3

    add-int/lit8 v0, v0, 0x10

    new-array v13, v0, [B

    .line 2345
    array-length v0, v3

    int-to-long v4, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadXChaCha20Poly1305IetfEncrypt([B[J[BJ[BJ[B[B[B)Z

    .line 2356
    iget-object v0, v12, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, v13}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2358
    :cond_4
    array-length v0, v3

    add-int/lit8 v0, v0, 0x10

    new-array v13, v0, [B

    .line 2359
    array-length v0, v3

    int-to-long v4, v0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadAES256GCMEncrypt([B[J[BJ[BJ[B[B[B)Z

    .line 2370
    iget-object v0, v12, Lcom/goterl/lazysodium/LazySodium;->messageEncoder:Lcom/goterl/lazysodium/interfaces/MessageEncoder;

    invoke-interface {v0, v13}, Lcom/goterl/lazysodium/interfaces/MessageEncoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encryptDetached(Ljava/lang/String;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Lcom/goterl/lazysodium/utils/DetachedEncrypt;
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    .line 2456
    invoke-virtual/range {p0 .. p1}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 2457
    new-array v2, v2, [B

    move-object/from16 v13, p0

    goto :goto_0

    :cond_0
    move-object/from16 v13, p0

    invoke-virtual {v13, v0}, Lcom/goterl/lazysodium/LazySodium;->bytes(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    move-object v7, v2

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_1

    .line 2458
    :cond_1
    array-length v0, v7

    int-to-long v2, v0

    :goto_1
    move-wide v8, v2

    .line 2459
    invoke-virtual/range {p5 .. p5}, Lcom/goterl/lazysodium/utils/Key;->getAsBytes()[B

    move-result-object v12

    .line 2460
    array-length v0, v4

    new-array v14, v0, [B

    .line 2462
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x10

    if-eqz v0, :cond_2

    .line 2463
    new-array v15, v2, [B

    .line 2465
    array-length v0, v4

    int-to-long v5, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v0 .. v12}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305EncryptDetached([B[B[J[BJ[BJ[B[B[B)Z

    .line 2477
    new-instance v0, Lcom/goterl/lazysodium/utils/DetachedEncrypt;

    invoke-direct {v0, v14, v15}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;-><init>([B[B)V

    return-object v0

    .line 2478
    :cond_2
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->CHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2479
    new-array v15, v2, [B

    .line 2480
    array-length v0, v4

    int-to-long v5, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v0 .. v12}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305IetfEncryptDetached([B[B[J[BJ[BJ[B[B[B)Z

    .line 2492
    new-instance v0, Lcom/goterl/lazysodium/utils/DetachedEncrypt;

    invoke-direct {v0, v14, v15}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;-><init>([B[B)V

    return-object v0

    .line 2493
    :cond_3
    sget-object v0, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->XCHACHA20_POLY1305_IETF:Lcom/goterl/lazysodium/interfaces/AEAD$Method;

    invoke-virtual {v1, v0}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2494
    new-array v15, v2, [B

    .line 2495
    array-length v0, v4

    int-to-long v5, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v0 .. v12}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadXChaCha20Poly1305IetfEncryptDetached([B[B[J[BJ[BJ[B[B[B)Z

    .line 2507
    new-instance v0, Lcom/goterl/lazysodium/utils/DetachedEncrypt;

    invoke-direct {v0, v14, v15}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;-><init>([B[B)V

    return-object v0

    .line 2509
    :cond_4
    new-array v15, v2, [B

    .line 2510
    array-length v0, v4

    int-to-long v5, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v0 .. v12}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadAES256GCMEncryptDetached([B[B[J[BJ[BJ[B[B[B)Z

    .line 2522
    new-instance v0, Lcom/goterl/lazysodium/utils/DetachedEncrypt;

    invoke-direct {v0, v14, v15}, Lcom/goterl/lazysodium/utils/DetachedEncrypt;-><init>([B[B)V

    return-object v0
.end method

.method public abstract getSodium()Lcom/goterl/lazysodium/Sodium;
.end method

.method public keygen(Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Lcom/goterl/lazysodium/utils/Key;
    .locals 2

    .line 2282
    sget-object v0, Lcom/goterl/lazysodium/LazySodium$1;->$SwitchMap$com$goterl$lazysodium$interfaces$AEAD$Method:[I

    invoke-virtual {p1}, Lcom/goterl/lazysodium/interfaces/AEAD$Method;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2296
    :cond_0
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 2297
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadAES256GCMKeygen([B)V

    .line 2298
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1

    .line 2292
    :cond_1
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 2293
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadXChaCha20Poly1305IetfKeygen([B)V

    .line 2294
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1

    .line 2288
    :cond_2
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 2289
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305IetfKeygen([B)V

    .line 2290
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1

    .line 2284
    :cond_3
    invoke-virtual {p0, v1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    .line 2285
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->cryptoAeadChaCha20Poly1305Keygen([B)V

    .line 2286
    invoke-static {p1}, Lcom/goterl/lazysodium/utils/Key;->fromBytes([B)Lcom/goterl/lazysodium/utils/Key;

    move-result-object p1

    return-object p1
.end method

.method public nonce(I)[B
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->randomBytesBuf(I)[B

    move-result-object p1

    return-object p1
.end method

.method public randomBytesBuf(I)[B
    .locals 2

    .line 161
    new-array v0, p1, [B

    .line 162
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/goterl/lazysodium/Sodium;->randombytes_buf([BI)V

    return-object v0
.end method

.method public randomBytesDeterministic(I[B)[B
    .locals 2

    .line 178
    new-array v0, p1, [B

    .line 179
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->randombytes_buf_deterministic([BI[B)V

    return-object v0
.end method

.method public randomBytesRandom()J
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0}, Lcom/goterl/lazysodium/Sodium;->randombytes_random()J

    move-result-wide v0

    return-wide v0
.end method

.method public randomBytesUniform(I)J
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->randombytes_uniform(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeNulls([B)[B
    .locals 4

    .line 3295
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 3296
    aget-byte v3, p1, v0

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3304
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, v2

    .line 3305
    new-array v2, v0, [B

    .line 3306
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public res(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    :cond_0
    return-object p2
.end method

.method public sodiumAllocArray(II)Lcom/sun/jna/Pointer;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->sodium_allocarray(II)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public sodiumBin2Hex([B)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/goterl/lazysodium/LazySodium;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sodiumFree(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->sodium_free(Lcom/sun/jna/Pointer;)V

    return-void
.end method

.method public sodiumHex2Bin(Ljava/lang/String;)[B
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/goterl/lazysodium/LazySodium;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sodiumInit()I
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0}, Lcom/goterl/lazysodium/Sodium;->sodium_init()I

    move-result v0

    return v0
.end method

.method public sodiumMLock([BI)Z
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->sodium_mlock([BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public sodiumMProtectNoAccess(Lcom/sun/jna/Pointer;)Z
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->sodium_mprotect_noaccess(Lcom/sun/jna/Pointer;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public sodiumMProtectReadOnly(Lcom/sun/jna/Pointer;)Z
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->sodium_mprotect_readonly(Lcom/sun/jna/Pointer;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public sodiumMProtectReadWrite(Lcom/sun/jna/Pointer;)Z
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->sodium_mprotect_readwrite(Lcom/sun/jna/Pointer;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public sodiumMUnlock([BI)Z
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->sodium_munlock([BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public sodiumMalloc(I)Lcom/sun/jna/Pointer;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/goterl/lazysodium/Sodium;->sodium_malloc(I)Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public sodiumMemZero([BI)Z
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/goterl/lazysodium/Sodium;->sodium_memzero([BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public sodiumPad(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;III)Z
    .locals 6

    .line 190
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/goterl/lazysodium/Sodium;->sodium_pad(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;III)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public sodiumUnpad(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;II)Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodium;->getSodium()Lcom/goterl/lazysodium/Sodium;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goterl/lazysodium/Sodium;->sodium_unpad(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/goterl/lazysodium/LazySodium;->successful(I)Z

    move-result p1

    return p1
.end method

.method public str([B)Ljava/lang/String;
    .locals 2

    .line 3237
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/goterl/lazysodium/LazySodium;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public str([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    .line 3243
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodium;->charset:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 3245
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public successful(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toBinary(Ljava/lang/String;)[B
    .locals 0

    .line 100
    invoke-static {p1}, Lcom/goterl/lazysodium/LazySodium;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public toHexStr([B)Ljava/lang/String;
    .locals 0

    .line 96
    invoke-static {p1}, Lcom/goterl/lazysodium/LazySodium;->bytesToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public wrongLen(II)Z
    .locals 0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public wrongLen(IJ)Z
    .locals 2

    int-to-long v0, p1

    cmp-long p1, v0, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public wrongLen([BI)Z
    .locals 0

    .line 3277
    array-length p1, p1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
