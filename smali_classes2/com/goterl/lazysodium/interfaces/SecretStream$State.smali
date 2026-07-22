.class public Lcom/goterl/lazysodium/interfaces/SecretStream$State;
.super Lcom/sun/jna/Structure;
.source "SecretStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/SecretStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/SecretStream$State$ByReference;
    }
.end annotation


# instance fields
.field public _pad:[B

.field public k:[B

.field public nonce:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 260
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x20

    .line 269
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/goterl/lazysodium/interfaces/SecretStream$State;->k:[B

    const/16 v0, 0xc

    .line 270
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/goterl/lazysodium/interfaces/SecretStream$State;->nonce:[B

    const/16 v0, 0x8

    .line 271
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/goterl/lazysodium/interfaces/SecretStream$State;->_pad:[B

    return-void
.end method


# virtual methods
.method protected getFieldOrder()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 266
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "k"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "nonce"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_pad"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
