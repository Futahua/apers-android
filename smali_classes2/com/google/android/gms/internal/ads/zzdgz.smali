.class public final Lcom/google/android/gms/internal/ads/zzdgz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdgw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdgw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zza:Lcom/google/android/gms/internal/ads/zzdgw;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdgw;)Lcom/google/android/gms/internal/ads/zzdgz;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdgz;-><init>(Lcom/google/android/gms/internal/ads/zzdgw;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzdgw;)Lcom/google/android/gms/internal/ads/zzdje;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdgw;->zzb()Lcom/google/android/gms/internal/ads/zzdje;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdje;

    return-object p0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zza:Lcom/google/android/gms/internal/ads/zzdgw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgz;->zzd(Lcom/google/android/gms/internal/ads/zzdgw;)Lcom/google/android/gms/internal/ads/zzdje;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdje;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgz;->zza:Lcom/google/android/gms/internal/ads/zzdgw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgz;->zzd(Lcom/google/android/gms/internal/ads/zzdgw;)Lcom/google/android/gms/internal/ads/zzdje;

    move-result-object v0

    return-object v0
.end method
