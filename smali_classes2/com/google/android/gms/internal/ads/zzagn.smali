.class final Lcom/google/android/gms/internal/ads/zzagn;
.super Lcom/google/android/gms/internal/ads/zzaei;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaeu;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzago;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzago;Lcom/google/android/gms/internal/ads/zzaeu;Lcom/google/android/gms/internal/ads/zzaeu;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagn;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagn;->zzb:Lcom/google/android/gms/internal/ads/zzago;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzaei;-><init>(Lcom/google/android/gms/internal/ads/zzaeu;)V

    return-void
.end method


# virtual methods
.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzaes;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagn;->zza:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaeu;->zzg(J)Lcom/google/android/gms/internal/ads/zzaes;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzaes;->zza:Lcom/google/android/gms/internal/ads/zzaev;

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzaev;->zzc:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagn;->zzb:Lcom/google/android/gms/internal/ads/zzago;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaes;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaev;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzago;->zza(Lcom/google/android/gms/internal/ads/zzago;)J

    move-result-wide v5

    add-long/2addr v0, v5

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzaev;->zzb:J

    .line 2
    invoke-direct {v4, v5, v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzaev;-><init>(JJ)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaes;->zzb:Lcom/google/android/gms/internal/ads/zzaev;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzaev;->zzc:J

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaev;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzago;->zza(Lcom/google/android/gms/internal/ads/zzago;)J

    move-result-wide v5

    add-long/2addr v0, v5

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzaev;->zzb:J

    invoke-direct {p2, v5, v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzaev;-><init>(JJ)V

    invoke-direct {v3, v4, p2}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    return-object v3
.end method
