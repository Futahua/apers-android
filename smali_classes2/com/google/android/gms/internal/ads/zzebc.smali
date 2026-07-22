.class public final synthetic Lcom/google/android/gms/internal/ads/zzebc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfge;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzebd;

.field public final synthetic zzb:Z

.field public final synthetic zzc:Ljava/util/ArrayList;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbcj$zzab;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzebd;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbcj$zzab;Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebc;->zza:Lcom/google/android/gms/internal/ads/zzebd;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzc:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzd:Lcom/google/android/gms/internal/ads/zzbcj$zzab;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzebc;->zze:Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzd;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebc;->zza:Lcom/google/android/gms/internal/ads/zzebd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzebd;->zzb:Lcom/google/android/gms/internal/ads/zzebe;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzebf;->zzf()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebc;->zze:Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzd:Lcom/google/android/gms/internal/ads/zzbcj$zzab;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzc:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzebc;->zzb:Z

    .line 2
    invoke-static {v0, v4, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzebe;->zze(Lcom/google/android/gms/internal/ads/zzebe;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbcj$zzab;Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzd;)[B

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v4, v2}, Lcom/google/android/gms/internal/ads/zzebh;->zzf(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebe;->zzc(Lcom/google/android/gms/internal/ads/zzebe;)Lcom/google/android/gms/internal/ads/zzeaw;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeaw;->zzd()J

    move-result-wide v2

    .line 5
    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzebh;->zzc(Landroid/database/sqlite/SQLiteDatabase;J[B)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
