.class public interface abstract Lcom/goterl/lazysodium/interfaces/Box$Native;
.super Ljava/lang/Object;
.source "Box.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoBoxBeforeNm([B[B[B)Z
.end method

.method public abstract cryptoBoxDetached([B[B[BJ[B[B[B)Z
.end method

.method public abstract cryptoBoxDetachedAfterNm([B[B[BJ[B[B)Z
.end method

.method public abstract cryptoBoxEasy([B[BJ[B[B[B)Z
.end method

.method public abstract cryptoBoxEasyAfterNm([B[BJ[B[B)Z
.end method

.method public abstract cryptoBoxKeypair([B[B)Z
.end method

.method public abstract cryptoBoxOpenDetached([B[B[BJ[B[B[B)Z
.end method

.method public abstract cryptoBoxOpenDetachedAfterNm([B[B[BJ[B[B)Z
.end method

.method public abstract cryptoBoxOpenEasy([B[BJ[B[B[B)Z
.end method

.method public abstract cryptoBoxOpenEasyAfterNm([B[BJ[B[B)Z
.end method

.method public abstract cryptoBoxSeal([B[BJ[B)Z
.end method

.method public abstract cryptoBoxSealOpen([B[BJ[B[B)Z
.end method

.method public abstract cryptoBoxSeedKeypair([B[B[B)Z
.end method
