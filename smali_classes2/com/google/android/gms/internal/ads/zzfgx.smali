.class public final synthetic Lcom/google/android/gms/internal/ads/zzfgx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbs;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfgg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zza:Lcom/google/android/gms/internal/ads/zzfgg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgx;->zza:Lcom/google/android/gms/internal/ads/zzfgg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfhb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgg;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgg;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfhb;->zzdE(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;)V

    return-void
.end method
