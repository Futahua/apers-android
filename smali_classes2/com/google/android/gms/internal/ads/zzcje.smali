.class final Lcom/google/android/gms/internal/ads/zzcje;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdtu;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzble;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcio;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcje;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzble;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzh:Lcom/google/android/gms/internal/ads/zzcje;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzg:Lcom/google/android/gms/internal/ads/zzcio;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zze:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzf:Lcom/google/android/gms/internal/ads/zzble;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdtq;->zzd(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdts;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzdts;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzcje;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcje;->zze:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzdtl;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzg:Lcom/google/android/gms/internal/ads/zzcio;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzh:Lcom/google/android/gms/internal/ads/zzcje;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcjb;-><init>(Lcom/google/android/gms/internal/ads/zzcio;Lcom/google/android/gms/internal/ads/zzcje;Lcom/google/android/gms/internal/ads/zzcjs;)V

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/ads/zzdtp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzf:Lcom/google/android/gms/internal/ads/zzble;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(Lcom/google/android/gms/internal/ads/zzble;)Lcom/google/android/gms/internal/ads/zzdtp;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzdtr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhha;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtr;

    return-object v0
.end method
