.class public final synthetic Lcom/google/android/gms/internal/ads/zzdlz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdmc;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzr;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfca;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfcd;

.field public final synthetic zze:Lcom/google/android/gms/ads/internal/zzb;

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzbya;

.field public final synthetic zzg:Ljava/lang/String;

.field public final synthetic zzh:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zza:Lcom/google/android/gms/internal/ads/zzdmc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzd:Lcom/google/android/gms/internal/ads/zzfcd;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zze:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzf:Lcom/google/android/gms/internal/ads/zzbya;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzg:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zza:Lcom/google/android/gms/internal/ads/zzdmc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzd:Lcom/google/android/gms/internal/ads/zzfcd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zze:Lcom/google/android/gms/ads/internal/zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzf:Lcom/google/android/gms/internal/ads/zzbya;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzg:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdlz;->zzh:Ljava/lang/String;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzdmc;->zzc(Lcom/google/android/gms/internal/ads/zzdmc;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcd;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbya;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
