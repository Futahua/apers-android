.class public final Lcom/google/android/gms/internal/ads/zzajd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadv;


# static fields
.field private static final zza:[B

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzz;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:Lcom/google/android/gms/internal/ads/zzajc;

.field private zzD:I

.field private zzE:I

.field private zzF:I

.field private zzG:Z

.field private zzH:Z

.field private zzI:Lcom/google/android/gms/internal/ads/zzady;

.field private zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

.field private zzK:[Lcom/google/android/gms/internal/ads/zzafb;

.field private zzL:Z

.field private zzM:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzakr;

.field private final zzd:I

.field private final zze:Ljava/util/List;

.field private final zzf:Landroid/util/SparseArray;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzj:[B

.field private final zzk:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzags;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzen;

.field private final zzn:Ljava/util/ArrayDeque;

.field private final zzo:Ljava/util/ArrayDeque;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzfz;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzadj;

.field private zzr:Lcom/google/android/gms/internal/ads/zzfyq;

.field private zzs:I

.field private zzt:I

.field private zzu:J

.field private zzv:I

.field private zzw:Lcom/google/android/gms/internal/ads/zzen;

.field private zzx:J

.field private zzy:I

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 1
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajd;->zza:[B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    const-string v1, "application/x-emsg"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajd;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzakr;->zza:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzajd;-><init>(Lcom/google/android/gms/internal/ads/zzakr;ILcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzajp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzafb;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;ILcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzajp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzafb;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzc:Lcom/google/android/gms/internal/ads/zzakr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zze:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzags;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzags;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzl:Lcom/google/android/gms/internal/ads/zzags;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    sget-object p3, Lcom/google/android/gms/internal/ads/zzfv;->zza:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzg:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    const/4 p3, 0x6

    .line 7
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzh:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzen;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzi:Lcom/google/android/gms/internal/ads/zzen;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzj:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzen;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzk:Lcom/google/android/gms/internal/ads/zzen;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    .line 12
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzr:Lcom/google/android/gms/internal/ads/zzfyq;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzA:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzB:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzady;->zza:Lcom/google/android/gms/internal/ads/zzady;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzafb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaja;

    .line 14
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(Lcom/google/android/gms/internal/ads/zzajd;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(Lcom/google/android/gms/internal/ads/zzfy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadj;

    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Lcom/google/android/gms/internal/ads/zzadj;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzM:J

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzajd;JLcom/google/android/gms/internal/ads/zzen;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzadh;->zza(JLcom/google/android/gms/internal/ads/zzen;[Lcom/google/android/gms/internal/ads/zzafb;)V

    return-void
.end method

.method private static zzg(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected negative value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzen;J)Landroid/util/Pair;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v1

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v10

    if-nez v1, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v5

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v12, v3

    move-wide v14, v5

    const-wide/32 v5, 0xf4240

    .line 7
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v3, v12

    move-wide v7, v10

    .line 10
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v16

    const/4 v1, 0x2

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v1

    new-array v9, v1, [I

    new-array v7, v1, [J

    new-array v8, v1, [J

    new-array v5, v1, [J

    const/4 v3, 0x0

    move-wide/from16 v18, v16

    move-wide/from16 v24, v12

    move v12, v3

    move-wide/from16 v3, v24

    :goto_1
    if-ge v12, v1, :cond_2

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v6

    const/high16 v13, -0x80000000

    and-int/2addr v13, v6

    if-nez v13, :cond_1

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v20

    const v13, 0x7fffffff

    and-int/2addr v6, v13

    .line 15
    aput v6, v9, v12

    .line 16
    aput-wide v14, v7, v12

    .line 17
    aput-wide v18, v5, v12

    add-long v18, v3, v20

    const-wide/32 v20, 0xf4240

    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v3, v18

    move-object v2, v5

    move-wide/from16 v5, v20

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-wide v7, v10

    move/from16 p1, v1

    move-object v1, v9

    move-object v9, v13

    .line 18
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    .line 19
    aget-wide v5, v2, v12

    sub-long v5, v3, v5

    move-object/from16 v7, v23

    aput-wide v5, v7, v12

    const/4 v5, 0x4

    .line 20
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 21
    aget v6, v1, v12

    int-to-long v8, v6

    add-long/2addr v14, v8

    add-int/lit8 v12, v12, 0x1

    move-object v9, v1

    move-object v8, v7

    move-object/from16 v7, v22

    move/from16 v1, p1

    move/from16 v24, v5

    move-object v5, v2

    move/from16 v2, v24

    move-wide/from16 v25, v3

    move-wide/from16 v3, v18

    move-wide/from16 v18, v25

    goto :goto_1

    .line 13
    :cond_1
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    .line 22
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_2
    move-object v2, v5

    move-object/from16 v22, v7

    move-object v7, v8

    move-object v1, v9

    .line 23
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadi;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v7, v2}, Lcom/google/android/gms/internal/ads/zzadi;-><init>([I[J[J[J)V

    .line 24
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static zzj(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;
    .locals 18

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_b

    move-object/from16 v5, p0

    .line 2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfd;

    .line 3
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzfd;->zzd:I

    const v8, 0x70737368    # 3.013775E29f

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzen;

    .line 6
    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v9

    const/16 v10, 0x20

    if-ge v9, v10, :cond_1

    :goto_1
    move/from16 v16, v3

    move-object/from16 v17, v4

    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 7
    :cond_1
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 8
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v9

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v10

    const-string v11, "PsshAtomUtil"

    if-eq v10, v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Advertised atom size ("

    .line 10
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") does not match buffer size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v9

    if-eq v9, v8, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Atom type is not pssh: "

    .line 12
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Unsupported pssh version: "

    .line 14
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v10, Ljava/util/UUID;

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    move-result-wide v14

    invoke-direct {v10, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v8, v9, :cond_6

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v9

    new-array v12, v9, [Ljava/util/UUID;

    move v13, v1

    :goto_3
    if-ge v13, v9, :cond_5

    new-instance v14, Ljava/util/UUID;

    move/from16 v16, v3

    .line 17
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    move-result-wide v2

    move-object/from16 v17, v4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzt()J

    move-result-wide v4

    invoke-direct {v14, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p0

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_3

    :cond_5
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_4

    :cond_6
    move/from16 v16, v3

    move-object/from16 v17, v4

    const/4 v12, 0x0

    .line 18
    :goto_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v2

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v3

    if-eq v2, v3, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Atom data size ("

    .line 20
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") does not match the bytes left: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-array v3, v2, [B

    .line 21
    invoke-virtual {v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzajl;

    invoke-direct {v2, v10, v8, v3, v12}, Lcom/google/android/gms/internal/ads/zzajl;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    :goto_5
    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_6

    .line 24
    :cond_8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajl;->zza:Ljava/util/UUID;

    :goto_6
    if-nez v2, :cond_9

    .line 6
    const-string v2, "FragmentedMp4Extractor"

    const-string v3, "Skipped pssh atom (failed to extract uuid)"

    .line 22
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v17

    goto :goto_7

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzr;

    .line 23
    const-string v4, "video/mp4"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzr;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    move-object/from16 v4, v17

    .line 24
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    move/from16 v16, v3

    :goto_7
    const/4 v5, 0x0

    :goto_8
    add-int/lit8 v3, v16, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x0

    if-nez v4, :cond_c

    return-object v5

    .line 21
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzs;

    .line 25
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzs;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private final zzk()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    return-void
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzen;ILcom/google/android/gms/internal/ads/zzajr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result p1

    .line 3
    sget v0, Lcom/google/android/gms/internal/ads/zzaix;->zza:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    .line 6
    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v2, p2, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    .line 8
    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzajr;->zza(I)V

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzn:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v2

    .line 10
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzo:Z

    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Senc sample count "

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    .line 3
    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method

.method private final zzm(J)V
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfc;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzfc;->zza:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_50

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfc;

    .line 3
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const v4, 0x6d6f6f76

    const/16 v7, 0xc

    const/16 v9, 0x8

    if-ne v2, v4, :cond_9

    .line 4
    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzfc;->zzb:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzajd;->zzj(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v1

    const v2, 0x6d766578

    .line 5
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zza(I)Lcom/google/android/gms/internal/ads/zzfc;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfc;

    new-instance v13, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfc;->zzb:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    .line 8
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzfd;

    .line 9
    iget v15, v14, Lcom/google/android/gms/internal/ads/zzfd;->zzd:I

    const v12, 0x74726578

    if-ne v15, v12, :cond_1

    .line 10
    iget-object v12, v14, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 11
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 12
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v14

    .line 13
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    .line 14
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    .line 15
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v11

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v12

    .line 17
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-direct {v8, v15, v7, v11, v12}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(IIII)V

    .line 18
    invoke-static {v14, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 19
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-virtual {v13, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v7, 0x6d656864

    if-ne v15, v7, :cond_3

    .line 20
    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 21
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v6

    .line 23
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v6

    if-nez v6, :cond_2

    .line 24
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v5

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    const/16 v7, 0xc

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaej;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzaej;-><init>()V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    const/16 v7, 0x10

    and-int/2addr v2, v7

    if-eqz v2, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    new-instance v10, Lcom/google/android/gms/internal/ads/zzaiz;

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(Lcom/google/android/gms/internal/ads/zzajd;)V

    const/4 v9, 0x0

    move-object v7, v1

    .line 25
    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzaix;->zzf(Lcom/google/android/gms/internal/ads/zzfc;Lcom/google/android/gms/internal/ads/zzaej;JLcom/google/android/gms/internal/ads/zzs;ZZLcom/google/android/gms/internal/ads/zzfve;)Ljava/util/List;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    .line 27
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzajg;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_6

    .line 29
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzajs;

    .line 30
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    .line 31
    invoke-interface {v7, v12, v8}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object v7

    iget-wide v8, v6, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    .line 32
    invoke-interface {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzafb;->zzl(J)V

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    new-instance v10, Lcom/google/android/gms/internal/ads/zzajc;

    .line 33
    invoke-static {v13, v6}, Lcom/google/android/gms/internal/ads/zzajd;->zzn(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v11

    invoke-direct {v10, v7, v5, v11, v4}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(Lcom/google/android/gms/internal/ads/zzafb;Lcom/google/android/gms/internal/ads/zzajs;Lcom/google/android/gms/internal/ads/zzaiy;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzA:J

    .line 35
    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzA:J

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    .line 36
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzady;->zzG()V

    goto/16 :goto_0

    .line 37
    :cond_7
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v2, :cond_8

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_5
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v2, :cond_0

    .line 38
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzajs;

    .line 39
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    .line 40
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzajc;

    .line 41
    invoke-static {v13, v5}, Lcom/google/android/gms/internal/ads/zzajd;->zzn(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaiy;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzajc;->zzh(Lcom/google/android/gms/internal/ads/zzajs;Lcom/google/android/gms/internal/ads/zzaiy;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_9
    const v4, 0x6d6f6f66

    if-ne v2, v4, :cond_4f

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzj:[B

    .line 42
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzfc;->zzc:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v8, :cond_4a

    .line 43
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzfc;

    .line 44
    iget v12, v11, Lcom/google/android/gms/internal/ads/zzfc;->zzd:I

    const v13, 0x74726166

    if-ne v12, v13, :cond_49

    const v12, 0x74666864

    .line 45
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v12

    .line 182
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    move-object v13, v12

    check-cast v13, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 46
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 47
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v13

    .line 48
    sget v14, Lcom/google/android/gms/internal/ads/zzaix;->zza:I

    .line 49
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v14

    .line 50
    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzajc;

    if-nez v14, :cond_a

    const/4 v14, 0x0

    goto :goto_c

    :cond_a
    and-int/lit8 v18, v13, 0x1

    if-eqz v18, :cond_b

    .line 51
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v5

    iget-object v15, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iput-wide v5, v15, Lcom/google/android/gms/internal/ads/zzajr;->zzb:J

    iput-wide v5, v15, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    :cond_b
    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzajc;->zze:Lcom/google/android/gms/internal/ads/zzaiy;

    and-int/lit8 v6, v13, 0x2

    if-eqz v6, :cond_c

    .line 52
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    .line 53
    :cond_c
    iget v6, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zza:I

    :goto_8
    and-int/lit8 v15, v13, 0x8

    if-eqz v15, :cond_d

    .line 54
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v15

    goto :goto_9

    .line 55
    :cond_d
    iget v15, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:I

    :goto_9
    and-int/lit8 v19, v13, 0x10

    if-eqz v19, :cond_e

    .line 56
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v19

    move/from16 v9, v19

    goto :goto_a

    .line 57
    :cond_e
    iget v9, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzc:I

    :goto_a
    and-int/lit8 v13, v13, 0x20

    if-eqz v13, :cond_f

    .line 58
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v5

    goto :goto_b

    .line 59
    :cond_f
    iget v5, v5, Lcom/google/android/gms/internal/ads/zzaiy;->zzd:I

    .line 58
    :goto_b
    iget-object v12, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzaiy;

    invoke-direct {v13, v6, v15, v9, v5}, Lcom/google/android/gms/internal/ads/zzaiy;-><init>(IIII)V

    iput-object v13, v12, Lcom/google/android/gms/internal/ads/zzajr;->zza:Lcom/google/android/gms/internal/ads/zzaiy;

    :goto_c
    if-nez v14, :cond_10

    move-object/from16 v27, v1

    move/from16 v45, v2

    move-object/from16 v28, v3

    move-object/from16 v20, v7

    move/from16 v22, v8

    move/from16 v30, v10

    const/4 v0, 0x1

    const/16 v6, 0x8

    goto/16 :goto_31

    .line 50
    :cond_10
    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzq:Z

    .line 60
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzajc;->zzi()V

    const/4 v9, 0x1

    .line 61
    invoke-static {v14, v9}, Lcom/google/android/gms/internal/ads/zzajc;->zzg(Lcom/google/android/gms/internal/ads/zzajc;Z)V

    const v15, 0x74666474

    .line 62
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v15

    if-eqz v15, :cond_12

    and-int/lit8 v17, v2, 0x2

    if-nez v17, :cond_12

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v12, 0x8

    .line 63
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 64
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v12

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v12

    if-ne v12, v9, :cond_11

    .line 65
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v12

    goto :goto_d

    :cond_11
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v12

    :goto_d
    iput-wide v12, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    iput-boolean v9, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzq:Z

    goto :goto_e

    :cond_12
    iput-wide v12, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    iput-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzq:Z

    .line 66
    :goto_e
    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzfc;->zzb:Ljava/util/List;

    .line 67
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    move-object/from16 v20, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_f
    const v7, 0x7472756e

    if-ge v12, v9, :cond_14

    .line 68
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v8

    move-object/from16 v8, v21

    check-cast v8, Lcom/google/android/gms/internal/ads/zzfd;

    .line 69
    iget v0, v8, Lcom/google/android/gms/internal/ads/zzfd;->zzd:I

    if-ne v0, v7, :cond_13

    .line 70
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v7, 0xc

    .line 71
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v0

    if-lez v0, :cond_13

    add-int/2addr v15, v0

    add-int/lit8 v13, v13, 0x1

    :cond_13
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v8, v22

    goto :goto_f

    :cond_14
    move/from16 v22, v8

    const/4 v0, 0x0

    iput v0, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzh:I

    iput v0, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzg:I

    iput v0, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    iput v13, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    iput v15, v5, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzg:[I

    .line 73
    array-length v0, v0

    if-ge v0, v13, :cond_15

    new-array v0, v13, [J

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzf:[J

    new-array v0, v13, [I

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzg:[I

    :cond_15
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzh:[I

    .line 74
    array-length v0, v0

    if-ge v0, v15, :cond_16

    mul-int/lit8 v15, v15, 0x7d

    div-int/lit8 v15, v15, 0x64

    .line 75
    new-array v0, v15, [I

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzh:[I

    .line 76
    new-array v0, v15, [J

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzi:[J

    .line 77
    new-array v0, v15, [Z

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzj:[Z

    .line 78
    new-array v0, v15, [Z

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    :cond_16
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_10
    const-wide/16 v23, 0x0

    if-ge v0, v9, :cond_2b

    .line 79
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzfd;

    .line 80
    iget v13, v15, Lcom/google/android/gms/internal/ads/zzfd;->zzd:I

    if-ne v13, v7, :cond_2a

    add-int/lit8 v13, v8, 0x1

    .line 81
    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v7, 0x8

    .line 82
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 83
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v7

    move/from16 v25, v9

    iget-object v9, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    .line 84
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    move/from16 v26, v13

    iget-object v13, v5, Lcom/google/android/gms/internal/ads/zzajr;->zza:Lcom/google/android/gms/internal/ads/zzaiy;

    .line 85
    sget-object v27, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    move-object/from16 v27, v13

    check-cast v27, Lcom/google/android/gms/internal/ads/zzaiy;

    move-object/from16 v27, v1

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzg:[I

    .line 86
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v28

    aput v28, v1, v8

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzf:[J

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    iget-wide v3, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzb:J

    .line 87
    aput-wide v3, v1, v8

    and-int/lit8 v30, v7, 0x1

    if-eqz v30, :cond_17

    move/from16 v30, v10

    .line 88
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v10

    move-object/from16 v31, v11

    int-to-long v10, v10

    add-long/2addr v3, v10

    aput-wide v3, v1, v8

    goto :goto_11

    :cond_17
    move/from16 v30, v10

    move-object/from16 v31, v11

    :goto_11
    and-int/lit8 v1, v7, 0x4

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_12

    :cond_18
    const/4 v1, 0x0

    .line 89
    :goto_12
    iget v3, v13, Lcom/google/android/gms/internal/ads/zzaiy;->zzd:I

    if-eqz v1, :cond_19

    .line 90
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v4

    goto :goto_13

    :cond_19
    move v4, v3

    :goto_13
    and-int/lit16 v10, v7, 0x100

    and-int/lit16 v11, v7, 0x200

    move/from16 v32, v3

    and-int/lit16 v3, v7, 0x400

    and-int/lit16 v7, v7, 0x800

    move/from16 v33, v4

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzajp;->zzi:[J

    if-eqz v4, :cond_1e

    move-object/from16 v34, v6

    array-length v6, v4

    move/from16 v35, v0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_1d

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    if-nez v0, :cond_1a

    goto :goto_15

    :cond_1a
    const/4 v6, 0x0

    .line 91
    aget-wide v36, v4, v6

    cmp-long v4, v36, v23

    if-nez v4, :cond_1b

    move/from16 v43, v3

    move/from16 v44, v7

    goto :goto_14

    :cond_1b
    move v4, v7

    .line 95
    iget-wide v6, v9, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    sget-object v42, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v38, 0xf4240

    move-wide/from16 v40, v6

    .line 92
    invoke-static/range {v36 .. v42}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    const/16 v16, 0x0

    .line 93
    aget-wide v36, v0, v16

    move/from16 v43, v3

    move/from16 v44, v4

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    sget-object v42, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v40, v3

    .line 94
    invoke-static/range {v36 .. v42}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    add-long/2addr v6, v3

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    cmp-long v3, v6, v3

    if-gez v3, :cond_1c

    goto :goto_17

    .line 95
    :cond_1c
    :goto_14
    check-cast v0, [J

    const/4 v3, 0x0

    aget-wide v23, v0, v3

    goto :goto_17

    :cond_1d
    :goto_15
    move/from16 v43, v3

    goto :goto_16

    :cond_1e
    move/from16 v35, v0

    move/from16 v43, v3

    move-object/from16 v34, v6

    :goto_16
    move/from16 v44, v7

    .line 90
    :goto_17
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzh:[I

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzi:[J

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzj:[Z

    iget v6, v9, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1f

    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_18

    :cond_1f
    const/4 v6, 0x0

    :goto_18
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzg:[I

    .line 96
    aget v7, v7, v8

    add-int/2addr v7, v12

    iget-wide v8, v9, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    move/from16 v45, v2

    move-object/from16 v21, v3

    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    :goto_19
    if-ge v12, v7, :cond_29

    if-eqz v10, :cond_20

    .line 97
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v36

    move/from16 v46, v7

    move/from16 v7, v36

    goto :goto_1a

    :cond_20
    move/from16 v46, v7

    iget v7, v13, Lcom/google/android/gms/internal/ads/zzaiy;->zzb:I

    :goto_1a
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzajd;->zzg(I)I

    if-eqz v11, :cond_21

    .line 98
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v36

    move/from16 v47, v10

    move/from16 v10, v36

    goto :goto_1b

    :cond_21
    move/from16 v47, v10

    iget v10, v13, Lcom/google/android/gms/internal/ads/zzaiy;->zzc:I

    :goto_1b
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzajd;->zzg(I)I

    if-eqz v43, :cond_22

    .line 99
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v36

    move/from16 v48, v36

    goto :goto_1c

    :cond_22
    if-nez v12, :cond_24

    if-eqz v1, :cond_23

    move/from16 v48, v33

    const/4 v12, 0x0

    goto :goto_1c

    :cond_23
    const/4 v12, 0x0

    :cond_24
    move/from16 v48, v32

    :goto_1c
    if-eqz v44, :cond_25

    .line 100
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v36

    move/from16 v49, v1

    move/from16 v50, v6

    move/from16 v51, v7

    move/from16 v1, v36

    goto :goto_1d

    :cond_25
    move/from16 v49, v1

    move/from16 v50, v6

    move/from16 v51, v7

    const/4 v1, 0x0

    :goto_1d
    int-to-long v6, v1

    add-long/2addr v6, v2

    sub-long v36, v6, v23

    const-wide/32 v38, 0xf4240

    sget-object v42, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v40, v8

    .line 101
    invoke-static/range {v36 .. v42}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 102
    aput-wide v6, v21, v12

    iget-boolean v1, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzq:Z

    if-nez v1, :cond_26

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    move-wide/from16 v36, v8

    .line 103
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzajs;->zzh:J

    add-long/2addr v6, v8

    aput-wide v6, v21, v12

    goto :goto_1e

    :cond_26
    move-wide/from16 v36, v8

    .line 104
    :goto_1e
    aput v10, v0, v12

    const/16 v1, 0x10

    shr-int/lit8 v6, v48, 0x10

    const/4 v1, 0x1

    and-int/2addr v6, v1

    if-nez v6, :cond_28

    if-eqz v50, :cond_27

    if-nez v12, :cond_28

    move v6, v1

    const/4 v12, 0x0

    goto :goto_1f

    :cond_27
    move v6, v1

    goto :goto_1f

    :cond_28
    const/4 v6, 0x0

    .line 105
    :goto_1f
    aput-boolean v6, v4, v12

    move/from16 v7, v51

    int-to-long v6, v7

    add-long/2addr v2, v6

    add-int/2addr v12, v1

    move-wide/from16 v8, v36

    move/from16 v7, v46

    move/from16 v10, v47

    move/from16 v1, v49

    move/from16 v6, v50

    goto/16 :goto_19

    :cond_29
    move/from16 v46, v7

    .line 97
    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzp:J

    move/from16 v8, v26

    move/from16 v12, v46

    goto :goto_20

    :cond_2a
    move/from16 v35, v0

    move-object/from16 v27, v1

    move/from16 v45, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v34, v6

    move/from16 v25, v9

    move/from16 v30, v10

    move-object/from16 v31, v11

    :goto_20
    add-int/lit8 v0, v35, 0x1

    move/from16 v9, v25

    move-object/from16 v1, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move/from16 v10, v30

    move-object/from16 v11, v31

    move-object/from16 v6, v34

    move/from16 v2, v45

    const v7, 0x7472756e

    goto/16 :goto_10

    :cond_2b
    move-object/from16 v27, v1

    move/from16 v45, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v34, v6

    move/from16 v30, v10

    move-object/from16 v31, v11

    .line 94
    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    .line 106
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzajr;->zza:Lcom/google/android/gms/internal/ads/zzaiy;

    .line 181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaiy;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaiy;->zza:I

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzajp;->zzb(I)Lcom/google/android/gms/internal/ads/zzajq;

    move-result-object v0

    const v1, 0x7361697a

    move-object/from16 v11, v31

    .line 109
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajq;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajq;->zzd:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v3, 0x8

    .line 111
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 112
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v4

    const/4 v6, 0x1

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_2c

    .line 113
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 114
    :cond_2c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v3

    .line 115
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v4

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    if-gt v4, v6, :cond_31

    if-nez v3, :cond_2f

    .line 175
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_21
    if-ge v6, v4, :cond_2e

    .line 116
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v8

    add-int/2addr v7, v8

    if-le v8, v2, :cond_2d

    const/4 v8, 0x1

    goto :goto_22

    :cond_2d
    const/4 v8, 0x0

    .line 117
    :goto_22
    aput-boolean v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_2e
    const/4 v3, 0x0

    goto :goto_24

    :cond_2f
    if-le v3, v2, :cond_30

    const/4 v1, 0x1

    goto :goto_23

    :cond_30
    const/4 v1, 0x0

    :goto_23
    mul-int v7, v3, v4

    .line 126
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    const/4 v3, 0x0

    .line 118
    invoke-static {v2, v3, v4, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 117
    :goto_24
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzl:[Z

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    .line 119
    invoke-static {v1, v4, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v7, :cond_32

    .line 120
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzajr;->zza(I)V

    goto :goto_25

    .line 115
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saiz sample count "

    .line 175
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is greater than fragment sample count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_32
    :goto_25
    const v1, 0x7361696f

    .line 121
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v2, 0x8

    .line 122
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 123
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_33

    .line 124
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 125
    :cond_33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzp()I

    move-result v2

    if-ne v2, v6, :cond_35

    .line 176
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v2

    iget-wide v3, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    if-nez v2, :cond_34

    .line 126
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v1

    goto :goto_26

    :cond_34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v1

    :goto_26
    add-long/2addr v3, v1

    iput-wide v3, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    goto :goto_27

    .line 125
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected saio entry count: "

    .line 176
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_36
    :goto_27
    const/4 v1, 0x0

    const v2, 0x73656e63

    .line 127
    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzb(I)Lcom/google/android/gms/internal/ads/zzfd;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v3, 0x0

    .line 128
    invoke-static {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzajd;->zzl(Lcom/google/android/gms/internal/ads/zzen;ILcom/google/android/gms/internal/ads/zzajr;)V

    :cond_37
    if-eqz v0, :cond_38

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajq;->zzb:Ljava/lang/String;

    move-object v8, v0

    goto :goto_28

    :cond_38
    move-object v8, v1

    :goto_28
    move-object v0, v1

    move-object v2, v0

    const/4 v3, 0x0

    .line 129
    :goto_29
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3b

    move-object/from16 v4, v34

    .line 130
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfd;

    .line 131
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    .line 132
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzfd;->zzd:I

    const v9, 0x73626770

    const v10, 0x73656967

    if-ne v6, v9, :cond_39

    const/16 v14, 0xc

    .line 133
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 134
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v6

    if-ne v6, v10, :cond_3a

    move-object v0, v7

    goto :goto_2a

    :cond_39
    const/16 v14, 0xc

    const v9, 0x73677064

    if-ne v6, v9, :cond_3a

    .line 135
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 136
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v6

    if-ne v6, v10, :cond_3a

    move-object v2, v7

    :cond_3a
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v34, v4

    goto :goto_29

    :cond_3b
    move-object/from16 v4, v34

    const/16 v14, 0xc

    if-eqz v0, :cond_44

    if-nez v2, :cond_3c

    goto/16 :goto_2d

    :cond_3c
    const/16 v3, 0x8

    .line 137
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v6

    const/4 v7, 0x4

    .line 139
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    const/4 v9, 0x1

    if-ne v6, v9, :cond_3d

    .line 140
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 141
    :cond_3d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v0

    if-ne v0, v9, :cond_43

    .line 142
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 143
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v0

    .line 144
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    if-ne v0, v9, :cond_3f

    .line 145
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v9

    cmp-long v0, v9, v23

    if-eqz v0, :cond_3e

    goto :goto_2b

    .line 172
    :cond_3e
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 178
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_3f
    const/4 v3, 0x2

    if-lt v0, v3, :cond_40

    .line 146
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 147
    :cond_40
    :goto_2b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v9

    const-wide/16 v11, 0x1

    cmp-long v0, v9, v11

    if-nez v0, :cond_42

    const/4 v0, 0x1

    .line 148
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 149
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v3

    and-int/lit16 v6, v3, 0xf0

    shr-int/lit8 v11, v6, 0x4

    and-int/lit8 v12, v3, 0xf

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v3

    if-ne v3, v0, :cond_45

    .line 151
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v9

    const/16 v3, 0x10

    new-array v10, v3, [B

    const/4 v6, 0x0

    .line 152
    invoke-virtual {v2, v10, v6, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    if-nez v9, :cond_41

    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzm()I

    move-result v1

    new-array v15, v1, [B

    .line 154
    invoke-virtual {v2, v15, v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    move-object v13, v15

    goto :goto_2c

    :cond_41
    move-object v13, v1

    :goto_2c
    iput-boolean v0, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzk:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajq;

    const/4 v7, 0x1

    move-object v6, v1

    .line 155
    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/ads/zzajq;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v1, v5, Lcom/google/android/gms/internal/ads/zzajr;->zzm:Lcom/google/android/gms/internal/ads/zzajq;

    goto :goto_2e

    .line 147
    :cond_42
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 179
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    .line 141
    :cond_43
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 177
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_44
    :goto_2d
    const/4 v0, 0x1

    .line 156
    :cond_45
    :goto_2e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_48

    .line 157
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfd;

    .line 158
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzfd;->zzd:I

    const v7, 0x75756964

    if-ne v6, v7, :cond_46

    .line 159
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    const/16 v6, 0x8

    .line 160
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    move-object/from16 v8, v29

    const/4 v7, 0x0

    const/16 v9, 0x10

    .line 161
    invoke-virtual {v3, v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    sget-object v10, Lcom/google/android/gms/internal/ads/zzajd;->zza:[B

    .line 162
    invoke-static {v8, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 163
    invoke-static {v3, v9, v5}, Lcom/google/android/gms/internal/ads/zzajd;->zzl(Lcom/google/android/gms/internal/ads/zzen;ILcom/google/android/gms/internal/ads/zzajr;)V

    goto :goto_30

    :cond_46
    move-object/from16 v8, v29

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v9, 0x10

    :cond_47
    :goto_30
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v29, v8

    goto :goto_2f

    :cond_48
    move-object/from16 v8, v29

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/16 v9, 0x10

    goto :goto_32

    :cond_49
    move-object/from16 v27, v1

    move/from16 v45, v2

    move-object/from16 v28, v3

    move-object/from16 v20, v7

    move/from16 v22, v8

    move v6, v9

    move/from16 v30, v10

    const/4 v0, 0x1

    :goto_31
    const/4 v7, 0x0

    const/16 v9, 0x10

    const/16 v14, 0xc

    move-object v8, v4

    :goto_32
    add-int/lit8 v10, v30, 0x1

    move-object/from16 v0, p0

    move v9, v6

    move-object v4, v8

    move-object/from16 v7, v20

    move/from16 v8, v22

    move-object/from16 v1, v27

    move-object/from16 v3, v28

    move/from16 v2, v45

    goto/16 :goto_7

    :cond_4a
    move-object/from16 v27, v1

    move-object v2, v3

    const/4 v7, 0x0

    .line 164
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzfc;->zzb:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajd;->zzj(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 165
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v7

    :goto_33
    if-ge v2, v1, :cond_4b

    move-object/from16 v3, v27

    .line 166
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzajc;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzajc;->zzj(Lcom/google/android/gms/internal/ads/zzs;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_4b
    move-object/from16 v3, v27

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v4

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v12, v7

    :goto_34
    if-ge v12, v1, :cond_4e

    .line 168
    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajc;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    :goto_35
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    if-ge v6, v8, :cond_4d

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzajr;->zzi:[J

    .line 169
    aget-wide v9, v8, v6

    cmp-long v8, v9, v4

    if-gtz v8, :cond_4d

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzajr;->zzj:[Z

    .line 170
    aget-boolean v7, v7, v6

    if-eqz v7, :cond_4c

    iput v6, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzi:I

    :cond_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_4d
    add-int/lit8 v12, v12, 0x1

    goto :goto_34

    :cond_4e
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    goto/16 :goto_0

    :cond_4f
    move-object v2, v3

    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfc;->zzc(Lcom/google/android/gms/internal/ads/zzfc;)V

    goto/16 :goto_0

    .line 173
    :cond_50
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    return-void
.end method

.method private static final zzn(Landroid/util/SparseArray;I)Lcom/google/android/gms/internal/ads/zzaiy;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaiy;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzaiy;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaiy;

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadw;Lcom/google/android/gms/internal/ads/zzaer;)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    const v3, 0x656d7367

    const/4 v5, 0x2

    const v6, 0x73696478

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v2, :cond_39

    const-string v11, "FragmentedMp4Extractor"

    if-eq v2, v9, :cond_2e

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x3

    if-eq v2, v5, :cond_29

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    move-wide v13, v12

    const/4 v15, 0x0

    move-object v12, v7

    :goto_1
    if-ge v15, v6, :cond_3

    .line 2
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/google/android/gms/internal/ads/zzajc;

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zzk(Lcom/google/android/gms/internal/ads/zzajc;)Z

    move-result v16

    if-nez v16, :cond_0

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzajs;->zzb:I

    if-eq v5, v10, :cond_2

    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zzk(Lcom/google/android/gms/internal/ads/zzajc;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzh:I

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    if-ne v5, v10, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzajc;->zzd()J

    move-result-wide v18

    cmp-long v5, v18, v13

    if-gez v5, :cond_2

    move-object v12, v4

    move-wide/from16 v13, v18

    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    if-nez v12, :cond_5

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzx:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_4

    .line 5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    goto :goto_0

    .line 4
    :cond_4
    const-string v1, "Offset to end of mdat was negative."

    .line 83
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 84
    :cond_5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzajc;->zzd()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v13

    sub-long/2addr v4, v13

    long-to-int v2, v4

    if-gez v2, :cond_6

    const-string v2, "Ignoring negative offset to sample data."

    .line 85
    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 86
    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    move-object v2, v12

    :cond_7
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    const/4 v5, 0x6

    const-string v6, "video/hevc"

    const-string v10, "video/avc"

    const/4 v11, 0x4

    if-ne v4, v3, :cond_10

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zzb()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    .line 88
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 89
    invoke-static {v4, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 90
    invoke-static {v4, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_8
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    .line 91
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzi:I

    if-ge v4, v12, :cond_d

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    .line 92
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 93
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zzf()Lcom/google/android/gms/internal/ads/zzajq;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_3

    .line 97
    :cond_9
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzajr;->zzn:Lcom/google/android/gms/internal/ads/zzen;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajq;->zzd:I

    if-eqz v1, :cond_a

    .line 94
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    :cond_a
    iget v1, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzf:I

    .line 95
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzajr;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 96
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zzq()I

    move-result v1

    mul-int/2addr v1, v5

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(I)V

    .line 97
    :cond_b
    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zzl()Z

    move-result v1

    if-nez v1, :cond_c

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    :cond_c
    move v1, v3

    goto/16 :goto_f

    .line 98
    :cond_d
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzh:I

    if-ne v4, v9, :cond_e

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    add-int/lit8 v4, v4, -0x8

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    .line 99
    invoke-interface {v1, v8}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 100
    :cond_e
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    const-string v8, "audio/ac4"

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    const/4 v8, 0x7

    .line 101
    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/internal/ads/zzajc;->zzc(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzk:Lcom/google/android/gms/internal/ads/zzen;

    .line 102
    invoke-static {v4, v12}, Lcom/google/android/gms/internal/ads/zzacy;->zzc(ILcom/google/android/gms/internal/ads/zzen;)V

    .line 103
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzajc;->zza:Lcom/google/android/gms/internal/ads/zzafb;

    invoke-interface {v4, v12, v8}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v4, v8

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    const/4 v8, 0x0

    goto :goto_4

    .line 140
    :cond_f
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    const/4 v8, 0x0

    .line 104
    invoke-virtual {v2, v4, v8}, Lcom/google/android/gms/internal/ads/zzajc;->zzc(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    .line 103
    :goto_4
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    add-int/2addr v12, v4

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    .line 105
    :cond_10
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzajc;->zzd:Lcom/google/android/gms/internal/ads/zzajs;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajs;->zza:Lcom/google/android/gms/internal/ads/zzajp;

    .line 106
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzajc;->zza:Lcom/google/android/gms/internal/ads/zzafb;

    .line 107
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zze()J

    move-result-wide v12

    iget v14, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzk:I

    if-nez v14, :cond_11

    :goto_5
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    if-ge v4, v5, :cond_22

    sub-int/2addr v5, v4

    const/4 v15, 0x0

    .line 108
    invoke-interface {v8, v1, v5, v15}, Lcom/google/android/gms/internal/ads/zzafb;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v4

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v5, v4

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    goto :goto_5

    :cond_11
    const/4 v15, 0x0

    .line 151
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzh:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v7

    .line 109
    aput-byte v15, v7, v15

    .line 110
    aput-byte v15, v7, v9

    const/16 v16, 0x2

    .line 111
    aput-byte v15, v7, v16

    rsub-int/lit8 v15, v14, 0x4

    :goto_6
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    if-ge v9, v5, :cond_22

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    if-nez v5, :cond_1d

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 112
    array-length v5, v5

    if-gtz v5, :cond_12

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    if-nez v5, :cond_13

    :cond_12
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    .line 113
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfv;->zzb(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v5

    add-int v9, v14, v5

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    move/from16 v19, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    sub-int/2addr v11, v5

    if-le v9, v11, :cond_14

    :cond_13
    const/4 v5, 0x0

    goto :goto_7

    :cond_14
    move/from16 v5, v19

    :goto_7
    add-int v9, v14, v5

    .line 114
    invoke-interface {v1, v7, v15, v9}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    const/4 v9, 0x0

    .line 115
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 116
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v11

    if-ltz v11, :cond_1c

    sub-int/2addr v11, v5

    .line 152
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzg:Lcom/google/android/gms/internal/ads/zzen;

    .line 117
    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    const/4 v9, 0x4

    .line 118
    invoke-interface {v8, v11, v9}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v11, v9

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    add-int/2addr v11, v15

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 119
    array-length v11, v11

    if-lez v11, :cond_19

    if-lez v5, :cond_19

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    aget-byte v19, v7, v9

    .line 120
    sget-object v9, Lcom/google/android/gms/internal/ads/zzfv;->zza:[B

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 121
    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_16

    move/from16 v20, v14

    iget-object v14, v11, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    .line 122
    invoke-static {v14, v10}, Lcom/google/android/gms/internal/ads/zzay;->zzg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    goto :goto_8

    :cond_15
    move-object/from16 v21, v10

    const/4 v10, 0x6

    goto :goto_9

    :cond_16
    move/from16 v20, v14

    :goto_8
    and-int/lit8 v14, v19, 0x1f

    move-object/from16 v21, v10

    const/4 v10, 0x6

    if-eq v14, v10, :cond_18

    .line 123
    :goto_9
    invoke-static {v9, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, v11, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    .line 124
    invoke-static {v9, v6}, Lcom/google/android/gms/internal/ads/zzay;->zzg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_17
    and-int/lit8 v9, v19, 0x7e

    const/4 v11, 0x1

    shr-int/2addr v9, v11

    const/16 v11, 0x27

    if-ne v9, v11, :cond_1a

    :cond_18
    const/4 v9, 0x1

    goto :goto_a

    :cond_19
    move-object/from16 v21, v10

    move/from16 v20, v14

    const/4 v10, 0x6

    :cond_1a
    const/4 v9, 0x0

    :goto_a
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzH:Z

    .line 125
    invoke-interface {v8, v3, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v9, v5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    if-lez v5, :cond_1b

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    if-nez v9, :cond_1b

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v11, 0x4

    .line 126
    invoke-static {v7, v11, v5, v9}, Lcom/google/android/gms/internal/ads/zzfv;->zzj([BIILcom/google/android/gms/internal/ads/zzz;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    :cond_1b
    move v5, v10

    move/from16 v14, v20

    move-object/from16 v10, v21

    const/4 v11, 0x4

    goto/16 :goto_6

    .line 116
    :cond_1c
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 152
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_1d
    move-object/from16 v21, v10

    move/from16 v20, v14

    const/4 v10, 0x6

    .line 126
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzH:Z

    if-eqz v9, :cond_20

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzi:Lcom/google/android/gms/internal/ads/zzen;

    .line 127
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v5

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    const/4 v14, 0x0

    .line 128
    invoke-interface {v1, v5, v14, v11}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    .line 129
    invoke-interface {v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v10

    .line 130
    invoke-static {v11, v10}, Lcom/google/android/gms/internal/ads/zzfv;->zzc([BI)I

    move-result v10

    .line 131
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 132
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzen;->zzK(I)V

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzz;->zzq:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1e

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 133
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfz;->zza()I

    move-result v11

    if-eqz v11, :cond_1f

    .line 134
    invoke-virtual {v10, v14}, Lcom/google/android/gms/internal/ads/zzfz;->zze(I)V

    goto :goto_b

    .line 139
    :cond_1e
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 135
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfz;->zza()I

    move-result v14

    if-eq v14, v10, :cond_1f

    .line 136
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzfz;->zze(I)V

    .line 134
    :cond_1f
    :goto_b
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 137
    invoke-virtual {v10, v12, v13, v9}, Lcom/google/android/gms/internal/ads/zzfz;->zzb(JLcom/google/android/gms/internal/ads/zzen;)V

    .line 138
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zza()I

    move-result v9

    const/4 v11, 0x4

    and-int/2addr v9, v11

    if-eqz v9, :cond_21

    .line 139
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfz;->zzd()V

    goto :goto_c

    :cond_20
    const/4 v9, 0x0

    const/4 v11, 0x4

    .line 140
    invoke-interface {v8, v1, v5, v9}, Lcom/google/android/gms/internal/ads/zzafb;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v5

    .line 139
    :cond_21
    :goto_c
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    add-int/2addr v9, v5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzE:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    sub-int/2addr v9, v5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzF:I

    move/from16 v14, v20

    move-object/from16 v10, v21

    const/4 v5, 0x6

    goto/16 :goto_6

    .line 141
    :cond_22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zza()I

    move-result v1

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzG:Z

    if-nez v3, :cond_23

    const/high16 v3, 0x4000000

    or-int/2addr v1, v3

    :cond_23
    move/from16 v21, v1

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zzf()Lcom/google/android/gms/internal/ads/zzajq;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajq;->zzc:Lcom/google/android/gms/internal/ads/zzafa;

    move-object/from16 v24, v1

    goto :goto_d

    :cond_24
    const/16 v24, 0x0

    :goto_d
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzD:I

    const/16 v23, 0x0

    move-object/from16 v18, v8

    move-wide/from16 v19, v12

    move/from16 v22, v1

    .line 143
    invoke-interface/range {v18 .. v24}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    :cond_25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    .line 144
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27

    .line 145
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajb;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    .line 146
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzc:I

    sub-int/2addr v3, v11

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    .line 147
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzajb;->zza:J

    .line 148
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzajb;->zzb:Z

    if-eqz v1, :cond_26

    add-long/2addr v3, v12

    :cond_26
    move-wide v14, v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 149
    array-length v3, v1

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v3, :cond_25

    aget-object v4, v1, v10

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    const/16 v16, 0x0

    const/4 v7, 0x1

    move-wide v5, v14

    move v8, v11

    move/from16 v17, v10

    move-object/from16 v10, v16

    .line 150
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    add-int/lit8 v10, v17, 0x1

    goto :goto_e

    .line 151
    :cond_27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zzl()Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    :cond_28
    const/4 v1, 0x3

    .line 97
    :goto_f
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    const/4 v1, 0x0

    return v1

    .line 14
    :cond_29
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    .line 77
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    if-ge v4, v3, :cond_2b

    .line 78
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzajr;->zzo:Z

    if-eqz v7, :cond_2a

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    cmp-long v8, v6, v12

    if-gez v8, :cond_2a

    .line 79
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzajc;

    move-wide v12, v6

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_2b
    if-nez v5, :cond_2c

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    goto/16 :goto_0

    :cond_2c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v2

    sub-long/2addr v12, v2

    long-to-int v2, v12

    if-ltz v2, :cond_2d

    .line 80
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzn:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzd()I

    move-result v5

    const/4 v6, 0x0

    .line 81
    invoke-interface {v1, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    .line 82
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    iput-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzo:Z

    goto/16 :goto_0

    .line 79
    :cond_2d
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    .line 163
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 104
    :cond_2e
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v9, v2

    sub-long/2addr v4, v9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzw:Lcom/google/android/gms/internal/ads/zzen;

    long-to-int v4, v4

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v5

    .line 30
    invoke-interface {v1, v5, v8, v4}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfd;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    invoke-direct {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(ILcom/google/android/gms/internal/ads/zzen;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfc;->zzd(Lcom/google/android/gms/internal/ads/zzfd;)V

    goto/16 :goto_15

    .line 76
    :cond_2f
    iget v2, v4, Lcom/google/android/gms/internal/ads/zzfd;->zzd:I

    if-ne v2, v6, :cond_30

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v3

    .line 33
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzajd;->zzh(Lcom/google/android/gms/internal/ads/zzen;J)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Lcom/google/android/gms/internal/ads/zzadj;

    .line 34
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzadi;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzadj;->zzb(Lcom/google/android/gms/internal/ads/zzadi;)V

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzL:Z

    if-nez v3, :cond_38

    .line 35
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzB:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    .line 36
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzL:Z

    goto/16 :goto_15

    :cond_30
    if-ne v2, v3, :cond_38

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 37
    array-length v3, v3

    if-eqz v3, :cond_38

    .line 38
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v3

    .line 40
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaix;->zza(I)I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_32

    const/4 v6, 0x1

    if-eq v3, v6, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Skipping unsupported emsg version: "

    .line 74
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 51
    :cond_31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v6

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v19

    const-wide/32 v21, 0xf4240

    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v23, v6

    .line 53
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 55
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 56
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v10

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v12

    .line 162
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v13

    .line 161
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    move-wide/from16 v22, v6

    move-wide/from16 v24, v10

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-wide v13, v8

    move-wide v8, v4

    goto :goto_12

    :cond_32
    const/4 v3, 0x0

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v12

    .line 160
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    move-object v6, v12

    check-cast v6, Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzy(C)Ljava/lang/String;

    move-result-object v13

    .line 159
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-object v3, v13

    check-cast v3, Ljava/lang/String;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v6

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v19

    const-wide/32 v21, 0xf4240

    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v23, v6

    .line 47
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzB:J

    cmp-long v3, v10, v4

    if-eqz v3, :cond_33

    add-long/2addr v10, v8

    goto :goto_11

    :cond_33
    move-wide v10, v4

    .line 48
    :goto_11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    sget-object v25, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v23, v6

    .line 49
    invoke-static/range {v19 .. v25}, Lcom/google/android/gms/internal/ads/zzex;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v14

    move-wide/from16 v22, v6

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-wide/from16 v24, v14

    move-wide v13, v10

    .line 61
    :goto_12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v3

    new-array v3, v3, [B

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzH([BII)V

    .line 63
    new-instance v2, Lcom/google/android/gms/internal/ads/zzagr;

    move-object/from16 v19, v2

    move-object/from16 v26, v3

    invoke-direct/range {v19 .. v26}, Lcom/google/android/gms/internal/ads/zzagr;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzl:Lcom/google/android/gms/internal/ads/zzags;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzen;

    .line 64
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzagr;)[B

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzen;-><init>([B)V

    .line 65
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzen;->zza()I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 66
    array-length v7, v3

    const/4 v10, 0x0

    :goto_13
    if-ge v10, v7, :cond_34

    aget-object v11, v3, v10

    const/4 v12, 0x0

    .line 67
    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 68
    invoke-interface {v11, v6, v2}, Lcom/google/android/gms/internal/ads/zzafb;->zzr(Lcom/google/android/gms/internal/ads/zzen;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :cond_34
    cmp-long v3, v13, v4

    if-nez v3, :cond_35

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzajb;

    const/4 v5, 0x1

    invoke-direct {v4, v8, v9, v5, v2}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(JZI)V

    .line 69
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    goto :goto_15

    :cond_35
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    .line 70
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_36

    new-instance v4, Lcom/google/android/gms/internal/ads/zzajb;

    const/4 v5, 0x0

    invoke-direct {v4, v13, v14, v5, v2}, Lcom/google/android/gms/internal/ads/zzajb;-><init>(JZI)V

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    goto :goto_15

    :cond_36
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 72
    array-length v4, v3

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_38

    aget-object v6, v3, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    move-wide v7, v13

    move v10, v2

    .line 73
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzafb;->zzt(JIIILcom/google/android/gms/internal/ads/zzafa;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 75
    :cond_37
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(I)V

    .line 32
    :cond_38
    :goto_15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v2

    .line 76
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzajd;->zzm(J)V

    goto/16 :goto_0

    .line 75
    :cond_39
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    const-wide/16 v4, 0x0

    const-wide/16 v9, -0x1

    if-nez v2, :cond_3c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 7
    invoke-interface {v1, v7, v12, v8, v11}, Lcom/google/android/gms/internal/ads/zzadw;->zzn([BIIZ)Z

    move-result v7

    if-nez v7, :cond_3b

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzM:J

    cmp-long v1, v1, v9

    if-eqz v1, :cond_3a

    move-object/from16 v7, p2

    iput-wide v4, v7, Lcom/google/android/gms/internal/ads/zzaer;->zza:J

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzM:J

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Lcom/google/android/gms/internal/ads/zzadj;

    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzadj;->zza()Lcom/google/android/gms/internal/ads/zzadi;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    return v11

    :cond_3a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfz;->zzd()V

    const/4 v1, -0x1

    return v1

    :cond_3b
    move-object/from16 v7, p2

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    const/4 v11, 0x0

    .line 8
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzen;->zzL(I)V

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzu()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzg()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    goto :goto_16

    :cond_3c
    move-object/from16 v7, p2

    :goto_16
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    const-wide/16 v13, 0x1

    cmp-long v2, v11, v13

    if-nez v2, :cond_3d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v4

    .line 11
    invoke-interface {v1, v4, v8, v8}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    add-int/2addr v4, v8

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzw()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    goto :goto_18

    :cond_3d
    cmp-long v2, v11, v4

    if-nez v2, :cond_40

    .line 158
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzd()J

    move-result-wide v4

    cmp-long v2, v4, v9

    if-nez v2, :cond_3f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfc;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzfc;->zza:J

    goto :goto_17

    :cond_3e
    move-wide v4, v9

    :cond_3f
    :goto_17
    cmp-long v2, v4, v9

    if-eqz v2, :cond_40

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v11

    sub-long/2addr v4, v11

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v11, v2

    add-long/2addr v4, v11

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    .line 12
    :cond_40
    :goto_18
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v11, v2

    cmp-long v2, v4, v11

    if-ltz v2, :cond_4f

    .line 155
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzM:J

    cmp-long v2, v13, v9

    if-eqz v2, :cond_42

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    if-ne v2, v6, :cond_41

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzk:Lcom/google/android/gms/internal/ads/zzen;

    long-to-int v3, v4

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v4

    const/4 v5, 0x0

    .line 16
    invoke-static {v3, v5, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v9, v9

    sub-long/2addr v4, v9

    long-to-int v4, v4

    .line 17
    invoke-interface {v1, v3, v8, v4}, Lcom/google/android/gms/internal/ads/zzadw;->zzi([BII)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfd;

    invoke-direct {v3, v6, v2}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(ILcom/google/android/gms/internal/ads/zzen;)V

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzfd;->zza:Lcom/google/android/gms/internal/ads/zzen;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zze()J

    move-result-wide v3

    .line 18
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzajd;->zzh(Lcom/google/android/gms/internal/ads/zzen;J)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzq:Lcom/google/android/gms/internal/ads/zzadj;

    .line 19
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzadi;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzadj;->zzb(Lcom/google/android/gms/internal/ads/zzadi;)V

    goto :goto_19

    :cond_41
    sub-long/2addr v4, v11

    long-to-int v2, v4

    const/4 v3, 0x1

    .line 20
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadw;->zzo(IZ)Z

    .line 21
    :goto_19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    goto/16 :goto_0

    .line 20
    :cond_42
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v4

    sub-long/2addr v4, v11

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    const v9, 0x6d646174

    const v10, 0x6d6f6f66

    if-eq v2, v10, :cond_43

    if-ne v2, v9, :cond_44

    :cond_43
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzL:Z

    if-nez v2, :cond_44

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzaet;

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzA:J

    .line 22
    invoke-direct {v11, v12, v13, v4, v5}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(JJ)V

    invoke-interface {v2, v11}, Lcom/google/android/gms/internal/ads/zzady;->zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzL:Z

    :cond_44
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    if-ne v2, v10, :cond_45

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_1a
    if-ge v12, v11, :cond_45

    .line 24
    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzajc;->zzb:Lcom/google/android/gms/internal/ads/zzajr;

    iput-wide v4, v13, Lcom/google/android/gms/internal/ads/zzajr;->zzc:J

    iput-wide v4, v13, Lcom/google/android/gms/internal/ads/zzajr;->zzb:J

    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    :cond_45
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzt:I

    if-ne v2, v9, :cond_46

    const/4 v9, 0x0

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzC:Lcom/google/android/gms/internal/ads/zzajc;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzx:J

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    goto/16 :goto_0

    :cond_46
    const v4, 0x6d6f6f76

    if-eq v2, v4, :cond_4d

    const v4, 0x7472616b

    if-eq v2, v4, :cond_4d

    const v4, 0x6d646961

    if-eq v2, v4, :cond_4d

    const v4, 0x6d696e66

    if-eq v2, v4, :cond_4d

    const v4, 0x7374626c

    if-eq v2, v4, :cond_4d

    if-eq v2, v10, :cond_4d

    const v4, 0x74726166

    if-eq v2, v4, :cond_4d

    const v4, 0x6d766578

    if-eq v2, v4, :cond_4d

    const v4, 0x65647473

    if-ne v2, v4, :cond_47

    goto/16 :goto_1c

    :cond_47
    const v4, 0x68646c72    # 4.3148E24f

    const-wide/32 v9, 0x7fffffff

    if-eq v2, v4, :cond_4a

    const v4, 0x6d646864

    if-eq v2, v4, :cond_4a

    const v4, 0x6d766864

    if-eq v2, v4, :cond_4a

    if-eq v2, v6, :cond_4a

    const v4, 0x73747364

    if-eq v2, v4, :cond_4a

    const v4, 0x73747473

    if-eq v2, v4, :cond_4a

    const v4, 0x63747473

    if-eq v2, v4, :cond_4a

    const v4, 0x73747363

    if-eq v2, v4, :cond_4a

    const v4, 0x7374737a

    if-eq v2, v4, :cond_4a

    const v4, 0x73747a32

    if-eq v2, v4, :cond_4a

    const v4, 0x7374636f

    if-eq v2, v4, :cond_4a

    const v4, 0x636f3634

    if-eq v2, v4, :cond_4a

    const v4, 0x73747373

    if-eq v2, v4, :cond_4a

    const v4, 0x74666474

    if-eq v2, v4, :cond_4a

    const v4, 0x74666864

    if-eq v2, v4, :cond_4a

    const v4, 0x746b6864

    if-eq v2, v4, :cond_4a

    const v4, 0x74726578

    if-eq v2, v4, :cond_4a

    const v4, 0x7472756e

    if-eq v2, v4, :cond_4a

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_4a

    const v4, 0x7361697a

    if-eq v2, v4, :cond_4a

    const v4, 0x7361696f

    if-eq v2, v4, :cond_4a

    const v4, 0x73656e63

    if-eq v2, v4, :cond_4a

    const v4, 0x75756964

    if-eq v2, v4, :cond_4a

    const v4, 0x73626770

    if-eq v2, v4, :cond_4a

    const v4, 0x73677064

    if-eq v2, v4, :cond_4a

    const v4, 0x656c7374

    if-eq v2, v4, :cond_4a

    const v4, 0x6d656864

    if-eq v2, v4, :cond_4a

    if-ne v2, v3, :cond_48

    goto :goto_1b

    .line 29
    :cond_48
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    cmp-long v2, v2, v9

    if-gtz v2, :cond_49

    const/4 v2, 0x0

    .line 158
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzw:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    goto/16 :goto_0

    .line 29
    :cond_49
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 158
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 27
    :cond_4a
    :goto_1b
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    if-ne v2, v8, :cond_4c

    .line 156
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    cmp-long v2, v2, v9

    if-gtz v2, :cond_4b

    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/zzen;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    long-to-int v3, v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;-><init>(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzm:Lcom/google/android/gms/internal/ads/zzen;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    move-result-object v4

    const/4 v5, 0x0

    .line 29
    invoke-static {v3, v5, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzw:Lcom/google/android/gms/internal/ads/zzen;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzs:I

    goto/16 :goto_0

    .line 156
    :cond_4b
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 157
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 27
    :cond_4c
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 156
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 24
    :cond_4d
    :goto_1c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfc;

    const-wide/16 v8, -0x8

    add-long/2addr v3, v8

    .line 25
    invoke-direct {v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzu:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajd;->zzv:I

    int-to-long v8, v2

    cmp-long v2, v5, v8

    if-nez v2, :cond_4e

    .line 26
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzajd;->zzm(J)V

    goto/16 :goto_0

    .line 27
    :cond_4e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    goto/16 :goto_0

    .line 12
    :cond_4f
    const-string v1, "Atom size less than header length (unsupported)."

    .line 155
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzr:Lcom/google/android/gms/internal/ads/zzfyq;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzady;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzd:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzc:Lcom/google/android/gms/internal/ads/zzakr;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaku;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzaku;-><init>(Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzakr;)V

    move-object p1, v2

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzafb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    and-int/lit8 v0, v0, 0x4

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    const/4 v3, 0x5

    .line 3
    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 p1, 0x1

    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzex;->zzQ([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzafb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzJ:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 5
    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    sget-object v5, Lcom/google/android/gms/internal/ads/zzajd;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    .line 6
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zze:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzafb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 8
    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzI:Lcom/google/android/gms/internal/ads/zzady;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x3

    .line 9
    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzady;->zzw(II)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object v0

    .line 10
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzafb;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzK:[Lcom/google/android/gms/internal/ads/zzafb;

    .line 11
    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzf(JJ)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzf:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajc;->zzi()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzo:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzy:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzp:Lcom/google/android/gms/internal/ads/zzfz;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfz;->zzc()V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzz:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzn:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajd;->zzk()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadw;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajo;->zza(Lcom/google/android/gms/internal/ads/zzadw;)Lcom/google/android/gms/internal/ads/zzaey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajd;->zzr:Lcom/google/android/gms/internal/ads/zzfyq;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
