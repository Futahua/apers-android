.class public interface abstract Lcom/goterl/lazysodium/interfaces/Sign$Native;
.super Ljava/lang/Object;
.source "Sign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Sign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract convertPublicKeyEd25519ToCurve25519([B[B)Z
.end method

.method public abstract convertSecretKeyEd25519ToCurve25519([B[B)Z
.end method

.method public abstract cryptoSign([B[BJ[B)Z
.end method

.method public abstract cryptoSignDetached([B[BJ[B)Z
.end method

.method public abstract cryptoSignEd25519SkToPk([B[B)Z
.end method

.method public abstract cryptoSignEd25519SkToSeed([B[B)Z
.end method

.method public abstract cryptoSignFinalCreate(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[BLcom/sun/jna/Pointer;[B)Z
.end method

.method public abstract cryptoSignFinalVerify(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[B[B)Z
.end method

.method public abstract cryptoSignInit(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;)Z
.end method

.method public abstract cryptoSignKeypair([B[B)Z
.end method

.method public abstract cryptoSignOpen([B[BJ[B)Z
.end method

.method public abstract cryptoSignSeedKeypair([B[B[B)Z
.end method

.method public abstract cryptoSignUpdate(Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;[BJ)Z
.end method

.method public abstract cryptoSignVerifyDetached([B[BI[B)Z
.end method
