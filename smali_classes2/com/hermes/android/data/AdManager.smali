.class public final Lcom/hermes/android/data/AdManager;
.super Ljava/lang/Object;
.source "AdManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/AdManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0006\u0010\u0011\u001a\u00020\rJ\u001c\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/hermes/android/data/AdManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "proStatus",
        "Lcom/hermes/android/data/ProStatus;",
        "<init>",
        "(Landroid/content/Context;Lcom/hermes/android/data/ProStatus;)V",
        "interstitialAd",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
        "lastInterstitialTime",
        "",
        "initialized",
        "",
        "initialize",
        "",
        "loadInterstitial",
        "shouldShowAd",
        "showInterstitial",
        "activity",
        "Landroid/app/Activity;",
        "onDismissed",
        "Lkotlin/Function0;",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final BANNER_AD_UNIT_ID:Ljava/lang/String; = "ca-app-pub-1050211242006416/7374603928"

.field private static final COOLDOWN_MS:J = 0x493e0L

.field public static final Companion:Lcom/hermes/android/data/AdManager$Companion;

.field public static final INTERSTITIAL_AD_UNIT_ID:Ljava/lang/String; = "ca-app-pub-1050211242006416/8307352152"

.field private static final TAG:Ljava/lang/String; = "AdManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private initialized:Z

.field private interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private lastInterstitialTime:J

.field private final proStatus:Lcom/hermes/android/data/ProStatus;


# direct methods
.method public static synthetic $r8$lambda$z5Vu7rB0_XW1TLJarwHUt5QD_O4(Lcom/hermes/android/data/AdManager;Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/data/AdManager;->initialize$lambda$0(Lcom/hermes/android/data/AdManager;Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/data/AdManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/AdManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/AdManager;->Companion:Lcom/hermes/android/data/AdManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/AdManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hermes/android/data/ProStatus;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/hermes/android/data/AdManager;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/hermes/android/data/AdManager;->proStatus:Lcom/hermes/android/data/ProStatus;

    return-void
.end method

.method public static final synthetic access$loadInterstitial(Lcom/hermes/android/data/AdManager;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/hermes/android/data/AdManager;->loadInterstitial()V

    return-void
.end method

.method public static final synthetic access$setInterstitialAd$p(Lcom/hermes/android/data/AdManager;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/hermes/android/data/AdManager;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public static final synthetic access$setLastInterstitialTime$p(Lcom/hermes/android/data/AdManager;J)V
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/hermes/android/data/AdManager;->lastInterstitialTime:J

    return-void
.end method

.method private static final initialize$lambda$0(Lcom/hermes/android/data/AdManager;Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileAds initialized: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/hermes/android/data/AdManager;->initialized:Z

    .line 30
    invoke-direct {p0}, Lcom/hermes/android/data/AdManager;->loadInterstitial()V

    return-void
.end method

.method private final loadInterstitial()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/hermes/android/data/AdManager;->proStatus:Lcom/hermes/android/data/ProStatus;

    invoke-virtual {v0}, Lcom/hermes/android/data/ProStatus;->isPro()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/hermes/android/data/AdManager;->context:Landroid/content/Context;

    .line 46
    new-instance v2, Lcom/hermes/android/data/AdManager$loadInterstitial$1;

    invoke-direct {v2, p0}, Lcom/hermes/android/data/AdManager$loadInterstitial$1;-><init>(Lcom/hermes/android/data/AdManager;)V

    check-cast v2, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    .line 42
    const-string v3, "ca-app-pub-1050211242006416/8307352152"

    invoke-static {v1, v3, v0, v2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 2

    # Ads disabled for standalone build: do not initialize MobileAds.
    # Mark initialized so no ad SDK code path is ever triggered; interstitialAd
    # stays null so shouldShowAd()/showInterstitial() are inert.
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hermes/android/data/AdManager;->initialized:Z

    const-string v0, "AdManager"

    const-string v1, "Ads disabled (standalone build)."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final shouldShowAd()Z
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/hermes/android/data/AdManager;->proStatus:Lcom/hermes/android/data/ProStatus;

    invoke-virtual {v0}, Lcom/hermes/android/data/ProStatus;->isPro()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/data/AdManager;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v0, :cond_1

    return v1

    .line 64
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 65
    iget-wide v4, p0, Lcom/hermes/android/data/AdManager;->lastInterstitialTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final showInterstitial(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismissed"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/hermes/android/data/AdManager;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v0, :cond_0

    .line 76
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 80
    :cond_0
    new-instance v1, Lcom/hermes/android/data/AdManager$showInterstitial$1;

    invoke-direct {v1, p0, p2}, Lcom/hermes/android/data/AdManager$showInterstitial$1;-><init>(Lcom/hermes/android/data/AdManager;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 100
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    return-void
.end method
