.class public interface abstract Lcom/goterl/lazysodium/interfaces/Auth$Native;
.super Ljava/lang/Object;
.source "Auth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract cryptoAuth([B[BJ[B)Z
.end method

.method public abstract cryptoAuthHMACSha256([B[BJ[B)Z
.end method

.method public abstract cryptoAuthHMACSha256Final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[B)Z
.end method

.method public abstract cryptoAuthHMACSha256Init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BI)Z
.end method

.method public abstract cryptoAuthHMACSha256Keygen([B)V
.end method

.method public abstract cryptoAuthHMACSha256Update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC256;[BJ)Z
.end method

.method public abstract cryptoAuthHMACSha256Verify([B[BJ[B)Z
.end method

.method public abstract cryptoAuthHMACSha512([B[BJ[B)Z
.end method

.method public abstract cryptoAuthHMACSha512256([B[BJ[B)Z
.end method

.method public abstract cryptoAuthHMACSha512256Final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[B)Z
.end method

.method public abstract cryptoAuthHMACSha512256Init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BI)Z
.end method

.method public abstract cryptoAuthHMACSha512256Keygen([B)V
.end method

.method public abstract cryptoAuthHMACSha512256Update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512256;[BJ)Z
.end method

.method public abstract cryptoAuthHMACSha512256Verify([B[BJ[B)Z
.end method

.method public abstract cryptoAuthHMACSha512Final(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[B)Z
.end method

.method public abstract cryptoAuthHMACSha512Init(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BI)Z
.end method

.method public abstract cryptoAuthHMACSha512Keygen([B)V
.end method

.method public abstract cryptoAuthHMACSha512Update(Lcom/goterl/lazysodium/interfaces/Auth$StateHMAC512;[BJ)Z
.end method

.method public abstract cryptoAuthHMACSha512Verify([B[BJ[B)Z
.end method

.method public abstract cryptoAuthKeygen([B)V
.end method

.method public abstract cryptoAuthVerify([B[BJ[B)Z
.end method
