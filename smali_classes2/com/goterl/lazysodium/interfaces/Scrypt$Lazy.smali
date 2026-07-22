.class public interface abstract Lcom/goterl/lazysodium/interfaces/Scrypt$Lazy;
.super Ljava/lang/Object;
.source "Scrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Scrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoPwHashScryptSalsa208Sha256(Ljava/lang/String;J[BJJ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoPwHashScryptSalsa208Sha256Str(Ljava/lang/String;JJ)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoPwHashScryptSalsa208Sha256StrVerify(Ljava/lang/String;Ljava/lang/String;)Z
.end method
