.class public interface abstract Lcom/goterl/lazysodium/interfaces/KeyDerivation$Native;
.super Ljava/lang/Object;
.source "KeyDerivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/KeyDerivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoKdfDeriveFromKey([BIJ[B[B)I
.end method

.method public abstract cryptoKdfKeygen([B)V
.end method
