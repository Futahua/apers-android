.class public Lcom/goterl/lazysodium/interfaces/AEAD$StateAES;
.super Lcom/sun/jna/Structure;
.source "AEAD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/AEAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateAES"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/AEAD$StateAES$ByReference;
    }
.end annotation


# instance fields
.field public arr:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 351
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x200

    .line 362
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/goterl/lazysodium/interfaces/AEAD$StateAES;->arr:[B

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

    const/4 v0, 0x1

    .line 359
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "arr"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
