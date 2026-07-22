.class public interface abstract Lcom/goterl/lazysodium/interfaces/Padding$Native;
.super Ljava/lang/Object;
.source "Padding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Padding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Native"
.end annotation


# virtual methods
.method public abstract sodiumPad(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;III)Z
.end method

.method public abstract sodiumUnpad(Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;II)Z
.end method
