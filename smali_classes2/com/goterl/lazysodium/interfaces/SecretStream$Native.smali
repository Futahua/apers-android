.class public interface abstract Lcom/goterl/lazysodium/interfaces/SecretStream$Native;
.super Ljava/lang/Object;
.source "SecretStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/SecretStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoSecretStreamInitPull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)Z
.end method

.method public abstract cryptoSecretStreamInitPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B)Z
.end method

.method public abstract cryptoSecretStreamKeygen([B)V
.end method

.method public abstract cryptoSecretStreamPull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[B[BJ)Z
.end method

.method public abstract cryptoSecretStreamPull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[B[BJ[BJ)Z
.end method

.method public abstract cryptoSecretStreamPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[BJB)Z
.end method

.method public abstract cryptoSecretStreamPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[BJB)Z
.end method

.method public abstract cryptoSecretStreamPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;[B[J[BJ[BJB)Z
.end method

.method public abstract cryptoSecretStreamRekey(Lcom/goterl/lazysodium/interfaces/SecretStream$State;)V
.end method
