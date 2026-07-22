.class public final Lcom/google/android/gms/internal/ads/zzfvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzfvq;Lcom/google/android/gms/internal/ads/zzfvq;)Lcom/google/android/gms/internal/ads/zzfvq;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvr;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfvq;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfvq;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzfvq;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfvr;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfvs;)V

    return-object v0
.end method
