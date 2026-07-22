.class public final Lcom/google/android/gms/internal/ads/zzajj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadv;
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private zzA:J

.field private zzB:I

.field private zzC:Lcom/google/android/gms/internal/ads/zzahm;

.field private final zza:Lcom/google/android/gms/internal/ads/zzakr;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzen;

.field private final zze:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzg:Ljava/util/ArrayDeque;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzajn;

.field private final zzi:Ljava/util/List;

.field private zzj:Lcom/google/android/gms/internal/ads/zzfyq;

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/ads/zzen;

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:I

.field private zzt:Z

.field private zzu:Z

.field private zzv:J

.field private zzw:Lcom/google/android/gms/internal/ads/zzady;

.field private zzx:[Lcom/google/android/gms/internal/ads/zzaji;

.field private zzy:[[J

.field private zzz:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzakr;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzajj;-><init>(Lcom/google/android/gms/internal/ads/zzakr;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzfyq;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:Lcom/google/android/gms/internal/ads/zzajn;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfv;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/4 v0, 0x6

    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzen;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzady;->zza:Lcom/google/android/gms/internal/ads/zzady;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    new-array p1, p2, [Lcom/google/android/gms/internal/ads/zzaji;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    return-void
.end method

.method private static zzj(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzajs;J)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajs;->zza(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajs;->zzb(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzajs;JJ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajj;->zzk(Lcom/google/android/gms/internal/ads/zzajs;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[J

    aget-wide p1, p0, p1

    .line 3
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final zzm()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    return-void
.end method

.method private final zzn(J)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfc;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzfc;->zza:J

    cmp-long v2, v4, p1

    if-nez v2, :cond_1d

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfc;

    .line 3
    iget v2, v4, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const v5, 0x6d6f6f76

    if-ne v2, v5, :cond_1b

    const v2, 0x6d657461

    .line 4
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaix;->zzb(Lcom/google/android/gms/internal/ads/zzfc;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    new-instance v13, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzB:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ne v5, v15, :cond_1

    move v10, v15

    goto :goto_2

    :cond_1
    move v10, v14

    :goto_2
    new-instance v11, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzaej;-><init>()V

    const v5, 0x75647461

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 9
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaix;->zzc(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v5

    .line 10
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzaej;->zzb(Lcom/google/android/gms/internal/ads/zzav;)Z

    move-object/from16 v16, v5

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    :goto_3
    new-instance v9, Lcom/google/android/gms/internal/ads/zzav;

    new-array v5, v15, [Lcom/google/android/gms/internal/ads/zzau;

    const v6, 0x6d766864

    .line 11
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v6

    .line 65
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaix;->zzd(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzfh;

    move-result-object v6

    aput-object v6, v5, v14

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v9, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    and-int/lit8 v5, v8, 0x1

    if-eq v15, v5, :cond_3

    move/from16 v17, v14

    goto :goto_4

    :cond_3
    move/from16 v17, v15

    :goto_4
    new-instance v18, Lcom/google/android/gms/internal/ads/zzajh;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzajh;-><init>()V

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v21, 0x0

    move-object v5, v11

    move-object/from16 v22, v13

    move-wide v12, v6

    move-wide/from16 v6, v19

    move/from16 v19, v8

    move-object/from16 v8, v21

    move-object/from16 v20, v9

    move/from16 v9, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    .line 12
    invoke-static/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/zzaix;->zzf(Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfve;)Ljava/util/List;

    move-result-object v4

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzajg;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move-wide v7, v12

    move v9, v14

    move v11, v9

    const/4 v10, -0x1

    .line 14
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_15

    .line 15
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzajs;

    .line 16
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    if-nez v15, :cond_4

    move-object/from16 v28, v1

    move/from16 v23, v11

    move-object/from16 v15, v17

    move-object/from16 v0, v22

    const/4 v12, -0x1

    move-object v11, v4

    goto/16 :goto_11

    .line 17
    :cond_4
    iget-object v15, v14, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaji;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    add-int/lit8 v23, v11, 0x1

    iget v12, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 18
    invoke-interface {v3, v11, v12}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object v3

    invoke-direct {v6, v15, v14, v3}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzajp;Lcom/google/android/gms/internal/ads/zzajs;Lcom/google/android/gms/internal/ads/zzafb;)V

    move-object v11, v4

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v3, v24

    if-eqz v13, :cond_5

    goto :goto_6

    .line 19
    :cond_5
    iget-wide v3, v14, Lcom/google/android/gms/internal/ads/zzajs;->zzh:J

    .line 18
    :goto_6
    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 20
    invoke-interface {v13, v3, v4}, Lcom/google/android/gms/internal/ads/zzafb;->zzl(J)V

    .line 21
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    const-string v8, "audio/true-hd"

    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 22
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 23
    iget v8, v14, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    mul-int/lit8 v8, v8, 0x10

    goto :goto_7

    .line 24
    :cond_6
    iget v8, v14, Lcom/google/android/gms/internal/ads/zzajs;->zze:I

    add-int/lit8 v8, v8, 0x1e

    .line 23
    :goto_7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v14

    .line 25
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    const/4 v8, 0x2

    if-ne v12, v8, :cond_9

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    and-int/lit8 v12, v19, 0x8

    if-eqz v12, :cond_8

    const/4 v12, -0x1

    if-ne v10, v12, :cond_7

    const/4 v12, 0x1

    goto :goto_8

    :cond_7
    const/4 v12, 0x2

    :goto_8
    or-int/2addr v8, v12

    .line 26
    :cond_8
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzaf(I)Lcom/google/android/gms/internal/ads/zzx;

    const/4 v8, 0x1

    const/4 v12, 0x2

    goto :goto_9

    :cond_9
    const/4 v8, 0x1

    :goto_9
    if-ne v12, v8, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzaej;->zza()Z

    move-result v8

    if-eqz v8, :cond_a

    move-object/from16 v15, v17

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzaej;->zza:I

    .line 27
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzaej;->zzb:I

    .line 28
    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzN(I)Lcom/google/android/gms/internal/ads/zzx;

    goto :goto_a

    :cond_a
    move-object/from16 v15, v17

    :goto_a
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/util/List;

    move-wide/from16 v26, v3

    const/4 v3, 0x3

    new-array v4, v3, [Lcom/google/android/gms/internal/ads/zzav;

    .line 29
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    .line 30
    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/ads/zzav;

    .line 29
    invoke-direct {v3, v8}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/util/List;)V

    :goto_b
    const/4 v8, 0x0

    aput-object v3, v4, v8

    const/4 v3, 0x1

    aput-object v16, v4, v3

    const/4 v3, 0x2

    aput-object v20, v4, v3

    if-eqz v7, :cond_c

    move-object/from16 v28, v1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_c

    .line 43
    :cond_c
    new-instance v7, Lcom/google/android/gms/internal/ads/zzav;

    new-array v3, v8, [Lcom/google/android/gms/internal/ads/zzau;

    move-object/from16 v28, v1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    invoke-direct {v7, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    :goto_c
    if-eqz v2, :cond_10

    const/4 v3, 0x0

    .line 31
    :goto_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    move-result v8

    if-ge v3, v8, :cond_10

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzav;->zzb(I)Lcom/google/android/gms/internal/ads/zzau;

    move-result-object v8

    instance-of v0, v8, Lcom/google/android/gms/internal/ads/zzfa;

    if-eqz v0, :cond_f

    .line 33
    check-cast v8, Lcom/google/android/gms/internal/ads/zzfa;

    .line 34
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzfa;->zza:Ljava/lang/String;

    const-string v1, "com.android.capture.fps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    if-ne v12, v0, :cond_d

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzau;

    const/16 v18, 0x0

    aput-object v8, v1, v18

    .line 35
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v7

    goto :goto_e

    :cond_d
    const/16 v18, 0x0

    goto :goto_e

    :cond_e
    const/4 v0, 0x1

    const/16 v18, 0x0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v8, v1, v18

    .line 36
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v7

    :cond_f
    :goto_e
    add-int/lit8 v3, v3, 0x1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_d

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_f
    if-ge v0, v1, :cond_11

    aget-object v3, v4, v0

    .line 37
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 38
    :cond_11
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    move-result v0

    if-lez v0, :cond_12

    .line 39
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzaa(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 40
    :cond_12
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 41
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    invoke-interface {v13, v0}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    const/4 v0, 0x2

    if-ne v12, v0, :cond_13

    const/4 v12, -0x1

    if-ne v10, v12, :cond_14

    .line 42
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v0

    move v10, v0

    goto :goto_10

    :cond_13
    const/4 v12, -0x1

    :cond_14
    :goto_10
    move-object/from16 v0, v22

    .line 43
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v7, v26

    :goto_11
    add-int/lit8 v9, v9, 0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v22, v0

    move-object v4, v11

    move-object/from16 v17, v15

    move/from16 v11, v23

    move-object/from16 v1, v28

    const/4 v15, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_15
    move-object/from16 v28, v1

    const/4 v12, -0x1

    move-object v1, v0

    move-object/from16 v0, v22

    .line 19
    iput v10, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzz:I

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzA:J

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzaji;

    .line 44
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzaji;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 45
    array-length v2, v0

    new-array v3, v2, [[J

    new-array v4, v2, [I

    new-array v5, v2, [J

    new-array v2, v2, [Z

    const/4 v8, 0x0

    .line 46
    :goto_12
    array-length v6, v0

    if-ge v8, v6, :cond_16

    .line 47
    aget-object v6, v0, v8

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    new-array v6, v6, [J

    aput-object v6, v3, v8

    .line 48
    aget-object v6, v0, v8

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajs;->zzf:[J

    const/4 v7, 0x0

    aget-wide v9, v6, v7

    aput-wide v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_16
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-wide v9, v8

    move v8, v7

    .line 49
    :goto_13
    array-length v6, v0

    if-ge v8, v6, :cond_1a

    const-wide v13, 0x7fffffffffffffffL

    move v6, v7

    move v11, v12

    .line 50
    :goto_14
    array-length v15, v0

    if-ge v6, v15, :cond_18

    .line 51
    aget-boolean v15, v2, v6

    if-nez v15, :cond_17

    aget-wide v15, v5, v6

    cmp-long v17, v15, v13

    if-gtz v17, :cond_17

    move v11, v6

    move-wide v13, v15

    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 52
    :cond_18
    aget v6, v4, v11

    .line 53
    aget-object v13, v3, v11

    aput-wide v9, v13, v6

    .line 54
    aget-object v14, v0, v11

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v15, v14, Lcom/google/android/gms/internal/ads/zzajs;->zzd:[I

    aget v15, v15, v6

    move/from16 v16, v8

    int-to-long v7, v15

    add-long/2addr v9, v7

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 55
    aput v6, v4, v11

    .line 56
    array-length v8, v13

    if-ge v6, v8, :cond_19

    .line 57
    iget-object v8, v14, Lcom/google/android/gms/internal/ads/zzajs;->zzf:[J

    aget-wide v13, v8, v6

    aput-wide v13, v5, v11

    move/from16 v8, v16

    goto :goto_15

    .line 58
    :cond_19
    aput-boolean v7, v2, v11

    add-int/lit8 v8, v16, 0x1

    :goto_15
    const/4 v7, 0x0

    goto :goto_13

    :cond_1a
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzy:[[J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    .line 59
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    .line 60
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    .line 61
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    goto :goto_16

    :cond_1b
    move-object/from16 v28, v1

    move-object v1, v0

    .line 62
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 63
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(Lcom/google/android/gms/internal/ads/zzfc;)V

    :cond_1c
    :goto_16
    move-object v0, v1

    goto/16 :goto_0

    :cond_1d
    move-object v1, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajj;->zzm()V

    :cond_1e
    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzA:J

    return-wide v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 79
    :cond_0
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    const v4, 0x66747970

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v10, -0x1

    const/16 v11, 0x8

    const/4 v12, 0x1

    if-eqz v3, :cond_28

    const-wide/32 v14, 0x40000

    if-eq v3, v12, :cond_1f

    if-eq v3, v8, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:Lcom/google/android/gms/internal/ads/zzajn;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/util/List;

    invoke-virtual {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzajn;->zza(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;Ljava/util/List;)I

    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajj;->zzm()V

    :cond_1
    return v12

    .line 36
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v3

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    if-ne v11, v10, :cond_c

    const-wide v16, 0x7fffffffffffffffL

    move/from16 v25, v10

    move/from16 v26, v25

    move/from16 v20, v12

    move/from16 v27, v20

    move-wide/from16 v18, v16

    move-wide/from16 v21, v18

    move-wide/from16 v23, v21

    const/4 v11, 0x0

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 37
    array-length v9, v5

    if-ge v11, v9, :cond_a

    .line 38
    aget-object v5, v5, v11

    .line 39
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    .line 40
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    if-ne v9, v8, :cond_3

    goto :goto_6

    .line 41
    :cond_3
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[J

    aget-wide v28, v5, v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzy:[[J

    .line 42
    sget-object v8, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    check-cast v5, [[J

    aget-object v5, v5, v11

    aget-wide v8, v5, v9

    sub-long v28, v28, v3

    cmp-long v5, v28, v6

    if-ltz v5, :cond_5

    cmp-long v5, v28, v14

    if-ltz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v12

    :goto_3
    if-nez v5, :cond_6

    if-nez v27, :cond_7

    const/4 v13, 0x0

    goto :goto_4

    :cond_6
    move/from16 v13, v27

    :goto_4
    if-ne v5, v13, :cond_8

    cmp-long v27, v28, v23

    if-gez v27, :cond_8

    :cond_7
    move/from16 v27, v5

    move-wide/from16 v21, v8

    move/from16 v26, v11

    move-wide/from16 v23, v28

    goto :goto_5

    :cond_8
    move/from16 v27, v13

    :goto_5
    cmp-long v13, v8, v18

    if-gez v13, :cond_9

    move/from16 v20, v5

    move-wide/from16 v18, v8

    move/from16 v25, v11

    :cond_9
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x2

    goto :goto_1

    :cond_a
    cmp-long v5, v18, v16

    if-eqz v5, :cond_b

    if-eqz v20, :cond_b

    const-wide/32 v8, 0xa00000

    add-long v18, v18, v8

    cmp-long v5, v21, v18

    if-ltz v5, :cond_b

    move/from16 v11, v25

    goto :goto_7

    :cond_b
    move/from16 v11, v26

    :goto_7
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    if-ne v11, v10, :cond_c

    goto/16 :goto_f

    :cond_c
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 43
    aget-object v5, v5, v11

    .line 44
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzaji;->zzc:Lcom/google/android/gms/internal/ads/zzafb;

    .line 45
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    .line 46
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v13, v11, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[J

    aget-wide v16, v13, v9

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzv:J

    add-long v12, v16, v12

    .line 47
    iget-object v10, v11, Lcom/google/android/gms/internal/ads/zzajs;->zzd:[I

    aget v16, v10, v9

    .line 48
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzaji;->zzd:Lcom/google/android/gms/internal/ads/zzafc;

    sub-long v3, v12, v3

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    move-wide/from16 v19, v12

    int-to-long v12, v15

    add-long/2addr v3, v12

    cmp-long v6, v3, v6

    if-ltz v6, :cond_1e

    const-wide/32 v6, 0x40000

    cmp-long v6, v3, v6

    if-ltz v6, :cond_d

    goto/16 :goto_e

    .line 49
    :cond_d
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzh:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    const-wide/16 v6, 0x8

    add-long/2addr v3, v6

    add-int/lit8 v16, v16, -0x8

    :cond_e
    move/from16 v6, v16

    long-to-int v3, v3

    .line 50
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v7, "video/avc"

    .line 51
    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, "video/hevc"

    .line 52
    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_f
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajp;->zzk:I

    if-eqz v2, :cond_16

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v12

    const/4 v13, 0x0

    .line 53
    aput-byte v13, v12, v13

    .line 54
    aput-byte v13, v12, v7

    const/4 v7, 0x2

    .line 55
    aput-byte v13, v12, v7

    rsub-int/lit8 v7, v2, 0x4

    add-int/2addr v6, v7

    :goto_8
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    if-ge v13, v6, :cond_15

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    if-nez v13, :cond_13

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    if-nez v13, :cond_10

    .line 56
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfv;->zzb(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v13

    add-int/2addr v13, v2

    aget v15, v10, v9

    move/from16 p2, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    sub-int/2addr v15, v6

    if-gt v13, v15, :cond_11

    .line 57
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfv;->zzb(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v6

    add-int v13, v2, v6

    goto :goto_9

    :cond_10
    move/from16 p2, v6

    :cond_11
    move v13, v2

    const/4 v6, 0x0

    .line 58
    :goto_9
    invoke-interface {v1, v12, v7, v13}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    add-int/2addr v15, v13

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    const/4 v13, 0x0

    .line 59
    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v15

    if-ltz v15, :cond_12

    sub-int/2addr v15, v6

    .line 66
    iput v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Lcom/google/android/gms/internal/ads/zzen;

    .line 61
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v13, 0x4

    .line 62
    invoke-interface {v8, v15, v13}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v15, v13

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    if-lez v6, :cond_14

    .line 63
    invoke-interface {v8, v4, v6}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v15, v6

    iput v15, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    .line 64
    invoke-static {v12, v13, v6, v3}, Lcom/google/android/gms/internal/ads/zzfv;->zzj([BIILcom/google/android/gms/internal/ads/zzz;)Z

    move-result v6

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    goto :goto_a

    .line 60
    :cond_12
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 66
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_13
    move/from16 p2, v6

    const/4 v6, 0x0

    .line 65
    invoke-interface {v8, v1, v13, v6}, Lcom/google/android/gms/internal/ads/zzafb;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v13

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    add-int/2addr v6, v13

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v6, v13

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    sub-int/2addr v6, v13

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    :cond_14
    :goto_a
    move/from16 v6, p2

    goto :goto_8

    :cond_15
    move/from16 p2, v6

    goto :goto_c

    .line 77
    :cond_16
    const-string v2, "audio/ac4"

    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    if-nez v2, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzen;

    .line 68
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/ads/zzacy;->zzc(ILcom/google/android/gms/internal/ads/zzen;)V

    const/4 v3, 0x7

    .line 69
    invoke-interface {v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    :cond_17
    add-int/lit8 v6, v6, 0x7

    goto :goto_b

    :cond_18
    if-eqz v14, :cond_19

    .line 70
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzafc;->zzd(Lcom/google/android/gms/internal/ads/zzadw;)V

    .line 69
    :cond_19
    :goto_b
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    if-ge v2, v6, :cond_1a

    sub-int v2, v6, v2

    const/4 v3, 0x0

    .line 71
    invoke-interface {v8, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafb;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    goto :goto_b

    .line 72
    :cond_1a
    :goto_c
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzajs;->zzf:[J

    aget-wide v2, v1, v9

    .line 73
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzajs;->zzg:[I

    aget v1, v1, v9

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    if-nez v4, :cond_1b

    const/high16 v4, 0x4000000

    or-int/2addr v1, v4

    :cond_1b
    if-eqz v14, :cond_1c

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v14

    move-object/from16 v17, v8

    move-wide/from16 v18, v2

    move/from16 v20, v1

    move/from16 v21, v6

    .line 74
    invoke-virtual/range {v16 .. v23}, Lcom/google/android/gms/internal/ads/zzafc;->zzc(Lcom/google/android/gms/internal/ads/zzafb;JIIILcom/google/android/gms/internal/ads/zzafa;)V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    .line 75
    iget v1, v11, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    if-ne v9, v1, :cond_1d

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v14, v8, v1}, Lcom/google/android/gms/internal/ads/zzafc;->zza(Lcom/google/android/gms/internal/ads/zzafb;Lcom/google/android/gms/internal/ads/zzafa;)V

    goto :goto_d

    :cond_1c
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v8

    move-wide/from16 v17, v2

    move/from16 v19, v1

    move/from16 v20, v6

    .line 77
    invoke-interface/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    .line 78
    :cond_1d
    :goto_d
    iget v1, v5, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v5, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    const/4 v10, 0x0

    goto :goto_f

    :cond_1e
    :goto_e
    move-wide/from16 v3, v19

    .line 48
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    const/4 v10, 0x1

    :goto_f
    return v10

    .line 70
    :cond_1f
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v7

    add-long/2addr v7, v5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzo:Lcom/google/android/gms/internal/ads/zzen;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    long-to-int v5, v5

    .line 25
    invoke-interface {v1, v9, v10, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    if-ne v5, v4, :cond_23

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzu:Z

    .line 26
    invoke-virtual {v3, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzajj;->zzj(I)I

    move-result v4

    if-eqz v4, :cond_20

    goto :goto_10

    :cond_20
    const/4 v4, 0x4

    .line 28
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 29
    :cond_21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v4

    if-lez v4, :cond_22

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzajj;->zzj(I)I

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_10

    :cond_22
    const/4 v4, 0x0

    .line 27
    :goto_10
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzB:I

    goto :goto_11

    .line 30
    :cond_23
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    .line 32
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfc;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfd;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(ILcom/google/android/gms/internal/ads/zzen;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfc;->zzd(Lcom/google/android/gms/internal/ads/zzfd;)V

    goto :goto_11

    :cond_24
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzu:Z

    if-nez v3, :cond_25

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    const v4, 0x6d646174

    if-ne v3, v4, :cond_25

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzB:I

    :cond_25
    const-wide/32 v3, 0x40000

    cmp-long v3, v5, v3

    if-gez v3, :cond_27

    long-to-int v3, v5

    .line 33
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    :cond_26
    :goto_11
    const/4 v13, 0x0

    goto :goto_12

    .line 34
    :cond_27
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    const/4 v13, 0x1

    .line 35
    :goto_12
    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzajj;->zzn(J)V

    if-eqz v13, :cond_0

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_28
    move v5, v8

    move v3, v12

    .line 34
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    if-nez v8, :cond_2c

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v9

    const/4 v10, 0x0

    .line 1
    invoke-interface {v1, v9, v10, v11, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzn([BIIZ)Z

    move-result v9

    if-nez v9, :cond_2b

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzB:I

    if-ne v1, v5, :cond_2a

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    const/4 v2, 0x4

    .line 81
    invoke-interface {v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzC:Lcom/google/android/gms/internal/ads/zzahm;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_29

    const/4 v5, 0x0

    goto :goto_13

    .line 86
    :cond_29
    new-instance v5, Lcom/google/android/gms/internal/ads/zzav;

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v2, v8, v10

    .line 82
    invoke-direct {v5, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 81
    :goto_13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 83
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaa(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    .line 84
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaet;

    .line 85
    invoke-direct {v2, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(JJ)V

    .line 86
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    :cond_2a
    const/4 v1, -0x1

    return v1

    .line 82
    :cond_2b
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 3
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    .line 4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    :cond_2c
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    const-wide/16 v12, 0x1

    cmp-long v3, v8, v12

    if-nez v3, :cond_2d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v5

    .line 5
    invoke-interface {v1, v5, v11, v11}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    add-int/2addr v5, v11

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    goto :goto_15

    :cond_2d
    cmp-long v3, v8, v6

    if-nez v3, :cond_30

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzd()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_2f

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    if-eqz v3, :cond_2e

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzfc;->zza:J

    goto :goto_14

    :cond_2e
    move-wide v5, v7

    :cond_2f
    :goto_14
    cmp-long v3, v5, v7

    if-eqz v3, :cond_30

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    .line 6
    :cond_30
    :goto_15
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v7, v3

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3a

    .line 87
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_37

    const v6, 0x7472616b

    if-eq v5, v6, :cond_37

    const v6, 0x6d646961

    if-eq v5, v6, :cond_37

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_37

    const v6, 0x7374626c

    if-eq v5, v6, :cond_37

    const v6, 0x65647473

    if-eq v5, v6, :cond_37

    if-eq v5, v7, :cond_37

    const v6, 0x61787465

    if-ne v5, v6, :cond_31

    goto/16 :goto_19

    :cond_31
    const v6, 0x6d646864

    if-eq v5, v6, :cond_34

    const v6, 0x6d766864

    if-eq v5, v6, :cond_34

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v5, v6, :cond_34

    const v6, 0x73747364

    if-eq v5, v6, :cond_34

    const v6, 0x73747473

    if-eq v5, v6, :cond_34

    const v6, 0x73747373

    if-eq v5, v6, :cond_34

    const v6, 0x63747473

    if-eq v5, v6, :cond_34

    const v6, 0x656c7374

    if-eq v5, v6, :cond_34

    const v6, 0x73747363

    if-eq v5, v6, :cond_34

    const v6, 0x7374737a

    if-eq v5, v6, :cond_34

    const v6, 0x73747a32

    if-eq v5, v6, :cond_34

    const v6, 0x7374636f

    if-eq v5, v6, :cond_34

    const v6, 0x636f3634

    if-eq v5, v6, :cond_34

    const v6, 0x746b6864

    if-eq v5, v6, :cond_34

    if-eq v5, v4, :cond_34

    const v4, 0x75647461

    if-eq v5, v4, :cond_34

    const v4, 0x6b657973

    if-eq v5, v4, :cond_34

    const v4, 0x696c7374

    if-ne v5, v4, :cond_32

    goto :goto_16

    .line 23
    :cond_32
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v5, v5

    sub-long v10, v3, v5

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_33

    add-long v14, v10, v5

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahm;

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    sub-long v16, v7, v5

    const-wide/16 v8, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-object v7, v3

    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/internal/ads/zzahm;-><init>(JJJJJ)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzC:Lcom/google/android/gms/internal/ads/zzahm;

    :cond_33
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzo:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    goto/16 :goto_0

    :cond_34
    :goto_16
    if-ne v3, v11, :cond_35

    const/4 v3, 0x1

    goto :goto_17

    :cond_35
    const/4 v3, 0x0

    .line 19
    :goto_17
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_18

    :cond_36
    const/4 v3, 0x0

    .line 20
    :goto_18
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 21
    new-instance v3, Lcom/google/android/gms/internal/ads/zzen;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    long-to-int v4, v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzf:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 22
    invoke-static {v4, v6, v5, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzo:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v3, 0x1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    goto/16 :goto_0

    .line 10
    :cond_37
    :goto_19
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    add-long/2addr v3, v5

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-eqz v5, :cond_38

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    if-ne v5, v7, :cond_38

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzen;

    .line 11
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v6

    const/4 v7, 0x0

    .line 12
    invoke-interface {v1, v6, v7, v11}, Lcom/google/android/gms/internal/ads/zzadw;->zzh([BII)V

    .line 13
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaix;->zzg(Lcom/google/android/gms/internal/ads/zzen;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v5

    .line 14
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj()V

    :cond_38
    sub-long/2addr v3, v8

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfc;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzl:I

    .line 16
    invoke-direct {v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzm:J

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_39

    .line 17
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzajj;->zzn(J)V

    goto/16 :goto_0

    .line 18
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajj;->zzm()V

    goto/16 :goto_0

    .line 6
    :cond_3a
    const-string v1, "Atom size less than header length (unsupported)."

    .line 87
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadv;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzfyq;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaku;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaku;-><init>(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzakr;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzw:Lcom/google/android/gms/internal/ads/zzady;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzn:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzs:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzt:Z

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzk:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajj;->zzm()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzh:Lcom/google/android/gms/internal/ads/zzajn;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajn;->zzb()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzi:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 5
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_4

    aget-object v2, p1, v0

    .line 6
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 7
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajs;->zza(J)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 8
    invoke-virtual {v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzajs;->zzb(J)I

    move-result v4

    .line 9
    :cond_2
    iput v4, v2, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    .line 10
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaji;->zzd:Lcom/google/android/gms/internal/ads/zzafc;

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzafc;->zzb()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzaes;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    array-length v4, v3

    if-nez v4, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaes;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaev;->zza:Lcom/google/android/gms/internal/ads/zzaev;

    .line 2
    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    goto/16 :goto_3

    :cond_0
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzz:I

    const/4 v5, -0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v4, v5, :cond_3

    .line 3
    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 4
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajj;->zzk(Lcom/google/android/gms/internal/ads/zzajs;J)I

    move-result v4

    if-ne v4, v5, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaes;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaev;->zza:Lcom/google/android/gms/internal/ads/zzaev;

    .line 5
    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    goto/16 :goto_3

    .line 6
    :cond_1
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzajs;->zzf:[J

    aget-wide v11, v10, v4

    .line 7
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[J

    aget-wide v14, v13, v4

    cmp-long v16, v11, v1

    if-gez v16, :cond_2

    .line 8
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    add-int/2addr v6, v5

    if-ge v4, v6, :cond_2

    .line 9
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzajs;->zzb(J)I

    move-result v1

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    .line 10
    aget-wide v2, v10, v1

    .line 11
    aget-wide v4, v13, v1

    move-wide v6, v4

    goto :goto_0

    :cond_2
    move-wide v2, v8

    const-wide/16 v6, -0x1

    :goto_0
    move-wide v3, v2

    move-wide v1, v11

    goto :goto_1

    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    move-wide v3, v8

    const-wide/16 v6, -0x1

    :goto_1
    const/4 v5, 0x0

    :goto_2
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzx:[Lcom/google/android/gms/internal/ads/zzaji;

    .line 12
    array-length v11, v10

    if-ge v5, v11, :cond_6

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzz:I

    if-eq v5, v11, :cond_5

    .line 13
    aget-object v10, v10, v5

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzajs;

    .line 14
    invoke-static {v10, v1, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzajj;->zzl(Lcom/google/android/gms/internal/ads/zzajs;JJ)J

    move-result-wide v11

    cmp-long v13, v3, v8

    if-eqz v13, :cond_4

    .line 15
    invoke-static {v10, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzajj;->zzl(Lcom/google/android/gms/internal/ads/zzajs;JJ)J

    move-result-wide v6

    :cond_4
    move-wide v14, v11

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaev;

    .line 16
    invoke-direct {v5, v1, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzaev;-><init>(JJ)V

    cmp-long v1, v3, v8

    if-nez v1, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaes;

    .line 17
    invoke-direct {v1, v5, v5}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaev;

    .line 18
    invoke-direct {v1, v3, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzaev;-><init>(JJ)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaes;

    .line 19
    invoke-direct {v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzaev;)V

    move-object v1, v2

    :goto_3
    return-object v1
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadw;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzajo;->zzb(Lcom/google/android/gms/internal/ads/zzadw;Z)Lcom/google/android/gms/internal/ads/zzaey;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzj:Lcom/google/android/gms/internal/ads/zzfyq;

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method
