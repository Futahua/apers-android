.class public interface abstract Lcom/goterl/lazysodium/interfaces/Ristretto255$Native;
.super Ljava/lang/Object;
.source "Ristretto255.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Ristretto255;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoCoreRistretto255Add([B[B[B)Z
.end method

.method public abstract cryptoCoreRistretto255FromHash([B[B)Z
.end method

.method public abstract cryptoCoreRistretto255IsValidPoint([B)Z
.end method

.method public abstract cryptoCoreRistretto255Random([B)V
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd([B[B[B)V
.end method

.method public abstract cryptoCoreRistretto255ScalarComplement([B[B)V
.end method

.method public abstract cryptoCoreRistretto255ScalarInvert([B[B)Z
.end method

.method public abstract cryptoCoreRistretto255ScalarMul([B[B[B)V
.end method

.method public abstract cryptoCoreRistretto255ScalarNegate([B[B)V
.end method

.method public abstract cryptoCoreRistretto255ScalarRandom([B)V
.end method

.method public abstract cryptoCoreRistretto255ScalarReduce([B[B)V
.end method

.method public abstract cryptoCoreRistretto255ScalarSub([B[B[B)V
.end method

.method public abstract cryptoCoreRistretto255Sub([B[B[B)Z
.end method

.method public abstract cryptoScalarmultRistretto255([B[B[B)Z
.end method

.method public abstract cryptoScalarmultRistretto255Base([B[B)Z
.end method
