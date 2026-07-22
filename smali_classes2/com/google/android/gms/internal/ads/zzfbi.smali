.class public final synthetic Lcom/google/android/gms/internal/ads/zzfbi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfbk;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfbk;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbi;->zza:Lcom/google/android/gms/internal/ads/zzfbk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbi;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbi;->zza:Lcom/google/android/gms/internal/ads/zzfbk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbk;->zze:Lcom/google/android/gms/internal/ads/zzfbn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbn;->zzf(Lcom/google/android/gms/internal/ads/zzfbn;)Lcom/google/android/gms/internal/ads/zzfbd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbi;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbd;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
