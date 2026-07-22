.class public final Lcom/google/android/gms/internal/ads/zzdpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzavu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbel;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/ads/internal/zza;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbcc;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcyv;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzecl;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfda;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdsj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcft;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzbel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbcc;Lcom/google/android/gms/internal/ads/zzcyv;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzdsj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzb:Lcom/google/android/gms/internal/ads/zzavu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzc:Lcom/google/android/gms/internal/ads/zzbel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zze:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzf:Lcom/google/android/gms/internal/ads/zzbcc;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzg:Lcom/google/android/gms/internal/ads/zzcyv;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzh:Lcom/google/android/gms/internal/ads/zzecl;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzi:Lcom/google/android/gms/internal/ads/zzfda;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzj:Lcom/google/android/gms/internal/ads/zzdsj;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzdpj;)Lcom/google/android/gms/internal/ads/zzcyv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdpj;->zzg:Lcom/google/android/gms/internal/ads/zzcyv;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;)Lcom/google/android/gms/internal/ads/zzcfg;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcfs;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzchd;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzchd;

    move-result-object v2

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdoy;

    move-object v10, v1

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdoy;-><init>(Lcom/google/android/gms/internal/ads/zzdpj;)V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzh:Lcom/google/android/gms/internal/ads/zzecl;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzi:Lcom/google/android/gms/internal/ads/zzfda;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzj:Lcom/google/android/gms/internal/ads/zzdsj;

    move-object/from16 v17, v1

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zze:Lcom/google/android/gms/ads/internal/zza;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzf:Lcom/google/android/gms/internal/ads/zzbcc;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzb:Lcom/google/android/gms/internal/ads/zzavu;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzc:Lcom/google/android/gms/internal/ads/zzbel;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdpj;->zza:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 2
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzcft;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchd;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzbel;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbdt;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbcc;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/internal/ads/zzecl;Lcom/google/android/gms/internal/ads/zzfda;Lcom/google/android/gms/internal/ads/zzdsj;)Lcom/google/android/gms/internal/ads/zzcfg;

    move-result-object v1

    return-object v1
.end method
