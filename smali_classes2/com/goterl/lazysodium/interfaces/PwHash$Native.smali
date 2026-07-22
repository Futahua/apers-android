.class public interface abstract Lcom/goterl/lazysodium/interfaces/PwHash$Native;
.super Ljava/lang/Object;
.source "PwHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/PwHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoPwHash([BI[BI[BJLcom/sun/jna/NativeLong;Lcom/goterl/lazysodium/interfaces/PwHash$Alg;)Z
.end method

.method public abstract cryptoPwHashStr([B[BIJLcom/sun/jna/NativeLong;)Z
.end method

.method public abstract cryptoPwHashStrNeedsRehash([BJLcom/sun/jna/NativeLong;)Z
.end method

.method public abstract cryptoPwHashStrVerify([B[BI)Z
.end method
