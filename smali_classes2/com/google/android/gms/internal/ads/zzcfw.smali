.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfy;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzedf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfy;Lcom/google/android/gms/internal/ads/zzedf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zza:Lcom/google/android/gms/internal/ads/zzcfy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzb:Lcom/google/android/gms/internal/ads/zzedf;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zza:Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfx;-><init>(Lcom/google/android/gms/internal/ads/zzcfy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzb:Lcom/google/android/gms/internal/ads/zzedf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzedf;->zzf(Lcom/google/android/gms/internal/ads/zzcfx;)V

    return-void
.end method
