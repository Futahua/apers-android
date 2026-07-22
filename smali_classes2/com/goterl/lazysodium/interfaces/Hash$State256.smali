.class public Lcom/goterl/lazysodium/interfaces/Hash$State256;
.super Lcom/sun/jna/Structure;
.source "Hash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Hash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State256"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goterl/lazysodium/interfaces/Hash$State256$ByReference;
    }
.end annotation


# instance fields
.field public buf:[B

.field public count:J

.field public state:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x8

    .line 80
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/goterl/lazysodium/interfaces/Hash$State256;->state:[J

    const/16 v0, 0x40

    .line 82
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/goterl/lazysodium/interfaces/Hash$State256;->buf:[B

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

    .line 77
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "buf"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
