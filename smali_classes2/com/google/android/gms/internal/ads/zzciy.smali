.class final Lcom/google/android/gms/internal/ads/zzciy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeyp;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhha;

.field final zze:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzg:Landroid/content/Context;

.field private final zzh:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcio;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzj:Lcom/google/android/gms/internal/ads/zzcio;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzg:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzi:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzl:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzekz;->zza(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzekz;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzele;->zza()Lcom/google/android/gms/internal/ads/zzele;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdbd;->zza()Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzciy;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcio;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzS:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcy;->zza()Lcom/google/android/gms/internal/ads/zzfcy;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzeyn;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzeyn;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzf:Lcom/google/android/gms/internal/ads/zzhha;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeke;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzf:Lcom/google/android/gms/internal/ads/zzhha;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzeke;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhha;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzeym;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhha;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzeky;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzj:Lcom/google/android/gms/internal/ads/zzcio;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcio;->zzF(Lcom/google/android/gms/internal/ads/zzcio;)Lcom/google/android/gms/internal/ads/zzchh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzchz;->zzc(Lcom/google/android/gms/internal/ads/zzchh;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzl:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhha;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdsj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzg:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzi:Ljava/lang/String;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzeke;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeky;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdsj;)V

    return-object v9
.end method
