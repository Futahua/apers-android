.class public final synthetic Lcom/google/android/gms/internal/ads/zzfgv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbs;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfgg;

.field public final synthetic zzb:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfgg;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Lcom/google/android/gms/internal/ads/zzfgg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Lcom/google/android/gms/internal/ads/zzfgg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfhb;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgg;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgg;->zzb()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgv;->zzb:Ljava/lang/Throwable;

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfhb;->zzdF(Lcom/google/android/gms/internal/ads/zzfgu;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
