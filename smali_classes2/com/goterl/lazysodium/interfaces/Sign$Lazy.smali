.class public interface abstract Lcom/goterl/lazysodium/interfaces/Sign$Lazy;
.super Ljava/lang/Object;
.source "Sign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Sign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract convertKeyPairEd25519ToCurve25519(Lcom/goterl/lazysodium/utils/KeyPair;)Lcom/goterl/lazysodium/utils/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSign(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSignDetached(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSignKeypair()Lcom/goterl/lazysodium/utils/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSignOpen(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
.end method

.method public abstract cryptoSignSecretKeyPair(Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSignSeedKeypair([B)Lcom/goterl/lazysodium/utils/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoSignVerifyDetached(Ljava/lang/String;Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Z
.end method
