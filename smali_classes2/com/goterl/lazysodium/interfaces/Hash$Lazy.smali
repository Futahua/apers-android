.class public interface abstract Lcom/goterl/lazysodium/interfaces/Hash$Lazy;
.super Ljava/lang/Object;
.source "Hash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Hash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoHashSha256(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoHashSha256Final(Lcom/goterl/lazysodium/interfaces/Hash$State256;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoHashSha256Init(Lcom/goterl/lazysodium/interfaces/Hash$State256;)Z
.end method

.method public abstract cryptoHashSha256Update(Lcom/goterl/lazysodium/interfaces/Hash$State256;Ljava/lang/String;)Z
.end method

.method public abstract cryptoHashSha512(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoHashSha512Final(Lcom/goterl/lazysodium/interfaces/Hash$State512;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoHashSha512Init(Lcom/goterl/lazysodium/interfaces/Hash$State512;)Z
.end method

.method public abstract cryptoHashSha512Update(Lcom/goterl/lazysodium/interfaces/Hash$State512;Ljava/lang/String;)Z
.end method
