.class final Lcom/google/android/gms/internal/ads/zzqs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:J

.field private zzD:J

.field private zzE:Z

.field private zzF:J

.field private zzG:Lcom/google/android/gms/internal/ads/zzdj;

.field zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzqr;

.field private final zzc:[J

.field private zzd:Landroid/media/AudioTrack;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzqq;

.field private zzg:I

.field private zzh:J

.field private zzi:F

.field private zzj:Z

.field private zzk:J

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:Ljava/lang/reflect/Method;

.field private zzp:J

.field private zzq:Z

.field private zzr:Z

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:J

.field private zzw:I

.field private zzx:I

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqr;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzb:Lcom/google/android/gms/internal/ads/zzqr;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    .line 2
    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzo:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzc:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzD:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzC:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdj;->zza:Lcom/google/android/gms/internal/ads/zzdj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    return-void
.end method

.method private final zzl()J
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzo()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzB:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:Landroid/media/AudioTrack;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-object v5, v4

    check-cast v5, Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    int-to-long v6, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x1d

    if-gt v4, v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzu:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzz:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_6

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzz:J

    goto :goto_0

    :cond_2
    move-wide v6, v8

    :cond_3
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzz:J

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzu:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzv:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzv:J

    :cond_5
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzu:J

    .line 5
    :cond_6
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzt:J

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzu:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzF:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzv:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzm(J)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzx:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzy:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzo()J

    move-result-wide p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzex;->zzt(JI)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzn()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzm:J

    add-long/2addr p1, v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:F

    .line 4
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzex;->zzq(JF)J

    move-result-wide p1

    .line 2
    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzp:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzy:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzB:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzt(JI)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_2
    return-wide p1
.end method

.method private final zzn()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzl()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzt(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzo()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzA:J

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzy:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:F

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzq(JF)J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzp(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzA:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private final zzp()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzm:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzx:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzw:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzn:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzC:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzD:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzj:Z

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:Landroid/media/AudioTrack;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ne v2, v3, :cond_6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdj;->zzc()J

    move-result-wide v9

    div-long v12, v9, v4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzn:J

    sub-long v9, v12, v9

    const-wide/16 v14, 0x7530

    cmp-long v2, v9, v14

    const/4 v9, 0x0

    if-ltz v2, :cond_2

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzn()J

    move-result-wide v10

    cmp-long v2, v10, v7

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 17
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzc:[J

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzw:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:F

    .line 5
    invoke-static {v10, v11, v15}, Lcom/google/android/gms/internal/ads/zzex;->zzr(JF)J

    move-result-wide v10

    sub-long/2addr v10, v12

    aput-wide v10, v2, v14

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzw:I

    add-int/2addr v10, v6

    const/16 v11, 0xa

    rem-int/2addr v10, v11

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzw:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzx:I

    if-ge v10, v11, :cond_1

    add-int/2addr v10, v6

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzx:I

    :cond_1
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzn:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzm:J

    move v10, v9

    :goto_0
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzx:I

    if-ge v10, v11, :cond_2

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzm:J

    .line 6
    aget-wide v16, v2, v10

    int-to-long v6, v11

    div-long v16, v16, v6

    add-long v14, v14, v16

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzm:J

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzr:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzo:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzs:J

    sub-long v6, v12, v6

    const-wide/32 v10, 0x7a120

    cmp-long v6, v6, v10

    if-ltz v6, :cond_5

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:Landroid/media/AudioTrack;

    if-eqz v7, :cond_3

    new-array v8, v9, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    move-object v7, v2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v7, v2

    mul-long/2addr v7, v4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzh:J

    sub-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzp:J

    const-wide/16 v9, 0x0

    .line 8
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzp:J

    const-wide/32 v14, 0x4c4b40

    cmp-long v2, v7, v14

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzb:Lcom/google/android/gms/internal/ads/zzqr;

    .line 9
    invoke-interface {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzqr;->zza(J)V

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzp:J

    goto :goto_1

    .line 10
    :cond_3
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzo:Ljava/lang/reflect/Method;

    .line 9
    :cond_4
    :goto_1
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzs:J

    :cond_5
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzf:Lcom/google/android/gms/internal/ads/zzqq;

    .line 30
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v2, v11

    check-cast v2, Lcom/google/android/gms/internal/ads/zzqq;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:F

    .line 12
    invoke-direct {v0, v12, v13}, Lcom/google/android/gms/internal/ads/zzqs;->zzm(J)J

    move-result-wide v15

    .line 13
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzqq;->zzb(JFJ)V

    .line 4
    :cond_6
    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdj;->zzc()J

    move-result-wide v6

    div-long/2addr v6, v4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzf:Lcom/google/android/gms/internal/ads/zzqq;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzqq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqq;->zzd()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:F

    .line 16
    invoke-virtual {v2, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzqq;->zza(JF)J

    move-result-wide v8

    goto :goto_3

    .line 17
    :cond_7
    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzqs;->zzm(J)J

    move-result-wide v8

    .line 18
    :goto_3
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v3, :cond_c

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zza:Z

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_9

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzk:J

    cmp-long v1, v12, v10

    if-eqz v1, :cond_9

    cmp-long v1, v8, v12

    if-ltz v1, :cond_9

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqq;->zze()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    sub-long v1, v8, v12

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:F

    .line 19
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzr(JF)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    .line 20
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdj;->zza()J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v1

    sub-long/2addr v3, v1

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzk:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzb:Lcom/google/android/gms/internal/ads/zzqr;

    .line 21
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqr;->zzb(J)V

    :cond_9
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzD:J

    cmp-long v3, v1, v10

    if-eqz v3, :cond_a

    sub-long v1, v6, v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzC:J

    sub-long v3, v8, v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:F

    .line 22
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzex;->zzq(JF)J

    move-result-wide v1

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzC:J

    add-long/2addr v12, v1

    sub-long v14, v12, v8

    const-wide/16 v16, 0x0

    cmp-long v3, v3, v16

    .line 23
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    if-eqz v3, :cond_a

    const-wide/32 v14, 0xf4240

    cmp-long v3, v4, v14

    if-gez v3, :cond_a

    const-wide/16 v3, 0xa

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    sub-long v3, v12, v1

    add-long/2addr v12, v1

    .line 24
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v8, v1

    :cond_a
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zza:Z

    if-nez v1, :cond_b

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzj:Z

    if-nez v1, :cond_b

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzC:J

    cmp-long v3, v1, v10

    if-eqz v3, :cond_b

    cmp-long v3, v8, v1

    if-lez v3, :cond_b

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzj:Z

    sub-long v1, v8, v1

    .line 25
    sget-object v3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:F

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v1

    .line 26
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzr(JF)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    .line 27
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdj;->zza()J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v1

    sub-long/2addr v3, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzb:Lcom/google/android/gms/internal/ads/zzqr;

    .line 28
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqr;->zzb(J)V

    :cond_b
    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzD:J

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzC:J

    :cond_c
    return-wide v8
.end method

.method public final zzb(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzl()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzA:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzy:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzB:J

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzf:Lcom/google/android/gms/internal/ads/zzqq;

    return-void
.end method

.method public final zzd(Landroid/media/AudioTrack;ZIIIZ)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:Landroid/media/AudioTrack;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqs;->zze:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzb:Lcom/google/android/gms/internal/ads/zzqr;

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzqq;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqr;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzf:Lcom/google/android/gms/internal/ads/zzqq;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzex;->zzK(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzr:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    .line 4
    div-int/2addr p5, p4

    int-to-long p4, p5

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    invoke-static {p4, p5, p1}, Lcom/google/android/gms/internal/ads/zzex;->zzt(JI)J

    move-result-wide p4

    goto :goto_0

    :cond_0
    move-wide p4, p2

    :goto_0
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzh:J

    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzu:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzv:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzE:Z

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzF:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzq:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzy:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzz:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzs:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzp:J

    const/high16 p4, 0x3f800000    # 1.0f

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzl:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzk:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzqs;->zza:Z

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzdj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzy:J

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzn()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzk:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzf:Lcom/google/android/gms/internal/ads/zzqq;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqq;->zzc()V

    return-void
.end method

.method public final zzg(J)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zza()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzp(JI)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzh()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzz:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzG:Lcom/google/android/gms/internal/ads/zzdj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzz:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzj(J)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:Landroid/media/AudioTrack;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object p2, p1

    check-cast p2, Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object p2, p1

    check-cast p2, Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzl:I

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzl:I

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzb:Lcom/google/android/gms/internal/ads/zzqr;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqs;->zze:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzh:J

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v1

    invoke-interface {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzqr;->zze(IJ)V

    :cond_1
    return v0
.end method

.method public final zzk()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzp()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzf:Lcom/google/android/gms/internal/ads/zzqq;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqq;->zzc()V

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqs;->zzl()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzA:J

    const/4 v0, 0x0

    return v0
.end method
