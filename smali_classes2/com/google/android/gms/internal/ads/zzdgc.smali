.class public final Lcom/google/android/gms/internal/ads/zzdgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcye;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzddp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcye;Lcom/google/android/gms/internal/ads/zzddp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzb:Lcom/google/android/gms/internal/ads/zzddp;

    return-void
.end method


# virtual methods
.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcye;->zzd()V

    return-void
.end method

.method public final zzdk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcye;->zzdk()V

    return-void
.end method

.method public final zzds()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcye;->zzds()V

    return-void
.end method

.method public final zzdt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcye;->zzdt()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzb:Lcom/google/android/gms/internal/ads/zzddp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddp;->zzb()V

    return-void
.end method

.method public final zzdv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcye;->zzdv()V

    return-void
.end method

.method public final zzdw(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zza:Lcom/google/android/gms/internal/ads/zzcye;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcye;->zzdw(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgc;->zzb:Lcom/google/android/gms/internal/ads/zzddp;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddp;->zza()V

    return-void
.end method
