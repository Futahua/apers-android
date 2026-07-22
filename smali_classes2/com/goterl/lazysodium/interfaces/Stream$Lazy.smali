.class public interface abstract Lcom/goterl/lazysodium/interfaces/Stream$Lazy;
.super Ljava/lang/Object;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoStream([BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)[B
.end method

.method public abstract cryptoStreamKeygen(Lcom/goterl/lazysodium/interfaces/Stream$Method;)Lcom/goterl/lazysodium/utils/Key;
.end method

.method public abstract cryptoStreamXor(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)Ljava/lang/String;
.end method

.method public abstract cryptoStreamXorDecrypt(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)Ljava/lang/String;
.end method

.method public abstract cryptoStreamXorIc(Ljava/lang/String;[BJLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)Ljava/lang/String;
.end method

.method public abstract cryptoStreamXorIcDecrypt(Ljava/lang/String;[BJLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/Stream$Method;)Ljava/lang/String;
.end method
