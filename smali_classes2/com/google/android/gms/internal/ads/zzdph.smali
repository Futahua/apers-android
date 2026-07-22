.class final Lcom/google/android/gms/internal/ads/zzdph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbsv;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdpi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdpi;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdph;->zza:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdph;->zza:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdpi;)Lcom/google/android/gms/internal/ads/zzcxf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxf;->zzc()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdph;->zza:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdpi;)Lcom/google/android/gms/internal/ads/zzcxf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxf;->zza()V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdph;->zza:Lcom/google/android/gms/internal/ads/zzdpi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb(Lcom/google/android/gms/internal/ads/zzdpi;)Lcom/google/android/gms/internal/ads/zzdaq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zza()V

    return-void
.end method
