.class public interface abstract Lcom/goterl/lazysodium/interfaces/Hash$Native;
.super Ljava/lang/Object;
.source "Hash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Hash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoHashSha256([B[BJ)Z
.end method

.method public abstract cryptoHashSha256Final(Lcom/goterl/lazysodium/interfaces/Hash$State256;[B)Z
.end method

.method public abstract cryptoHashSha256Init(Lcom/goterl/lazysodium/interfaces/Hash$State256;)Z
.end method

.method public abstract cryptoHashSha256Update(Lcom/goterl/lazysodium/interfaces/Hash$State256;[BJ)Z
.end method

.method public abstract cryptoHashSha512([B[BJ)Z
.end method

.method public abstract cryptoHashSha512Final(Lcom/goterl/lazysodium/interfaces/Hash$State512;[B)Z
.end method

.method public abstract cryptoHashSha512Init(Lcom/goterl/lazysodium/interfaces/Hash$State512;)Z
.end method

.method public abstract cryptoHashSha512Update(Lcom/goterl/lazysodium/interfaces/Hash$State512;[BJ)Z
.end method
