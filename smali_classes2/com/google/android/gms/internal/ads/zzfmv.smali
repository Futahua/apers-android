.class public final Lcom/google/android/gms/internal/ads/zzfmv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfmx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfmw;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfmx;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zza:Lcom/google/android/gms/internal/ads/zzfmx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfmw;-><init>(Lcom/google/android/gms/internal/ads/zzfmu;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zzb:Lcom/google/android/gms/internal/ads/zzfmw;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfmu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zzb:Lcom/google/android/gms/internal/ads/zzfmw;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfmu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmv;->zza:Lcom/google/android/gms/internal/ads/zzfmx;

    return-object v0
.end method
