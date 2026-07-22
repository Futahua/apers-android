.class public interface abstract Lcom/goterl/lazysodium/interfaces/Stream$Native;
.super Ljava/lang/Object;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoStreamChaCha20([BJ[B[B)Z
.end method

.method public abstract cryptoStreamChaCha20Ietf([BJ[B[B)Z
.end method

.method public abstract cryptoStreamChaCha20IetfKeygen([B)V
.end method

.method public abstract cryptoStreamChaCha20IetfXor([B[BJ[B[B)Z
.end method

.method public abstract cryptoStreamChaCha20Keygen([B)V
.end method

.method public abstract cryptoStreamChaCha20Xor([B[BJ[B[B)Z
.end method

.method public abstract cryptoStreamChacha20IetfXorIc([B[BJ[BJ[B)Z
.end method

.method public abstract cryptoStreamChacha20XorIc([B[BJ[BJ[B)Z
.end method

.method public abstract cryptoStreamSalsa20([BJ[B[B)Z
.end method

.method public abstract cryptoStreamSalsa20Keygen([B)V
.end method

.method public abstract cryptoStreamSalsa20Xor([B[BJ[B[B)Z
.end method

.method public abstract cryptoStreamSalsa20XorIc([B[BJ[BJ[B)Z
.end method

.method public abstract cryptoStreamXSalsa20([BJ[B[B)Z
.end method

.method public abstract cryptoStreamXSalsa20Keygen([B)V
.end method

.method public abstract cryptoStreamXSalsa20Xor([B[BJ[B[B)Z
.end method
