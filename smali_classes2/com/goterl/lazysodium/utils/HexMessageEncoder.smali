.class public Lcom/goterl/lazysodium/utils/HexMessageEncoder;
.super Ljava/lang/Object;
.source "HexMessageEncoder.java"

# interfaces
.implements Lcom/goterl/lazysodium/interfaces/MessageEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/goterl/lazysodium/LazySodium;->toBin(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-static {p1}, Lcom/goterl/lazysodium/LazySodium;->toHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
