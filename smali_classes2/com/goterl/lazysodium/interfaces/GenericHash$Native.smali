.class public interface abstract Lcom/goterl/lazysodium/interfaces/GenericHash$Native;
.super Ljava/lang/Object;
.source "GenericHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/GenericHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoGenericHash([BI[BJ)Z
.end method

.method public abstract cryptoGenericHash([BI[BJ[BI)Z
.end method

.method public abstract cryptoGenericHashFinal([B[BI)Z
.end method

.method public abstract cryptoGenericHashInit([BI)Z
.end method

.method public abstract cryptoGenericHashInit([B[BII)Z
.end method

.method public abstract cryptoGenericHashKeygen([B)V
.end method

.method public abstract cryptoGenericHashStateBytes()I
.end method

.method public abstract cryptoGenericHashUpdate([B[BJ)Z
.end method
