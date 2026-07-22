.class public interface abstract Lcom/goterl/lazysodium/interfaces/Ristretto255$Lazy;
.super Ljava/lang/Object;
.source "Ristretto255.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Ristretto255;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Lazy"
.end annotation


# virtual methods
.method public abstract cryptoCoreRistretto255Add(Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoCoreRistretto255FromHash(Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoCoreRistretto255FromHash([B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoCoreRistretto255IsValidPoint(Ljava/lang/String;)Z
.end method

.method public abstract cryptoCoreRistretto255Random()Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd(Ljava/lang/String;[B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd(Ljava/math/BigInteger;Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd([BLjava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd([BLjava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarAdd([B[B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarComplement(Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarComplement(Ljava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarComplement([B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarInvert(Ljava/lang/String;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoCoreRistretto255ScalarInvert(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoCoreRistretto255ScalarInvert([B)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoCoreRistretto255ScalarMul(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarMul(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarMul(Ljava/lang/String;[B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarMul(Ljava/math/BigInteger;Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarMul(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarMul(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarMul([BLjava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarMul([BLjava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarMul([B[B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarNegate(Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarNegate(Ljava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarNegate([B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarRandom()Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarReduce(Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarReduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarReduce([B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarSub(Ljava/lang/String;Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarSub(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarSub(Ljava/lang/String;[B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarSub(Ljava/math/BigInteger;Ljava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarSub(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarSub(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarSub([BLjava/lang/String;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarSub([BLjava/math/BigInteger;)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255ScalarSub([B[B)Ljava/math/BigInteger;
.end method

.method public abstract cryptoCoreRistretto255Sub(Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoScalarmultRistretto255(Ljava/lang/String;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoScalarmultRistretto255(Ljava/math/BigInteger;Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoScalarmultRistretto255([BLcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoScalarmultRistretto255Base(Ljava/lang/String;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoScalarmultRistretto255Base(Ljava/math/BigInteger;)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method

.method public abstract cryptoScalarmultRistretto255Base([B)Lcom/goterl/lazysodium/interfaces/Ristretto255$RistrettoPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/goterl/lazysodium/exceptions/SodiumException;
        }
    .end annotation
.end method
