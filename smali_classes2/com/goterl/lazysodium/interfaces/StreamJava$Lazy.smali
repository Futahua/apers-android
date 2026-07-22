.class public interface abstract Lcom/goterl/lazysodium/interfaces/StreamJava$Lazy;
.super Ljava/lang/Object;
.source "StreamJava.java"

# interfaces
.implements Lcom/goterl/lazysodium/interfaces/Stream$Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/StreamJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoStream([BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/StreamJava$Method;)[B
.end method

.method public abstract cryptoStreamKeygen(Lcom/goterl/lazysodium/interfaces/StreamJava$Method;)Lcom/goterl/lazysodium/utils/Key;
.end method

.method public abstract cryptoStreamXor(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/StreamJava$Method;)Ljava/lang/String;
.end method

.method public abstract cryptoStreamXorDecrypt(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/StreamJava$Method;)Ljava/lang/String;
.end method

.method public abstract cryptoStreamXorIc(Ljava/lang/String;[BJLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/StreamJava$Method;)Ljava/lang/String;
.end method

.method public abstract cryptoStreamXorIcDecrypt(Ljava/lang/String;[BJLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/StreamJava$Method;)Ljava/lang/String;
.end method
