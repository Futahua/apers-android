.class public interface abstract Lcom/goterl/lazysodium/interfaces/KeyExchange$Lazy;
.super Ljava/lang/Object;
.source "KeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/KeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoKxClientSessionKeys(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/SessionPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoKxClientSessionKeys(Lcom/goterl/lazysodium/utils/KeyPair;Lcom/goterl/lazysodium/utils/KeyPair;)Lcom/goterl/lazysodium/utils/SessionPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoKxKeypair()Lcom/goterl/lazysodium/utils/KeyPair;
.end method

.method public abstract cryptoKxKeypair([B)Lcom/goterl/lazysodium/utils/KeyPair;
.end method

.method public abstract cryptoKxServerSessionKeys(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/SessionPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoKxServerSessionKeys(Lcom/goterl/lazysodium/utils/KeyPair;Lcom/goterl/lazysodium/utils/KeyPair;)Lcom/goterl/lazysodium/utils/SessionPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method
