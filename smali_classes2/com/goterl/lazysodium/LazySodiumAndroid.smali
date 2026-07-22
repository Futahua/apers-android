.class public Lcom/goterl/lazysodium/LazySodiumAndroid;
.super Lcom/goterl/lazysodium/LazySodium;
.source "LazySodiumAndroid.java"


# instance fields
.field private final sodium:Lcom/goterl/lazysodium/SodiumAndroid;


# direct methods
.method public constructor <init>(Lcom/goterl/lazysodium/SodiumAndroid;)V
    .locals 2

    .line 22
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v1, Lcom/goterl/lazysodium/utils/HexMessageEncoder;

    invoke-direct {v1}, Lcom/goterl/lazysodium/utils/HexMessageEncoder;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/goterl/lazysodium/LazySodiumAndroid;-><init>(Lcom/goterl/lazysodium/SodiumAndroid;Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/goterl/lazysodium/SodiumAndroid;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V
    .locals 1

    .line 30
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, p2}, Lcom/goterl/lazysodium/LazySodiumAndroid;-><init>(Lcom/goterl/lazysodium/SodiumAndroid;Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/goterl/lazysodium/SodiumAndroid;Ljava/nio/charset/Charset;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/goterl/lazysodium/utils/HexMessageEncoder;

    invoke-direct {v0}, Lcom/goterl/lazysodium/utils/HexMessageEncoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/goterl/lazysodium/LazySodiumAndroid;-><init>(Lcom/goterl/lazysodium/SodiumAndroid;Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/goterl/lazysodium/SodiumAndroid;Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2, p3}, Lcom/goterl/lazysodium/LazySodium;-><init>(Ljava/nio/charset/Charset;Lcom/goterl/lazysodium/interfaces/MessageEncoder;)V

    .line 35
    iput-object p1, p0, Lcom/goterl/lazysodium/LazySodiumAndroid;->sodium:Lcom/goterl/lazysodium/SodiumAndroid;

    return-void
.end method


# virtual methods
.method public bridge synthetic getSodium()Lcom/goterl/lazysodium/Sodium;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/goterl/lazysodium/LazySodiumAndroid;->getSodium()Lcom/goterl/lazysodium/SodiumAndroid;

    move-result-object v0

    return-object v0
.end method

.method public getSodium()Lcom/goterl/lazysodium/SodiumAndroid;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/goterl/lazysodium/LazySodiumAndroid;->sodium:Lcom/goterl/lazysodium/SodiumAndroid;

    return-object v0
.end method
