.class public final Lcom/google/android/gms/internal/ads/zzell;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdje;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeky;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcwb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzell;->zza:Lcom/google/android/gms/internal/ads/zzdje;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeky;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzeky;-><init>(Lcom/google/android/gms/internal/ads/zzdsj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdje;->zzg()Lcom/google/android/gms/internal/ads/zzbmy;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzelk;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzelk;-><init>(Lcom/google/android/gms/internal/ads/zzeky;Lcom/google/android/gms/internal/ads/zzbmy;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzell;->zzc:Lcom/google/android/gms/internal/ads/zzcwb;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcwb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzc:Lcom/google/android/gms/internal/ads/zzcwb;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcxm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdgw;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzell;->zza:Lcom/google/android/gms/internal/ads/zzdje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeky;->zzg()Lcom/google/android/gms/ads/internal/client/zzbk;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdgw;-><init>(Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzeky;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzell;->zzb:Lcom/google/android/gms/internal/ads/zzeky;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeky;->zzj(Lcom/google/android/gms/ads/internal/client/zzbk;)V

    return-void
.end method
