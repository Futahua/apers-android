.class public interface abstract Lcom/goterl/lazysodium/interfaces/PwHash$Lazy;
.super Ljava/lang/Object;
.source "PwHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/PwHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoPwHash(Ljava/lang/String;I[BJLcom/sun/jna/NativeLong;Lcom/goterl/lazysodium/interfaces/PwHash$Alg;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoPwHashStr(Ljava/lang/String;JLcom/sun/jna/NativeLong;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoPwHashStrRemoveNulls(Ljava/lang/String;JLcom/sun/jna/NativeLong;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoPwHashStrVerify(Ljava/lang/String;Ljava/lang/String;)Z
.end method
