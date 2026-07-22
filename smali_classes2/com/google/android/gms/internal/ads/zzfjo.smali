.class public final synthetic Lcom/google/android/gms/internal/ads/zzfjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfjp;

.field public final synthetic zzb:I

.field public final synthetic zzc:J

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfjp;IJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zza:Lcom/google/android/gms/internal/ads/zzfjp;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzc:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zza:Lcom/google/android/gms/internal/ads/zzfjp;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzc:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzd:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/ads/internal/util/client/zzt;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfjp;->zzc(Lcom/google/android/gms/internal/ads/zzfjp;IJLjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzt;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
