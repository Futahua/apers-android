.class public final Lcom/google/android/gms/internal/ads/zzaga;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadv;


# instance fields
.field private final zza:[B

.field private final zzb:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaeb;

.field private zzd:Lcom/google/android/gms/internal/ads/zzady;

.field private zze:Lcom/google/android/gms/internal/ads/zzafb;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzav;

.field private zzh:Lcom/google/android/gms/internal/ads/zzaeg;

.field private zzi:I

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/zzafz;

.field private zzl:I

.field private zzm:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2a

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zza:[B

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const v0, 0x8000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzb:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaeb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzen;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzj:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzaeg;ILcom/google/android/gms/internal/ads/zzaeb;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    iget-wide p1, v3, Lcom/google/android/gms/internal/ads/zzaeb;->zza:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result p2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzi:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzj:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    .line 5
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzaeg;ILcom/google/android/gms/internal/ads/zzaeb;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzc:Lcom/google/android/gms/internal/ads/zzaeb;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzaeb;->zza:J

    return-wide p1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    goto :goto_4

    .line 8
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private final zzg()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaeg;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaeg;->zze:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 2
    move-object v0, v4

    check-cast v0, Lcom/google/android/gms/internal/ads/zzafb;

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 3
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 71
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_18

    const/4 v5, 0x2

    if-eq v2, v3, :cond_17

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v2, v5, :cond_15

    if-eq v2, v7, :cond_e

    const-wide/16 v9, -0x1

    if-eq v2, v8, :cond_a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzk:Lcom/google/android/gms/internal/ads/zzafz;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzadg;->zze()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v6, p2

    invoke-virtual {v5, v1, v6}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I

    move-result v4

    goto/16 :goto_2

    :cond_0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    .line 55
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaec;->zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaeg;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzb:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v5

    const v6, 0x8000

    if-ge v5, v6, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v7

    sub-int/2addr v6, v5

    .line 56
    invoke-interface {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzadw;->zza([BII)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-nez v3, :cond_3

    add-int/2addr v5, v1

    .line 57
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v1

    if-nez v1, :cond_5

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaga;->zzg()V

    move v4, v6

    goto :goto_2

    :cond_4
    move v3, v4

    .line 57
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v1

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzi:I

    if-ge v5, v6, :cond_6

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v7

    sub-int/2addr v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 60
    :cond_6
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaga;->zza(Lcom/google/android/gms/internal/ads/zzen;Z)J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v3

    sub-int/2addr v3, v1

    .line 61
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 62
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    cmp-long v1, v5, v9

    if-eqz v1, :cond_7

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaga;->zzg()V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v1

    .line 64
    array-length v1, v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v3

    sub-int/2addr v1, v3

    .line 65
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v3

    const/16 v5, 0x10

    if-ge v3, v5, :cond_9

    if-lt v1, v5, :cond_8

    goto :goto_2

    .line 66
    :cond_8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v6

    .line 67
    invoke-static {v3, v5, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 69
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    :cond_9
    :goto_2
    return v4

    .line 40
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    .line 41
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    .line 42
    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v2

    shr-int/lit8 v3, v2, 0x2

    const/16 v5, 0x3ffe

    if-ne v3, v5, :cond_d

    .line 46
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzj:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzd:Lcom/google/android/gms/internal/ads/zzady;

    .line 47
    sget-object v3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzady;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzd()J

    move-result-wide v16

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 54
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzaeg;->zzk:Lcom/google/android/gms/internal/ads/zzaef;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaef;->zza:[J

    .line 48
    array-length v1, v1

    if-lez v1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaee;

    invoke-direct {v1, v12, v14, v15}, Lcom/google/android/gms/internal/ads/zzaee;-><init>(Lcom/google/android/gms/internal/ads/zzaeg;J)V

    goto :goto_3

    :cond_b
    cmp-long v1, v16, v9

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_c

    .line 53
    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzaeg;->zzj:J

    cmp-long v1, v7, v5

    if-lez v1, :cond_c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzafz;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzj:I

    move-object v11, v1

    .line 51
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(Lcom/google/android/gms/internal/ads/zzaeg;IJJ)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzk:Lcom/google/android/gms/internal/ads/zzafz;

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzadg;->zzb()Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object v1

    goto :goto_3

    .line 72
    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaet;

    .line 49
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaeg;->zza()J

    move-result-wide v7

    .line 50
    invoke-direct {v1, v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(JJ)V

    .line 53
    :goto_3
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    const/4 v1, 0x5

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    return v4

    .line 44
    :cond_d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    const-string v1, "First frame does not start with sync code."

    .line 45
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 9
    :cond_e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    .line 10
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzem;

    new-array v5, v8, [B

    invoke-direct {v3, v5, v8}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzem;->zza:[B

    .line 11
    invoke-interface {v1, v5, v4, v8}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v5

    const/4 v6, 0x7

    .line 13
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v6

    const/16 v9, 0x18

    .line 14
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v3

    add-int/2addr v3, v8

    const/4 v9, 0x6

    if-nez v6, :cond_10

    const/16 v2, 0x26

    new-array v3, v2, [B

    .line 15
    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaeg;

    .line 16
    invoke-direct {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzaeg;-><init>([BI)V

    goto :goto_4

    :cond_10
    if-eqz v2, :cond_14

    if-ne v6, v7, :cond_11

    .line 17
    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v10

    .line 18
    invoke-interface {v1, v10, v4, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 19
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaed;->zzb(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaef;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zzf(Lcom/google/android/gms/internal/ads/zzaef;)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v2

    goto :goto_4

    :cond_11
    if-ne v6, v8, :cond_12

    .line 20
    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v10

    .line 21
    invoke-interface {v1, v10, v4, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 22
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 23
    invoke-static {v6, v4, v4}, Lcom/google/android/gms/internal/ads/zzafh;->zzc(Lcom/google/android/gms/internal/ads/zzen;ZZ)Lcom/google/android/gms/internal/ads/zzafe;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzafe;->zza:[Ljava/lang/String;

    .line 24
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zzg(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v2

    goto :goto_4

    :cond_12
    if-ne v6, v9, :cond_13

    .line 26
    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v10

    .line 27
    invoke-interface {v1, v10, v4, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 28
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 29
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzagt;->zzb(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzagt;

    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zze(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaeg;

    move-result-object v2

    goto :goto_4

    .line 31
    :cond_13
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 32
    :goto_4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaeg;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    if-eqz v5, :cond_f

    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzaeg;->zzc:I

    .line 34
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzi:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zza:[B

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzg:Lcom/google/android/gms/internal/ads/zzav;

    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaeg;->zzc([BLcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 36
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzafb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v1

    const-string v3, "audio/flac"

    .line 37
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 38
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzafb;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzh:Lcom/google/android/gms/internal/ads/zzaeg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaeg;->zza()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafb;->zzl(J)V

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    return v4

    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 33
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 6
    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    .line 7
    invoke-interface {v1, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v1

    const-wide/32 v8, 0x664c6143

    cmp-long v1, v1, v8

    if-nez v1, :cond_16

    .line 9
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    return v4

    .line 8
    :cond_16
    const-string v1, "Failed to read FLAC stream marker."

    .line 9
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 3
    :cond_17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zza:[B

    const/16 v3, 0x2a

    .line 4
    invoke-interface {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    return v4

    .line 1
    :cond_18
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zze()J

    move-result-wide v5

    .line 2
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzaed;->zza(Lcom/google/android/gms/internal/ads/zzadw;Z)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zze()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-int v5, v7

    .line 3
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzg:Lcom/google/android/gms/internal/ads/zzav;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    return v4
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadv;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzd:Lcom/google/android/gms/internal/ads/zzady;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zze:Lcom/google/android/gms/internal/ads/zzafb;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzf:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzk:Lcom/google/android/gms/internal/ads/zzafz;

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzadg;->zzd(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    .line 2
    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzm:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzl:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaga;->zzb:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadw;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaed;->zza(Lcom/google/android/gms/internal/ads/zzadw;Z)Lcom/google/android/gms/internal/ads/zzav;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzadl;

    .line 3
    invoke-virtual {p1, v3, v0, v2, v0}, Lcom/google/android/gms/internal/ads/zzadl;->zzm([BIIZ)Z

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v1

    const-wide/32 v3, 0x664c6143

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
