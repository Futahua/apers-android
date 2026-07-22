.class final Lcom/google/android/gms/internal/ads/zzccd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcbp;

.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccd;->zza:Lcom/google/android/gms/internal/ads/zzcbp;

    return-void
.end method

.method private final zzc()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfrw;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xfa

    .line 2
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfrw;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->zzb:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->zza:Lcom/google/android/gms/internal/ads/zzcbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbp;->zzt()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzccd;->zzc()V

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->zza:Lcom/google/android/gms/internal/ads/zzcbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbp;->zzt()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccd;->zzb:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzccd;->zzc()V

    return-void
.end method
