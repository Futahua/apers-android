.class public final Lcom/google/android/gms/internal/ads/zzcvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzbxw;)Lcom/google/android/gms/internal/ads/zzbya;
    .locals 6

    .line 1
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzA:Lcom/google/android/gms/internal/ads/zzbxx;

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    .line 2
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfca;->zzs:Lcom/google/android/gms/internal/ads/zzfcf;

    if-nez p2, :cond_0

    move-object v4, v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Ljava/lang/String;

    move-object v4, p2

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbxv;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbxv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbxx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxw;)V

    return-object p2

    :cond_1
    return-object v0
.end method
