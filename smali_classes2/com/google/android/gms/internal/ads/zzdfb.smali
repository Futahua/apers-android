.class public final Lcom/google/android/gms/internal/ads/zzdfb;
.super Lcom/google/android/gms/internal/ads/zzcra;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzddh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdgn;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcrv;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfot;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcwl;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzbzw;

.field private zzk:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqz;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzddh;Lcom/google/android/gms/internal/ads/zzdgn;Lcom/google/android/gms/internal/ads/zzcrv;Lcom/google/android/gms/internal/ads/zzfot;Lcom/google/android/gms/internal/ads/zzcwl;Lcom/google/android/gms/internal/ads/zzbzw;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzcfg;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcra;-><init>(Lcom/google/android/gms/internal/ads/zzcqz;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzk:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzc:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzd:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zze:Lcom/google/android/gms/internal/ads/zzddh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzf:Lcom/google/android/gms/internal/ads/zzdgn;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzg:Lcom/google/android/gms/internal/ads/zzcrv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzh:Lcom/google/android/gms/internal/ads/zzfot;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzi:Lcom/google/android/gms/internal/ads/zzcwl;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzj:Lcom/google/android/gms/internal/ads/zzbzw;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzgU:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzk:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaf;->zzf:Lcom/google/android/gms/internal/ads/zzgdy;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdfa;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdfa;-><init>(Lcom/google/android/gms/internal/ads/zzcfg;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgdy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfg;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    throw v0
.end method

.method public final zza()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzg:Lcom/google/android/gms/internal/ads/zzcrv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrv;->zzg()Z

    move-result v0

    return v0
.end method

.method public final zzc(ZLandroid/app/Activity;)Z
    .locals 6
    .param p2    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zze:Lcom/google/android/gms/internal/ads/zzddh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddh;->zzb()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzf:Lcom/google/android/gms/internal/ads/zzdgn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdgn;->zza()Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Lcom/google/android/gms/internal/ads/zzfca;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzaQ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzc:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies"

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzi:Lcom/google/android/gms/internal/ads/zzcwl;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwl;->zzd()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzaR:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzh:Lcom/google/android/gms/internal/ads/zzfot;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zza:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 26
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcn;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcm;->zzb:Lcom/google/android/gms/internal/ads/zzfcd;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcd;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfot;->zza(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzd:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcfg;

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzmp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfg;->zzD()Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzar:Z

    if-eqz v4, :cond_1

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfca;->zzas:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzj:Lcom/google/android/gms/internal/ads/zzbzw;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbzw;->zzb()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 17
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The interstitial consent form has been shown."

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzi:Lcom/google/android/gms/internal/ads/zzcwl;

    const/16 p2, 0xc

    const-string v0, "The consent form has already been shown."

    .line 19
    invoke-static {p2, v0, v5}, Lcom/google/android/gms/internal/ads/zzfdx;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcwl;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzk:Z

    if-eqz v2, :cond_2

    .line 10
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, "The interstitial ad has been shown."

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzi:Lcom/google/android/gms/internal/ads/zzcwl;

    const/16 v4, 0xa

    .line 12
    invoke-static {v4, v5, v5}, Lcom/google/android/gms/internal/ads/zzfdx;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v4

    .line 13
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzcwl;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzk:Z

    if-nez v2, :cond_4

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzc:Landroid/content/Context;

    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzi:Lcom/google/android/gms/internal/ads/zzcwl;

    .line 14
    invoke-interface {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdgn;->zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwl;)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddh;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdgm; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzk:Z

    return p1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfb;->zzi:Lcom/google/android/gms/internal/ads/zzcwl;

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcwl;->zze(Lcom/google/android/gms/internal/ads/zzdgm;)V

    :cond_4
    :goto_0
    return v3
.end method
