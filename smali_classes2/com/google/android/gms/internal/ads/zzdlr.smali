.class public final synthetic Lcom/google/android/gms/internal/ads/zzdlr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdmc;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbya;

.field public final synthetic zzd:Lcom/google/android/gms/ads/internal/zzb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdmc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbya;Lcom/google/android/gms/ads/internal/zzb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlr;->zza:Lcom/google/android/gms/internal/ads/zzdmc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlr;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlr;->zzc:Lcom/google/android/gms/internal/ads/zzbya;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdlr;->zzd:Lcom/google/android/gms/ads/internal/zzb;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlr;->zza:Lcom/google/android/gms/internal/ads/zzdmc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlr;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlr;->zzc:Lcom/google/android/gms/internal/ads/zzbya;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdlr;->zzd:Lcom/google/android/gms/ads/internal/zzb;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzdmc;->zzb(Lcom/google/android/gms/internal/ads/zzdmc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbya;Lcom/google/android/gms/ads/internal/zzb;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
