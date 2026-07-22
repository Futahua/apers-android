.class public final synthetic Lcom/google/android/gms/internal/ads/zzcee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaea;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzadv;
    .locals 1

    .line 1
    sget p1, Lcom/google/android/gms/internal/ads/zzceo;->zza:I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadv;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzajj;

    .line 2
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzajj;-><init>()V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzahy;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzahy;-><init>()V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    return-object p1
.end method
