.class public final synthetic Lcom/google/android/gms/internal/ads/zzels;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzelu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Lcom/google/android/gms/internal/ads/zzelu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Lcom/google/android/gms/internal/ads/zzelu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzelu;->zze:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zzd(Lcom/google/android/gms/internal/ads/zzelv;)Lcom/google/android/gms/internal/ads/zzell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzell;->zzb()Lcom/google/android/gms/internal/ads/zzcxm;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcxm;->zzu()V

    return-void
.end method
