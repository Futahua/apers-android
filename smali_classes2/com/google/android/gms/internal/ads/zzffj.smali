.class public final synthetic Lcom/google/android/gms/internal/ads/zzffj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzffl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzffd;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfej;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzffe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzffl;Lcom/google/android/gms/internal/ads/zzffd;Lcom/google/android/gms/internal/ads/zzfej;Lcom/google/android/gms/internal/ads/zzffe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Lcom/google/android/gms/internal/ads/zzffd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzc:Lcom/google/android/gms/internal/ads/zzfej;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Lcom/google/android/gms/internal/ads/zzffe;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Lcom/google/android/gms/internal/ads/zzffd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzc:Lcom/google/android/gms/internal/ads/zzfej;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Lcom/google/android/gms/internal/ads/zzffe;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfes;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzffl;->zzb(Lcom/google/android/gms/internal/ads/zzffl;Lcom/google/android/gms/internal/ads/zzffd;Lcom/google/android/gms/internal/ads/zzfej;Lcom/google/android/gms/internal/ads/zzffe;Lcom/google/android/gms/internal/ads/zzfes;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
