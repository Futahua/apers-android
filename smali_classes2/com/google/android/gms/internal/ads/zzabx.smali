.class final Lcom/google/android/gms/internal/ads/zzabx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabs;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzet;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzet;

.field private final zze:Lcom/google/android/gms/internal/ads/zzec;

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/ads/zzcd;

.field private zzj:J

.field private final zzk:Lcom/google/android/gms/internal/ads/zzaap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaap;Lcom/google/android/gms/internal/ads/zzabs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzk:Lcom/google/android/gms/internal/ads/zzaap;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzabq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzabq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzet;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzet;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzet;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzet;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzd:Lcom/google/android/gms/internal/ads/zzet;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzec;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzec;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzi:Lcom/google/android/gms/internal/ads/zzcd;

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzet;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzb()Ljava/lang/Object;

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzet;->zzb()Ljava/lang/Object;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzec;->zzd()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzd:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzh(Lcom/google/android/gms/internal/ads/zzet;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzh(Lcom/google/android/gms/internal/ads/zzet;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcd;

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzd(JLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzec;->zzc(J)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    return-void
.end method

.method public final zzc(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzec;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzf(I)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzd:Lcom/google/android/gms/internal/ads/zzet;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 3
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzet;->zzd(JLjava/lang/Object;)V

    return-void
.end method

.method public final zzd(II)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcd;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzcd;-><init>(IIF)V

    .line 2
    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzd(JLjava/lang/Object;)V

    return-void
.end method

.method public final zze(JJ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zze:Lcom/google/android/gms/internal/ads/zzec;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzec;->zze()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzd:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzec;->zza()J

    move-result-wide v14

    .line 2
    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzet;->zzc(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v13, 0x2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    .line 5
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzabs;->zzf(I)V

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzj:J

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzb:Lcom/google/android/gms/internal/ads/zzabq;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v2

    move-wide v4, v14

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v18, v12

    move/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-wide v1, v14

    move-object/from16 v14, v18

    .line 6
    invoke-virtual/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzabs;->zza(JJJJZZLcom/google/android/gms/internal/ads/zzabq;)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    goto :goto_0

    .line 6
    :cond_2
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    .line 7
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzec;->zzb()J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzk:Lcom/google/android/gms/internal/ads/zzaap;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaap;->zza:Lcom/google/android/gms/internal/ads/zzaar;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaar;->zzf(Lcom/google/android/gms/internal/ads/zzaar;)Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaan;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzaan;-><init>(Lcom/google/android/gms/internal/ads/zzaap;)V

    .line 8
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaar;->zze(Lcom/google/android/gms/internal/ads/zzaar;)Ljava/util/Queue;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzacm;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacm;->zzb()V

    goto/16 :goto_0

    :cond_3
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    .line 10
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzec;->zzb()J

    move-result-wide v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    .line 11
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzet;->zzc(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcd;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzi:Lcom/google/android/gms/internal/ads/zzcd;

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzi:Lcom/google/android/gms/internal/ads/zzcd;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzk:Lcom/google/android/gms/internal/ads/zzaap;

    .line 14
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaap;->zza(Lcom/google/android/gms/internal/ads/zzcd;)V

    :cond_4
    if-nez v3, :cond_5

    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzabq;->zzd()J

    move-result-wide v1

    :goto_1
    move-wide v3, v1

    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzk:Lcom/google/android/gms/internal/ads/zzaap;

    .line 16
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzabs;->zzn()Z

    move-result v7

    .line 17
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzaap;->zzb(JJZ)V

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-void
.end method

.method public final zzf()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    :cond_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    return-void
.end method

.method public final zzg()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzabx;->zzg:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
