.class public final Lcom/google/android/gms/internal/ads/zzcsq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxm;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lcom/google/android/gms/internal/ads/zzcza;
.implements Lcom/google/android/gms/internal/ads/zzcws;
.implements Lcom/google/android/gms/internal/ads/zzcvy;
.implements Lcom/google/android/gms/internal/ads/zzdbm;


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzbzl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zzd()V

    return-void
.end method

.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zze()V

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method

.method public final zzdn(Lcom/google/android/gms/internal/ads/zzbvq;)V
    .locals 0

    return-void
.end method

.method public final zzdo(Lcom/google/android/gms/internal/ads/zzfcn;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zza:Lcom/google/android/gms/common/util/Clock;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzl;->zzk(J)V

    return-void
.end method

.method public final zzdu(Lcom/google/android/gms/internal/ads/zzbwc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbcj$zzb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzi()V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzbcj$zzb;)V
    .locals 0

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzj(Lcom/google/android/gms/ads/internal/client/zzm;)V

    return-void
.end method

.method public final zzl(Z)V
    .locals 0

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzbcj$zzb;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzg()V

    return-void
.end method

.method public final zzn(Z)V
    .locals 0

    return-void
.end method

.method public final zzt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzl;->zzf()V

    return-void
.end method

.method public final zzu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsq;->zzb:Lcom/google/android/gms/internal/ads/zzbzl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzl;->zzh(Z)V

    return-void
.end method
