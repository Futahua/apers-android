.class public Lcom/goterl/lazysodium/interfaces/Hash$State256$ByReference;
.super Lcom/goterl/lazysodium/interfaces/Hash$State256;
.source "Hash.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Hash$State256;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/goterl/lazysodium/interfaces/Hash$State256;-><init>()V

    return-void
.end method
