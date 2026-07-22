.class public interface abstract Lcom/goterl/lazysodium/interfaces/GenericHash$Lazy;
.super Ljava/lang/Object;
.source "GenericHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/GenericHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoGenericHash(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoGenericHash(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoGenericHashFinal([BI)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoGenericHashInit([BLcom/goterl/lazysodium/utils/Key;I)Z
.end method

.method public abstract cryptoGenericHashKeygen()Lcom/goterl/lazysodium/utils/Key;
.end method

.method public abstract cryptoGenericHashKeygen(I)Lcom/goterl/lazysodium/utils/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoGenericHashUpdate([BLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method
