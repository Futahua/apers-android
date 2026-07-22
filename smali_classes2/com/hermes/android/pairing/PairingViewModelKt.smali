.class public final Lcom/hermes/android/pairing/PairingViewModelKt;
.super Ljava/lang/Object;
.source "PairingViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "createPairingViewModel",
        "Lcom/hermes/android/pairing/PairingViewModel;",
        "context",
        "Landroid/content/Context;",
        "app_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createPairingViewModel(Landroid/content/Context;)Lcom/hermes/android/pairing/PairingViewModel;
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    invoke-virtual {v0, p0}, Lcom/hermes/android/HermesPaths;->hermesHome(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/hermes/android/pairing/PairingViewModel;

    new-instance v2, Lcom/hermes/android/data/HermesConfigRepository;

    invoke-direct {v2, v0}, Lcom/hermes/android/data/HermesConfigRepository;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2}, Lcom/hermes/android/pairing/PairingViewModel;-><init>(Landroid/content/Context;Lcom/hermes/android/data/HermesConfigRepository;)V

    return-object v1
.end method
