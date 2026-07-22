.class public interface abstract Lcom/goterl/lazysodium/interfaces/KeyExchange$Native;
.super Ljava/lang/Object;
.source "KeyExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/KeyExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoKxClientSessionKeys([B[B[B[B[B)Z
.end method

.method public abstract cryptoKxKeypair([B[B)Z
.end method

.method public abstract cryptoKxSeedKeypair([B[B[B)Z
.end method

.method public abstract cryptoKxServerSessionKeys([B[B[B[B[B)Z
.end method
