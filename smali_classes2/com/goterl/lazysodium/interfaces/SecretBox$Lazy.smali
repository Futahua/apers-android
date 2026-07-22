.class public interface abstract Lcom/goterl/lazysodium/interfaces/SecretBox$Lazy;
.super Ljava/lang/Object;
.source "SecretBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/SecretBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoSecretBoxDetached(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/DetachedEncrypt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSecretBoxEasy(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSecretBoxKeygen()Lcom/goterl/lazysodium/utils/Key;
.end method

.method public abstract cryptoSecretBoxOpenDetached(Lcom/goterl/lazysodium/utils/DetachedEncrypt;[BLcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSecretBoxOpenEasy(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method
