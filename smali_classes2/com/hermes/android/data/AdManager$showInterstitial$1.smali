.class public final Lcom/hermes/android/data/AdManager$showInterstitial$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "AdManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/data/AdManager;->showInterstitial(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/hermes/android/data/AdManager$showInterstitial$1",
        "Lcom/google/android/gms/ads/FullScreenContentCallback;",
        "onAdDismissedFullScreenContent",
        "",
        "onAdFailedToShowFullScreenContent",
        "error",
        "Lcom/google/android/gms/ads/AdError;",
        "onAdShowedFullScreenContent",
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


# instance fields
.field final synthetic $onDismissed:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/hermes/android/data/AdManager;


# direct methods
.method constructor <init>(Lcom/hermes/android/data/AdManager;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/AdManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/data/AdManager$showInterstitial$1;->this$0:Lcom/hermes/android/data/AdManager;

    iput-object p2, p0, Lcom/hermes/android/data/AdManager$showInterstitial$1;->$onDismissed:Lkotlin/jvm/functions/Function0;

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/hermes/android/data/AdManager$showInterstitial$1;->this$0:Lcom/hermes/android/data/AdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hermes/android/data/AdManager;->access$setInterstitialAd$p(Lcom/hermes/android/data/AdManager;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 83
    iget-object v0, p0, Lcom/hermes/android/data/AdManager$showInterstitial$1;->this$0:Lcom/hermes/android/data/AdManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/hermes/android/data/AdManager;->access$setLastInterstitialTime$p(Lcom/hermes/android/data/AdManager;J)V

    .line 84
    iget-object v0, p0, Lcom/hermes/android/data/AdManager$showInterstitial$1;->this$0:Lcom/hermes/android/data/AdManager;

    invoke-static {v0}, Lcom/hermes/android/data/AdManager;->access$loadInterstitial(Lcom/hermes/android/data/AdManager;)V

    .line 85
    iget-object v0, p0, Lcom/hermes/android/data/AdManager$showInterstitial$1;->$onDismissed:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Interstitial show failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/hermes/android/data/AdManager$showInterstitial$1;->this$0:Lcom/hermes/android/data/AdManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hermes/android/data/AdManager;->access$setInterstitialAd$p(Lcom/hermes/android/data/AdManager;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 91
    iget-object p1, p0, Lcom/hermes/android/data/AdManager$showInterstitial$1;->this$0:Lcom/hermes/android/data/AdManager;

    invoke-static {p1}, Lcom/hermes/android/data/AdManager;->access$loadInterstitial(Lcom/hermes/android/data/AdManager;)V

    .line 92
    iget-object p1, p0, Lcom/hermes/android/data/AdManager$showInterstitial$1;->$onDismissed:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 96
    const-string v0, "AdManager"

    const-string v1, "Interstitial shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
