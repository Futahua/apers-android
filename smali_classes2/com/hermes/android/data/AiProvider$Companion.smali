.class public final Lcom/hermes/android/data/AiProvider$Companion;
.super Ljava/lang/Object;
.source "ProviderCatalog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/AiProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProviderCatalog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProviderCatalog.kt\ncom/hermes/android/data/AiProvider$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,510:1\n295#2,2:511\n*S KotlinDebug\n*F\n+ 1 ProviderCatalog.kt\ncom/hermes/android/data/AiProvider$Companion\n*L\n507#1:511,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\rR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R#\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/hermes/android/data/AiProvider$Companion;",
        "",
        "<init>",
        "()V",
        "ALL",
        "",
        "Lcom/hermes/android/data/AiProvider;",
        "getALL",
        "()Ljava/util/List;",
        "POPULAR",
        "getPOPULAR",
        "ONBOARDING_BY_CATEGORY",
        "",
        "",
        "getONBOARDING_BY_CATEGORY",
        "()Ljava/util/Map;",
        "LABS",
        "getLABS",
        "findById",
        "id",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/data/AiProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findById(Ljava/lang/String;)Lcom/hermes/android/data/AiProvider;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider$Companion;->getALL()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 511
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/hermes/android/data/AiProvider;

    .line 507
    invoke-virtual {v2}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 512
    :goto_0
    check-cast v1, Lcom/hermes/android/data/AiProvider;

    return-object v1
.end method

.method public final getALL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/hermes/android/data/AiProvider;->access$getALL$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLABS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;"
        }
    .end annotation

    .line 505
    invoke-static {}, Lcom/hermes/android/data/AiProvider;->access$getLABS$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getONBOARDING_BY_CATEGORY()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;>;"
        }
    .end annotation

    .line 501
    invoke-static {}, Lcom/hermes/android/data/AiProvider;->access$getONBOARDING_BY_CATEGORY$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getPOPULAR()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;"
        }
    .end annotation

    .line 495
    invoke-static {}, Lcom/hermes/android/data/AiProvider;->access$getPOPULAR$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
