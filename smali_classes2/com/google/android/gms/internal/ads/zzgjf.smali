.class public final synthetic Lcom/google/android/gms/internal/ads/zzgjf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgph;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgjn;->zza:Lcom/google/android/gms/internal/ads/zzghm;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzghj;-><init>(Lcom/google/android/gms/internal/ads/zzghl;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghj;->zza(I)Lcom/google/android/gms/internal/ads/zzghj;

    const/16 v1, 0x20

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghj;->zzb(I)Lcom/google/android/gms/internal/ads/zzghj;

    const/16 v1, 0x10

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghj;->zzc(I)Lcom/google/android/gms/internal/ads/zzghj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzghk;->zza:Lcom/google/android/gms/internal/ads/zzghk;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzghj;->zzd(Lcom/google/android/gms/internal/ads/zzghk;)Lcom/google/android/gms/internal/ads/zzghj;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghj;->zze()Lcom/google/android/gms/internal/ads/zzghm;

    move-result-object v0

    return-object v0
.end method
