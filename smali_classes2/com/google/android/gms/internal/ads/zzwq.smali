.class public final Lcom/google/android/gms/internal/ads/zzwq;
.super Lcom/google/android/gms/internal/ads/zzug;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzsh;

.field private final zzc:I

.field private zzd:Z

.field private zze:J

.field private zzf:Z

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzhj;

.field private zzi:Lcom/google/android/gms/internal/ads/zzap;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzwn;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzzq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzgi;Lcom/google/android/gms/internal/ads/zzwn;Lcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzzq;IILcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzfwh;Lcom/google/android/gms/internal/ads/zzwp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzug;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzi:Lcom/google/android/gms/internal/ads/zzap;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwq;->zza:Lcom/google/android/gms/internal/ads/zzgi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzj:Lcom/google/android/gms/internal/ads/zzwn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzb:Lcom/google/android/gms/internal/ads/zzsh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzk:Lcom/google/android/gms/internal/ads/zzzq;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzc:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzd:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zze:J

    return-void
.end method

.method private final zzw()V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzxd;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzwq;->zze:J

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzf:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzg:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwq;->zzJ()Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v14

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzap;->zzc:Lcom/google/android/gms/internal/ads/zzaj;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v21, v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v6, v2

    move-wide v4, v2

    const-wide/16 v12, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v20, v14

    move-wide v14, v15

    const/16 v17, 0x0

    move-object v1, v10

    move-wide/from16 v22, v8

    move-object/from16 v24, v10

    move/from16 v16, v11

    move-wide/from16 v10, v22

    .line 3
    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzxd;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzap;Lcom/google/android/gms/internal/ads/zzaj;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzwq;->zzd:Z

    if-eqz v1, :cond_1

    .line 4
    new-instance v10, Lcom/google/android/gms/internal/ads/zzwm;

    move-object/from16 v1, v24

    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/zzwm;-><init>(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzbl;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, v24

    move-object v10, v1

    .line 5
    :goto_1
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzug;->zzo(Lcom/google/android/gms/internal/ads/zzbl;)V

    return-void
.end method


# virtual methods
.method public final zzG(Lcom/google/android/gms/internal/ads/zzvf;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwl;->zzO()V

    return-void
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzvh;Lcom/google/android/gms/internal/ads/zzzm;J)Lcom/google/android/gms/internal/ads/zzvf;
    .locals 18

    move-object/from16 v9, p0

    .line 1
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzwq;->zza:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgi;->zza()Lcom/google/android/gms/internal/ads/zzgj;

    move-result-object v2

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzwq;->zzh:Lcom/google/android/gms/internal/ads/zzhj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzgj;->zzf(Lcom/google/android/gms/internal/ads/zzhj;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwq;->zzJ()Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzap;->zzb:Lcom/google/android/gms/internal/ads/zzak;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzak;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzak;->zza:Landroid/net/Uri;

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzwq;->zzj:Lcom/google/android/gms/internal/ads/zzwn;

    .line 4
    new-instance v17, Lcom/google/android/gms/internal/ads/zzwl;

    move-object/from16 v0, v17

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Lcom/google/android/gms/internal/ads/zzph;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzuj;

    move-object v3, v5

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzwn;->zza:Lcom/google/android/gms/internal/ads/zzaea;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzuj;-><init>(Lcom/google/android/gms/internal/ads/zzaea;)V

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzwq;->zzb:Lcom/google/android/gms/internal/ads/zzsh;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzug;->zzc(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzsc;

    move-result-object v5

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzwq;->zzk:Lcom/google/android/gms/internal/ads/zzzq;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzug;->zze(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzvr;

    move-result-object v7

    iget v11, v9, Lcom/google/android/gms/internal/ads/zzwq;->zzc:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide v14

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 7
    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgj;Lcom/google/android/gms/internal/ads/zzwa;Lcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzsc;Lcom/google/android/gms/internal/ads/zzzq;Lcom/google/android/gms/internal/ads/zzvr;Lcom/google/android/gms/internal/ads/zzwh;Lcom/google/android/gms/internal/ads/zzzm;Ljava/lang/String;IILcom/google/android/gms/internal/ads/zzz;JLcom/google/android/gms/internal/ads/zzaai;)V

    return-object v17
.end method

.method public final declared-synchronized zzJ()Lcom/google/android/gms/internal/ads/zzap;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzi:Lcom/google/android/gms/internal/ads/zzap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zza(JLcom/google/android/gms/internal/ads/zzaeu;Z)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zze:J

    :cond_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzaeu;->zzh()Z

    move-result p3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzd:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->zze:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzf:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzg:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zze:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzf:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzg:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzd:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwq;->zzw()V

    return-void
.end method

.method protected final zzn(Lcom/google/android/gms/internal/ads/zzhj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzh:Lcom/google/android/gms/internal/ads/zzhj;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p1, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzug;->zzb()Lcom/google/android/gms/internal/ads/zzph;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwq;->zzw()V

    return-void
.end method

.method protected final zzq()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzt(Lcom/google/android/gms/internal/ads/zzap;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzi:Lcom/google/android/gms/internal/ads/zzap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzz()V
    .locals 0

    return-void
.end method
