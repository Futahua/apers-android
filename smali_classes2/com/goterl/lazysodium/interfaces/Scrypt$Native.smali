.class public interface abstract Lcom/goterl/lazysodium/interfaces/Scrypt$Native;
.super Ljava/lang/Object;
.source "Scrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Scrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoPwHashScryptSalsa208Sha256([BJ[BJ[BJJ)Z
.end method

.method public abstract cryptoPwHashScryptSalsa208Sha256Ll([BI[BIJJJ[BI)Z
.end method

.method public abstract cryptoPwHashScryptSalsa208Sha256Str([B[BJJJ)Z
.end method

.method public abstract cryptoPwHashScryptSalsa208Sha256StrNeedsRehash([BJJ)Z
.end method

.method public abstract cryptoPwHashScryptSalsa208Sha256StrVerify([B[BJ)Z
.end method
