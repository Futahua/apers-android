.class public abstract Lcom/google/android/gms/internal/ads/zzic;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzma;
.implements Lcom/google/android/gms/internal/ads/zzmd;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzkv;

.field private zzd:Lcom/google/android/gms/internal/ads/zzme;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzph;

.field private zzg:Lcom/google/android/gms/internal/ads/zzdj;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzwz;

.field private zzj:[Lcom/google/android/gms/internal/ads/zzz;

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:Z

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/internal/ads/zzbl;

.field private zzq:Lcom/google/android/gms/internal/ads/zzvh;

.field private zzr:Lcom/google/android/gms/internal/ads/zzmc;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zza:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzb:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzkv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzc:Lcom/google/android/gms/internal/ads/zzkv;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzm:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbl;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzp:Lcom/google/android/gms/internal/ads/zzbl;

    return-void
.end method

.method private final zzaa(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzn:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzm:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzic;->zzA(JZ)V

    return-void
.end method


# virtual methods
.method protected zzA(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzB()V
    .locals 0

    return-void
.end method

.method protected final zzC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzr:Lcom/google/android/gms/internal/ads/zzmc;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzmc;->zza(Lcom/google/android/gms/internal/ads/zzma;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected zzD()V
    .locals 0

    return-void
.end method

.method protected zzE()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    return-void
.end method

.method protected zzF()V
    .locals 0

    return-void
.end method

.method protected zzG([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    return-void
.end method

.method public final zzH()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzB()V

    return-void
.end method

.method public final zzI([Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzwz;JJLcom/google/android/gms/internal/ads/zzvh;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzn:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzi:Lcom/google/android/gms/internal/ads/zzwz;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzic;->zzq:Lcom/google/android/gms/internal/ads/zzvh;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzm:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzic;->zzm:J

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzj:[Lcom/google/android/gms/internal/ads/zzz;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzic;->zzk:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzic;->zzG([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method

.method public final zzJ()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzc:Lcom/google/android/gms/internal/ads/zzkv;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzsi;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzD()V

    return-void
.end method

.method public final zzK(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzic;->zzaa(JZ)V

    return-void
.end method

.method public final zzL()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzn:Z

    return-void
.end method

.method public final zzM(Lcom/google/android/gms/internal/ads/zzmc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzr:Lcom/google/android/gms/internal/ads/zzmc;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic zzN(FF)V
    .locals 0

    return-void
.end method

.method public final zzO(Lcom/google/android/gms/internal/ads/zzbl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzp:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzp:Lcom/google/android/gms/internal/ads/zzbl;

    :cond_0
    return-void
.end method

.method public final zzP()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzE()V

    return-void
.end method

.method public final zzQ()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzF()V

    return-void
.end method

.method public final zzR()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzm:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzn:Z

    return v0
.end method

.method protected final zzT()Z
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzR()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzn:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzi:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwz;->zze()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected final zzU()[Lcom/google/android/gms/internal/ads/zzz;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzj:[Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast v0, [Lcom/google/android/gms/internal/ads/zzz;

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzb:I

    return v0
.end method

.method public final zzcU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    return v0
.end method

.method protected final zzcV(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzhs;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzi:Lcom/google/android/gms/internal/ads/zzwz;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwz;->zza(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzhs;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhm;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzm:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzn:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhs;->zze:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzk:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhs;->zze:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzm:J

    .line 2
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzm:J

    goto :goto_0

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzt:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object p3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzic;->zzk:J

    add-long/2addr v1, v3

    .line 4
    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzal(J)Lcom/google/android/gms/internal/ads/zzx;

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzz;

    return p2

    :cond_3
    :goto_0
    return p3
.end method

.method protected final zzcW()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzl:J

    return-wide v0
.end method

.method protected final zzcX()Lcom/google/android/gms/internal/ads/zzdj;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzg:Lcom/google/android/gms/internal/ads/zzdj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdj;

    return-object v0
.end method

.method protected final zzd(J)I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzi:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwz;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzk:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwz;->zzb(J)I

    move-result p1

    return p1
.end method

.method public zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic zzf(JJ)J
    .locals 0

    const-wide/16 p1, 0x2710

    return-wide p1
.end method

.method public final zzh()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzm:J

    return-wide v0
.end method

.method protected final zzi()Lcom/google/android/gms/internal/ads/zzbl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzp:Lcom/google/android/gms/internal/ads/zzbl;

    return-object v0
.end method

.method protected final zzk(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzin;
    .locals 10

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzo:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzo:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzic;->zzZ(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzin; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzo:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzo:Z

    .line 2
    throw p1

    :catch_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzo:Z

    :cond_0
    :goto_0
    move v6, v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzV()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzic;->zze:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzic;->zzq:Lcom/google/android/gms/internal/ads/zzvh;

    move-object v2, p1

    move-object v5, p2

    move v8, p3

    move v9, p4

    .line 4
    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzin;->zzb(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzz;ILcom/google/android/gms/internal/ads/zzvh;ZI)Lcom/google/android/gms/internal/ads/zzin;

    move-result-object p1

    return-object p1
.end method

.method protected final zzl()Lcom/google/android/gms/internal/ads/zzkv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzc:Lcom/google/android/gms/internal/ads/zzkv;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzsi;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzz;

    return-object v0
.end method

.method public zzm()Lcom/google/android/gms/internal/ads/zzlb;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzmd;
    .locals 0

    return-object p0
.end method

.method protected final zzo()Lcom/google/android/gms/internal/ads/zzme;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzd:Lcom/google/android/gms/internal/ads/zzme;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzme;

    return-object v0
.end method

.method protected final zzp()Lcom/google/android/gms/internal/ads/zzph;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzf:Lcom/google/android/gms/internal/ads/zzph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzph;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzwz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzi:Lcom/google/android/gms/internal/ads/zzwz;

    return-object v0
.end method

.method public final zzr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zza:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzr:Lcom/google/android/gms/internal/ads/zzmc;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzs()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzc:Lcom/google/android/gms/internal/ads/zzkv;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzsi;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzz;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzi:Lcom/google/android/gms/internal/ads/zzwz;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzj:[Lcom/google/android/gms/internal/ads/zzz;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzic;->zzn:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzy()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzq:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzme;[Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzwz;JZZJJLcom/google/android/gms/internal/ads/zzvh;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    move-object v8, p0

    move/from16 v9, p6

    .line 1
    iget v0, v8, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    move-object v0, p1

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzic;->zzd:Lcom/google/android/gms/internal/ads/zzme;

    move-object/from16 v7, p12

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzic;->zzq:Lcom/google/android/gms/internal/ads/zzvh;

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzic;->zzh:I

    move/from16 v0, p7

    .line 2
    invoke-virtual {p0, v9, v0}, Lcom/google/android/gms/internal/ads/zzic;->zzz(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzic;->zzI([Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzwz;JJLcom/google/android/gms/internal/ads/zzvh;)V

    move-wide/from16 v0, p8

    .line 4
    invoke-direct {p0, v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzic;->zzaa(JZ)V

    return-void
.end method

.method public synthetic zzu()V
    .locals 0

    return-void
.end method

.method public zzv(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    return-void
.end method

.method public final zzw(ILcom/google/android/gms/internal/ads/zzph;Lcom/google/android/gms/internal/ads/zzdj;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzic;->zze:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzic;->zzf:Lcom/google/android/gms/internal/ads/zzph;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzic;->zzg:Lcom/google/android/gms/internal/ads/zzdj;

    return-void
.end method

.method public final zzx()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzic;->zzi:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwz;->zzd()V

    return-void
.end method

.method protected zzy()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected zzz(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    return-void
.end method
