.class public interface abstract Lcom/goterl/lazysodium/interfaces/SecretStream$Lazy;
.super Ljava/lang/Object;
.source "SecretStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/SecretStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoSecretStreamInitPull([BLcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/interfaces/SecretStream$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSecretStreamInitPush([BLcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/interfaces/SecretStream$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSecretStreamKeygen()Lcom/goterl/lazysodium/utils/Key;
.end method

.method public abstract cryptoSecretStreamPull(Lcom/goterl/lazysodium/interfaces/SecretStream$State;Ljava/lang/String;[B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSecretStreamPush(Lcom/goterl/lazysodium/interfaces/SecretStream$State;Ljava/lang/String;B)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSecretStreamRekey(Lcom/goterl/lazysodium/interfaces/SecretStream$State;)V
.end method
