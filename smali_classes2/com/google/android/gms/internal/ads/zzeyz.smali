.class public final synthetic Lcom/google/android/gms/internal/ads/zzeyz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzezd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcve;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzezd;Lcom/google/android/gms/internal/ads/zzcve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyz;->zza:Lcom/google/android/gms/internal/ads/zzezd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyz;->zzb:Lcom/google/android/gms/internal/ads/zzcve;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyz;->zza:Lcom/google/android/gms/internal/ads/zzezd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyz;->zzb:Lcom/google/android/gms/internal/ads/zzcve;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzezl;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzezd;->zza(Lcom/google/android/gms/internal/ads/zzezd;Lcom/google/android/gms/internal/ads/zzcve;Lcom/google/android/gms/internal/ads/zzezl;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
