.class public interface abstract Lcom/goterl/lazysodium/interfaces/SecureMemory$Native;
.super Ljava/lang/Object;
.source "SecureMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/SecureMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract sodiumAllocArray(II)Lcom/sun/jna/Pointer;
.end method

.method public abstract sodiumFree(Lcom/sun/jna/Pointer;)V
.end method

.method public abstract sodiumMLock([BI)Z
.end method

.method public abstract sodiumMProtectNoAccess(Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract sodiumMProtectReadOnly(Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract sodiumMProtectReadWrite(Lcom/sun/jna/Pointer;)Z
.end method

.method public abstract sodiumMUnlock([BI)Z
.end method

.method public abstract sodiumMalloc(I)Lcom/sun/jna/Pointer;
.end method

.method public abstract sodiumMemZero([BI)Z
.end method
