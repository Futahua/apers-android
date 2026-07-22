.class final Lcom/google/android/gms/internal/ads/zzfac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeln;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfhu;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfhj;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdgf;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfad;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfad;Lcom/google/android/gms/internal/ads/zzeln;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/internal/ads/zzdgf;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfac;->zza:Lcom/google/android/gms/internal/ads/zzeln;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Lcom/google/android/gms/internal/ads/zzfhu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzc:Lcom/google/android/gms/internal/ads/zzfhj;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzd:Lcom/google/android/gms/internal/ads/zzdgf;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfac;->zze:Lcom/google/android/gms/internal/ads/zzfad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzga:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Interstitial ad failed to load"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzd:Lcom/google/android/gms/internal/ads/zzdgf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgf;->zza()Lcom/google/android/gms/internal/ads/zzcse;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcse;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfac;->zze:Lcom/google/android/gms/internal/ads/zzfad;

    monitor-enter v2

    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfad;->zzh(Lcom/google/android/gms/internal/ads/zzfad;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgf;->zzb()Lcom/google/android/gms/internal/ads/zzcwa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwa;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zziC:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfad;->zzf(Lcom/google/android/gms/internal/ads/zzfad;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzezy;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzezy;-><init>(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 9
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfad;->zzf(Lcom/google/android/gms/internal/ads/zzfad;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzezz;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzezz;-><init>(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 10
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    :cond_1
    iget v0, v1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v3, "InterstitialAdLoader.onFailure"

    invoke-static {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzfdt;->zzb(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfac;->zza:Lcom/google/android/gms/internal/ads/zzeln;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeln;->zza()V

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbex;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Lcom/google/android/gms/internal/ads/zzfhu;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfhu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzc:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 17
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfhu;->zza(Lcom/google/android/gms/internal/ads/zzfhj;)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhu;->zzh()V

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfad;->zze(Lcom/google/android/gms/internal/ads/zzfad;)Lcom/google/android/gms/internal/ads/zzfhx;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzc:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 14
    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzfhj;->zza(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzfhj;->zzm()Lcom/google/android/gms/internal/ads/zzfhn;

    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhx;->zzc(Lcom/google/android/gms/internal/ads/zzfhn;)V

    .line 19
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdfb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfac;->zze:Lcom/google/android/gms/internal/ads/zzfad;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfad;->zzh(Lcom/google/android/gms/internal/ads/zzfad;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zziC:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcra;->zzo()Lcom/google/android/gms/internal/ads/zzdaj;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfad;->zzc(Lcom/google/android/gms/internal/ads/zzfad;)Lcom/google/android/gms/internal/ads/zzeky;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdaj;->zza(Lcom/google/android/gms/internal/ads/zzeky;)Lcom/google/android/gms/internal/ads/zzdaj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfad;->zzd(Lcom/google/android/gms/internal/ads/zzfad;)Lcom/google/android/gms/internal/ads/zzfbd;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdaj;->zzd(Lcom/google/android/gms/internal/ads/zzfbd;)Lcom/google/android/gms/internal/ads/zzdaj;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfac;->zza:Lcom/google/android/gms/internal/ads/zzeln;

    .line 8
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzeln;->zzb(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfad;->zzf(Lcom/google/android/gms/internal/ads/zzfad;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfaa;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzfaa;-><init>(Lcom/google/android/gms/internal/ads/zzfac;)V

    .line 11
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfad;->zzf(Lcom/google/android/gms/internal/ads/zzfad;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfab;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzfab;-><init>(Lcom/google/android/gms/internal/ads/zzfac;)V

    .line 12
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbex;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzb:Lcom/google/android/gms/internal/ads/zzfhu;

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcra;->zzq()Lcom/google/android/gms/internal/ads/zzfcn;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfcn;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfhu;->zzg(Lcom/google/android/gms/internal/ads/zzfcm;)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcra;->zzm()Lcom/google/android/gms/internal/ads/zzcvr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvr;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzc:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 21
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zza(Lcom/google/android/gms/internal/ads/zzfhj;)Lcom/google/android/gms/internal/ads/zzfhu;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzh()V

    goto :goto_0

    .line 23
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfad;->zze(Lcom/google/android/gms/internal/ads/zzfad;)Lcom/google/android/gms/internal/ads/zzfhx;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfac;->zzc:Lcom/google/android/gms/internal/ads/zzfhj;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcra;->zzq()Lcom/google/android/gms/internal/ads/zzfcn;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfcn;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzfhj;->zzb(Lcom/google/android/gms/internal/ads/zzfcm;)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcra;->zzm()Lcom/google/android/gms/internal/ads/zzcvr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvr;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfhj;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 16
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzfhj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 17
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfhj;->zzm()Lcom/google/android/gms/internal/ads/zzfhn;

    move-result-object p1

    .line 18
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhx;->zzc(Lcom/google/android/gms/internal/ads/zzfhn;)V

    .line 23
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
