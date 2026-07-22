.class public Lcom/goterl/lazysodium/interfaces/Hash$State512$ByReference;
.super Lcom/goterl/lazysodium/interfaces/Hash$State512;
.source "Hash.java"

# interfaces
.implements Lcom/sun/jna/Structure$ByReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Hash$State512;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/goterl/lazysodium/interfaces/Hash$State512;-><init>()V

    return-void
.end method
