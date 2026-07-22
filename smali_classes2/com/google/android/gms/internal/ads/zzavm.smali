.class public final Lcom/google/android/gms/internal/ads/zzavm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavp;


# static fields
.field private static zzb:Lcom/google/android/gms/internal/ads/zzavm;


# instance fields
.field volatile zza:J

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfpv;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfqc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfqe;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzawr;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfoi;

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfqb;

.field private final zzk:Ljava/util/concurrent/CountDownLatch;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzaxg;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzawy;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzawp;

.field private final zzo:Ljava/lang/Object;

.field private volatile zzp:Z

.field private volatile zzq:Z

.field private final zzr:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfoi;Lcom/google/android/gms/internal/ads/zzfpv;Lcom/google/android/gms/internal/ads/zzfqc;Lcom/google/android/gms/internal/ads/zzfqe;Lcom/google/android/gms/internal/ads/zzawr;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfod;ILcom/google/android/gms/internal/ads/zzaxg;Lcom/google/android/gms/internal/ads/zzawy;Lcom/google/android/gms/internal/ads/zzawp;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zza:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzo:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzq:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzd:Lcom/google/android/gms/internal/ads/zzfpv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzavm;->zze:Lcom/google/android/gms/internal/ads/zzfqc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzf:Lcom/google/android/gms/internal/ads/zzfqe;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzg:Lcom/google/android/gms/internal/ads/zzawr;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzi:Ljava/util/concurrent/Executor;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzr:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzl:Lcom/google/android/gms/internal/ads/zzaxg;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzm:Lcom/google/android/gms/internal/ads/zzawy;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzn:Lcom/google/android/gms/internal/ads/zzawp;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzq:Z

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzk:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzavk;

    invoke-direct {p1, p0, p8}, Lcom/google/android/gms/internal/ads/zzavk;-><init>(Lcom/google/android/gms/internal/ads/zzavm;Lcom/google/android/gms/internal/ads/zzfod;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzj:Lcom/google/android/gms/internal/ads/zzfqb;

    return-void
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzarx;Z)Lcom/google/android/gms/internal/ads/zzavm;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzavm;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfok;->zzc()Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarx;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfoj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfoj;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzarx;->zzi()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfoj;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzh()Lcom/google/android/gms/internal/ads/zzfok;

    move-result-object p1

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzavm;->zzs(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfok;Z)Lcom/google/android/gms/internal/ads/zzavm;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzavm;)Lcom/google/android/gms/internal/ads/zzfoi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzavm;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzo:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzavm;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzp:Z

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzavm;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzavm;->zzu(I)Lcom/google/android/gms/internal/ads/zzfpu;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfpu;->zza()Lcom/google/android/gms/internal/ads/zzays;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzays;->zzk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfpu;->zza()Lcom/google/android/gms/internal/ads/zzays;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzays;->zzj()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move-object v8, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v8, v4

    move-object v9, v8

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzc:Landroid/content/Context;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzr:I

    const-string v10, "1"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    const/4 v6, 0x1

    move-object v11, v3

    .line 3
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfos;->zza(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfoi;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfpz;->zzb:[B

    if-eqz v5, :cond_b

    array-length v6, v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x0

    .line 4
    :try_start_1
    invoke-static {v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzgxz;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyr;->zza()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v5

    .line 6
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzayp;->zzb(Lcom/google/android/gms/internal/ads/zzgxz;Lcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzayp;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayp;->zzc()Lcom/google/android/gms/internal/ads/zzays;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzays;->zzk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayp;->zzc()Lcom/google/android/gms/internal/ads/zzays;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzays;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayp;->zzd()Lcom/google/android/gms/internal/ads/zzgxz;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgxz;->zzA()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 12
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzavm;->zzu(I)Lcom/google/android/gms/internal/ads/zzfpu;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfpu;->zza()Lcom/google/android/gms/internal/ads/zzays;

    move-result-object v5

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayp;->zzc()Lcom/google/android/gms/internal/ads/zzays;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzays;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzays;->zzk()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayp;->zzc()Lcom/google/android/gms/internal/ads/zzays;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzays;->zzj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzays;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 12
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzj:Lcom/google/android/gms/internal/ads/zzfqb;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfpz;->zzc:I

    .line 17
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbde;->zzcD:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v6

    .line 17
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavm;->zze:Lcom/google/android/gms/internal/ads/zzfqc;

    .line 19
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfqc;->zza(Lcom/google/android/gms/internal/ads/zzayp;)Z

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v6, 0x4

    if-ne v4, v6, :cond_7

    .line 26
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavm;->zze:Lcom/google/android/gms/internal/ads/zzfqc;

    .line 20
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzfqc;->zzb(Lcom/google/android/gms/internal/ads/zzayp;Lcom/google/android/gms/internal/ads/zzfqb;)Z

    move-result v3

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzd:Lcom/google/android/gms/internal/ads/zzfpv;

    .line 21
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzfpv;->zza(Lcom/google/android/gms/internal/ads/zzayp;Lcom/google/android/gms/internal/ads/zzfqb;)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_8

    .line 19
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v5, 0xfa9

    .line 23
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfoi;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    goto :goto_5

    .line 24
    :cond_8
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzavm;->zzu(I)Lcom/google/android/gms/internal/ads/zzfpu;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzf:Lcom/google/android/gms/internal/ads/zzfqe;

    .line 25
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfqe;->zzc(Lcom/google/android/gms/internal/ads/zzfpu;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzq:Z

    .line 26
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzavm;->zza:J

    goto :goto_5

    .line 11
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v5, 0x1392

    .line 16
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfoi;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    goto :goto_5

    .line 32
    :catch_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v5, 0x7ee

    .line 8
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfoi;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    goto :goto_5

    .line 27
    :cond_b
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/16 v2, 0x1391

    .line 28
    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzfoi;->zzd(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v2

    .line 14
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/16 v0, 0xfa2

    .line 30
    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzfoi;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    :cond_c
    :goto_5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 31
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 30
    :goto_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 31
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32
    throw v0
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/internal/ads/zzavm;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzp:Z

    return p0
.end method

.method private static declared-synchronized zzs(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfok;Z)Lcom/google/android/gms/internal/ads/zzavm;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-class v14, Lcom/google/android/gms/internal/ads/zzavm;

    monitor-enter v14

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzavm;->zzb:Lcom/google/android/gms/internal/ads/zzavm;

    if-nez v1, :cond_4

    move/from16 v1, p3

    invoke-static {v0, v8, v1}, Lcom/google/android/gms/internal/ads/zzfoi;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfoi;

    move-result-object v7

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzdG:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzawa;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzawa;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_0

    :cond_0
    move-object/from16 v20, v2

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzdH:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaxg;->zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzaxg;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object v11, v2

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzcV:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawy;

    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzawy;-><init>()V

    move-object v12, v1

    goto :goto_2

    :cond_2
    move-object v12, v2

    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzdd:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawp;

    .line 13
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzawp;-><init>()V

    move-object v13, v1

    move-object/from16 v1, p2

    goto :goto_3

    :cond_3
    move-object/from16 v1, p2

    move-object v13, v2

    .line 14
    :goto_3
    invoke-static {v0, v8, v7, v1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzc(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfoi;Lcom/google/android/gms/internal/ads/zzfok;)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v17

    new-instance v2, Lcom/google/android/gms/internal/ads/zzawq;

    .line 15
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzawq;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaxe;

    invoke-direct {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzaxe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawq;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzawr;

    move-object v15, v9

    move-object/from16 v16, p2

    move-object/from16 v18, v3

    move-object/from16 v19, v2

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzawr;-><init>(Lcom/google/android/gms/internal/ads/zzfok;Lcom/google/android/gms/internal/ads/zzfoz;Lcom/google/android/gms/internal/ads/zzaxe;Lcom/google/android/gms/internal/ads/zzawq;Lcom/google/android/gms/internal/ads/zzawa;Lcom/google/android/gms/internal/ads/zzaxg;Lcom/google/android/gms/internal/ads/zzawy;Lcom/google/android/gms/internal/ads/zzawp;)V

    .line 17
    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzfpi;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfoi;)I

    move-result v10

    .line 18
    new-instance v15, Lcom/google/android/gms/internal/ads/zzfod;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzfod;-><init>()V

    new-instance v16, Lcom/google/android/gms/internal/ads/zzavm;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfpv;

    .line 19
    invoke-direct {v6, v0, v10}, Lcom/google/android/gms/internal/ads/zzfpv;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfqc;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzavj;-><init>(Lcom/google/android/gms/internal/ads/zzfoi;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzcF:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v5, v0, v10, v1, v2}, Lcom/google/android/gms/internal/ads/zzfqc;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfpj;Z)V

    new-instance v17, Lcom/google/android/gms/internal/ads/zzfqe;

    const/16 v18, 0x0

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v7

    move-object/from16 v19, v5

    move-object v5, v15

    move-object/from16 v20, v6

    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfqe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfqf;Lcom/google/android/gms/internal/ads/zzfoi;Lcom/google/android/gms/internal/ads/zzfod;Z)V

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v3, v7

    move-object/from16 v4, v20

    move-object/from16 v5, v19

    move-object/from16 v6, v17

    move-object v7, v9

    move-object/from16 v8, p1

    move-object v9, v15

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzavm;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfoi;Lcom/google/android/gms/internal/ads/zzfpv;Lcom/google/android/gms/internal/ads/zzfqc;Lcom/google/android/gms/internal/ads/zzfqe;Lcom/google/android/gms/internal/ads/zzawr;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfod;ILcom/google/android/gms/internal/ads/zzaxg;Lcom/google/android/gms/internal/ads/zzawy;Lcom/google/android/gms/internal/ads/zzawp;)V

    sput-object v16, Lcom/google/android/gms/internal/ads/zzavm;->zzb:Lcom/google/android/gms/internal/ads/zzavm;

    .line 22
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzavm;->zzm()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavm;->zzb:Lcom/google/android/gms/internal/ads/zzavm;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavm;->zzp()V

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavm;->zzb:Lcom/google/android/gms/internal/ads/zzavm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzl:Lcom/google/android/gms/internal/ads/zzaxg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxg;->zzh()V

    :cond_0
    return-void
.end method

.method private final zzu(I)Lcom/google/android/gms/internal/ads/zzfpu;
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzr:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpi;->zza(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzcD:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zze:Lcom/google/android/gms/internal/ads/zzfqc;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfqc;->zzc(I)Lcom/google/android/gms/internal/ads/zzfpu;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzd:Lcom/google/android/gms/internal/ads/zzfpv;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfpv;->zzc(I)Lcom/google/android/gms/internal/ads/zzfpu;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzavm;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzavm;->zzt()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzcV:Lcom/google/android/gms/internal/ads/zzbcv;

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

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzavm;->zzm:Lcom/google/android/gms/internal/ads/zzawy;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawy;->zzi()V

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzavm;->zzp()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzavm;->zzf:Lcom/google/android/gms/internal/ads/zzfqe;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfqe;->zza()Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 8
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfol;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v8

    const/4 v15, 0x0

    const/16 v11, 0x1388

    move-object v14, v1

    .line 10
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzfoi;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    return-object v1

    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavm;->zzt()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcV:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzm:Lcom/google/android/gms/internal/ads/zzawy;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawy;->zzj()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavm;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzf:Lcom/google/android/gms/internal/ads/zzfqe;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqe;->zza()Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzfol;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v6, v5, v1

    const/4 v9, 0x0

    const/16 v5, 0x1389

    move-object v8, p1

    .line 10
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfoi;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, "19"

    return-object p1
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavm;->zzt()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcV:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzm:Lcom/google/android/gms/internal/ads/zzawy;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawy;->zzk(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzavm;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzf:Lcom/google/android/gms/internal/ads/zzfqe;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqe;->zza()Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, p1, v3, p2, p3}, Lcom/google/android/gms/internal/ads/zzfol;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long v6, p2, v1

    const/4 v9, 0x0

    const/16 v5, 0x138a

    move-object v8, p1

    .line 10
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfoi;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzk(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzf:Lcom/google/android/gms/internal/ads/zzfqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfqe;->zza()Lcom/google/android/gms/internal/ads/zzfol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfol;->zzd(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfqd; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfqd;->zza()I

    move-result v1

    const-wide/16 v2, -0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfoi;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final zzl(III)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzmt:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzavm;->zzc:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    int-to-float v2, v2

    .line 4
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v3

    move/from16 v3, p2

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v3, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 5
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzavm;->zzk(Landroid/view/MotionEvent;)V

    .line 7
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 8
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v2, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v11, v3, v4

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 9
    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 10
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzavm;->zzk(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v4, p3

    int-to-long v6, v4

    .line 12
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v3, v1

    const/16 v16, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 13
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzavm;->zzk(Landroid/view/MotionEvent;)V

    .line 15
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method final declared-synchronized zzm()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzavm;->zzu(I)Lcom/google/android/gms/internal/ads/zzfpu;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzf:Lcom/google/android/gms/internal/ads/zzfqe;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfqe;->zzc(Lcom/google/android/gms/internal/ads/zzfpu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzq:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v0, 0xfad

    .line 6
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfoi;->zzd(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzn([Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzn:Lcom/google/android/gms/internal/ads/zzawp;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawp;->zzb(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final zzo(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzg:Lcom/google/android/gms/internal/ads/zzawr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzawr;->zzd(Landroid/view/View;)V

    return-void
.end method

.method public final zzp()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzp:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzp:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzavm;->zza:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzf:Lcom/google/android/gms/internal/ads/zzfqe;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfqe;->zzb()Lcom/google/android/gms/internal/ads/zzfpu;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfpu;->zzd(J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzr:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfpi;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzi:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzavl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzavl;-><init>(Lcom/google/android/gms/internal/ads/zzavm;)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    return-void
.end method

.method public final declared-synchronized zzr()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavm;->zzq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
