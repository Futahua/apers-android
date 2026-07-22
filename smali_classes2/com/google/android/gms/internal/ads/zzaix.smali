.class public final Lcom/google/android/gms/internal/ads/zzaix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    const-string v0, "OpusHead"

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaix;->zzb:[B

    return-void
.end method

.method public static zza(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzfc;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 12

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaix;->zzi(Lcom/google/android/gms/internal/ads/zzen;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v1

    .line 7
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v6

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    add-int/lit8 v6, v6, -0x8

    .line 10
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 11
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    new-instance v5, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v6

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    add-int/2addr v6, v7

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_4

    if-ge v7, v1, :cond_4

    .line 18
    aget-object v7, v3, v7

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v8

    if-ge v8, v6, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v9

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v10

    const v11, 0x64617461

    if-ne v10, v11, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v10

    add-int/lit8 v9, v9, -0x10

    .line 24
    new-array v11, v9, [B

    .line 25
    invoke-virtual {p0, v11, v4, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfa;

    .line 26
    invoke-direct {v9, v7, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzfa;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v8, v9

    .line 21
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    goto :goto_2

    :cond_3
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_5

    .line 27
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 21
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipped metadata with unknown key index: "

    .line 17
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BoxParsers"

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_5
    :goto_4
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/google/android/gms/internal/ads/zzav;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    :goto_5
    return-object v2
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfd;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzav;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzau;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v3

    if-lt v3, v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v6

    add-int/2addr v6, v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    const v8, 0x6d657461

    const/4 v9, 0x0

    if-ne v7, v8, :cond_5

    .line 5
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzg(Lcom/google/android/gms/internal/ads/zzen;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v3

    if-ge v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    add-int/2addr v7, v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    const v10, 0x696c7374

    if-ne v8, v10, :cond_3

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    new-instance v3, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v8

    if-ge v8, v7, :cond_1

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzajf;->zza(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzau;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 15
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 32
    :cond_2
    new-instance v9, Lcom/google/android/gms/internal/ads/zzav;

    .line 16
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzav;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    goto :goto_1

    .line 17
    :cond_4
    :goto_3
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v1

    goto/16 :goto_a

    :cond_5
    const v8, 0x736d7461

    if-ne v7, v8, :cond_13

    .line 18
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/16 v3, 0xc

    .line 19
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v7

    if-ge v7, v6, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v7

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v10

    const v11, 0x73617574

    if-ne v10, v11, :cond_11

    const/16 v7, 0x10

    if-ge v8, v7, :cond_6

    goto/16 :goto_9

    :cond_6
    const/4 v7, 0x4

    .line 23
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    const/4 v7, -0x1

    move v8, v2

    move v10, v8

    :goto_5
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v8, v11, :cond_9

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v11

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v13

    if-nez v11, :cond_7

    move v7, v13

    goto :goto_6

    :cond_7
    if-ne v11, v12, :cond_8

    move v10, v13

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    const v8, -0x7fffffff

    if-ne v7, v3, :cond_a

    const/16 v3, 0xf0

    goto :goto_8

    :cond_a
    const/16 v11, 0xd

    if-ne v7, v11, :cond_b

    const/16 v3, 0x78

    goto :goto_8

    :cond_b
    const/16 v11, 0x15

    if-eq v7, v11, :cond_d

    :cond_c
    :goto_7
    move v3, v8

    goto :goto_8

    .line 26
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v7

    if-lt v7, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v7

    add-int/2addr v7, v0

    if-le v7, v6, :cond_e

    goto :goto_7

    .line 27
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v11

    if-lt v7, v3, :cond_c

    const v3, 0x73726672

    if-eq v11, v3, :cond_f

    goto :goto_7

    .line 29
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzn()I

    move-result v3

    :goto_8
    if-ne v3, v8, :cond_10

    goto :goto_9

    .line 25
    :cond_10
    new-instance v9, Lcom/google/android/gms/internal/ads/zzav;

    new-array v7, v12, [Lcom/google/android/gms/internal/ads/zzau;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzahp;

    int-to-float v3, v3

    invoke-direct {v8, v3, v10}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(FI)V

    aput-object v8, v7, v2

    invoke-direct {v9, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    goto :goto_9

    :cond_11
    add-int/2addr v7, v8

    .line 22
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    goto/16 :goto_4

    .line 30
    :cond_12
    :goto_9
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v1

    goto :goto_a

    :cond_13
    const v3, -0x56878686

    if-ne v7, v3, :cond_14

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzm(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v1

    .line 32
    :cond_14
    :goto_a
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    goto/16 :goto_0

    :cond_15
    return-object v1
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzfh;
    .locals 11

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v9

    new-instance p0, Lcom/google/android/gms/internal/ads/zzfh;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzfh;-><init>(JJJ)V

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzajp;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;)Lcom/google/android/gms/internal/ads/zzajs;
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzait;

    .line 2
    invoke-direct {v6, v3, v5}, Lcom/google/android/gms/internal/ads/zzait;-><init>(Lcom/google/android/gms/internal/ads/zzfd;Lcom/google/android/gms/internal/ads/zzz;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 124
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaiu;

    .line 5
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzaiu;-><init>(Lcom/google/android/gms/internal/ads/zzfd;)V

    .line 2
    :goto_0
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzb()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    new-instance v9, Lcom/google/android/gms/internal/ads/zzajs;

    new-array v2, v5, [J

    new-array v3, v5, [I

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    return-object v9

    :cond_1
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-ne v7, v8, :cond_2

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzf:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_2

    int-to-float v7, v3

    long-to-float v11, v11

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v12

    const v13, 0x49742400    # 1000000.0f

    div-float/2addr v11, v13

    div-float/2addr v7, v11

    .line 7
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzO(F)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzajp;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajp;

    move-result-object v1

    :cond_2
    const v7, 0x7374636f

    .line 8
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v7

    if-nez v7, :cond_3

    const v7, 0x636f3634

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v7

    .line 136
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v12, v7

    check-cast v12, Lcom/google/android/gms/internal/ads/zzfd;

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    move v12, v5

    :goto_1
    const v13, 0x73747363

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v13

    .line 135
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v14, v13

    check-cast v14, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const v14, 0x73747473

    .line 11
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v14

    .line 134
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v15, v14

    check-cast v15, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const v15, 0x73747373

    .line 12
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v15

    if-eqz v15, :cond_4

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const v4, 0x63747473

    .line 13
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaim;

    .line 14
    invoke-direct {v7, v13, v4, v12}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzen;Z)V

    const/16 v4, 0xc

    .line 15
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 16
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v12

    const/4 v13, -0x1

    add-int/2addr v12, v13

    .line 17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v17

    .line 18
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v5

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v19

    goto :goto_4

    :cond_6
    const/16 v19, 0x0

    :goto_4
    if-eqz v15, :cond_8

    .line 21
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 22
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v4

    if-lez v4, :cond_7

    .line 23
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v41, v15

    move v15, v4

    move-object/from16 v4, v41

    goto :goto_5

    :cond_7
    move v15, v4

    move/from16 v16, v13

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    move/from16 v16, v13

    move-object v4, v15

    const/4 v15, 0x0

    :goto_5
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zza()I

    move-result v8

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    if-eq v8, v13, :cond_f

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v11, "audio/raw"

    .line 24
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "audio/g711-mlaw"

    .line 25
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "audio/g711-alaw"

    .line 26
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_9
    if-nez v12, :cond_f

    if-nez v19, :cond_e

    if-nez v15, :cond_e

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaim;->zza:I

    new-array v4, v0, [J

    new-array v6, v0, [I

    .line 49
    :goto_6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaim;->zza()Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzaim;->zzb:I

    iget-wide v11, v7, Lcom/google/android/gms/internal/ads/zzaim;->zzd:J

    .line 50
    aput-wide v11, v4, v10

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzaim;->zzc:I

    .line 51
    aput v11, v6, v10

    goto :goto_6

    :cond_a
    int-to-long v10, v5

    const/16 v5, 0x2000

    .line 52
    div-int/2addr v5, v8

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v7, v0, :cond_b

    .line 53
    aget v14, v6, v7

    .line 54
    sget-object v15, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    add-int/2addr v14, v5

    add-int/2addr v14, v13

    .line 55
    div-int/2addr v14, v5

    add-int/2addr v12, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 56
    :cond_b
    new-array v7, v12, [J

    .line 57
    new-array v14, v12, [I

    .line 58
    new-array v15, v12, [J

    .line 59
    new-array v12, v12, [I

    move-object/from16 v21, v9

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_8
    if-ge v13, v0, :cond_d

    .line 60
    aget v19, v6, v13

    .line 61
    aget-wide v22, v4, v13

    move/from16 v41, v17

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v16, v41

    move/from16 v42, v19

    move-object/from16 v19, v4

    move/from16 v4, v42

    :goto_9
    if-lez v4, :cond_c

    .line 62
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 63
    aput-wide v22, v7, v16

    move/from16 v25, v5

    mul-int v5, v8, v24

    .line 64
    aput v5, v14, v16

    add-int/2addr v9, v5

    .line 65
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v26, v6

    int-to-long v5, v2

    mul-long/2addr v5, v10

    .line 66
    aput-wide v5, v15, v16

    const/4 v5, 0x1

    .line 67
    aput v5, v12, v16

    .line 68
    aget v5, v14, v16

    int-to-long v5, v5

    add-long v22, v22, v5

    add-int v2, v2, v24

    sub-int v4, v4, v24

    add-int/lit8 v16, v16, 0x1

    move/from16 v5, v25

    move-object/from16 v6, v26

    goto :goto_9

    :cond_c
    move/from16 v25, v5

    move-object/from16 v26, v6

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v19

    move/from16 v41, v16

    move/from16 v16, v0

    move/from16 v0, v17

    move/from16 v17, v41

    goto :goto_8

    :cond_d
    int-to-long v4, v2

    mul-long/2addr v10, v4

    int-to-long v4, v9

    move-object v9, v1

    move-wide/from16 v22, v10

    move-object v2, v12

    move-object v0, v14

    move-object v1, v15

    move/from16 v26, v16

    goto/16 :goto_19

    :cond_e
    move-object/from16 v21, v9

    const/4 v12, 0x0

    goto :goto_a

    :cond_f
    move-object/from16 v21, v9

    .line 86
    :goto_a
    new-array v2, v3, [J

    new-array v8, v3, [I

    new-array v9, v3, [J

    new-array v10, v3, [I

    move-object/from16 v31, v1

    move/from16 v11, v16

    move/from16 v24, v19

    const/4 v13, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    move/from16 v19, v12

    move/from16 v16, v15

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_b
    const-string v1, "BoxParsers"

    if-ge v12, v3, :cond_1b

    move-wide/from16 v32, v25

    move/from16 v25, v22

    const/16 v22, 0x1

    :goto_c
    if-nez v25, :cond_11

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaim;->zza()Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v26, v14

    move/from16 v34, v15

    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzaim;->zzd:J

    move/from16 v35, v3

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzaim;->zzc:I

    move/from16 v25, v3

    move-wide/from16 v32, v14

    move-object/from16 v14, v26

    move/from16 v15, v34

    move/from16 v3, v35

    goto :goto_c

    :cond_10
    move/from16 v35, v3

    move-object/from16 v26, v14

    move/from16 v34, v15

    const/4 v3, 0x0

    goto :goto_d

    :cond_11
    move/from16 v35, v3

    move-object/from16 v26, v14

    move/from16 v34, v15

    move/from16 v3, v25

    :goto_d
    if-nez v22, :cond_12

    const-string v3, "Unexpected end of chunk data"

    .line 39
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 41
    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 42
    invoke-static {v9, v12}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 43
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move-object v7, v2

    move-object v14, v3

    move-object v15, v4

    move v3, v12

    move/from16 v22, v25

    move/from16 v2, v34

    move-object v12, v5

    goto/16 :goto_13

    :cond_12
    move/from16 v15, v34

    if-nez v0, :cond_13

    goto :goto_10

    :cond_13
    :goto_e
    if-nez v23, :cond_15

    if-lez v24, :cond_14

    add-int/lit8 v24, v24, -0x1

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v23

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v15

    goto :goto_e

    :cond_14
    const/4 v1, -0x1

    const/16 v23, 0x0

    goto :goto_f

    :cond_15
    const/4 v1, -0x1

    :goto_f
    add-int/lit8 v23, v23, -0x1

    .line 30
    :goto_10
    aput-wide v32, v2, v12

    .line 31
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzaiq;->zzc()I

    move-result v1

    aput v1, v8, v12

    move-object v14, v6

    move-object/from16 v25, v7

    int-to-long v6, v1

    add-long v29, v29, v6

    if-le v1, v13, :cond_16

    move v13, v1

    :cond_16
    int-to-long v6, v15

    add-long v6, v27, v6

    .line 32
    aput-wide v6, v9, v12

    if-nez v4, :cond_17

    const/4 v1, 0x1

    goto :goto_11

    :cond_17
    const/4 v1, 0x0

    .line 33
    :goto_11
    aput v1, v10, v12

    if-ne v12, v11, :cond_18

    const/4 v1, 0x1

    .line 34
    aput v1, v10, v12

    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_18

    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    move-object v1, v4

    check-cast v1, Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v1

    const/4 v6, -0x1

    add-int/2addr v1, v6

    move v11, v1

    :cond_18
    int-to-long v6, v5

    add-long v27, v27, v6

    add-int/lit8 v17, v17, -0x1

    if-nez v17, :cond_1a

    if-lez v19, :cond_19

    .line 36
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v1

    .line 37
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v5

    add-int/lit8 v19, v19, -0x1

    move/from16 v17, v1

    goto :goto_12

    :cond_19
    const/16 v17, 0x0

    .line 38
    :cond_1a
    :goto_12
    aget v1, v8, v12

    int-to-long v6, v1

    add-long v6, v32, v6

    const/4 v1, -0x1

    add-int/lit8 v22, v3, -0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v35

    move-wide/from16 v41, v6

    move-object v6, v14

    move-object/from16 v7, v25

    move-object/from16 v14, v26

    move-wide/from16 v25, v41

    goto/16 :goto_b

    :cond_1b
    move/from16 v35, v3

    move-object v7, v2

    move-object v14, v8

    move-object v12, v10

    move v2, v15

    move-object v15, v9

    :goto_13
    int-to-long v4, v2

    add-long v10, v27, v4

    if-eqz v0, :cond_1d

    :goto_14
    if-lez v24, :cond_1d

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v0, 0x0

    goto :goto_15

    .line 46
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    add-int/lit8 v24, v24, -0x1

    goto :goto_14

    :cond_1d
    const/4 v0, 0x1

    :goto_15
    if-nez v16, :cond_23

    if-nez v17, :cond_22

    if-nez v22, :cond_21

    if-nez v19, :cond_20

    if-nez v23, :cond_1f

    if-nez v0, :cond_1e

    move/from16 v16, v3

    move-object/from16 v9, v31

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_16

    :cond_1e
    move/from16 v16, v3

    move-object/from16 v17, v7

    move-wide/from16 v22, v10

    move-object/from16 v9, v31

    goto/16 :goto_18

    :cond_1f
    move v8, v0

    move/from16 v16, v3

    move/from16 v6, v23

    move-object/from16 v9, v31

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_16

    :cond_20
    move v8, v0

    move/from16 v16, v3

    move/from16 v5, v19

    move/from16 v6, v23

    move-object/from16 v9, v31

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_16

    :cond_21
    move v8, v0

    move/from16 v16, v3

    move/from16 v5, v19

    move/from16 v4, v22

    move/from16 v6, v23

    move-object/from16 v9, v31

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_16

    :cond_22
    move v8, v0

    move/from16 v16, v3

    move/from16 v2, v17

    move/from16 v5, v19

    move/from16 v4, v22

    move/from16 v6, v23

    move-object/from16 v9, v31

    const/4 v0, 0x0

    goto :goto_16

    :cond_23
    move v8, v0

    move/from16 v0, v16

    move/from16 v2, v17

    move/from16 v5, v19

    move/from16 v4, v22

    move/from16 v6, v23

    move-object/from16 v9, v31

    move/from16 v16, v3

    .line 45
    :goto_16
    iget v3, v9, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    move-object/from16 v17, v7

    new-instance v7, Ljava/lang/StringBuilder;

    move-wide/from16 v22, v10

    const-string v10, "Inconsistent stbl box for track "

    .line 47
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": remainingSynchronizationSamples "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesInChunk "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-eq v0, v8, :cond_24

    const-string v0, ", ctts invalid"

    goto :goto_17

    .line 48
    :cond_24
    const-string v0, ""

    .line 47
    :goto_17
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    move-object v2, v12

    move/from16 v26, v13

    move-object v0, v14

    move-object v1, v15

    move/from16 v3, v16

    move-object/from16 v7, v17

    move-wide/from16 v4, v29

    .line 68
    :goto_19
    iget-wide v14, v9, Lcom/google/android/gms/internal/ads/zzajp;->zzf:J

    const-wide/16 v10, 0x0

    cmp-long v6, v14, v10

    const-wide/32 v24, 0x7fffffff

    if-lez v6, :cond_25

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v4

    const-wide/32 v12, 0xf4240

    sget-object v16, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 69
    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v6, v4, v10

    if-lez v6, :cond_25

    cmp-long v6, v4, v24

    if-gez v6, :cond_25

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v6

    long-to-int v4, v4

    .line 70
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzajp;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajp;

    move-result-object v4

    goto :goto_1a

    :cond_25
    move-object v4, v9

    :goto_1a
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    const-wide/32 v12, 0xf4240

    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v10, v22

    move-wide v14, v5

    .line 71
    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v29

    iget-object v15, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzi:[J

    if-nez v15, :cond_26

    .line 72
    invoke-static {v1, v12, v13, v5, v6}, Lcom/google/android/gms/internal/ads/zzex;->zzG([JJJ)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajs;

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v7

    move-object/from16 v25, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v2

    .line 73
    invoke-direct/range {v22 .. v30}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    return-object v3

    :cond_26
    array-length v8, v15

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2b

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    if-ne v8, v9, :cond_29

    .line 74
    array-length v14, v1

    const/4 v8, 0x2

    if-lt v14, v8, :cond_29

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    .line 133
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    check-cast v8, [J

    const/4 v9, 0x0

    aget-wide v16, v8, v9

    .line 76
    aget-wide v10, v15, v9

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    sget-object v19, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v31, v8

    move-wide v8, v10

    move-wide v10, v5

    move-object/from16 v21, v2

    move/from16 v27, v3

    move-wide v2, v12

    move-wide/from16 v12, v31

    move/from16 v28, v14

    move-object/from16 v14, v19

    .line 77
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    add-long v29, v16, v8

    add-int/lit8 v14, v28, -0x1

    const/4 v8, 0x4

    .line 78
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v10, v28, -0x4

    .line 79
    invoke-static {v10, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 80
    aget-wide v11, v1, v9

    cmp-long v9, v11, v16

    if-gtz v9, :cond_2a

    aget-wide v8, v1, v8

    cmp-long v8, v16, v8

    if-gez v8, :cond_2a

    aget-wide v8, v1, v10

    cmp-long v8, v8, v29

    if-gez v8, :cond_2a

    cmp-long v8, v29, v22

    if-gtz v8, :cond_2a

    sub-long v8, v16, v11

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    int-to-long v12, v10

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v10, v12

    move-wide/from16 v16, v12

    move-wide v12, v5

    .line 81
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v33

    sub-long v8, v22, v29

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v10, v16

    .line 82
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v33, v10

    if-nez v12, :cond_27

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2a

    const-wide/16 v10, 0x0

    goto :goto_1b

    :cond_27
    move-wide/from16 v10, v33

    :goto_1b
    cmp-long v12, v10, v24

    if-gtz v12, :cond_2a

    cmp-long v12, v8, v24

    if-lez v12, :cond_28

    goto :goto_1c

    :cond_28
    long-to-int v10, v10

    move-object/from16 v11, p2

    .line 123
    iput v10, v11, Lcom/google/android/gms/internal/ads/zzaej;->zza:I

    long-to-int v8, v8

    iput v8, v11, Lcom/google/android/gms/internal/ads/zzaej;->zzb:I

    .line 83
    invoke-static {v1, v2, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzex;->zzG([JJJ)V

    const/4 v2, 0x0

    .line 84
    aget-wide v27, v15, v2

    const-wide/32 v29, 0xf4240

    sget-object v33, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 85
    invoke-static/range {v27 .. v33}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v29

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajs;

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v7

    move-object/from16 v25, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v21

    .line 86
    invoke-direct/range {v22 .. v30}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    return-object v2

    :cond_29
    move-object/from16 v21, v2

    move/from16 v27, v3

    :cond_2a
    :goto_1c
    const/4 v2, 0x1

    const/4 v8, 0x1

    goto :goto_1d

    :cond_2b
    move-object/from16 v21, v2

    move/from16 v27, v3

    move v2, v9

    :goto_1d
    if-ne v8, v2, :cond_2d

    const/4 v2, 0x0

    .line 87
    aget-wide v9, v15, v2

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-nez v3, :cond_2d

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    .line 132
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    check-cast v3, [J

    aget-wide v15, v3, v2

    const/4 v2, 0x0

    .line 126
    :goto_1e
    array-length v3, v1

    if-ge v2, v3, :cond_2c

    .line 127
    aget-wide v8, v1, v2

    sub-long/2addr v8, v15

    const-wide/32 v10, 0xf4240

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v12, v5

    .line 128
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    .line 129
    aput-wide v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2c
    sub-long v8, v22, v15

    const-wide/32 v10, 0xf4240

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v12, v5

    .line 130
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v29

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajs;

    move-object/from16 v22, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v7

    move-object/from16 v25, v0

    move-object/from16 v27, v1

    move-object/from16 v28, v21

    .line 131
    invoke-direct/range {v22 .. v30}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    return-object v2

    :cond_2d
    iget v2, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_2e
    const/4 v3, 0x0

    :goto_1f
    iget-object v14, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    new-array v12, v8, [I

    new-array v13, v8, [I

    .line 124
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    move-object/from16 v16, v14

    check-cast v16, [J

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_20
    array-length v9, v15

    if-ge v10, v9, :cond_35

    move/from16 v19, v2

    move/from16 v22, v3

    .line 89
    aget-wide v2, v16, v10

    const-wide/16 v23, -0x1

    cmp-long v9, v2, v23

    if-eqz v9, :cond_34

    .line 90
    aget-wide v23, v15, v10

    move-object/from16 v25, v12

    move-object/from16 v28, v13

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    sget-object v29, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v30, v4

    move v4, v8

    move-wide/from16 v8, v23

    move-object/from16 v24, v0

    move/from16 v23, v10

    move v0, v11

    move-wide v10, v5

    move-object/from16 v31, v14

    move-object/from16 v14, v29

    .line 91
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    const/4 v10, 0x1

    .line 92
    invoke-static {v1, v2, v3, v10, v10}, Lcom/google/android/gms/internal/ads/zzex;->zzd([JJZZ)I

    move-result v11

    aput v11, v25, v23

    add-long/2addr v2, v8

    move/from16 v8, v22

    const/4 v14, 0x0

    .line 93
    invoke-static {v1, v2, v3, v8, v14}, Lcom/google/android/gms/internal/ads/zzex;->zza([JJZZ)I

    move-result v9

    aput v9, v28, v23

    .line 94
    aget v9, v25, v23

    .line 95
    :goto_21
    aget v11, v25, v23

    if-ltz v11, :cond_2f

    aget v12, v21, v11

    and-int/2addr v12, v10

    if-nez v12, :cond_2f

    add-int/lit8 v11, v11, -0x1

    .line 96
    aput v11, v25, v23

    const/4 v10, 0x1

    goto :goto_21

    :cond_2f
    if-gez v11, :cond_30

    .line 97
    aput v9, v25, v23

    .line 98
    :goto_22
    aget v11, v25, v23

    aget v9, v28, v23

    if-ge v11, v9, :cond_30

    aget v9, v21, v11

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-nez v9, :cond_30

    add-int/lit8 v11, v11, 0x1

    .line 99
    aput v11, v25, v23

    goto :goto_22

    :cond_30
    move/from16 v9, v19

    const/4 v10, 0x2

    if-ne v9, v10, :cond_31

    .line 100
    aget v12, v28, v23

    if-eq v11, v12, :cond_31

    .line 101
    :goto_23
    aget v11, v28, v23

    array-length v12, v1

    const/4 v13, -0x1

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_32

    add-int/lit8 v11, v11, 0x1

    aget-wide v18, v1, v11

    cmp-long v12, v18, v2

    if-gtz v12, :cond_32

    .line 102
    aput v11, v28, v23

    goto :goto_23

    :cond_31
    const/4 v13, -0x1

    .line 103
    :cond_32
    aget v2, v28, v23

    aget v3, v25, v23

    sub-int v11, v2, v3

    add-int/2addr v11, v0

    if-eq v4, v3, :cond_33

    const/4 v0, 0x1

    goto :goto_24

    :cond_33
    move v0, v14

    :goto_24
    or-int v0, v17, v0

    move/from16 v17, v0

    goto :goto_25

    :cond_34
    move-object/from16 v24, v0

    move-object/from16 v30, v4

    move v4, v8

    move/from16 v23, v10

    move v0, v11

    move-object/from16 v25, v12

    move-object/from16 v28, v13

    move-object/from16 v31, v14

    move/from16 v9, v19

    move/from16 v8, v22

    const/4 v10, 0x2

    const/4 v13, -0x1

    const/4 v14, 0x0

    move v2, v4

    :goto_25
    add-int/lit8 v0, v23, 0x1

    move v10, v0

    move v3, v8

    move-object/from16 v0, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v28

    move-object/from16 v4, v30

    move-object/from16 v14, v31

    move v8, v2

    move v2, v9

    goto/16 :goto_20

    :cond_35
    move-object/from16 v24, v0

    move-object/from16 v30, v4

    move v0, v11

    move-object/from16 v25, v12

    move-object/from16 v28, v13

    move-object/from16 v31, v14

    move/from16 v3, v27

    const/4 v14, 0x0

    if-eq v0, v3, :cond_36

    const/4 v2, 0x1

    goto :goto_26

    :cond_36
    move v2, v14

    :goto_26
    or-int v2, v17, v2

    if-eqz v2, :cond_37

    .line 104
    new-array v3, v0, [J

    goto :goto_27

    :cond_37
    move-object v3, v7

    :goto_27
    if-eqz v2, :cond_38

    .line 105
    new-array v4, v0, [I

    goto :goto_28

    :cond_38
    move-object/from16 v4, v24

    :goto_28
    const/4 v8, 0x1

    if-ne v8, v2, :cond_39

    move/from16 v26, v14

    :cond_39
    if-eqz v2, :cond_3a

    .line 106
    new-array v8, v0, [I

    move-object v12, v8

    goto :goto_29

    :cond_3a
    move-object/from16 v12, v21

    .line 107
    :goto_29
    new-array v0, v0, [J

    move v8, v14

    move v9, v8

    move v13, v9

    const-wide/16 v16, 0x0

    :goto_2a
    array-length v10, v15

    if-ge v13, v10, :cond_3f

    .line 108
    aget-wide v18, v31, v13

    .line 109
    aget v10, v25, v13

    .line 110
    aget v11, v28, v13

    if-eqz v2, :cond_3b

    sub-int v14, v11, v10

    .line 111
    invoke-static {v7, v10, v3, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 p1, v7

    move-object/from16 v7, v24

    .line 112
    invoke-static {v7, v10, v4, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    .line 113
    invoke-static {v3, v10, v12, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2b

    :cond_3b
    move-object/from16 v22, v3

    move-object/from16 p1, v7

    move-object/from16 v3, v21

    move-object/from16 v7, v24

    :goto_2b
    move/from16 v21, v8

    move/from16 v23, v9

    move v14, v10

    move/from16 v10, v26

    :goto_2c
    if-ge v14, v11, :cond_3e

    move/from16 p2, v10

    move-object/from16 v8, v30

    iget-wide v9, v8, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    sget-object v38, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v34, 0xf4240

    move-wide/from16 v32, v16

    move-wide/from16 v36, v9

    .line 114
    invoke-static/range {v32 .. v38}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v26

    .line 115
    aget-wide v9, v1, v14

    sub-long v9, v9, v18

    const-wide/32 v29, 0xf4240

    sget-object v24, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v32, v1

    move-object v1, v8

    move-wide v8, v9

    move-object/from16 v34, v3

    move/from16 v33, v11

    move/from16 v3, p2

    move-wide/from16 v10, v29

    move-object/from16 v30, v12

    move/from16 v29, v13

    move-wide v12, v5

    move/from16 v20, v14

    const/16 v35, 0x0

    move-object/from16 v14, v24

    .line 116
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gez v12, :cond_3c

    move/from16 v12, v35

    goto :goto_2d

    :cond_3c
    const/4 v12, 0x1

    :goto_2d
    const/4 v13, 0x1

    xor-int/2addr v12, v13

    or-int v23, v12, v23

    add-long v26, v26, v8

    .line 117
    aput-wide v26, v0, v21

    if-eqz v2, :cond_3d

    .line 118
    aget v8, v4, v21

    if-le v8, v3, :cond_3d

    .line 119
    aget v3, v7, v20

    :cond_3d
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v14, v20, 0x1

    move v10, v3

    move/from16 v13, v29

    move-object/from16 v12, v30

    move/from16 v11, v33

    move-object/from16 v3, v34

    move-object/from16 v30, v1

    move-object/from16 v1, v32

    goto :goto_2c

    :cond_3e
    move-object/from16 v32, v1

    move-object/from16 v34, v3

    move v3, v10

    move/from16 v29, v13

    move-object/from16 v1, v30

    const-wide/16 v10, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, v12

    .line 120
    aget-wide v8, v15, v29

    add-long v16, v16, v8

    add-int/lit8 v13, v29, 0x1

    move/from16 v26, v3

    move-object/from16 v24, v7

    move/from16 v8, v21

    move-object/from16 v3, v22

    move/from16 v9, v23

    move-object/from16 v21, v34

    move/from16 v14, v35

    move-object/from16 v7, p1

    move-object/from16 v30, v1

    move-object/from16 v1, v32

    goto/16 :goto_2a

    :cond_3f
    move-object/from16 v22, v3

    move-object/from16 v1, v30

    move-object/from16 v30, v12

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    sget-object v38, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v34, 0xf4240

    move-wide/from16 v32, v16

    move-wide/from16 v36, v2

    .line 121
    invoke-static/range {v32 .. v38}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v39

    if-eqz v9, :cond_40

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v2

    const/4 v3, 0x1

    .line 122
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Z)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzajp;->zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajp;

    move-result-object v1

    :cond_40
    move-object/from16 v33, v1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajs;

    move-object/from16 v32, v1

    move-object/from16 v34, v22

    move-object/from16 v35, v4

    move/from16 v36, v26

    move-object/from16 v37, v0

    move-object/from16 v38, v30

    .line 123
    invoke-direct/range {v32 .. v40}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajp;[J[II[J[IJ)V

    return-object v1

    .line 3
    :cond_41
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfve;)Ljava/util/List;
    .locals 68
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    .line 1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfc;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_98

    .line 3
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/google/android/gms/internal/ads/zzfc;

    .line 4
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const v2, 0x7472616b

    if-eq v1, v2, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v0, p7

    move-object v2, v12

    move/from16 v34, v14

    const/4 v6, 0x0

    goto/16 :goto_67

    :cond_0
    const v1, 0x6d766864

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfd;

    const v2, 0x6d646961

    .line 6
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v2

    .line 267
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    const v3, 0x68646c72    # 4.3148E24f

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v3

    .line 266
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zzi(Lcom/google/android/gms/internal/ads/zzen;)I

    move-result v3

    const v4, 0x736f756e

    const/16 v16, 0x5

    const/4 v8, -0x1

    const/4 v7, 0x1

    if-ne v3, v4, :cond_1

    move v6, v7

    goto :goto_2

    :cond_1
    const v4, 0x76696465

    if-ne v3, v4, :cond_2

    const/4 v6, 0x2

    goto :goto_2

    :cond_2
    const v4, 0x74657874

    if-eq v3, v4, :cond_5

    const v4, 0x7362746c

    if-eq v3, v4, :cond_5

    const v4, 0x73756274

    if-eq v3, v4, :cond_5

    const v4, 0x636c6370

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const v4, 0x6d657461

    if-ne v3, v4, :cond_4

    move/from16 v6, v16

    goto :goto_2

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v6, 0x3

    :goto_2
    if-ne v6, v8, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v35, v12

    move/from16 v34, v14

    move-object v1, v15

    :goto_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_66

    :cond_6
    const v3, 0x746b6864

    .line 8
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v3

    .line 265
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v4, 0x8

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v17

    if-nez v17, :cond_7

    move v5, v4

    goto :goto_4

    :cond_7
    const/16 v5, 0x10

    .line 11
    :goto_4
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v21

    const/4 v5, 0x4

    .line 13
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v20

    const/4 v9, 0x0

    :goto_5
    if-nez v17, :cond_8

    move v13, v5

    goto :goto_6

    :cond_8
    move v13, v4

    :goto_6
    const-wide/16 v27, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v9, v13, :cond_b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v13

    add-int v22, v20, v9

    .line 14
    aget-byte v13, v13, v22

    if-eq v13, v8, :cond_a

    if-nez v17, :cond_9

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v22

    goto :goto_7

    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v22

    :goto_7
    cmp-long v9, v22, v27

    if-nez v9, :cond_c

    goto :goto_8

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, p4

    goto :goto_5

    .line 15
    :cond_b
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    :goto_8
    move-wide/from16 v22, v10

    :cond_c
    const/16 v13, 0xa

    .line 17
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v24

    .line 19
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v9

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v13

    .line 22
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v5

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    const/high16 v8, 0x10000

    const/high16 v4, -0x10000

    if-nez v9, :cond_13

    if-ne v13, v8, :cond_12

    if-eq v5, v4, :cond_f

    if-ne v5, v8, :cond_e

    if-nez v3, :cond_d

    const/4 v5, 0x0

    goto :goto_9

    :cond_d
    move v5, v7

    :goto_9
    move v9, v8

    goto :goto_b

    :cond_e
    move v13, v8

    goto :goto_c

    :cond_f
    if-nez v3, :cond_10

    const/4 v9, 0x0

    goto :goto_a

    :cond_10
    move v9, v7

    :goto_a
    move/from16 v67, v9

    move v9, v5

    move/from16 v5, v67

    :goto_b
    if-eq v7, v5, :cond_11

    const/16 v3, 0x5a

    goto :goto_10

    :cond_11
    move v13, v8

    move v5, v9

    :cond_12
    :goto_c
    const/4 v9, 0x0

    :cond_13
    if-nez v9, :cond_19

    if-ne v13, v4, :cond_18

    if-eq v5, v8, :cond_16

    if-ne v5, v4, :cond_15

    if-nez v3, :cond_14

    const/4 v5, 0x0

    goto :goto_d

    :cond_14
    move v5, v7

    :goto_d
    move v9, v5

    move v5, v4

    goto :goto_e

    :cond_15
    move v13, v4

    goto :goto_f

    :cond_16
    if-nez v3, :cond_17

    const/4 v9, 0x0

    goto :goto_e

    :cond_17
    move v9, v7

    :goto_e
    if-eq v7, v9, :cond_15

    const/16 v3, 0x10e

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v9, 0x0

    :cond_19
    if-eq v9, v4, :cond_1a

    if-ne v9, v8, :cond_1b

    :cond_1a
    if-nez v13, :cond_1b

    if-nez v5, :cond_1b

    if-ne v3, v4, :cond_1b

    const/16 v3, 0xb4

    :goto_10
    move/from16 v25, v3

    goto :goto_11

    :cond_1b
    const/16 v25, 0x0

    :goto_11
    new-instance v13, Lcom/google/android/gms/internal/ads/zzaiv;

    move-object/from16 v20, v13

    invoke-direct/range {v20 .. v25}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(IJII)V

    cmp-long v3, p2, v10

    if-nez v3, :cond_1c

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzaiv;->zzd(Lcom/google/android/gms/internal/ads/zzaiv;)J

    move-result-wide v3

    move-wide/from16 v34, v3

    goto :goto_12

    :cond_1c
    move-wide/from16 v34, p2

    :goto_12
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaix;->zzd(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzfh;

    move-result-object v1

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzfh;->zzc:J

    cmp-long v1, v34, v10

    if-nez v1, :cond_1d

    move-wide/from16 v24, v10

    goto :goto_13

    :cond_1d
    const-wide/32 v36, 0xf4240

    .line 36
    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v38, v8

    .line 26
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    move-wide/from16 v24, v3

    :goto_13
    const v1, 0x6d696e66

    .line 27
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    const v3, 0x7374626c

    .line 28
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    const v3, 0x6d646864

    .line 30
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v4, 0x8

    .line 31
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v3

    if-nez v3, :cond_1e

    move v5, v4

    goto :goto_14

    :cond_1e
    const/16 v5, 0x10

    .line 33
    :goto_14
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 34
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v20

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v5

    const/4 v4, 0x0

    :goto_15
    if-nez v3, :cond_1f

    const/4 v10, 0x4

    goto :goto_16

    :cond_1f
    const/16 v10, 0x8

    :goto_16
    if-ge v4, v10, :cond_23

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v10

    add-int v11, v5, v4

    .line 35
    aget-byte v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_22

    if-nez v3, :cond_20

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v3

    goto :goto_17

    :cond_20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v3

    :goto_17
    move-wide/from16 v34, v3

    cmp-long v3, v34, v27

    if-nez v3, :cond_21

    goto :goto_18

    :cond_21
    const-wide/32 v36, 0xf4240

    .line 241
    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v38, v20

    .line 38
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    move-wide/from16 v37, v3

    goto :goto_19

    :cond_22
    add-int/lit8 v4, v4, 0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_15

    :cond_23
    const/4 v11, -0x1

    .line 36
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    :goto_18
    const-wide v37, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    :goto_19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v2

    shr-int/lit8 v3, v2, 0xa

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    shr-int/lit8 v4, v2, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/lit8 v4, v4, 0x60

    int-to-char v4, v4

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    const/4 v10, 0x3

    new-array v5, v10, [C

    const/16 v29, 0x0

    aput-char v3, v5, v29

    aput-char v4, v5, v7

    const/16 v18, 0x2

    aput-char v2, v5, v18

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v10, :cond_26

    .line 40
    aget-char v3, v5, v2

    const/16 v4, 0x61

    if-lt v3, v4, :cond_25

    const/16 v4, 0x7a

    if-le v3, v4, :cond_24

    goto :goto_1b

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_25
    :goto_1b
    const/16 v39, 0x0

    goto :goto_1c

    .line 241
    :cond_26
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v39, v2

    .line 40
    :goto_1c
    new-instance v29, Lcom/google/android/gms/internal/ads/zzaip;

    move-object/from16 v34, v29

    move-wide/from16 v35, v20

    invoke-direct/range {v34 .. v39}, Lcom/google/android/gms/internal/ads/zzaip;-><init>(JJLjava/lang/String;)V

    const v2, 0x73747364

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    if-eqz v1, :cond_97

    .line 256
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzaiv;->zzb(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v5

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzaiv;->zzc(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v4

    invoke-static/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/zzaip;->zzc(Lcom/google/android/gms/internal/ads/zzaip;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v1, 0xc

    .line 42
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v11

    new-instance v7, Lcom/google/android/gms/internal/ads/zzais;

    .line 44
    invoke-direct {v7, v11}, Lcom/google/android/gms/internal/ads/zzais;-><init>(I)V

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v11, :cond_8b

    move/from16 v21, v11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v11

    move/from16 v34, v14

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v14

    if-lez v14, :cond_27

    const/4 v1, 0x1

    goto :goto_1e

    :cond_27
    const/4 v1, 0x0

    .line 46
    :goto_1e
    const-string v10, "childAtomSize must be positive"

    invoke-static {v1, v10}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 47
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v1

    move/from16 v36, v4

    const v4, 0x61766331

    move/from16 v37, v6

    const v6, 0x656e6376

    if-eq v1, v4, :cond_33

    const v4, 0x61766333

    if-eq v1, v4, :cond_33

    if-eq v1, v6, :cond_33

    const v4, 0x6d317620

    if-eq v1, v4, :cond_33

    const v4, 0x6d703476

    if-eq v1, v4, :cond_33

    const v4, 0x68766331

    if-eq v1, v4, :cond_33

    const v4, 0x68657631

    if-eq v1, v4, :cond_33

    const v4, 0x73323633

    if-eq v1, v4, :cond_33

    const v4, 0x48323633

    if-eq v1, v4, :cond_33

    const v4, 0x68323633

    if-eq v1, v4, :cond_33

    const v4, 0x76703038

    if-eq v1, v4, :cond_33

    const v4, 0x76703039

    if-eq v1, v4, :cond_33

    const v4, 0x61763031

    if-eq v1, v4, :cond_33

    const v4, 0x64766176

    if-eq v1, v4, :cond_33

    const v4, 0x64766131

    if-eq v1, v4, :cond_33

    const v4, 0x64766865

    if-eq v1, v4, :cond_33

    const v4, 0x64766831

    if-eq v1, v4, :cond_33

    const v4, 0x61707631

    if-ne v1, v4, :cond_28

    goto/16 :goto_27

    :cond_28
    const v4, 0x6d703461

    if-eq v1, v4, :cond_32

    const v4, 0x656e6361

    if-eq v1, v4, :cond_32

    const v4, 0x61632d33

    if-eq v1, v4, :cond_32

    const v4, 0x65632d33

    if-eq v1, v4, :cond_32

    const v4, 0x61632d34

    if-eq v1, v4, :cond_32

    const v4, 0x6d6c7061

    if-eq v1, v4, :cond_32

    const v4, 0x64747363

    if-eq v1, v4, :cond_32

    const v4, 0x64747365

    if-eq v1, v4, :cond_32

    const v4, 0x64747368

    if-eq v1, v4, :cond_32

    const v4, 0x6474736c

    if-eq v1, v4, :cond_32

    const v4, 0x64747378

    if-eq v1, v4, :cond_32

    const v4, 0x73616d72

    if-eq v1, v4, :cond_32

    const v4, 0x73617762

    if-eq v1, v4, :cond_32

    const v4, 0x6c70636d

    if-eq v1, v4, :cond_32

    const v4, 0x736f7774

    if-eq v1, v4, :cond_32

    const v4, 0x74776f73

    if-eq v1, v4, :cond_32

    const v4, 0x2e6d7032

    if-eq v1, v4, :cond_32

    const v4, 0x2e6d7033

    if-eq v1, v4, :cond_32

    const v4, 0x6d686131

    if-eq v1, v4, :cond_32

    const v4, 0x6d686d31

    if-eq v1, v4, :cond_32

    const v4, 0x616c6163

    if-eq v1, v4, :cond_32

    const v4, 0x616c6177

    if-eq v1, v4, :cond_32

    const v4, 0x756c6177

    if-eq v1, v4, :cond_32

    const v4, 0x4f707573

    if-eq v1, v4, :cond_32

    const v4, 0x664c6143

    if-eq v1, v4, :cond_32

    const v4, 0x69616d66

    if-eq v1, v4, :cond_32

    const v4, 0x6970636d

    if-eq v1, v4, :cond_32

    const v4, 0x6670636d

    if-ne v1, v4, :cond_29

    move v4, v1

    move/from16 v20, v11

    goto/16 :goto_24

    :cond_29
    const v4, 0x54544d4c

    if-eq v1, v4, :cond_2d

    const v4, 0x74783367

    if-eq v1, v4, :cond_2d

    const v4, 0x77767474

    if-eq v1, v4, :cond_2d

    const v4, 0x73747070

    if-eq v1, v4, :cond_2d

    const v4, 0x63363038

    if-ne v1, v4, :cond_2a

    goto :goto_20

    :cond_2a
    const v4, 0x6d657474

    if-ne v1, v4, :cond_2b

    add-int/lit8 v1, v11, 0x10

    .line 223
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v1, 0x0

    .line 224
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    .line 225
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzx;

    .line 226
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto :goto_1f

    :cond_2b
    const v4, 0x63616d6d

    if-ne v1, v4, :cond_2c

    new-instance v1, Lcom/google/android/gms/internal/ads/zzx;

    .line 227
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 228
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    const-string v4, "application/x-camera-motion"

    .line 229
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 230
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    :cond_2c
    :goto_1f
    move/from16 v23, v0

    move-object v0, v3

    move v6, v5

    move-object v5, v7

    move-wide/from16 v39, v8

    move/from16 v53, v11

    move-object/from16 v35, v12

    move-object/from16 v20, v13

    move/from16 v55, v14

    move/from16 v4, v36

    move/from16 v36, v37

    const/4 v1, -0x1

    const/4 v3, 0x3

    const/16 v33, 0x4

    move-object v11, v2

    goto/16 :goto_26

    :cond_2d
    :goto_20
    add-int/lit8 v4, v11, 0x10

    .line 212
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const v4, 0x54544d4c

    const-wide v38, 0x7fffffffffffffffL

    if-ne v1, v4, :cond_2e

    const-string v1, "application/ttml+xml"

    :goto_21
    move/from16 v20, v11

    move-wide/from16 v10, v38

    :goto_22
    const/4 v4, 0x0

    goto :goto_23

    :cond_2e
    const v4, 0x74783367

    if-ne v1, v4, :cond_2f

    add-int/lit8 v1, v14, -0x10

    .line 213
    new-array v4, v1, [B

    const/4 v6, 0x0

    .line 214
    invoke-virtual {v2, v4, v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 215
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v1

    const-string v4, "application/x-quicktime-tx3g"

    move/from16 v20, v11

    move-wide/from16 v10, v38

    move-object/from16 v67, v4

    move-object v4, v1

    move-object/from16 v1, v67

    goto :goto_23

    :cond_2f
    const v4, 0x77767474

    if-ne v1, v4, :cond_30

    const-string v1, "application/x-mp4-vtt"

    goto :goto_21

    :cond_30
    const v4, 0x73747070

    if-ne v1, v4, :cond_31

    const-string v1, "application/ttml+xml"

    move/from16 v20, v11

    move-wide/from16 v10, v27

    goto :goto_22

    :cond_31
    const/4 v10, 0x1

    iput v10, v7, Lcom/google/android/gms/internal/ads/zzais;->zzd:I

    const-string v1, "application/x-mp4-cea-608"

    goto :goto_21

    .line 212
    :goto_23
    new-instance v6, Lcom/google/android/gms/internal/ads/zzx;

    .line 216
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 217
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 218
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 219
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 220
    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzal(J)Lcom/google/android/gms/internal/ads/zzx;

    .line 221
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 222
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    iput-object v1, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    move/from16 v23, v0

    move-object v11, v2

    move-object v0, v3

    move v6, v5

    move-object v5, v7

    move-wide/from16 v39, v8

    move-object/from16 v35, v12

    move/from16 v55, v14

    move/from16 v53, v20

    move/from16 v4, v36

    move/from16 v36, v37

    goto :goto_25

    :cond_32
    move/from16 v20, v11

    move v4, v1

    :goto_24
    const/16 v11, 0xc

    move-object v1, v2

    move-object v10, v2

    move v2, v4

    move-object v4, v3

    move/from16 v3, v20

    move-object/from16 v32, v4

    move/from16 v41, v36

    const/16 v6, 0x8

    move v4, v14

    move/from16 v19, v5

    const/4 v11, 0x0

    move/from16 v36, v37

    move-object/from16 v6, v32

    move-object/from16 v37, v7

    move/from16 v7, p6

    move-wide/from16 v39, v8

    const/4 v9, -0x1

    move-object/from16 v8, p4

    const/16 v11, 0x10

    move-object/from16 v9, v37

    move-object v11, v10

    move v10, v0

    .line 211
    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzaix;->zzq(Lcom/google/android/gms/internal/ads/zzen;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzais;I)V

    move/from16 v23, v0

    move-object/from16 v35, v12

    move/from16 v55, v14

    move/from16 v6, v19

    move/from16 v53, v20

    move-object/from16 v0, v32

    move-object/from16 v5, v37

    move/from16 v4, v41

    :goto_25
    const/4 v1, -0x1

    const/4 v3, 0x3

    const/16 v33, 0x4

    move-object/from16 v20, v13

    :goto_26
    move-object/from16 v37, v15

    goto/16 :goto_5e

    :cond_33
    :goto_27
    move v4, v1

    move-object/from16 v32, v3

    move/from16 v19, v5

    move-wide/from16 v39, v8

    move/from16 v20, v11

    move/from16 v41, v36

    move/from16 v36, v37

    move-object v11, v2

    move-object/from16 v37, v7

    add-int/lit8 v1, v20, 0x10

    .line 48
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/16 v1, 0x10

    .line 49
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 50
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v2

    .line 51
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v3

    const/16 v5, 0x32

    .line 52
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v5

    if-ne v4, v6, :cond_36

    move/from16 v7, v20

    .line 53
    invoke-static {v11, v7, v14}, Lcom/google/android/gms/internal/ads/zzaix;->zzj(Lcom/google/android/gms/internal/ads/zzen;II)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 54
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v8, p4

    if-nez v8, :cond_34

    move/from16 v20, v6

    move-object/from16 v1, v37

    const/4 v9, 0x0

    goto :goto_28

    .line 55
    :cond_34
    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzajq;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzajq;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v9

    move/from16 v20, v6

    move-object/from16 v1, v37

    .line 54
    :goto_28
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzais;->zza:[Lcom/google/android/gms/internal/ads/zzajq;

    .line 56
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzajq;

    aput-object v4, v6, v0

    goto :goto_29

    :cond_35
    move-object/from16 v8, p4

    move-object/from16 v1, v37

    move/from16 v20, v6

    move-object v9, v8

    .line 57
    :goto_29
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    move/from16 v4, v20

    goto :goto_2a

    :cond_36
    move-object/from16 v8, p4

    move/from16 v7, v20

    move-object/from16 v1, v37

    move-object v9, v8

    :goto_2a
    const v6, 0x6d317620

    if-ne v4, v6, :cond_37

    const-string v6, "video/mpeg"

    move-object/from16 v67, v6

    move v6, v4

    move-object/from16 v4, v67

    goto :goto_2b

    :cond_37
    const v6, 0x48323633

    if-ne v4, v6, :cond_38

    .line 180
    const-string v4, "video/3gpp"

    goto :goto_2b

    :cond_38
    move v6, v4

    const/4 v4, 0x0

    :goto_2b
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v23, v0

    move/from16 v49, v2

    move/from16 v48, v3

    move/from16 v52, v6

    move-object/from16 v38, v9

    move-object/from16 v35, v12

    move-object/from16 v37, v15

    move/from16 v51, v20

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v15, -0x1

    const/16 v22, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v42, 0x0

    const/16 v43, -0x1

    const/16 v44, -0x1

    const/16 v45, 0x0

    const/16 v46, -0x1

    const/16 v47, -0x1

    const/16 v50, 0x0

    move v12, v5

    move-object/from16 v20, v13

    const/16 v5, 0x8

    const/4 v13, -0x1

    :goto_2c
    sub-int v6, v12, v7

    if-ge v6, v14, :cond_86

    .line 58
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v6

    .line 59
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v53

    if-nez v53, :cond_3a

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v53

    move/from16 v54, v12

    sub-int v12, v53, v7

    if-ne v12, v14, :cond_39

    goto/16 :goto_5b

    :cond_39
    const/4 v12, 0x0

    goto :goto_2d

    :cond_3a
    move/from16 v54, v12

    move/from16 v12, v53

    :goto_2d
    if-lez v12, :cond_3b

    move/from16 v53, v7

    const/4 v7, 0x1

    goto :goto_2e

    :cond_3b
    move/from16 v53, v7

    const/4 v7, 0x0

    .line 60
    :goto_2e
    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 61
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    move/from16 v55, v14

    const v14, 0x61766343

    if-ne v7, v14, :cond_3e

    add-int/lit8 v6, v6, 0x8

    if-nez v4, :cond_3c

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto :goto_2f

    :cond_3c
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 62
    :goto_2f
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 63
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 64
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzacz;->zza(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzacz;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzacz;->zza:Ljava/util/List;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzais;->zzc:I

    if-nez v42, :cond_3d

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzk:F

    move/from16 v51, v3

    const/4 v7, 0x0

    goto :goto_30

    :cond_3d
    const/4 v7, 0x1

    :goto_30
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzl:Ljava/lang/String;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzj:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzg:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzh:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzi:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzacz;->zze:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:I

    const-string v15, "video/avc"

    move-object/from16 v56, v1

    move-object/from16 v50, v3

    move/from16 v43, v4

    move/from16 v60, v6

    move/from16 v42, v7

    move-object/from16 v59, v10

    move-object v4, v15

    const/4 v1, -0x1

    const/4 v3, 0x3

    const/16 v33, 0x4

    move v15, v5

    move v5, v14

    move/from16 v67, v8

    move v8, v0

    move-object v0, v2

    move/from16 v2, v67

    goto/16 :goto_5a

    :cond_3e
    const v14, 0x68766343

    if-ne v7, v14, :cond_42

    add-int/lit8 v6, v6, 0x8

    if-nez v4, :cond_3f

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto :goto_31

    :cond_3f
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 65
    :goto_31
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 66
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 67
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaek;->zza(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzaek;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zza:Ljava/util/List;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzb:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzais;->zzc:I

    if-nez v42, :cond_40

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzl:F

    move/from16 v51, v3

    const/4 v7, 0x0

    goto :goto_32

    :cond_40
    const/4 v7, 0x1

    :goto_32
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzm:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzc:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzn:Ljava/lang/String;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzk:I

    const/4 v14, -0x1

    if-eq v6, v14, :cond_41

    move v13, v6

    :cond_41
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzd:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaek;->zze:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzh:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzi:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    move-object/from16 v43, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzf:I

    move/from16 v42, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaek;->zzo:Lcom/google/android/gms/internal/ads/zzfs;

    const-string v44, "video/hevc"

    move-object/from16 v56, v1

    move-object/from16 v50, v5

    move/from16 v47, v6

    move/from16 v46, v8

    move-object/from16 v59, v10

    move/from16 v60, v15

    move/from16 v5, v42

    const/4 v1, -0x1

    const/16 v33, 0x4

    move v8, v2

    move/from16 v42, v7

    move v15, v9

    move v2, v14

    move-object v9, v0

    move-object/from16 v0, v43

    move/from16 v43, v3

    const/4 v3, 0x3

    move-object/from16 v67, v44

    move/from16 v44, v4

    move-object/from16 v4, v67

    goto/16 :goto_5a

    :cond_42
    const v14, 0x6c687643

    if-ne v7, v14, :cond_4f

    add-int/lit8 v6, v6, 0x8

    const-string v7, "video/hevc"

    .line 68
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "lhvC must follow hvcC atom"

    .line 69
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    if-eqz v9, :cond_44

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzfs;->zza:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 70
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfyq;->size()I

    move-result v4

    const/4 v14, 0x2

    if-lt v4, v14, :cond_43

    const/4 v7, 0x1

    goto :goto_33

    :cond_43
    const/4 v7, 0x0

    goto :goto_33

    :cond_44
    const/4 v14, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_33
    const-string v4, "must have at least two layers"

    .line 71
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 72
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 261
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    move-object v4, v9

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfs;

    invoke-static {v11, v9}, Lcom/google/android/gms/internal/ads/zzaek;->zzb(Lcom/google/android/gms/internal/ads/zzen;Lcom/google/android/gms/internal/ads/zzfs;)Lcom/google/android/gms/internal/ads/zzaek;

    move-result-object v4

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzais;->zzc:I

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzaek;->zzb:I

    if-ne v6, v7, :cond_45

    const/4 v7, 0x1

    goto :goto_34

    :cond_45
    const/4 v7, 0x0

    :goto_34
    const-string v6, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    .line 74
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzaek;->zzh:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_47

    if-ne v15, v6, :cond_46

    const/4 v6, 0x1

    goto :goto_35

    :cond_46
    const/4 v6, 0x0

    :goto_35
    const-string v14, "colorSpace must be the same for both views"

    .line 75
    invoke-static {v6, v14}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    :cond_47
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzaek;->zzi:I

    if-eq v6, v7, :cond_49

    if-ne v3, v6, :cond_48

    const/4 v6, 0x1

    goto :goto_36

    :cond_48
    const/4 v6, 0x0

    :goto_36
    const-string v14, "colorRange must be the same for both views"

    .line 76
    invoke-static {v6, v14}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    :cond_49
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzaek;->zzj:I

    if-eq v6, v7, :cond_4b

    if-ne v2, v6, :cond_4a

    const/4 v7, 0x1

    goto :goto_37

    :cond_4a
    const/4 v7, 0x0

    :goto_37
    const-string v6, "colorTransfer must be the same for both views"

    .line 77
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    :cond_4b
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzaek;->zzf:I

    if-ne v5, v6, :cond_4c

    const/4 v7, 0x1

    goto :goto_38

    :cond_4c
    const/4 v7, 0x0

    :goto_38
    const-string v6, "bitdepthLuma must be the same for both views"

    .line 78
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzaek;->zzg:I

    if-ne v8, v6, :cond_4d

    const/4 v7, 0x1

    goto :goto_39

    :cond_4d
    const/4 v7, 0x0

    :goto_39
    const-string v6, "bitdepthChroma must be the same for both views"

    .line 79
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    if-eqz v0, :cond_4e

    .line 80
    sget v6, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 81
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 82
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyn;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzaek;->zza:Ljava/util/List;

    .line 83
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 84
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    goto :goto_3a

    :cond_4e
    const-string v0, "initializationData must be already set from hvcC atom"

    const/4 v6, 0x0

    .line 85
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 84
    :goto_3a
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaek;->zzn:Ljava/lang/String;

    const-string v6, "video/mv-hevc"

    move-object/from16 v56, v1

    move/from16 v60, v3

    move-object/from16 v50, v4

    move-object v4, v6

    move-object/from16 v59, v10

    goto/16 :goto_45

    :cond_4f
    const v14, 0x76657875

    if-ne v7, v14, :cond_5f

    add-int/lit8 v7, v6, 0x8

    .line 86
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v7

    move-object/from16 v56, v1

    move v14, v7

    const/4 v7, 0x0

    :goto_3b
    sub-int v1, v14, v6

    if-ge v1, v12, :cond_58

    .line 87
    invoke-virtual {v11, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 88
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v1

    if-lez v1, :cond_50

    move/from16 v57, v8

    const/4 v8, 0x1

    goto :goto_3c

    :cond_50
    move/from16 v57, v8

    const/4 v8, 0x0

    .line 89
    :goto_3c
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 90
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    move/from16 v58, v5

    const v5, 0x65796573

    if-ne v8, v5, :cond_57

    add-int/lit8 v5, v14, 0x8

    .line 91
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v5

    :goto_3d
    sub-int v7, v5, v14

    if-ge v7, v1, :cond_56

    .line 92
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 93
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    if-lez v7, :cond_51

    const/4 v8, 0x1

    goto :goto_3e

    :cond_51
    const/4 v8, 0x0

    .line 94
    :goto_3e
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 95
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    move-object/from16 v59, v10

    const v10, 0x73747269

    if-ne v8, v10, :cond_55

    const/4 v8, 0x4

    .line 96
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 97
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    and-int/lit8 v10, v5, 0x2

    const/4 v8, 0x2

    if-ne v10, v8, :cond_52

    const/4 v8, 0x1

    goto :goto_3f

    :cond_52
    const/4 v8, 0x0

    :goto_3f
    and-int/lit8 v5, v5, 0x8

    const/16 v10, 0x8

    if-ne v5, v10, :cond_53

    const/4 v5, 0x1

    goto :goto_40

    :cond_53
    const/4 v5, 0x0

    :goto_40
    const/4 v10, 0x1

    if-eq v10, v7, :cond_54

    const/4 v7, 0x0

    goto :goto_41

    :cond_54
    move v7, v10

    :goto_41
    new-instance v10, Lcom/google/android/gms/internal/ads/zzaio;

    move/from16 v60, v3

    new-instance v3, Lcom/google/android/gms/internal/ads/zzair;

    .line 98
    invoke-direct {v3, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzair;-><init>(ZZZ)V

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzaio;-><init>(Lcom/google/android/gms/internal/ads/zzair;)V

    move-object v7, v10

    goto :goto_42

    :cond_55
    move/from16 v60, v3

    add-int/2addr v5, v7

    move-object/from16 v10, v59

    goto :goto_3d

    :cond_56
    move/from16 v60, v3

    move-object/from16 v59, v10

    const/4 v7, 0x0

    goto :goto_42

    :cond_57
    move/from16 v60, v3

    move-object/from16 v59, v10

    :goto_42
    add-int/2addr v14, v1

    move/from16 v8, v57

    move/from16 v5, v58

    move-object/from16 v10, v59

    move/from16 v3, v60

    goto/16 :goto_3b

    :cond_58
    move/from16 v60, v3

    move/from16 v58, v5

    move/from16 v57, v8

    move-object/from16 v59, v10

    if-nez v7, :cond_59

    const/4 v5, 0x0

    goto :goto_43

    .line 101
    :cond_59
    new-instance v5, Lcom/google/android/gms/internal/ads/zzaiw;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/zzaiw;-><init>(Lcom/google/android/gms/internal/ads/zzaio;)V

    :goto_43
    if-eqz v5, :cond_5e

    if-eqz v9, :cond_5b

    .line 98
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzfs;->zza:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfyq;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_5a

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaiw;->zzb()Z

    move-result v1

    const-string v3, "both eye views must be marked as available"

    .line 100
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaiw;->zza(Lcom/google/android/gms/internal/ads/zzaiw;)Lcom/google/android/gms/internal/ads/zzaio;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaio;->zza(Lcom/google/android/gms/internal/ads/zzaio;)Lcom/google/android/gms/internal/ads/zzair;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzair;->zza(Lcom/google/android/gms/internal/ads/zzair;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const-string v5, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 101
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    goto :goto_48

    :cond_5a
    const/4 v3, 0x1

    const/4 v1, -0x1

    goto :goto_44

    :cond_5b
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v9, 0x0

    :goto_44
    if-ne v13, v1, :cond_5d

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaiw;->zza(Lcom/google/android/gms/internal/ads/zzaiw;)Lcom/google/android/gms/internal/ads/zzaio;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaio;->zza(Lcom/google/android/gms/internal/ads/zzaio;)Lcom/google/android/gms/internal/ads/zzair;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzair;->zza(Lcom/google/android/gms/internal/ads/zzair;)Z

    move-result v1

    if-eq v3, v1, :cond_5c

    move/from16 v8, v57

    move/from16 v5, v58

    const/4 v1, -0x1

    const/4 v3, 0x3

    const/4 v13, 0x4

    goto :goto_47

    :cond_5c
    move/from16 v13, v16

    move/from16 v8, v57

    move/from16 v5, v58

    :goto_45
    const/4 v1, -0x1

    goto :goto_46

    :cond_5d
    move/from16 v8, v57

    move/from16 v5, v58

    :goto_46
    const/4 v3, 0x3

    :goto_47
    const/16 v33, 0x4

    goto/16 :goto_5a

    :cond_5e
    :goto_48
    move-object/from16 v61, v9

    move/from16 v66, v13

    const/4 v1, -0x1

    const/4 v3, 0x3

    const/16 v33, 0x4

    goto/16 :goto_59

    :cond_5f
    move-object/from16 v56, v1

    move/from16 v60, v3

    move/from16 v58, v5

    move/from16 v57, v8

    move-object/from16 v59, v10

    const v1, 0x64766343

    if-eq v7, v1, :cond_82

    const v1, 0x64767643

    if-eq v7, v1, :cond_82

    const v1, 0x64767743

    if-ne v7, v1, :cond_60

    goto/16 :goto_57

    :cond_60
    const v1, 0x76706343

    if-ne v7, v1, :cond_65

    add-int/lit8 v6, v6, 0xc

    if-nez v4, :cond_61

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_49

    :cond_61
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 112
    :goto_49
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 113
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 114
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v1

    int-to-byte v1, v1

    .line 115
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v2

    int-to-byte v2, v2

    .line 116
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v3

    shr-int/lit8 v4, v3, 0x4

    shr-int/lit8 v5, v3, 0x1

    const v6, 0x76703038

    move/from16 v8, v52

    if-ne v8, v6, :cond_62

    const-string v6, "video/x-vnd.on2.vp8"

    goto :goto_4a

    .line 122
    :cond_62
    const-string v6, "video/x-vnd.on2.vp9"

    .line 116
    :goto_4a
    const-string v7, "video/x-vnd.on2.vp9"

    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    and-int/lit8 v0, v5, 0x7

    int-to-byte v5, v4

    .line 118
    sget v7, Lcom/google/android/gms/internal/ads/zzdk;->zza:I

    int-to-byte v0, v0

    const/16 v10, 0xc

    new-array v7, v10, [B

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput-byte v14, v7, v15

    aput-byte v14, v7, v14

    const/4 v15, 0x2

    aput-byte v1, v7, v15

    const/4 v1, 0x3

    aput-byte v15, v7, v1

    const/16 v33, 0x4

    aput-byte v14, v7, v33

    aput-byte v2, v7, v16

    const/4 v2, 0x6

    aput-byte v1, v7, v2

    const/4 v2, 0x7

    aput-byte v14, v7, v2

    const/16 v2, 0x8

    aput-byte v5, v7, v2

    const/16 v2, 0x9

    aput-byte v33, v7, v2

    const/16 v5, 0xa

    aput-byte v14, v7, v5

    const/16 v2, 0xb

    aput-byte v0, v7, v2

    .line 119
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    goto :goto_4b

    :cond_63
    const/4 v1, 0x3

    const/16 v5, 0xa

    const/16 v10, 0xc

    const/4 v14, 0x1

    const/16 v33, 0x4

    :goto_4b
    and-int/lit8 v2, v3, 0x1

    .line 120
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v3

    .line 121
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v7

    .line 122
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v3

    if-eq v14, v2, :cond_64

    const/4 v2, 0x2

    goto :goto_4c

    :cond_64
    const/4 v2, 0x1

    :goto_4c
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v7

    move/from16 v60, v2

    move v15, v3

    move v5, v4

    move v2, v7

    move/from16 v52, v8

    move v3, v1

    move v8, v5

    move-object v4, v6

    goto :goto_4d

    :cond_65
    move/from16 v8, v52

    const/4 v1, 0x3

    const/16 v5, 0xa

    const/16 v10, 0xc

    const/16 v33, 0x4

    const v3, 0x61763143

    if-ne v7, v3, :cond_66

    add-int/lit8 v0, v12, -0x8

    add-int/lit8 v6, v6, 0x8

    .line 123
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 124
    invoke-virtual {v11, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 125
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    .line 126
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 127
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzaix;->zzl(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzk;->zzf:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzk;->zzg:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    const-string v14, "video/av01"

    move v5, v3

    move v15, v6

    move/from16 v60, v7

    move/from16 v52, v8

    move v3, v1

    move v8, v4

    move-object v4, v14

    :goto_4d
    const/4 v1, -0x1

    goto/16 :goto_5a

    :cond_66
    const v3, 0x636c6c69

    if-ne v7, v3, :cond_68

    if-nez v22, :cond_67

    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaix;->zzp()Ljava/nio/ByteBuffer;

    move-result-object v22

    :cond_67
    move-object/from16 v3, v22

    const/16 v6, 0x15

    .line 129
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v22, v3

    move/from16 v52, v8

    move/from16 v8, v57

    move/from16 v5, v58

    move v3, v1

    goto :goto_4d

    :cond_68
    const v3, 0x6d646376

    if-ne v7, v3, :cond_6a

    if-nez v22, :cond_69

    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaix;->zzp()Ljava/nio/ByteBuffer;

    move-result-object v22

    :cond_69
    move-object/from16 v3, v22

    .line 133
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v6

    .line 134
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v7

    .line 135
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v14

    .line 136
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v5

    .line 137
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v10

    .line 138
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v1

    move/from16 v52, v8

    .line 139
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v8

    move-object/from16 v61, v9

    .line 140
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v9

    .line 141
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v62

    .line 142
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v64

    move/from16 v66, v13

    const/4 v13, 0x1

    .line 143
    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 145
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 148
    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0x2710

    div-long v5, v62, v5

    long-to-int v1, v5

    int-to-short v1, v1

    .line 152
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v5, 0x2710

    div-long v5, v64, v5

    long-to-int v1, v5

    int-to-short v1, v1

    .line 153
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v22, v3

    :goto_4e
    move/from16 v8, v57

    move/from16 v5, v58

    move-object/from16 v9, v61

    move/from16 v13, v66

    const/4 v1, -0x1

    const/4 v3, 0x3

    goto/16 :goto_5a

    :cond_6a
    move/from16 v52, v8

    move-object/from16 v61, v9

    move/from16 v66, v13

    const v1, 0x64323633

    if-ne v7, v1, :cond_6c

    if-nez v4, :cond_6b

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_4f

    :cond_6b
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 154
    :goto_4f
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    const-string v3, "video/3gpp"

    :goto_50
    move-object v4, v3

    goto :goto_4e

    :cond_6c
    const/4 v1, 0x0

    const v3, 0x65736473

    if-ne v7, v3, :cond_6f

    if-nez v4, :cond_6d

    const/4 v7, 0x1

    goto :goto_51

    :cond_6d
    const/4 v7, 0x0

    .line 155
    :goto_51
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 156
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/ads/zzaix;->zzo(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzain;->zzc(Lcom/google/android/gms/internal/ads/zzain;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzain;->zzd(Lcom/google/android/gms/internal/ads/zzain;)[B

    move-result-object v4

    if-eqz v4, :cond_6e

    .line 157
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    :cond_6e
    move-object/from16 v31, v1

    goto :goto_50

    :cond_6f
    const v1, 0x62747274

    if-ne v7, v1, :cond_70

    .line 158
    invoke-static {v11, v6}, Lcom/google/android/gms/internal/ads/zzaix;->zzn(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzail;

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_4e

    :cond_70
    const v1, 0x70617370

    if-ne v7, v1, :cond_71

    add-int/lit8 v6, v6, 0x8

    .line 159
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 160
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v1

    .line 161
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v3

    int-to-float v1, v1

    int-to-float v3, v3

    div-float/2addr v1, v3

    move/from16 v51, v1

    move/from16 v8, v57

    move/from16 v5, v58

    move-object/from16 v9, v61

    move/from16 v13, v66

    const/4 v1, -0x1

    const/4 v3, 0x3

    const/16 v42, 0x1

    goto/16 :goto_5a

    :cond_71
    const v1, 0x73763364

    if-ne v7, v1, :cond_74

    add-int/lit8 v1, v6, 0x8

    :goto_52
    sub-int v3, v1, v6

    if-ge v3, v12, :cond_73

    .line 162
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 163
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    add-int/2addr v3, v1

    .line 164
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v5

    const v7, 0x70726f6a

    if-ne v5, v7, :cond_72

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v5

    .line 165
    invoke-static {v5, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object/from16 v45, v1

    goto/16 :goto_4e

    :cond_72
    move v1, v3

    goto :goto_52

    :cond_73
    move/from16 v8, v57

    move/from16 v5, v58

    move-object/from16 v9, v61

    move/from16 v13, v66

    const/4 v1, -0x1

    const/4 v3, 0x3

    const/16 v45, 0x0

    goto/16 :goto_5a

    :cond_74
    const v1, 0x73743364

    if-ne v7, v1, :cond_7a

    .line 166
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v1

    const/4 v3, 0x3

    .line 167
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    if-nez v1, :cond_79

    .line 168
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v1

    if-eqz v1, :cond_78

    const/4 v5, 0x1

    if-eq v1, v5, :cond_77

    const/4 v5, 0x2

    if-eq v1, v5, :cond_76

    if-eq v1, v3, :cond_75

    goto :goto_53

    :cond_75
    move v13, v3

    move/from16 v8, v57

    move/from16 v5, v58

    move-object/from16 v9, v61

    goto/16 :goto_4d

    :cond_76
    move/from16 v8, v57

    move/from16 v5, v58

    move-object/from16 v9, v61

    const/4 v1, -0x1

    const/4 v13, 0x2

    goto/16 :goto_5a

    :cond_77
    move/from16 v8, v57

    move/from16 v5, v58

    move-object/from16 v9, v61

    const/4 v1, -0x1

    const/4 v13, 0x1

    goto/16 :goto_5a

    :cond_78
    move/from16 v8, v57

    move/from16 v5, v58

    move-object/from16 v9, v61

    const/4 v1, -0x1

    const/4 v13, 0x0

    goto/16 :goto_5a

    :cond_79
    :goto_53
    const/4 v1, -0x1

    goto/16 :goto_59

    :cond_7a
    const/4 v3, 0x3

    const v1, 0x61707643

    if-ne v7, v1, :cond_7b

    add-int/lit8 v6, v6, 0xc

    add-int/lit8 v0, v12, -0xc

    .line 169
    new-array v1, v0, [B

    .line 170
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v2, 0x0

    .line 171
    invoke-virtual {v11, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 172
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    .line 173
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaix;->zzk(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzk;->zzf:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzk;->zzg:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzk;->zzb:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzk;->zzc:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzk;->zzd:I

    const-string v7, "video/apv"

    move v8, v4

    move v15, v5

    move/from16 v60, v6

    move-object v4, v7

    move-object/from16 v9, v61

    move/from16 v13, v66

    move v5, v2

    move v2, v1

    goto/16 :goto_4d

    :cond_7b
    const v1, 0x636f6c72

    if-ne v7, v1, :cond_79

    const/4 v1, -0x1

    if-ne v15, v1, :cond_85

    if-ne v2, v1, :cond_81

    .line 174
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v2

    const v5, 0x6e636c78

    if-eq v2, v5, :cond_7d

    const v5, 0x6e636c63

    if-ne v2, v5, :cond_7c

    goto :goto_54

    .line 179
    :cond_7c
    const-string v5, "Unsupported color type: "

    .line 180
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzff;->zze(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "BoxParsers"

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    move v15, v2

    goto/16 :goto_59

    .line 175
    :cond_7d
    :goto_54
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v2

    .line 176
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v5

    const/4 v6, 0x2

    .line 177
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    const/16 v6, 0x13

    if-ne v12, v6, :cond_7f

    .line 178
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_7e

    const/16 v12, 0x13

    const/4 v7, 0x1

    goto :goto_55

    :cond_7e
    const/16 v12, 0x13

    :cond_7f
    const/4 v7, 0x0

    .line 179
    :goto_55
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v2

    const/4 v6, 0x1

    if-eq v6, v7, :cond_80

    const/4 v9, 0x2

    goto :goto_56

    :cond_80
    const/4 v9, 0x1

    :goto_56
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v5

    move v15, v2

    move v2, v5

    move/from16 v60, v9

    goto :goto_59

    :cond_81
    move v15, v1

    goto :goto_59

    :cond_82
    :goto_57
    move-object/from16 v61, v9

    move/from16 v66, v13

    const/4 v1, -0x1

    const/4 v3, 0x3

    const/16 v33, 0x4

    add-int/lit8 v5, v12, -0x8

    add-int/lit8 v6, v6, 0x8

    .line 102
    new-array v7, v5, [B

    const/4 v8, 0x0

    .line 103
    invoke-virtual {v11, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    if-eqz v0, :cond_83

    .line 104
    sget v5, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 105
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 106
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 107
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 108
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v5

    goto :goto_58

    .line 111
    :cond_83
    const-string v0, "initializationData must already be set from hvcC or avcC atom"

    .line 109
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    const/4 v5, 0x0

    .line 110
    :goto_58
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 111
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzez;->zza(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzez;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzez;->zza:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    move-object/from16 v50, v0

    :cond_84
    move-object v0, v5

    :cond_85
    :goto_59
    move/from16 v8, v57

    move/from16 v5, v58

    move-object/from16 v9, v61

    move/from16 v13, v66

    :goto_5a
    add-int v12, v54, v12

    move/from16 v7, v53

    move/from16 v14, v55

    move-object/from16 v1, v56

    move-object/from16 v10, v59

    move/from16 v3, v60

    goto/16 :goto_2c

    :cond_86
    :goto_5b
    move-object/from16 v56, v1

    move/from16 v60, v3

    move/from16 v58, v5

    move/from16 v53, v7

    move/from16 v57, v8

    move/from16 v66, v13

    move/from16 v55, v14

    const/4 v1, -0x1

    const/4 v3, 0x3

    const/16 v33, 0x4

    if-nez v4, :cond_87

    move/from16 v6, v19

    move-object/from16 v0, v32

    move/from16 v4, v41

    move-object/from16 v5, v56

    goto/16 :goto_5e

    .line 231
    :cond_87
    new-instance v5, Lcom/google/android/gms/internal/ads/zzx;

    .line 181
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    move/from16 v6, v19

    .line 182
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 183
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v4, v50

    .line 184
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v49

    .line 185
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzam(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v48

    .line 186
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzQ(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v47

    .line 187
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzK(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v46

    .line 188
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzJ(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v51

    .line 189
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzad(F)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v4, v41

    .line 190
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzag(I)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v7, v45

    .line 191
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzae([B)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v13, v66

    .line 192
    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzx;->zzak(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 193
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v0, v43

    .line 194
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v0, v44

    .line 195
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzZ(I)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v8, v38

    .line 196
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzL(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v0, v32

    .line 197
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    .line 198
    invoke-virtual {v7, v15}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v8, v60

    .line 199
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 200
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    if-eqz v22, :cond_88

    .line 201
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto :goto_5c

    :cond_88
    const/4 v2, 0x0

    :goto_5c
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzi;->zze([B)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v2, v58

    .line 202
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    move/from16 v8, v57

    .line 203
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 204
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v2

    .line 205
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzF(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzx;

    if-eqz v30, :cond_89

    invoke-static/range {v30 .. v30}, Lcom/google/android/gms/internal/ads/zzail;->zza(Lcom/google/android/gms/internal/ads/zzail;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v2

    .line 206
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v30 .. v30}, Lcom/google/android/gms/internal/ads/zzail;->zzb(Lcom/google/android/gms/internal/ads/zzail;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v2

    .line 207
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    goto :goto_5d

    :cond_89
    if-eqz v31, :cond_8a

    .line 210
    invoke-static/range {v31 .. v31}, Lcom/google/android/gms/internal/ads/zzain;->zza(Lcom/google/android/gms/internal/ads/zzain;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v2

    .line 208
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v31 .. v31}, Lcom/google/android/gms/internal/ads/zzain;->zzb(Lcom/google/android/gms/internal/ads/zzain;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v2

    .line 209
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 210
    :cond_8a
    :goto_5d
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    move-object/from16 v5, v56

    iput-object v2, v5, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    :goto_5e
    add-int v2, v53, v55

    .line 231
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    add-int/lit8 v2, v23, 0x1

    move v10, v3

    move-object v7, v5

    move v5, v6

    move-object/from16 v13, v20

    move/from16 v14, v34

    move-object/from16 v12, v35

    move/from16 v6, v36

    move-object/from16 v15, v37

    move-wide/from16 v8, v39

    const/16 v1, 0xc

    const/16 v18, 0x2

    move-object v3, v0

    move v0, v2

    move-object v2, v11

    move/from16 v11, v21

    goto/16 :goto_1d

    :cond_8b
    move/from16 v36, v6

    move-object v5, v7

    move-wide/from16 v39, v8

    move-object/from16 v35, v12

    move-object/from16 v20, v13

    move/from16 v34, v14

    move-object/from16 v37, v15

    if-nez p5, :cond_91

    const v0, 0x65647473

    move-object/from16 v1, v37

    .line 232
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v0

    if-eqz v0, :cond_92

    const v2, 0x656c7374

    .line 233
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v0

    if-nez v0, :cond_8c

    const/4 v0, 0x0

    goto :goto_62

    .line 245
    :cond_8c
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v2, 0x8

    .line 234
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 235
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v2

    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v3

    new-array v4, v3, [J

    new-array v6, v3, [J

    const/4 v7, 0x0

    :goto_5f
    if-ge v7, v3, :cond_90

    const/4 v8, 0x1

    if-ne v2, v8, :cond_8d

    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v9

    goto :goto_60

    :cond_8d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v9

    :goto_60
    aput-wide v9, v4, v7

    if-ne v2, v8, :cond_8e

    .line 238
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    move-result-wide v9

    goto :goto_61

    :cond_8e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v9

    int-to-long v9, v9

    :goto_61
    aput-wide v9, v6, v7

    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v9

    if-ne v9, v8, :cond_8f

    const/4 v8, 0x2

    .line 240
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    .line 239
    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 257
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_90
    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    :goto_62
    if-eqz v0, :cond_92

    .line 242
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 243
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v33, v0

    move-object/from16 v32, v2

    goto :goto_63

    :cond_91
    move-object/from16 v1, v37

    :cond_92
    const/16 v32, 0x0

    const/16 v33, 0x0

    :goto_63
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v0, :cond_93

    move-object/from16 v0, p7

    goto/16 :goto_3

    :cond_93
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzaiv;->zza(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v2

    if-eqz v2, :cond_95

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfb;

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzaiv;->zza(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    if-eqz v0, :cond_94

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/android/gms/internal/ads/zzau;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    .line 244
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v0

    goto :goto_64

    :cond_94
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 247
    new-instance v0, Lcom/google/android/gms/internal/ads/zzav;

    new-array v4, v4, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v2, v4, v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 245
    invoke-direct {v0, v7, v8, v4}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 246
    :goto_64
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaa(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 247
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    goto :goto_65

    :cond_95
    const/4 v6, 0x0

    :goto_65
    move-object/from16 v28, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajp;

    move-object/from16 v17, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzaiv;->zzb(Lcom/google/android/gms/internal/ads/zzaiv;)I

    move-result v18

    invoke-static/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/zzaip;->zzb(Lcom/google/android/gms/internal/ads/zzaip;)J

    move-result-wide v20

    invoke-static/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/zzaip;->zza(Lcom/google/android/gms/internal/ads/zzaip;)J

    move-result-wide v26

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzais;->zzd:I

    move/from16 v29, v2

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzais;->zza:[Lcom/google/android/gms/internal/ads/zzajq;

    move-object/from16 v30, v2

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzais;->zzc:I

    move/from16 v31, v2

    move/from16 v19, v36

    move-wide/from16 v22, v39

    invoke-direct/range {v17 .. v33}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzz;I[Lcom/google/android/gms/internal/ads/zzajq;I[J[J)V

    move-object v5, v0

    move-object/from16 v0, p7

    .line 248
    :goto_66
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzfve;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajp;

    if-eqz v2, :cond_96

    const v3, 0x6d646961

    .line 249
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    const v3, 0x6d696e66

    .line 250
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    const v3, 0x7374626c

    .line 252
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v1

    .line 258
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    move-object/from16 v3, p1

    .line 254
    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzaix;->zze(Lcom/google/android/gms/internal/ads/zzajp;Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;)Lcom/google/android/gms/internal/ads/zzajs;

    move-result-object v1

    move-object/from16 v2, v35

    .line 255
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_96
    move-object/from16 v3, p1

    move-object/from16 v2, v35

    :goto_67
    add-int/lit8 v14, v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move-object v12, v2

    goto/16 :goto_0

    .line 41
    :cond_97
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v1, 0x0

    .line 256
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_98
    move-object v2, v12

    return-object v2
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzen;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzen;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzen;)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result p0

    return p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzen;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v6

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v12

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 9
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 10
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 11
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v3

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    if-nez v3, :cond_9

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 24
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    .line 25
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 26
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v7

    new-array v8, v7, [B

    .line 28
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Lcom/google/android/gms/internal/ads/zzajq;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    .line 29
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzajq;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 30
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 31
    sget-object v5, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzajq;

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 5
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_2

    const/4 v8, 0x6

    .line 7
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v8

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    const/16 v9, 0xb

    .line 10
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    const/4 v9, 0x4

    .line 11
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 12
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v9

    add-int/2addr v9, v2

    .line 13
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 14
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 15
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    if-eqz v8, :cond_1

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v8

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v9

    .line 18
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v10

    .line 20
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    if-eq p0, v10, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :cond_0
    move v8, p0

    .line 21
    :goto_2
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result v8

    .line 22
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzk;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzem;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzem;-><init>([BI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzl(I)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v4

    const/4 v5, 0x6

    .line 5
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v5

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    if-eqz v5, :cond_1

    if-eq p0, v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    .line 10
    :goto_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 11
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    goto :goto_1

    :cond_1
    move v5, v9

    move v4, v10

    :cond_2
    if-gt v4, v10, :cond_4

    if-eq p0, v5, :cond_3

    move v8, v2

    .line 8
    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 9
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    :cond_4
    :goto_1
    const/16 v4, 0xd

    .line 12
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    const/4 v5, 0x4

    .line 14
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v6

    const-string v8, "BoxParsers"

    if-eq v6, p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported obu_type: "

    .line 15
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "Unsupported obu_extension_flag"

    .line 18
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 20
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v6

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    if-eqz v6, :cond_8

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v6

    const/16 v11, 0x7f

    if-gt v6, v11, :cond_7

    goto :goto_2

    .line 48
    :cond_7
    const-string p0, "Excessive obu_size"

    .line 65
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 23
    :cond_8
    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v6

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string p0, "Unsupported reduced_still_picture_header"

    .line 26
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 28
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v11

    if-eqz v11, :cond_a

    const-string p0, "Unsupported timing_info_present_flag"

    .line 29
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    .line 31
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string p0, "Unsupported initial_display_delay_present_flag"

    .line 32
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v8, 0x5

    .line 34
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v11

    move v12, v9

    :goto_3
    const/4 v13, 0x7

    if-gt v12, v11, :cond_d

    .line 35
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 36
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v14

    if-le v14, v13, :cond_c

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 38
    :cond_d
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v7

    .line 39
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v5

    add-int/2addr v7, p0

    .line 40
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    add-int/2addr v5, p0

    .line 41
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 43
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 44
    :cond_e
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 46
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 47
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_4

    .line 48
    :cond_10
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v7

    if-lez v7, :cond_11

    .line 49
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v7

    if-nez v7, :cond_11

    .line 50
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    :cond_11
    if-eqz v5, :cond_12

    .line 51
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 52
    :cond_12
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v3

    if-ne v6, v10, :cond_13

    if-eqz v3, :cond_14

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    goto :goto_5

    :cond_13
    if-ne v6, p0, :cond_14

    goto :goto_6

    .line 55
    :cond_14
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v3

    if-eqz v3, :cond_15

    move v9, p0

    .line 56
    :cond_15
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v3

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v5

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v2

    if-nez v9, :cond_18

    if-ne v3, p0, :cond_18

    if-ne v5, v4, :cond_17

    if-nez v2, :cond_16

    move v1, p0

    move v3, v1

    goto :goto_8

    :cond_16
    move v3, p0

    goto :goto_7

    :cond_17
    move v3, p0

    :cond_18
    move v4, v5

    .line 60
    :goto_7
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    move-result v1

    .line 61
    :goto_8
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzk;->zza(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    if-ne v1, p0, :cond_19

    goto :goto_9

    :cond_19
    move p0, v10

    .line 62
    :goto_9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzb(I)I

    move-result p0

    .line 63
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 64
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    return-object p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzen;)Lcom/google/android/gms/internal/ads/zzav;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzE()S

    move-result v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 8
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzav;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzau;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfg;

    .line 9
    invoke-direct {v4, v2, p0}, Lcom/google/android/gms/internal/ads/zzfg;-><init>(FF)V

    aput-object v4, v3, v1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzail;
    .locals 3

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide p0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzail;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzail;-><init>(JJ)V

    return-object v2
.end method

.method private static zzo(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzain;
    .locals 11

    add-int/lit8 p1, p1, 0xc

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzh(Lcom/google/android/gms/internal/ads/zzen;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzh(Lcom/google/android/gms/internal/ads/zzen;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzay;->zzd(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v3

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaix;->zzh(Lcom/google/android/gms/internal/ads/zzen;)I

    move-result p1

    .line 21
    new-array v5, p1, [B

    const/4 v6, 0x0

    .line 22
    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    const-wide/16 p0, 0x0

    cmp-long v6, v3, p0

    const-wide/16 v7, -0x1

    if-gtz v6, :cond_4

    move-wide v9, v7

    goto :goto_0

    :cond_4
    move-wide v9, v3

    :goto_0
    cmp-long p0, v0, p0

    if-lez p0, :cond_5

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v7

    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzain;

    move-object v1, p0

    move-object v3, v5

    move-wide v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzain;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    .line 15
    :cond_6
    :goto_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzain;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzain;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static zzp()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static zzq(Lcom/google/android/gms/internal/ads/zzen;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzais;I)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v2, 0x10

    .line 1
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v8, 0x6

    const/16 v9, 0x8

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v11

    .line 3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    const/4 v11, 0x0

    :goto_0
    const/16 v14, 0x20

    const/4 v15, 0x4

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/16 v13, 0x10

    if-eqz v11, :cond_a

    if-ne v11, v10, :cond_1

    goto :goto_2

    :cond_1
    if-ne v11, v12, :cond_54

    .line 11
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    .line 13
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v8, v10

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v10

    .line 15
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v11

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v18

    and-int/lit8 v19, v18, 0x1

    and-int/lit8 v18, v18, 0x2

    if-nez v19, :cond_8

    if-ne v11, v9, :cond_2

    const/4 v11, 0x3

    goto :goto_1

    :cond_2
    if-ne v11, v13, :cond_4

    if-eqz v18, :cond_3

    const/high16 v11, 0x10000000

    goto :goto_1

    :cond_3
    move v11, v12

    goto :goto_1

    :cond_4
    const/16 v13, 0x18

    if-ne v11, v13, :cond_6

    if-eqz v18, :cond_5

    const/high16 v11, 0x50000000

    goto :goto_1

    :cond_5
    const/16 v11, 0x15

    goto :goto_1

    :cond_6
    if-ne v11, v14, :cond_9

    if-eqz v18, :cond_7

    const/high16 v11, 0x60000000

    goto :goto_1

    :cond_7
    const/16 v11, 0x16

    goto :goto_1

    :cond_8
    if-ne v11, v14, :cond_9

    move v11, v15

    goto :goto_1

    :cond_9
    const/4 v11, -0x1

    .line 18
    :goto_1
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    move v9, v10

    const/4 v10, 0x0

    goto :goto_3

    .line 5
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v9

    .line 6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzn()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    .line 8
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v10

    const/4 v14, 0x1

    if-ne v11, v14, :cond_b

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    :cond_b
    const/4 v11, -0x1

    :goto_3
    const v13, 0x73616d72

    const v14, 0x73617762

    const v15, 0x69616d66

    if-ne v1, v15, :cond_c

    const/4 v8, -0x1

    const/4 v9, -0x1

    goto :goto_5

    :cond_c
    if-ne v1, v13, :cond_d

    const/16 v8, 0x1f40

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_d
    if-ne v1, v14, :cond_e

    const/16 v1, 0x3e80

    move v8, v1

    move v1, v14

    goto :goto_4

    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v12

    const v15, 0x656e6361

    if-ne v1, v15, :cond_11

    .line 19
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzaix;->zzj(Lcom/google/android/gms/internal/ads/zzen;II)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 20
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v6, :cond_f

    const/4 v6, 0x0

    goto :goto_6

    .line 21
    :cond_f
    iget-object v14, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/internal/ads/zzajq;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzajq;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzs;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v6

    .line 20
    :goto_6
    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzais;->zza:[Lcom/google/android/gms/internal/ads/zzajq;

    .line 22
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajq;

    aput-object v1, v14, p9

    :cond_10
    move v1, v15

    .line 23
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    :cond_11
    const v14, 0x61632d33

    const-string v15, "audio/mhm1"

    const-string v23, "audio/raw"

    if-ne v1, v14, :cond_12

    const-string v13, "audio/ac3"

    goto/16 :goto_a

    :cond_12
    const v14, 0x65632d33

    if-ne v1, v14, :cond_13

    .line 131
    const-string v13, "audio/eac3"

    goto/16 :goto_a

    :cond_13
    const v14, 0x61632d34

    if-ne v1, v14, :cond_14

    const-string v13, "audio/ac4"

    goto/16 :goto_a

    :cond_14
    const v14, 0x64747363

    if-ne v1, v14, :cond_15

    const-string v13, "audio/vnd.dts"

    goto/16 :goto_a

    :cond_15
    const v14, 0x64747368

    if-eq v1, v14, :cond_2a

    const v14, 0x6474736c

    if-ne v1, v14, :cond_16

    goto/16 :goto_9

    :cond_16
    const v14, 0x64747365

    if-ne v1, v14, :cond_17

    const-string v13, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_a

    :cond_17
    const v14, 0x64747378

    if-ne v1, v14, :cond_18

    const-string v13, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_a

    :cond_18
    if-ne v1, v13, :cond_19

    const-string v13, "audio/3gpp"

    goto/16 :goto_a

    :cond_19
    const v13, 0x73617762

    if-ne v1, v13, :cond_1a

    const-string v13, "audio/amr-wb"

    goto/16 :goto_a

    :cond_1a
    const v13, 0x736f7774

    if-ne v1, v13, :cond_1b

    :goto_7
    move-object/from16 v13, v23

    const/4 v11, 0x2

    goto/16 :goto_a

    :cond_1b
    const v13, 0x74776f73

    if-ne v1, v13, :cond_1c

    move-object/from16 v13, v23

    const/high16 v11, 0x10000000

    goto/16 :goto_a

    :cond_1c
    const v13, 0x6c70636d

    if-ne v1, v13, :cond_1e

    const/4 v13, -0x1

    if-ne v11, v13, :cond_1d

    goto :goto_7

    :cond_1d
    move-object/from16 v13, v23

    goto/16 :goto_a

    :cond_1e
    const v13, 0x2e6d7032

    if-eq v1, v13, :cond_29

    const v13, 0x2e6d7033

    if-ne v1, v13, :cond_1f

    goto :goto_8

    :cond_1f
    const v13, 0x6d686131

    if-ne v1, v13, :cond_20

    const-string v13, "audio/mha1"

    goto :goto_a

    :cond_20
    const v13, 0x6d686d31

    if-ne v1, v13, :cond_21

    move-object v13, v15

    goto :goto_a

    :cond_21
    const v13, 0x616c6163

    if-ne v1, v13, :cond_22

    const-string v13, "audio/alac"

    goto :goto_a

    :cond_22
    const v13, 0x616c6177

    if-ne v1, v13, :cond_23

    const-string v13, "audio/g711-alaw"

    goto :goto_a

    :cond_23
    const v13, 0x756c6177

    if-ne v1, v13, :cond_24

    const-string v13, "audio/g711-mlaw"

    goto :goto_a

    :cond_24
    const v13, 0x4f707573

    if-ne v1, v13, :cond_25

    const-string v13, "audio/opus"

    goto :goto_a

    :cond_25
    const v13, 0x664c6143

    if-ne v1, v13, :cond_26

    const-string v13, "audio/flac"

    goto :goto_a

    :cond_26
    const v13, 0x6d6c7061

    if-ne v1, v13, :cond_27

    const-string v13, "audio/true-hd"

    goto :goto_a

    :cond_27
    const v13, 0x69616d66

    if-ne v1, v13, :cond_28

    const-string v1, "audio/iamf"

    move/from16 v28, v13

    move-object v13, v1

    move/from16 v1, v28

    goto :goto_a

    :cond_28
    const/4 v13, 0x0

    goto :goto_a

    :cond_29
    :goto_8
    const-string v13, "audio/mpeg"

    goto :goto_a

    :cond_2a
    :goto_9
    const-string v13, "audio/vnd.dts.hd"

    :goto_a
    move/from16 v16, v11

    const/16 p7, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_b
    sub-int v14, v12, v2

    if-ge v14, v3, :cond_51

    .line 24
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v14

    if-lez v14, :cond_2b

    const/4 v2, 0x1

    goto :goto_c

    :cond_2b
    const/4 v2, 0x0

    .line 26
    :goto_c
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v2

    move/from16 p9, v8

    const v8, 0x6d686143

    if-ne v2, v8, :cond_2e

    add-int/lit8 v2, v12, 0x8

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v3

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 32
    invoke-static {v13, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 34
    :cond_2c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 35
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v3

    new-array v8, v3, [B

    move-object/from16 p7, v2

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    if-nez v11, :cond_2d

    .line 37
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v11

    move-object/from16 v0, p7

    move/from16 v8, p9

    move/from16 v24, v1

    move v1, v2

    move-object/from16 v25, v15

    goto :goto_10

    .line 38
    :cond_2d
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ads/zzfyq;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v11

    goto :goto_e

    :cond_2e
    const v8, 0x6d686150

    if-ne v2, v8, :cond_31

    add-int/lit8 v2, v12, 0x8

    .line 39
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v2

    if-lez v2, :cond_30

    new-array v3, v2, [B

    const/4 v8, 0x0

    .line 41
    invoke-virtual {v0, v3, v8, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    if-nez v11, :cond_2f

    .line 42
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v11

    move-object/from16 v0, p7

    move/from16 v24, v1

    move v1, v8

    move-object/from16 v25, v15

    const/16 v17, 0x3

    move/from16 v8, p9

    goto/16 :goto_25

    .line 43
    :cond_2f
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfyq;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v11

    :goto_e
    move-object/from16 v0, p7

    move/from16 v8, p9

    move/from16 v24, v1

    move-object/from16 v25, v15

    :goto_f
    const/4 v1, 0x0

    :goto_10
    const/16 v17, 0x3

    goto/16 :goto_25

    :cond_30
    move/from16 v8, p9

    move/from16 v24, v1

    move-object/from16 v25, v15

    :goto_11
    const/4 v1, 0x0

    const/16 v17, 0x3

    goto/16 :goto_24

    :cond_31
    const v8, 0x65736473

    if-eq v2, v8, :cond_49

    if-eqz p6, :cond_36

    const v8, 0x77617665

    if-ne v2, v8, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v2

    if-lt v2, v12, :cond_32

    move/from16 v25, v2

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto :goto_12

    :cond_32
    move/from16 v25, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 94
    :goto_12
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    move/from16 v2, v25

    :goto_13
    sub-int v8, v2, v12

    if-ge v8, v14, :cond_35

    .line 95
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    if-lez v8, :cond_33

    move-object/from16 v25, v15

    const/4 v15, 0x1

    goto :goto_14

    :cond_33
    move-object/from16 v25, v15

    const/4 v15, 0x0

    .line 97
    :goto_14
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzadz;->zzc(ZLjava/lang/String;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v15

    move-object/from16 v26, v3

    const v3, 0x65736473

    if-eq v15, v3, :cond_34

    add-int/2addr v2, v8

    move-object/from16 v15, v25

    move-object/from16 v3, v26

    goto :goto_13

    :cond_34
    move/from16 v8, p9

    goto :goto_15

    :cond_35
    move-object/from16 v25, v15

    move/from16 v8, p9

    const/4 v2, -0x1

    :goto_15
    const/4 v3, -0x1

    const/4 v15, 0x2

    const/16 v17, 0x3

    goto/16 :goto_1d

    :cond_36
    move-object/from16 v25, v15

    const v3, 0x62747274

    if-ne v2, v3, :cond_37

    .line 44
    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/zzaix;->zzn(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzail;

    move-result-object v22

    :goto_16
    move-object/from16 v0, p7

    move/from16 v8, p9

    move/from16 v24, v1

    goto :goto_f

    :cond_37
    const v3, 0x64616333

    if-ne v2, v3, :cond_38

    add-int/lit8 v2, v12, 0x8

    .line 45
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 46
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacu;->zzc(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    :goto_17
    move/from16 v8, p9

    move/from16 v24, v1

    goto/16 :goto_11

    :cond_38
    const v3, 0x64656333

    if-ne v2, v3, :cond_39

    add-int/lit8 v2, v12, 0x8

    .line 47
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 48
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacu;->zzd(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto :goto_17

    :cond_39
    const v3, 0x64616334

    if-ne v2, v3, :cond_3a

    add-int/lit8 v2, v12, 0x8

    .line 49
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 50
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzacy;->zza(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto :goto_17

    :cond_3a
    const v3, 0x646d6c70

    if-ne v2, v3, :cond_3c

    if-lez v10, :cond_3b

    move-object/from16 v0, p7

    move/from16 v24, v1

    move v8, v10

    const/4 v1, 0x0

    const/4 v9, 0x2

    goto/16 :goto_10

    .line 18
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_3c
    const/4 v3, 0x0

    const v8, 0x64647473

    if-eq v2, v8, :cond_48

    const v8, 0x75647473

    if-ne v2, v8, :cond_3d

    goto/16 :goto_1c

    :cond_3d
    const v8, 0x644f7073

    if-ne v2, v8, :cond_3e

    add-int/lit8 v2, v12, 0x8

    add-int/lit8 v8, v14, -0x8

    .line 58
    sget-object v11, Lcom/google/android/gms/internal/ads/zzaix;->zzb:[B

    .line 59
    array-length v15, v11

    add-int v3, v15, v8

    invoke-static {v11, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 60
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 61
    invoke-virtual {v0, v3, v15, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 62
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaeq;->zze([B)Ljava/util/List;

    move-result-object v11

    goto/16 :goto_16

    :cond_3e
    const v3, 0x64664c61

    if-ne v2, v3, :cond_3f

    add-int/lit8 v2, v12, 0xc

    add-int/lit8 v3, v14, -0xc

    add-int/lit8 v8, v14, -0x8

    .line 63
    new-array v8, v8, [B

    const/16 v11, 0x66

    const/4 v15, 0x0

    .line 64
    aput-byte v11, v8, v15

    const/16 v11, 0x4c

    const/4 v15, 0x1

    .line 65
    aput-byte v11, v8, v15

    const/16 v11, 0x61

    const/4 v15, 0x2

    .line 66
    aput-byte v11, v8, v15

    const/16 v11, 0x43

    const/16 v17, 0x3

    .line 67
    aput-byte v11, v8, v17

    .line 68
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v2, 0x4

    .line 69
    invoke-virtual {v0, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 70
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v11

    :goto_18
    move-object/from16 v0, p7

    move/from16 v8, p9

    move/from16 v24, v1

    :goto_19
    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_3f
    const/4 v3, 0x4

    const/4 v15, 0x2

    const/16 v17, 0x3

    const v8, 0x616c6163

    if-ne v2, v8, :cond_40

    add-int/lit8 v2, v12, 0xc

    add-int/lit8 v8, v14, -0xc

    .line 71
    new-array v9, v8, [B

    .line 72
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v9, v2, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 74
    sget v2, Lcom/google/android/gms/internal/ads/zzdk;->zza:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    .line 75
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    const/16 v8, 0x9

    .line 76
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v8

    const/16 v11, 0x14

    .line 78
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v2

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 81
    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 82
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 83
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v11

    move-object/from16 v0, p7

    move/from16 v24, v1

    move v9, v2

    goto :goto_19

    :cond_40
    const v8, 0x69616362

    if-ne v2, v8, :cond_41

    add-int/lit8 v2, v12, 0x9

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzv()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/google/android/gms/internal/ads/zzgbt;->zzb(J)I

    move-result v2

    .line 86
    new-array v8, v2, [B

    const/4 v11, 0x0

    .line 87
    invoke-virtual {v0, v8, v11, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 88
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v11

    goto :goto_18

    :cond_41
    const v8, 0x70636d43

    if-ne v2, v8, :cond_47

    add-int/lit8 v2, v12, 0xc

    .line 89
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v2

    const/4 v8, 0x1

    and-int/2addr v2, v8

    if-eqz v2, :cond_42

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1a

    .line 93
    :cond_42
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 91
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v8

    const v3, 0x6970636d

    if-ne v1, v3, :cond_43

    .line 92
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzn(ILjava/nio/ByteOrder;)I

    move-result v2

    const/16 v3, 0x20

    goto :goto_1b

    :cond_43
    const v3, 0x6670636d

    if-ne v1, v3, :cond_44

    const/16 v3, 0x20

    if-ne v8, v3, :cond_45

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 93
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const/4 v2, 0x4

    goto :goto_1b

    :cond_44
    const/16 v3, 0x20

    :cond_45
    move/from16 v2, v16

    :goto_1b
    const/4 v8, -0x1

    move-object/from16 v0, p7

    if-eq v2, v8, :cond_46

    move/from16 v8, p9

    move/from16 v24, v1

    move/from16 v16, v2

    move-object/from16 v13, v23

    goto/16 :goto_19

    :cond_46
    move/from16 v8, p9

    move/from16 v24, v1

    move/from16 v16, v2

    goto/16 :goto_19

    :cond_47
    move/from16 v8, p9

    goto/16 :goto_23

    :cond_48
    :goto_1c
    const/16 v3, 0x20

    const/4 v15, 0x2

    const/16 v17, 0x3

    .line 50
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 51
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 52
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 53
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 54
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v8, p9

    .line 55
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 56
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzL(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    .line 57
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    goto/16 :goto_23

    :cond_49
    move/from16 v8, p9

    move-object/from16 v25, v15

    const/4 v15, 0x2

    const/16 v17, 0x3

    move v2, v12

    const/4 v3, -0x1

    :goto_1d
    if-eq v2, v3, :cond_50

    .line 99
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaix;->zzo(Lcom/google/android/gms/internal/ads/zzen;I)Lcom/google/android/gms/internal/ads/zzain;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzain;->zzc(Lcom/google/android/gms/internal/ads/zzain;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzain;->zzd(Lcom/google/android/gms/internal/ads/zzain;)[B

    move-result-object v13

    if-eqz v13, :cond_4f

    const-string v11, "audio/vorbis"

    .line 100
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4d

    new-instance v11, Lcom/google/android/gms/internal/ads/zzen;

    .line 101
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    const/4 v15, 0x0

    .line 103
    :goto_1e
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v20

    const/16 v3, 0xff

    if-lez v20, :cond_4a

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzf()I

    move-result v0

    if-ne v0, v3, :cond_4a

    const/4 v0, 0x1

    .line 104
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    add-int/lit16 v15, v15, 0xff

    move-object/from16 v0, p0

    const/4 v3, 0x1

    goto :goto_1e

    .line 105
    :cond_4a
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v0

    add-int/2addr v15, v0

    const/4 v0, 0x0

    .line 106
    :goto_1f
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v24

    if-lez v24, :cond_4b

    move/from16 v24, v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzf()I

    move-result v1

    if-ne v1, v3, :cond_4c

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    add-int/lit16 v0, v0, 0xff

    move/from16 v1, v24

    goto :goto_1f

    :cond_4b
    move/from16 v24, v1

    :cond_4c
    const/4 v1, 0x1

    .line 108
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v3

    add-int/2addr v0, v3

    .line 109
    new-array v3, v15, [B

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzen;->zzc()I

    move-result v11

    const/4 v1, 0x0

    .line 110
    invoke-static {v13, v11, v3, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v15

    array-length v15, v13

    add-int/2addr v11, v0

    sub-int/2addr v15, v11

    .line 111
    new-array v0, v15, [B

    .line 112
    invoke-static {v13, v11, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzfyq;->zzp(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v11

    goto :goto_21

    :cond_4d
    move/from16 v24, v1

    const/4 v1, 0x0

    const-string v0, "audio/mp4a-latm"

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 115
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzacr;->zza([B)Lcom/google/android/gms/internal/ads/zzacp;

    move-result-object v0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzacp;->zza:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzacp;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacp;->zzc:Ljava/lang/String;

    goto :goto_20

    :cond_4e
    move-object/from16 v0, p7

    .line 116
    :goto_20
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v11

    goto :goto_22

    :cond_4f
    move/from16 v24, v1

    const/4 v1, 0x0

    :goto_21
    move-object/from16 v0, p7

    :goto_22
    move-object v13, v2

    goto :goto_25

    :cond_50
    :goto_23
    move/from16 v24, v1

    const/4 v1, 0x0

    :goto_24
    move-object/from16 v0, p7

    :goto_25
    add-int/2addr v12, v14

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 p7, v0

    move/from16 v1, v24

    move-object/from16 v15, v25

    move-object/from16 v0, p0

    goto/16 :goto_b

    .line 93
    :cond_51
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v0, :cond_54

    if-eqz v13, :cond_54

    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 118
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 119
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzR(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 120
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    move-object/from16 v1, p7

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 122
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 123
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    move/from16 v1, v16

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 125
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 126
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzL(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    .line 127
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    if-eqz v21, :cond_52

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzain;->zza(Lcom/google/android/gms/internal/ads/zzain;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzain;->zzb(Lcom/google/android/gms/internal/ads/zzain;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    goto :goto_26

    :cond_52
    if-eqz v22, :cond_53

    .line 132
    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzail;->zza(Lcom/google/android/gms/internal/ads/zzail;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-static/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzail;->zzb(Lcom/google/android/gms/internal/ads/zzail;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzf(J)I

    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzac(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 132
    :cond_53
    :goto_26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzais;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    :cond_54
    return-void
.end method
