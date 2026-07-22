.class public final Lcom/google/android/play/core/splitinstall/internal/zzao;
.super Ljava/lang/Object;
.source "com.google.android.play:feature-delivery@@2.1.0"


# direct methods
.method public static zza()Lcom/google/android/play/core/splitinstall/internal/zzan;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzbe;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzbe;-><init>()V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzbg;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzbg;-><init>()V

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/android/play/core/splitinstall/internal/zzbd;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/internal/zzbd;-><init>()V

    return-object v0
.end method
