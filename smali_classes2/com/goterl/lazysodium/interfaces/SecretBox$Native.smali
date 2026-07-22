.class public interface abstract Lcom/goterl/lazysodium/interfaces/SecretBox$Native;
.super Ljava/lang/Object;
.source "SecretBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/SecretBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoSecretBoxDetached([B[B[BJ[B[B)Z
.end method

.method public abstract cryptoSecretBoxEasy([B[BJ[B[B)Z
.end method

.method public abstract cryptoSecretBoxKeygen([B)V
.end method

.method public abstract cryptoSecretBoxOpenDetached([B[B[BJ[B[B)Z
.end method

.method public abstract cryptoSecretBoxOpenEasy([B[BJ[B[B)Z
.end method
