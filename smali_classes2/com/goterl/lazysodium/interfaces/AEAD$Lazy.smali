.class public interface abstract Lcom/goterl/lazysodium/interfaces/AEAD$Lazy;
.super Ljava/lang/Object;
.source "AEAD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/AEAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract decrypt(Ljava/lang/String;Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation
.end method

.method public abstract decrypt(Ljava/lang/String;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation
.end method

.method public abstract decryptDetached(Lcom/goterl/lazysodium/utils/DetachedEncrypt;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Lcom/goterl/lazysodium/utils/DetachedDecrypt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation
.end method

.method public abstract encrypt(Ljava/lang/String;Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;
.end method

.method public abstract encrypt(Ljava/lang/String;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Ljava/lang/String;
.end method

.method public abstract encryptDetached(Ljava/lang/String;Ljava/lang/String;[B[BLcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Lcom/goterl/lazysodium/utils/DetachedEncrypt;
.end method

.method public abstract keygen(Lcom/goterl/lazysodium/interfaces/AEAD$Method;)Lcom/goterl/lazysodium/utils/Key;
.end method
