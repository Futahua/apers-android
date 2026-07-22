.class final Lcom/google/android/gms/internal/ads/zzflu;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Ljava/util/Timer;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzflw;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcfx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflw;Lcom/google/android/gms/internal/ads/zzcfx;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflu;->zzc:Lcom/google/android/gms/internal/ads/zzcfx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzflu;->zza:Ljava/util/Timer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflu;->zzb:Lcom/google/android/gms/internal/ads/zzflw;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflu;->zzb:Lcom/google/android/gms/internal/ads/zzflw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzflw;->zzd(Lcom/google/android/gms/internal/ads/zzflw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflu;->zzc:Lcom/google/android/gms/internal/ads/zzcfx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcfx;->zza:Lcom/google/android/gms/internal/ads/zzcfy;

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfy;->zzaI(Lcom/google/android/gms/internal/ads/zzcfy;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflu;->zza:Ljava/util/Timer;

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
