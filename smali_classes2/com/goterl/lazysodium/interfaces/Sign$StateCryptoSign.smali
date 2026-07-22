.class public Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;
.super Lcom/sun/jna/Structure;
.source "Sign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goterl/lazysodium/interfaces/Sign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateCryptoSign"
.end annotation


# instance fields
.field public hs:Lcom/goterl/lazysodium/interfaces/Hash$State512;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;
    .locals 3

    .line 289
    new-instance v0, Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;

    invoke-direct {v0}, Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;-><init>()V

    .line 290
    iget-object v1, v0, Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;->hs:Lcom/goterl/lazysodium/interfaces/Hash$State512;

    iget-object v2, p0, Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;->hs:Lcom/goterl/lazysodium/interfaces/Hash$State512;

    iget-object v2, v2, Lcom/goterl/lazysodium/interfaces/Hash$State512;->count:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Lcom/goterl/lazysodium/interfaces/Hash$State512;->count:[J

    .line 291
    iget-object v1, v0, Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;->hs:Lcom/goterl/lazysodium/interfaces/Hash$State512;

    iget-object v2, p0, Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;->hs:Lcom/goterl/lazysodium/interfaces/Hash$State512;

    iget-object v2, v2, Lcom/goterl/lazysodium/interfaces/Hash$State512;->state:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, v1, Lcom/goterl/lazysodium/interfaces/Hash$State512;->state:[J

    .line 292
    iget-object v1, v0, Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;->hs:Lcom/goterl/lazysodium/interfaces/Hash$State512;

    iget-object v2, p0, Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;->hs:Lcom/goterl/lazysodium/interfaces/Hash$State512;

    iget-object v2, v2, Lcom/goterl/lazysodium/interfaces/Hash$State512;->buf:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v1, Lcom/goterl/lazysodium/interfaces/Hash$State512;->buf:[B

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;->clone()Lcom/goterl/lazysodium/interfaces/Sign$StateCryptoSign;

    move-result-object v0

    return-object v0
.end method

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

    .line 284
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hs"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
