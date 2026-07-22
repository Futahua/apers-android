.class public interface abstract Lcom/goterl/lazysodium/interfaces/Box$Lazy;
.super Ljava/lang/Object;
.source "Box.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoBoxBeforeNm(Lcom/goterl/lazysodium/utils/KeyPair;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxBeforeNm([B[B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxDetachedAfterNm(Ljava/lang/String;[BLjava/lang/String;)Lcom/goterl/lazysodium/utils/DetachedEncrypt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxEasy(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/KeyPair;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxEasyAfterNm(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxKeypair()Lcom/goterl/lazysodium/utils/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxOpenDetachedAfterNm(Lcom/goterl/lazysodium/utils/DetachedEncrypt;[BLjava/lang/String;)Lcom/goterl/lazysodium/utils/DetachedDecrypt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxOpenEasy(Ljava/lang/String;[BLcom/goterl/lazysodium/utils/KeyPair;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxOpenEasyAfterNm(Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxSealEasy(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxSealOpenEasy(Ljava/lang/String;Lcom/goterl/lazysodium/utils/KeyPair;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoBoxSeedKeypair([B)Lcom/goterl/lazysodium/utils/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method
