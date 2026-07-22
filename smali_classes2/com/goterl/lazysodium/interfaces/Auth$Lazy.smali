.class public interface abstract Lcom/goterl/lazysodium/interfaces/Auth$Lazy;
.super Ljava/lang/Object;
.source "Auth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoAuth(Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoAuthHMACSha(Lcom/goterl/lazysodium/interfaces/Auth$Type;Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Ljava/lang/String;
.end method

.method public abstract cryptoAuthHMACShaFinal(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoAuthHMACShaFinal(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoAuthHMACShaFinal(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoAuthHMACShaInit(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;Lcom/goterl/lazysodium/utils/Key;)Z
.end method

.method public abstract cryptoAuthHMACShaInit(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;Lcom/goterl/lazysodium/utils/Key;)Z
.end method

.method public abstract cryptoAuthHMACShaInit(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;Lcom/goterl/lazysodium/utils/Key;)Z
.end method

.method public abstract cryptoAuthHMACShaKeygen(Lcom/goterl/lazysodium/interfaces/Auth$Type;)Lcom/goterl/lazysodium/utils/Key;
.end method

.method public abstract cryptoAuthHMACShaUpdate(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;Ljava/lang/String;)Z
.end method

.method public abstract cryptoAuthHMACShaUpdate(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;Ljava/lang/String;)Z
.end method

.method public abstract cryptoAuthHMACShaUpdate(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;Ljava/lang/String;)Z
.end method

.method public abstract cryptoAuthHMACShaVerify(Lcom/goterl/lazysodium/interfaces/Auth$Type;Ljava/lang/String;Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Z
.end method

.method public abstract cryptoAuthKeygen()Lcom/goterl/lazysodium/utils/Key;
.end method

.method public abstract cryptoAuthVerify(Ljava/lang/String;Ljava/lang/String;Lcom/goterl/lazysodium/utils/Key;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method
