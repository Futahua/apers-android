.class public final Lcom/google/android/gms/internal/ads/zzepa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgdy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdqe;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfcw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgdy;Lcom/google/android/gms/internal/ads/zzdqe;Lcom/google/android/gms/internal/ads/zzfcw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepa;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzb:Lcom/google/android/gms/internal/ads/zzdqe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzd:Lcom/google/android/gms/internal/ads/zzfcw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzepa;)Lcom/google/android/gms/internal/ads/zzepb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzd:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzb:Lcom/google/android/gms/internal/ads/zzdqe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzepa;->zzc:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzdqe;->zzb(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqe;->zza()Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzepb;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzepb;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-object v1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeoz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeoz;-><init>(Lcom/google/android/gms/internal/ads/zzepa;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepa;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
