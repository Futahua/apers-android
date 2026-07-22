.class public interface abstract Lcom/goterl/lazysodium/interfaces/KeyDerivation$Lazy;
.super Ljava/lang/Object;
.source "KeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/KeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoKdfDeriveFromKey(IJLjava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoKdfKeygen()Lcom/goterl/lazysodium/utils/Key;
.end method
