.class public final synthetic Lcom/google/android/gms/internal/ads/zzyb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvq;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzyu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzyi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyu;Lcom/google/android/gms/internal/ads/zzyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyb;->zza:Lcom/google/android/gms/internal/ads/zzyu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyb;->zzb:Lcom/google/android/gms/internal/ads/zzyi;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyb;->zza:Lcom/google/android/gms/internal/ads/zzyu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyb;->zzb:Lcom/google/android/gms/internal/ads/zzyi;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzz;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzyu;->zzm(Lcom/google/android/gms/internal/ads/zzyu;Lcom/google/android/gms/internal/ads/zzyi;Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p1

    return p1
.end method
