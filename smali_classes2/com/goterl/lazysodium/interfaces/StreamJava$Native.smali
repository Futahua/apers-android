.class public interface abstract Lcom/goterl/lazysodium/interfaces/StreamJava$Native;
.super Ljava/lang/Object;
.source "StreamJava.java"

# interfaces
.implements Lcom/goterl/lazysodium/interfaces/Stream$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/StreamJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoStreamSalsa2012([BJ[B[B)Z
.end method

.method public abstract cryptoStreamSalsa2012Keygen([B)V
.end method

.method public abstract cryptoStreamSalsa2012Xor([B[BJ[B[B)Z
.end method

.method public abstract cryptoStreamSalsa208([BJ[B[B)Z
.end method

.method public abstract cryptoStreamSalsa208Keygen([B)V
.end method

.method public abstract cryptoStreamSalsa208Xor([B[BJ[B[B)Z
.end method

.method public abstract cryptoStreamXChaCha20([BJ[B[B)Z
.end method

.method public abstract cryptoStreamXChaCha20Ic([B[BJ[BJ[B)Z
.end method

.method public abstract cryptoStreamXChaCha20Keygen([B)V
.end method

.method public abstract cryptoStreamXChaCha20Xor([B[BJ[B[B)Z
.end method
