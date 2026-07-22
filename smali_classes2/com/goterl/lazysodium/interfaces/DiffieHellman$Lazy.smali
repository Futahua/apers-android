.class public interface abstract Lcom/goterl/lazysodium/interfaces/DiffieHellman$Lazy;
.super Ljava/lang/Object;
.source "DiffieHellman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/DiffieHellman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoScalarMult(Lcom/goterl/lazysodium/utils/Key;Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/Key;
.end method

.method public abstract cryptoScalarMultBase(Lcom/goterl/lazysodium/utils/Key;)Lcom/goterl/lazysodium/utils/Key;
.end method
