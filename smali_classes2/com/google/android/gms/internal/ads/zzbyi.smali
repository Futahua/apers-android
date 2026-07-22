.class final Lcom/google/android/gms/internal/ads/zzbyi;
.super Lcom/google/android/gms/internal/ads/zzbyp;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhha;

.field final zze:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzg:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzh:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzj:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzbyo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbyp;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzj:Lcom/google/android/gms/common/util/Clock;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzbyc;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzbyc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    .line 4
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbye;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzbye;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzf:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzbyg;->zzc(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzbyg;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzg:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbyu;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzbyu;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzh:Lcom/google/android/gms/internal/ads/zzhha;

    return-void
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/ads/zzbyf;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzf:Lcom/google/android/gms/internal/ads/zzhha;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhha;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbyd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyi;->zzj:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbyf;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzbyd;)V

    return-object v1
.end method
