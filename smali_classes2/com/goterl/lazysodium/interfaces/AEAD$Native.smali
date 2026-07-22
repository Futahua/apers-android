.class public interface abstract Lcom/goterl/lazysodium/interfaces/AEAD$Native;
.super Ljava/lang/Object;
.source "AEAD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/AEAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoAeadAES256GCMDecrypt([B[J[B[BJ[BJ[B[B)Z
.end method

.method public abstract cryptoAeadAES256GCMDecryptDetached([B[B[BJ[B[BJ[B[B)Z
.end method

.method public abstract cryptoAeadAES256GCMEncrypt([B[J[BJ[BJ[B[B[B)Z
.end method

.method public abstract cryptoAeadAES256GCMEncryptDetached([B[B[J[BJ[BJ[B[B[B)Z
.end method

.method public abstract cryptoAeadAES256GCMIsAvailable()Z
.end method

.method public abstract cryptoAeadAES256GCMKeygen([B)V
.end method

.method public abstract cryptoAeadChaCha20Poly1305Decrypt([B[J[B[BJ[BJ[B[B)Z
.end method

.method public abstract cryptoAeadChaCha20Poly1305DecryptDetached([B[B[BJ[B[BJ[B[B)Z
.end method

.method public abstract cryptoAeadChaCha20Poly1305Encrypt([B[J[BJ[BJ[B[B[B)Z
.end method

.method public abstract cryptoAeadChaCha20Poly1305EncryptDetached([B[B[J[BJ[BJ[B[B[B)Z
.end method

.method public abstract cryptoAeadChaCha20Poly1305IetfDecrypt([B[J[B[BJ[BJ[B[B)Z
.end method

.method public abstract cryptoAeadChaCha20Poly1305IetfDecryptDetached([B[B[BJ[B[BJ[B[B)Z
.end method

.method public abstract cryptoAeadChaCha20Poly1305IetfEncrypt([B[J[BJ[BJ[B[B[B)Z
.end method

.method public abstract cryptoAeadChaCha20Poly1305IetfEncryptDetached([B[B[J[BJ[BJ[B[B[B)Z
.end method

.method public abstract cryptoAeadChaCha20Poly1305IetfKeygen([B)V
.end method

.method public abstract cryptoAeadChaCha20Poly1305Keygen([B)V
.end method

.method public abstract cryptoAeadXChaCha20Poly1305IetfDecrypt([B[J[B[BJ[BJ[B[B)Z
.end method

.method public abstract cryptoAeadXChaCha20Poly1305IetfDecryptDetached([B[B[BJ[B[BJ[B[B)Z
.end method

.method public abstract cryptoAeadXChaCha20Poly1305IetfEncrypt([B[J[BJ[BJ[B[B[B)Z
.end method

.method public abstract cryptoAeadXChaCha20Poly1305IetfEncryptDetached([B[B[J[BJ[BJ[B[B[B)Z
.end method

.method public abstract cryptoAeadXChaCha20Poly1305IetfKeygen([B)V
.end method
