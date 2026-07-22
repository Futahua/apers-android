.class public abstract Lcom/google/android/gms/internal/ads/zztp;
.super Lcom/google/android/gms/internal/ads/zzic;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzti;

.field private zzB:I

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:J

.field private zzI:Z

.field private zzJ:J

.field private zzK:I

.field private zzL:I

.field private zzM:Ljava/nio/ByteBuffer;

.field private zzN:Z

.field private zzO:Z

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:Z

.field private zzT:I

.field private zzU:I

.field private zzV:I

.field private zzW:Z

.field private zzX:Z

.field private zzY:Z

.field private zzZ:J

.field protected zza:Lcom/google/android/gms/internal/ads/zzid;

.field private zzaa:J

.field private zzab:Z

.field private zzac:Z

.field private zzad:Z

.field private zzae:Lcom/google/android/gms/internal/ads/zztn;

.field private zzaf:J

.field private zzag:Z

.field private zzah:Z

.field private zzai:Z

.field private zzaj:J

.field private zzak:J

.field private zzal:Lcom/google/android/gms/internal/ads/zzsi;

.field private zzam:Lcom/google/android/gms/internal/ads/zzsi;

.field private final zzc:Lcom/google/android/gms/internal/ads/zztd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zztr;

.field private final zze:F

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhs;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhs;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhs;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzsw;

.field private final zzj:Landroid/media/MediaCodec$BufferInfo;

.field private final zzk:Ljava/util/ArrayDeque;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzrv;

.field private zzm:Lcom/google/android/gms/internal/ads/zzz;

.field private zzn:Lcom/google/android/gms/internal/ads/zzz;

.field private zzo:Lcom/google/android/gms/internal/ads/zzlz;

.field private zzp:Landroid/media/MediaCrypto;

.field private zzq:J

.field private zzr:F

.field private zzs:F

.field private zzt:Lcom/google/android/gms/internal/ads/zztf;

.field private zzu:Lcom/google/android/gms/internal/ads/zzz;

.field private zzv:Landroid/media/MediaFormat;

.field private zzw:Z

.field private zzx:F

.field private zzy:Ljava/util/ArrayDeque;

.field private zzz:Lcom/google/android/gms/internal/ads/zztl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zztp;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zztd;Lcom/google/android/gms/internal/ads/zztr;ZF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzic;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzc:Lcom/google/android/gms/internal/ads/zztd;

    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/internal/ads/zztr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:Lcom/google/android/gms/internal/ads/zztr;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zztp;->zze:F

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    const/4 p2, 0x0

    .line 4
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    .line 5
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    const/4 p3, 0x2

    .line 6
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzh:Lcom/google/android/gms/internal/ads/zzhs;

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzsw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    .line 8
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzj:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzr:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzs:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzq:J

    new-instance p5, Ljava/util/ArrayDeque;

    .line 9
    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zztp;->zzk:Ljava/util/ArrayDeque;

    sget-object p5, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zztn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhs;->zzj(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsw;->zzc:Ljava/nio/ByteBuffer;

    .line 11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzl:Lcom/google/android/gms/internal/ads/zzrv;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzx:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzB:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzK:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzL:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzJ:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzaf:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzH:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzU:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzid;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzid;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzid;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzaj:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzak:J

    return-void
.end method

.method static bridge synthetic zzaD(Lcom/google/android/gms/internal/ads/zztp;)Lcom/google/android/gms/internal/ads/zzlz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzo:Lcom/google/android/gms/internal/ads/zzlz;

    return-object p0
.end method

.method protected static zzaY(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzN:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzaf()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzP:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzal()V

    return-void
.end method

.method private final zzag()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzU:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaM()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaJ()V

    return-void
.end method

.method private final zzah()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zztf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zztf;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaN()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaN()V

    .line 3
    throw v0
.end method

.method private final zzai()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzac:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzau()V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaM()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaJ()V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzah()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbc()V

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzah()V

    return-void
.end method

.method private final zzal()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzam()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzR:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzh:Lcom/google/android/gms/internal/ads/zzhs;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzQ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzl:Lcom/google/android/gms/internal/ads/zzrv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrv;->zzb()V

    return-void
.end method

.method private final zzam()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzaf:J

    return-void
.end method

.method private final zzas()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzK:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzba()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzL:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzM:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzbb(Lcom/google/android/gms/internal/ads/zztn;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zztn;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzag:Z

    :cond_0
    return-void
.end method

.method private final zzbc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzam:Lcom/google/android/gms/internal/ads/zzsi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzsi;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzal:Lcom/google/android/gms/internal/ads/zzsi;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzU:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    return-void
.end method

.method private final zzbd()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzW:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzU:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbc()V

    :goto_0
    return v1
.end method

.method private final zzbe()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaX()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaM()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaV()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzah()V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzak:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcW()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-gtz v0, :cond_3

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zztp;->zzaf:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_3

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzai:Z

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzak:J

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbf()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzL:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbg(JJ)Z
    .locals 4

    cmp-long v0, p3, p1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaeq;->zzf(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method private final zzbh(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzl()Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzf:Lcom/google/android/gms/internal/ads/zzhs;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    or-int/lit8 p1, p1, 0x4

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzic;->zzcV(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzhs;I)I

    move-result p1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zztp;->zzae(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzie;

    return v3

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzab:Z

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzai()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzbi(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzq:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcX()Lcom/google/android/gms/internal/ads/zzdj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzq:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzbj(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcU()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzs:F

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzU()[Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zztp;->zzaa(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzx:F

    cmpl-float v2, v0, p1

    if-eqz v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzag()V

    const/4 p1, 0x0

    return p1

    :cond_1
    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zze:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 4
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zztf;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zztf;->zzq(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzx:F

    :cond_3
    :goto_0
    return v1
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

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzab:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzac:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzP:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzal()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaP()Z

    .line 1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztn;->zze:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzad:Z

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzet;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzk:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method protected zzD()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaf()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzam:Lcom/google/android/gms/internal/ads/zzsi;

    return-void

    :catchall_0
    move-exception v1

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzam:Lcom/google/android/gms/internal/ads/zzsi;

    .line 3
    throw v1
.end method

.method protected zzG([Lcom/google/android/gms/internal/ads/zzz;JJLcom/google/android/gms/internal/ads/zzvh;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zztn;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zztn;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zztn;-><init>(JJJ)V

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zztp;->zzbb(Lcom/google/android/gms/internal/ads/zztn;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zztp;->zzah:Z

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzat()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztp;->zzk:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zztp;->zzaf:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_3

    cmp-long v2, v7, v5

    if-ltz v2, :cond_3

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zztn;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zztn;-><init>(JJJ)V

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zztp;->zzbb(Lcom/google/android/gms/internal/ads/zztn;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    .line 7
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zztn;->zzd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzat()V

    :cond_2
    return-void

    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/ads/zztn;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    move-object v2, v9

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zztn;-><init>(JJJ)V

    .line 5
    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzN(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzr:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzs:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zztp;->zzbj(Lcom/google/android/gms/internal/ads/zzz;)Z

    return-void
.end method

.method public zzW(JJ)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    move-object/from16 v15, p0

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 1
    :try_start_0
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzac:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_20

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzau()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    move v1, v13

    move v3, v14

    :goto_0
    move-object v4, v15

    goto/16 :goto_2d

    :catch_1
    move-exception v0

    move-object v1, v0

    move v3, v14

    :goto_1
    move-object v4, v15

    goto/16 :goto_33

    :cond_0
    :try_start_2
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_20

    const/4 v11, 0x2

    if-nez v1, :cond_2

    .line 2
    :try_start_3
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zztp;->zzbh(I)Z

    move-result v1
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    return-void

    .line 3
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaJ()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzP:Z
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_20

    const/4 v10, 0x0

    if-eqz v1, :cond_1a

    :try_start_5
    const-string v1, "bypassRender"

    .line 4
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_3
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzac:Z

    xor-int/2addr v1, v13

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-object v11, v15, Lcom/google/android/gms/internal/ads/zztp;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsw;->zzq()Z

    move-result v1
    :try_end_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_c

    if-eqz v1, :cond_5

    :try_start_6
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzsw;->zzc:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zztp;->zzL:I

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsw;->zzm()I

    move-result v16

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzsw;->zze:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcW()J

    move-result-wide v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsw;->zzn()J

    move-result-wide v12

    .line 6
    invoke-direct {v15, v1, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zztp;->zzbg(JJ)Z

    move-result v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzhm;->zzf()Z

    move-result v19

    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v12, :cond_4

    .line 7
    move-object v1, v12

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;
    :try_end_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v20, v4

    move-wide/from16 v4, p3

    move/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v18, v12

    move-wide/from16 v11, v20

    move/from16 v14, v19

    move-object/from16 v15, v18

    .line 8
    :try_start_7
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zztp;->zzav(JJLcom/google/android/gms/internal/ads/zztf;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzsw;->zzn()J

    move-result-wide v1
    :try_end_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v15, p0

    .line 9
    :try_start_8
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zztp;->zzaK(J)V

    .line 10
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    const/4 v14, 0x0

    goto :goto_9

    :cond_3
    move-object/from16 v15, p0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_10

    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7

    :cond_4
    move-object v14, v10

    .line 38
    throw v14
    :try_end_8
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    :goto_4
    move-object v2, v0

    move-object v4, v15

    :goto_5
    const/4 v1, 0x1

    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_2d

    :catch_5
    move-exception v0

    :goto_7
    move-object v1, v0

    move-object v4, v15

    :goto_8
    const/4 v3, 0x0

    goto/16 :goto_33

    :cond_5
    move-object v14, v10

    move-object/from16 v16, v11

    .line 10
    :goto_9
    :try_start_9
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzab:Z
    :try_end_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_a

    if-eqz v1, :cond_6

    const/4 v13, 0x1

    :try_start_a
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztp;->zzac:Z
    :try_end_a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6

    const/4 v12, 0x0

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object v2, v0

    move v1, v13

    move-object v4, v15

    goto :goto_6

    :cond_6
    const/4 v13, 0x1

    .line 131
    :try_start_b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzQ:Z

    if-eqz v1, :cond_7

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzh:Lcom/google/android/gms/internal/ads/zzhs;

    move-object/from16 v2, v16

    .line 11
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzp(Lcom/google/android/gms/internal/ads/zzhs;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V
    :try_end_b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_9

    const/4 v12, 0x0

    :try_start_c
    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztp;->zzQ:Z

    goto :goto_a

    :cond_7
    move-object/from16 v2, v16

    const/4 v12, 0x0

    :goto_a
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzR:Z

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzq()Z

    move-result v1

    if-nez v1, :cond_8

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaf()V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztp;->zzR:Z

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaJ()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzP:Z

    if-eqz v1, :cond_19

    goto :goto_c

    :cond_8
    :goto_b
    move-object v10, v14

    move v14, v12

    goto/16 :goto_3

    :cond_9
    :goto_c
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzab:Z

    xor-int/2addr v1, v13

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzl()Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v1

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zztp;->zzh:Lcom/google/android/gms/internal/ads/zzhs;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    .line 17
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    .line 18
    invoke-virtual {v15, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzic;->zzcV(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzhs;I)I

    move-result v4

    const/4 v10, -0x5

    if-eq v4, v10, :cond_16

    const/4 v5, -0x4

    if-eq v4, v5, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzR()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    iput-wide v3, v15, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J

    goto/16 :goto_f

    .line 35
    :cond_b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhm;->zzf()Z

    move-result v4

    if-eqz v4, :cond_c

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztp;->zzab:Z

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    iput-wide v3, v15, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J

    goto/16 :goto_f

    :cond_c
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzhs;->zze:J

    .line 19
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzR()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zztp;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhm;->zzh()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J

    :cond_e
    iget-boolean v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzad:Z
    :try_end_c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_7

    const-string v5, "audio/opus"

    if-eqz v4, :cond_11

    :try_start_d
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v4, :cond_10

    .line 20
    move-object v6, v4

    check-cast v6, Lcom/google/android/gms/internal/ads/zzz;

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 21
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 22
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 23
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 24
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaeq;->zza([B)I

    move-result v4

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    :cond_f
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 26
    invoke-virtual {v15, v4, v14}, Lcom/google/android/gms/internal/ads/zztp;->zzar(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztp;->zzad:Z

    goto :goto_d

    .line 36
    :cond_10
    throw v14

    .line 27
    :cond_11
    :goto_d
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhs;->zzk()V

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v4, :cond_13

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 28
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhm;->zze()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzhs;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 29
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zztp;->zzan(Lcom/google/android/gms/internal/ads/zzhs;)V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcW()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzhs;->zze:J

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzaeq;->zzf(JJ)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzl:Lcom/google/android/gms/internal/ads/zzrv;

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzhs;Ljava/util/List;)V

    :cond_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzq()Z

    move-result v4

    if-nez v4, :cond_14

    goto :goto_e

    .line 33
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcW()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzn()J

    move-result-wide v6

    .line 31
    invoke-direct {v15, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zztp;->zzbg(JJ)Z

    move-result v6

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzhs;->zze:J

    .line 32
    invoke-direct {v15, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zztp;->zzbg(JJ)Z

    move-result v4

    if-ne v6, v4, :cond_15

    .line 33
    :goto_e
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzsw;->zzp(Lcom/google/android/gms/internal/ads/zzhs;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_15
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztp;->zzQ:Z

    goto :goto_f

    .line 34
    :cond_16
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zztp;->zzae(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzie;

    .line 18
    :cond_17
    :goto_f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzq()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhs;->zzk()V

    :cond_18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsw;->zzq()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzab:Z

    if-nez v1, :cond_8

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzR:Z

    if-eqz v1, :cond_19

    goto/16 :goto_b

    .line 37
    :cond_19
    :goto_10
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7

    move v3, v12

    move v1, v13

    move-object v4, v15

    goto/16 :goto_2a

    :catch_7
    move-exception v0

    goto :goto_11

    :catch_8
    move-exception v0

    goto :goto_12

    :catch_9
    move-exception v0

    const/4 v12, 0x0

    goto :goto_11

    :catch_a
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_11

    :catch_b
    move-exception v0

    const/4 v12, 0x0

    goto :goto_12

    :catch_c
    move-exception v0

    move v12, v14

    :goto_11
    move-object v2, v0

    move v3, v12

    move v1, v13

    goto/16 :goto_0

    :catch_d
    move-exception v0

    move v12, v14

    :goto_12
    move-object v1, v0

    move v3, v12

    goto/16 :goto_1

    :cond_1a
    move v12, v14

    move-object v14, v10

    const/4 v10, -0x5

    .line 34
    :try_start_e
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;
    :try_end_e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_e} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1e

    if-eqz v1, :cond_55

    .line 39
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcX()Lcom/google/android/gms/internal/ads/zzdj;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v8

    const-string v1, "drainAndFeed"

    .line 40
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_13
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-eqz v6, :cond_54

    .line 41
    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/ads/zztf;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbf()Z

    move-result v1
    :try_end_f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1a

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_28

    :try_start_10
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 42
    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zztf;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v4

    if-gez v4, :cond_21

    const/4 v1, -0x2

    if-ne v4, v1, :cond_1d

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztp;->zzY:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-eqz v1, :cond_1c

    .line 43
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zztf;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zztf;->zzc()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v15, Lcom/google/android/gms/internal/ads/zztp;->zzB:I

    if-eqz v2, :cond_1b

    const-string v2, "width"

    .line 44
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1b

    const-string v2, "height"

    .line 45
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1b

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztp;->zzF:Z

    goto :goto_15

    .line 98
    :cond_1b
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzv:Landroid/media/MediaFormat;

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztp;->zzw:Z

    goto :goto_15

    .line 67
    :cond_1c
    throw v14

    .line 98
    :cond_1d
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzG:Z

    if-eqz v1, :cond_1f

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzab:Z

    if-nez v1, :cond_1e

    iget v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzU:I

    if-ne v1, v11, :cond_1f

    .line 68
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzai()V

    :cond_1f
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzH:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_20

    const-wide/16 v1, 0x64

    add-long/2addr v4, v1

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcX()Lcom/google/android/gms/internal/ads/zzdj;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdj;->zza()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-gez v1, :cond_20

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzai()V

    :cond_20
    :goto_14
    move-wide v1, v8

    move-object/from16 v17, v14

    move-object v4, v15

    goto/16 :goto_20

    :cond_21
    iget-boolean v5, v15, Lcom/google/android/gms/internal/ads/zztp;->zzF:Z

    if-eqz v5, :cond_22

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztp;->zzF:Z

    .line 65
    invoke-interface {v6, v4, v12}, Lcom/google/android/gms/internal/ads/zztf;->zzo(IZ)V

    :goto_15
    move-wide v1, v8

    move-object/from16 v17, v14

    move-object v4, v15

    goto/16 :goto_1c

    .line 46
    :cond_22
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_23

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_23

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzai()V

    goto :goto_14

    :cond_23
    iput v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzL:I

    .line 47
    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/zztf;->zzg(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzM:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_24

    .line 48
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzM:Ljava/nio/ByteBuffer;

    .line 49
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    :cond_24
    iget-wide v4, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    .line 51
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zztn;->zze:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzet;->zzc(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    if-nez v1, :cond_25

    iget-boolean v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzag:Z

    if-eqz v4, :cond_25

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzv:Landroid/media/MediaFormat;

    if-eqz v4, :cond_25

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    .line 52
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zztn;->zze:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzet;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    :cond_25
    if-eqz v1, :cond_26

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    goto :goto_16

    .line 57
    :cond_26
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzw:Z

    if-eqz v1, :cond_28

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v1, :cond_28

    .line 52
    :goto_16
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v1, :cond_27

    .line 53
    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzv:Landroid/media/MediaFormat;

    invoke-virtual {v15, v1, v4}, Lcom/google/android/gms/internal/ads/zztp;->zzar(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztp;->zzw:Z

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztp;->zzag:Z

    goto :goto_17

    .line 73
    :cond_27
    throw v14
    :try_end_10
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_7

    .line 53
    :cond_28
    :goto_17
    :try_start_11
    iget-object v7, v15, Lcom/google/android/gms/internal/ads/zztp;->zzj:Landroid/media/MediaCodec$BufferInfo;

    .line 54
    iget-wide v4, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcW()J

    move-result-wide v16

    cmp-long v1, v4, v16

    if-gez v1, :cond_29

    move v1, v13

    goto :goto_18

    :cond_29
    move v1, v12

    :goto_18
    iput-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzN:Z

    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J
    :try_end_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_11 .. :try_end_11} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1a

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2a

    .line 55
    :try_start_12
    iget-wide v10, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_12
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_7

    cmp-long v1, v4, v10

    if-gtz v1, :cond_2a

    move v1, v13

    goto :goto_19

    :cond_2a
    move v1, v12

    :goto_19
    :try_start_13
    iput-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzO:Z

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzai:Z
    :try_end_13
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_13 .. :try_end_13} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1a

    if-eqz v1, :cond_2c

    :try_start_14
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zztp;->zzaj:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2b

    .line 56
    iget-wide v4, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v10, v15, Lcom/google/android/gms/internal/ads/zztp;->zzaj:J

    cmp-long v1, v4, v10

    if-gtz v1, :cond_2b

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztp;->zzai:Z

    iput-wide v2, v15, Lcom/google/android/gms/internal/ads/zztp;->zzaj:J

    goto :goto_1a

    .line 57
    :cond_2b
    iget-wide v1, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzaj:J

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zztp;->zzN:Z

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zztp;->zzO:Z
    :try_end_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_7

    .line 56
    :cond_2c
    :goto_1a
    :try_start_15
    iget-object v10, v15, Lcom/google/android/gms/internal/ads/zztp;->zzM:Ljava/nio/ByteBuffer;

    iget v11, v15, Lcom/google/android/gms/internal/ads/zztp;->zzL:I

    .line 58
    iget v4, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v2, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v5, v15, Lcom/google/android/gms/internal/ads/zztp;->zzN:Z

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zztp;->zzO:Z

    iget-object v14, v15, Lcom/google/android/gms/internal/ads/zztp;->zzn:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v14, :cond_53

    .line 59
    move-object/from16 v17, v14

    check-cast v17, Lcom/google/android/gms/internal/ads/zzz;
    :try_end_15
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_15 .. :try_end_15} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_1a

    const/16 v17, 0x1

    move/from16 v18, v1

    move-object/from16 v1, p0

    move-wide/from16 v19, v2

    move-wide/from16 v2, p1

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v4, p3

    move-object/from16 v23, v7

    move-object v7, v10

    move-wide v9, v8

    move v8, v11

    move-wide v10, v9

    move/from16 v9, v21

    move-wide/from16 v24, v10

    const/4 v11, -0x5

    move/from16 v10, v17

    move-wide/from16 v11, v19

    move/from16 v13, v22

    move-object/from16 v16, v14

    const/16 v17, 0x0

    move/from16 v14, v18

    move-object/from16 v15, v16

    .line 60
    :try_start_16
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zztp;->zzav(JJLcom/google/android/gms/internal/ads/zztf;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z

    move-result v1
    :try_end_16
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_16 .. :try_end_16} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_17

    if-eqz v1, :cond_31

    move-object/from16 v1, v23

    .line 61
    :try_start_17
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_17
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_17 .. :try_end_17} :catch_11
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_10

    move-object/from16 v4, p0

    :try_start_18
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zztp;->zzaK(J)V

    .line 62
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2d

    const/4 v14, 0x1

    goto :goto_1b

    :cond_2d
    const/4 v14, 0x0

    :goto_1b
    if-nez v14, :cond_2e

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzX:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzO:Z

    if-eqz v1, :cond_2e

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcX()Lcom/google/android/gms/internal/ads/zzdj;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdj;->zza()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzH:J

    .line 64
    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzba()V

    if-eqz v14, :cond_2f

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzai()V

    goto :goto_1f

    :cond_2f
    move-wide/from16 v1, v24

    .line 66
    :goto_1c
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zztp;->zzbi(J)Z

    move-result v3
    :try_end_18
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_e

    if-nez v3, :cond_30

    goto :goto_20

    :cond_30
    move-wide v8, v1

    move-object v15, v4

    move-object/from16 v14, v17

    const/4 v10, -0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_13

    :catch_e
    move-exception v0

    :goto_1d
    move-object v2, v0

    goto/16 :goto_5

    :catch_f
    move-exception v0

    :goto_1e
    move-object v1, v0

    goto/16 :goto_8

    :catch_10
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1d

    :catch_11
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1e

    :cond_31
    move-object/from16 v4, p0

    :goto_1f
    move-wide/from16 v1, v24

    :goto_20
    :try_start_19
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-eqz v5, :cond_51

    iget v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzU:I

    const/4 v12, 0x2

    if-eq v3, v12, :cond_51

    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzab:Z

    if-eqz v3, :cond_32

    goto/16 :goto_27

    .line 75
    :cond_32
    move-object v3, v5

    check-cast v3, Lcom/google/android/gms/internal/ads/zztf;

    iget v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzK:I
    :try_end_19
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_19 .. :try_end_19} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_15

    if-gez v3, :cond_33

    .line 76
    :try_start_1a
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zztf;->zza()I

    move-result v3

    iput v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzK:I

    if-ltz v3, :cond_51

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    .line 77
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zztf;->zzf(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v6, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V
    :try_end_1a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_e

    :cond_33
    :try_start_1b
    iget v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzU:I
    :try_end_1b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_1b} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_15

    const/4 v13, 0x1

    if-ne v3, v13, :cond_35

    :try_start_1c
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzG:Z

    if-nez v1, :cond_34

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zztp;->zzX:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzK:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 114
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zztf;->zzk(IIIJI)V

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzas()V

    :cond_34
    iput v12, v4, Lcom/google/android/gms/internal/ads/zztp;->zzU:I
    :try_end_1c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_12

    goto/16 :goto_27

    :catch_12
    move-exception v0

    move-object v2, v0

    move v1, v13

    goto/16 :goto_6

    :cond_35
    :try_start_1d
    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzE:Z
    :try_end_1d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1d .. :try_end_1d} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_1d} :catch_15

    if-eqz v3, :cond_37

    const/4 v3, 0x0

    :try_start_1e
    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzE:Z

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_36

    .line 79
    move-object v7, v6

    check-cast v7, Ljava/nio/ByteBuffer;

    sget-object v7, Lcom/google/android/gms/internal/ads/zztp;->zzb:[B

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzK:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x26

    .line 80
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zztf;->zzk(IIIJI)V

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzas()V

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zztp;->zzW:Z

    goto/16 :goto_26

    .line 116
    :cond_36
    throw v17
    :try_end_1e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1e .. :try_end_1e} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_13

    :catch_13
    move-exception v0

    move-object v2, v0

    move v1, v13

    goto/16 :goto_2d

    :cond_37
    const/4 v3, 0x0

    .line 113
    :try_start_1f
    iget v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzT:I
    :try_end_1f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1f .. :try_end_1f} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_1f} :catch_19

    if-ne v6, v13, :cond_3b

    move v14, v3

    :goto_21
    :try_start_20
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v6, :cond_3a

    .line 82
    move-object v7, v6

    check-cast v7, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v14, v6, :cond_39

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    .line 83
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zztp;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_38

    .line 84
    move-object v8, v7

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v14, v14, 0x1

    goto :goto_21

    .line 117
    :cond_38
    throw v17

    .line 84
    :cond_39
    iput v12, v4, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    goto :goto_22

    .line 127
    :cond_3a
    throw v17
    :try_end_20
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_20 .. :try_end_20} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_20} :catch_13

    .line 84
    :cond_3b
    :goto_22
    :try_start_21
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_50

    .line 85
    move-object v8, v7

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzl()Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v8
    :try_end_21
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_21 .. :try_end_21} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_21} :catch_19

    .line 87
    :try_start_22
    invoke-virtual {v4, v8, v6, v3}, Lcom/google/android/gms/internal/ads/zzic;->zzcV(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzhs;I)I

    move-result v6
    :try_end_22
    .catch Lcom/google/android/gms/internal/ads/zzhr; {:try_start_22 .. :try_end_22} :catch_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_22 .. :try_end_22} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_22} :catch_19

    const/4 v9, -0x3

    if-ne v6, v9, :cond_3c

    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzR()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J

    goto/16 :goto_28

    :cond_3c
    const/4 v14, -0x5

    if-ne v6, v14, :cond_3e

    iget v5, v4, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    if-ne v5, v12, :cond_3d

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zztp;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    .line 91
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    .line 92
    :cond_3d
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zztp;->zzae(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzie;
    :try_end_23
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_23 .. :try_end_23} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_23} :catch_13

    goto/16 :goto_26

    :cond_3e
    :try_start_24
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzg:Lcom/google/android/gms/internal/ads/zzhs;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhm;->zzf()Z

    move-result v8
    :try_end_24
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_24 .. :try_end_24} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_24} :catch_19

    if-eqz v8, :cond_41

    :try_start_25
    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J

    iget v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    if-ne v1, v12, :cond_3f

    .line 118
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    :cond_3f
    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zztp;->zzab:Z

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzW:Z

    if-nez v1, :cond_40

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzai()V

    goto/16 :goto_28

    :cond_40
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzG:Z

    if-nez v1, :cond_52

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zztp;->zzX:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zzK:I

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 120
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zztf;->zzk(IIIJI)V

    .line 121
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzas()V
    :try_end_25
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_25 .. :try_end_25} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_25} :catch_13

    goto/16 :goto_28

    :cond_41
    :try_start_26
    iget-boolean v8, v4, Lcom/google/android/gms/internal/ads/zztp;->zzW:Z
    :try_end_26
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_26 .. :try_end_26} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_26} :catch_19

    if-nez v8, :cond_42

    :try_start_27
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhm;->zzg()Z

    move-result v8

    if-nez v8, :cond_42

    .line 112
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iget v5, v4, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    if-ne v5, v12, :cond_4f

    iput v13, v4, Lcom/google/android/gms/internal/ads/zztp;->zzT:I
    :try_end_27
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_27 .. :try_end_27} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_27} :catch_13

    goto/16 :goto_26

    .line 93
    :cond_42
    :try_start_28
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zztp;->zzaU(Lcom/google/android/gms/internal/ads/zzhs;)Z

    move-result v8

    if-nez v8, :cond_4f

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhs;->zzl()Z

    move-result v8
    :try_end_28
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_28 .. :try_end_28} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_28} :catch_19

    if-eqz v8, :cond_43

    :try_start_29
    iget-object v9, v6, Lcom/google/android/gms/internal/ads/zzhs;->zzb:Lcom/google/android/gms/internal/ads/zzhp;

    .line 94
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzhp;->zzb(I)V
    :try_end_29
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_29 .. :try_end_29} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_29} :catch_13

    :cond_43
    :try_start_2a
    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/zzhs;->zze:J

    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/zztp;->zzad:Z
    :try_end_2a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2a .. :try_end_2a} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_2a} :catch_19

    if-eqz v7, :cond_47

    :try_start_2b
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zztp;->zzk:Ljava/util/ArrayDeque;

    .line 95
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_45

    .line 96
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zztn;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zztn;->zze:Lcom/google/android/gms/internal/ads/zzet;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v11, :cond_44

    .line 97
    move-object v15, v11

    check-cast v15, Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v7, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzet;->zzd(JLjava/lang/Object;)V

    goto :goto_23

    .line 122
    :cond_44
    throw v17

    .line 107
    :cond_45
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    .line 98
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zztn;->zze:Lcom/google/android/gms/internal/ads/zzet;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v11, :cond_46

    move-object v15, v11

    check-cast v15, Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v7, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzet;->zzd(JLjava/lang/Object;)V

    .line 97
    :goto_23
    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzad:Z

    goto :goto_24

    .line 124
    :cond_46
    throw v17
    :try_end_2b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2b .. :try_end_2b} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2b} :catch_13

    .line 97
    :cond_47
    :goto_24
    :try_start_2c
    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    .line 99
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/zztp;->zzZ:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzR()Z

    move-result v7
    :try_end_2c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2c .. :try_end_2c} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_2c} :catch_19

    if-nez v7, :cond_48

    :try_start_2d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhm;->zzh()Z

    move-result v7
    :try_end_2d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2d .. :try_end_2d} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_2d} :catch_13

    if-eqz v7, :cond_49

    :cond_48
    :try_start_2e
    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J

    .line 100
    :cond_49
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhs;->zzk()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhm;->zze()Z

    move-result v7
    :try_end_2e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2e .. :try_end_2e} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_2e} :catch_19

    if-eqz v7, :cond_4a

    .line 101
    :try_start_2f
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zztp;->zzan(Lcom/google/android/gms/internal/ads/zzhs;)V
    :try_end_2f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2f .. :try_end_2f} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_2f} :catch_13

    .line 102
    :cond_4a
    :try_start_30
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zztp;->zzaL(Lcom/google/android/gms/internal/ads/zzhs;)V

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zztp;->zzay(Lcom/google/android/gms/internal/ads/zzhs;)I

    move-result v11

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x22

    if-lt v7, v14, :cond_4b

    and-int/lit8 v7, v11, 0x20

    if-nez v7, :cond_4c

    .line 103
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzo()Lcom/google/android/gms/internal/ads/zzme;

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zztp;->zzak:J

    iget-wide v12, v6, Lcom/google/android/gms/internal/ads/zzhs;->zze:J

    .line 104
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v4, Lcom/google/android/gms/internal/ads/zztp;->zzak:J

    :cond_4c
    if-eqz v8, :cond_4d

    .line 108
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/internal/ads/zztf;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zztp;->zzK:I

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzhs;->zzb:Lcom/google/android/gms/internal/ads/zzhp;

    const/4 v12, 0x0

    move v6, v7

    move v7, v12

    .line 109
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zztf;->zzl(IILcom/google/android/gms/internal/ads/zzhp;JI)V

    goto :goto_25

    .line 105
    :cond_4d
    move-object v7, v5

    check-cast v7, Lcom/google/android/gms/internal/ads/zztf;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zztp;->zzK:I

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzhs;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_4e

    .line 106
    move-object v8, v6

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v12, 0x0

    move v6, v7

    move v7, v12

    .line 107
    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zztf;->zzk(IIIJI)V

    .line 110
    :goto_25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzas()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/zztp;->zzW:Z

    iput v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzid;

    .line 111
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzid;->zzc:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/google/android/gms/internal/ads/zzid;->zzc:I

    goto :goto_26

    .line 123
    :cond_4e
    throw v17

    :catch_14
    move-exception v0

    move-object v5, v0

    .line 88
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zztp;->zzao(Ljava/lang/Exception;)V

    .line 89
    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zztp;->zzbh(I)Z

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzah()V

    .line 113
    :cond_4f
    :goto_26
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zztp;->zzbi(J)Z

    move-result v5

    if-eqz v5, :cond_52

    goto/16 :goto_20

    .line 126
    :cond_50
    throw v17

    :cond_51
    :goto_27
    const/4 v3, 0x0

    .line 125
    :cond_52
    :goto_28
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v1, 0x1

    goto :goto_2a

    :catch_15
    move-exception v0

    const/4 v3, 0x0

    goto :goto_29

    :catch_16
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_32

    :catch_17
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto :goto_29

    :catch_18
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_32

    :cond_53
    move v3, v12

    move-object v4, v15

    const/16 v17, 0x0

    .line 72
    throw v17

    :cond_54
    move v3, v12

    move-object/from16 v17, v14

    move-object v4, v15

    .line 128
    throw v17
    :try_end_30
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_30 .. :try_end_30} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_30} :catch_19

    :catch_19
    move-exception v0

    goto :goto_29

    :catch_1a
    move-exception v0

    move v3, v12

    move-object v4, v15

    :goto_29
    move-object v2, v0

    const/4 v1, 0x1

    goto :goto_2d

    :cond_55
    move v3, v12

    move-object v4, v15

    .line 57
    :try_start_31
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzid;

    .line 129
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzid;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzic;->zzd(J)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzid;->zzd:I
    :try_end_31
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_31 .. :try_end_31} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_31} :catch_1c

    const/4 v1, 0x1

    .line 130
    :try_start_32
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zztp;->zzbh(I)Z

    .line 37
    :goto_2a
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzid;

    .line 131
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzid;->zza()V
    :try_end_32
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_32 .. :try_end_32} :catch_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_32} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    goto :goto_2c

    :catch_1c
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2c

    :catch_1d
    move-exception v0

    goto/16 :goto_32

    :catch_1e
    move-exception v0

    move v3, v12

    move v1, v13

    goto :goto_2b

    :catch_1f
    move-exception v0

    move v3, v12

    goto :goto_31

    :catch_20
    move-exception v0

    move v1, v13

    move v3, v14

    :goto_2b
    move-object v4, v15

    :goto_2c
    move-object v2, v0

    .line 132
    :goto_2d
    instance-of v5, v2, Landroid/media/MediaCodec$CodecException;

    if-eqz v5, :cond_56

    goto :goto_2e

    .line 133
    :cond_56
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 134
    array-length v7, v6

    if-lez v7, :cond_5a

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.MediaCodec"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 136
    :goto_2e
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zztp;->zzao(Ljava/lang/Exception;)V

    if-eqz v5, :cond_57

    .line 137
    move-object v5, v2

    check-cast v5, Landroid/media/MediaCodec$CodecException;

    .line 138
    invoke-virtual {v5}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v5

    if-eqz v5, :cond_57

    move v14, v1

    goto :goto_2f

    :cond_57
    move v14, v3

    :goto_2f
    if-eqz v14, :cond_58

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaM()V

    :cond_58
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zztp;->zzA:Lcom/google/android/gms/internal/ads/zzti;

    .line 140
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zztp;->zzaG(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzth;->zza:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_59

    const/16 v2, 0xfa6

    goto :goto_30

    :cond_59
    const/16 v2, 0xfa3

    :goto_30
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    .line 141
    invoke-virtual {v4, v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/zzic;->zzk(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzin;

    move-result-object v1

    throw v1

    .line 135
    :cond_5a
    throw v2

    :catch_21
    move-exception v0

    move v3, v14

    :goto_31
    move-object v4, v15

    :goto_32
    move-object v1, v0

    .line 130
    :goto_33
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    .line 142
    invoke-virtual {v1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzex;->zzl(I)I

    move-result v5

    .line 143
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzic;->zzk(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzin;

    move-result-object v1

    .line 144
    throw v1
.end method

.method public zzX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzac:Z

    return v0
.end method

.method public zzY()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzT()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbf()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzJ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcX()Lcom/google/android/gms/internal/ads/zzdj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zztp;->zzJ:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzZ(Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzd:Lcom/google/android/gms/internal/ads/zztr;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zztp;->zzab(Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzz;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zztw; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    .line 2
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzic;->zzk(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzin;

    move-result-object p1

    .line 3
    throw p1
.end method

.method protected final zzaA()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zztn;->zzd:J

    return-wide v0
.end method

.method protected final zzaB()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzae:Lcom/google/android/gms/internal/ads/zztn;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zztn;->zzc:J

    return-wide v0
.end method

.method protected final zzaC()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzv:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected final zzaE()Lcom/google/android/gms/internal/ads/zzlz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzo:Lcom/google/android/gms/internal/ads/zzlz;

    return-object v0
.end method

.method protected final zzaF()Lcom/google/android/gms/internal/ads/zztf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    return-object v0
.end method

.method protected zzaG(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzth;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzth;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzti;)V

    return-object v0
.end method

.method protected final zzaH()Lcom/google/android/gms/internal/ads/zzti;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzA:Lcom/google/android/gms/internal/ads/zzti;

    return-object v0
.end method

.method public final zzaI()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzah:Z

    return-void
.end method

.method protected final zzaJ()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    const-string v9, "MediaCodecRenderer"

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-nez v0, :cond_47

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzP:Z

    if-nez v0, :cond_47

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v10, :cond_0

    goto/16 :goto_1b

    :cond_0
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zztp;->zzaS(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaf()V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    .line 7
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzsw;->zzo(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzi:Lcom/google/android/gms/internal/ads/zzsw;

    const/16 v1, 0x20

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsw;->zzo(I)V

    .line 7
    :goto_0
    iput-boolean v11, v8, Lcom/google/android/gms/internal/ads/zztp;->zzP:Z

    return-void

    .line 6
    :cond_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzam:Lcom/google/android/gms/internal/ads/zzsi;

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzal:Lcom/google/android/gms/internal/ads/zzsi;

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzal:Lcom/google/android/gms/internal/ads/zzsi;

    .line 9
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzsj;->zza:Z

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsi;->zza()Lcom/google/android/gms/internal/ads/zzsa;

    :cond_3
    const/4 v12, 0x0

    :try_start_0
    iget-object v13, v8, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v14, 0x0

    if-eqz v13, :cond_46

    .line 11
    move-object v0, v13

    check-cast v0, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzy:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zztl; {:try_start_0 .. :try_end_0} :catch_10

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzd:Lcom/google/android/gms/internal/ads/zztr;

    .line 12
    invoke-virtual {v8, v0, v13, v12}, Lcom/google/android/gms/internal/ads/zztp;->zzak(Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzz;Z)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zztp;->zzy:Ljava/util/ArrayDeque;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zztp;->zzy:Ljava/util/ArrayDeque;

    .line 16
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v14, v8, Lcom/google/android/gms/internal/ads/zztp;->zzz:Lcom/google/android/gms/internal/ads/zztl;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zztw; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zztl; {:try_start_1 .. :try_end_1} :catch_10

    goto :goto_1

    :catch_0
    move-exception v0

    .line 151
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zztl;

    const v2, -0xc34e

    .line 17
    invoke-direct {v1, v13, v0, v12, v2}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/Throwable;ZI)V

    throw v1

    .line 16
    :cond_5
    :goto_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzy:Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    .line 19
    iget-object v15, v8, Lcom/google/android/gms/internal/ads/zztp;->zzy:Ljava/util/ArrayDeque;

    if-eqz v15, :cond_44

    .line 20
    move-object v0, v15

    check-cast v0, Ljava/util/ArrayDeque;

    :goto_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-nez v0, :cond_43

    .line 21
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzti;

    if-eqz v6, :cond_42

    move-object v0, v6

    check-cast v0, Lcom/google/android/gms/internal/ads/zzti;

    .line 22
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zztp;->zzaT(Lcom/google/android/gms/internal/ads/zzz;)Z

    .line 23
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zztp;->zzaW(Lcom/google/android/gms/internal/ads/zzti;)Z

    move-result v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zztl; {:try_start_2 .. :try_end_2} :catch_10

    if-eqz v0, :cond_47

    :try_start_3
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/zztp;->zzA:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v0, :cond_3f

    .line 24
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    iget v1, v8, Lcom/google/android/gms/internal/ads/zztp;->zzs:F

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzU()[Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v3

    invoke-virtual {v8, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zztp;->zzaa(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F

    move-result v1

    iget v3, v8, Lcom/google/android/gms/internal/ads/zztp;->zze:F

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_6

    const/high16 v1, -0x40800000    # -1.0f

    .line 26
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcX()Lcom/google/android/gms/internal/ads/zzdj;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v16

    .line 27
    invoke-virtual {v8, v6, v0, v14, v1}, Lcom/google/android/gms/internal/ads/zztp;->zzaj(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    if-lt v5, v7, :cond_7

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzp()Lcom/google/android/gms/internal/ads/zzph;

    move-result-object v5

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzph;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v5

    .line 30
    sget-object v7, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v5, v7}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zztc;->zzb:Landroid/media/MediaFormat;

    const-string v12, "log-session-id"

    .line 31
    invoke-virtual {v5}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v12, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    :cond_7
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodec:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zztp;->zzc:Lcom/google/android/gms/internal/ads/zztd;

    .line 34
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zztd;->zzd(Lcom/google/android/gms/internal/ads/zztc;)Lcom/google/android/gms/internal/ads/zztf;

    move-result-object v5

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    new-instance v7, Lcom/google/android/gms/internal/ads/zztm;

    .line 35
    invoke-direct {v7, v8, v14}, Lcom/google/android/gms/internal/ads/zztm;-><init>(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zzto;)V

    .line 36
    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/zztf;->zzs(Lcom/google/android/gms/internal/ads/zzte;)Z

    move-result v5

    iput-boolean v5, v8, Lcom/google/android/gms/internal/ads/zztp;->zzI:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcX()Lcom/google/android/gms/internal/ads/zzdj;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v18

    .line 40
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzti;->zzf(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    if-nez v5, :cond_38

    :try_start_6
    const-string v5, "Format exceeds selected codec\'s capabilities [%s, %s]"

    const-string v12, ","

    .line 41
    move-object/from16 v20, v12

    check-cast v20, Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id="

    .line 43
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzz;->zza:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", mimeType="

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzz;->zzn:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    if-eqz v7, :cond_8

    :try_start_7
    const-string v11, ", container="

    .line 44
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v11, v6

    move-object/from16 v21, v10

    :goto_3
    move-object/from16 v23, v13

    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_16

    :cond_8
    :goto_5
    :try_start_8
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzz;->zzj:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    const/4 v11, -0x1

    if-eq v7, v11, :cond_9

    :try_start_9
    const-string v4, ", bitrate="

    .line 45
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_9
    :try_start_a
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    if-eqz v4, :cond_a

    :try_start_b
    const-string v7, ", codecs="

    .line 46
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :cond_a
    :try_start_c
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    if-eqz v4, :cond_11

    :try_start_d
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 47
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object/from16 v21, v10

    const/4 v11, 0x0

    :goto_6
    :try_start_e
    iget v10, v4, Lcom/google/android/gms/internal/ads/zzs;->zzb:I

    if-ge v11, v10, :cond_10

    .line 48
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)Lcom/google/android/gms/internal/ads/zzr;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzr;->zza:Ljava/util/UUID;

    move-object/from16 v22, v4

    .line 49
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zzb:Ljava/util/UUID;

    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    if-eqz v4, :cond_b

    :try_start_f
    const-string v4, "cenc"

    .line 50
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    :goto_7
    move-object/from16 v23, v13

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v11, v6

    goto :goto_3

    :cond_b
    :try_start_10
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zzc:Ljava/util/UUID;

    .line 51
    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    if-eqz v4, :cond_c

    :try_start_11
    const-string v4, "clearkey"

    .line 52
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_7

    :cond_c
    :try_start_12
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zze:Ljava/util/UUID;

    .line 53
    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    if-eqz v4, :cond_d

    :try_start_13
    const-string v4, "playready"

    .line 54
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_7

    :cond_d
    :try_start_14
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zzd:Ljava/util/UUID;

    .line 55
    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    if-eqz v4, :cond_e

    :try_start_15
    const-string v4, "widevine"

    .line 56
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_7

    :cond_e
    :try_start_16
    sget-object v4, Lcom/google/android/gms/internal/ads/zzh;->zza:Ljava/util/UUID;

    .line 57
    invoke-virtual {v10, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    if-eqz v4, :cond_f

    :try_start_17
    const-string v4, "universal"

    .line 58
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    goto :goto_7

    .line 59
    :cond_f
    :try_start_18
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    move-object/from16 v23, v13

    :try_start_19
    const-string v13, "unknown ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v22

    move-object/from16 v13, v23

    goto :goto_6

    :cond_10
    move-object/from16 v23, v13

    const-string v4, ", drm=["

    .line 60
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-static {v14, v7, v12}, Lcom/google/android/gms/internal/ads/zzfvh;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    .line 62
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v21, v10

    :goto_9
    move-object/from16 v23, v13

    :goto_a
    move-object v11, v6

    goto/16 :goto_4

    :cond_11
    move-object/from16 v21, v10

    move-object/from16 v23, v13

    :goto_b
    :try_start_1a
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzv:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_9

    const-string v7, "x"

    const/4 v10, -0x1

    if-eq v4, v10, :cond_12

    :try_start_1b
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    if-eq v11, v10, :cond_12

    const-string v10, ", res="

    .line 63
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_a

    :cond_12
    :goto_c
    :try_start_1c
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzx:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    const/4 v10, -0x1

    if-eq v4, v10, :cond_13

    :try_start_1d
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzz;->zzy:I

    if-eq v11, v10, :cond_13

    const-string v10, ", decRes="

    .line 64
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5

    :cond_13
    :try_start_1e
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzB:F

    float-to-double v10, v4

    .line 68
    sget v7, Lcom/google/android/gms/internal/ads/zzgbj;->zza:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    move-object v13, v6

    add-double v6, v10, v24

    move-object/from16 v22, v9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 69
    :try_start_1f
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v6
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8

    const-wide v24, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v6, v6, v24

    if-lez v6, :cond_15

    cmpl-double v6, v10, v8

    if-eqz v6, :cond_15

    .line 70
    :try_start_20
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_15

    :cond_14
    const-string v6, ", par="

    .line 71
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%.3f"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 72
    invoke-static {v7, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    const/4 v10, 0x1

    move-object/from16 v9, p0

    move-object v11, v13

    move-object/from16 v8, v22

    goto/16 :goto_17

    :cond_15
    :goto_d
    :try_start_21
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzE:Lcom/google/android/gms/internal/ads/zzk;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8

    if-eqz v4, :cond_17

    :try_start_22
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzk;->zze()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzf()Z

    move-result v6

    if-eqz v6, :cond_17

    :cond_16
    const-string v6, ", color="

    .line 73
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzk;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_6

    :cond_17
    :try_start_23
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzz:F
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_8

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_18

    :try_start_24
    const-string v6, ", fps="

    .line 74
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_6

    :cond_18
    :try_start_25
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzF:I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_8

    const/4 v6, -0x1

    if-eq v4, v6, :cond_19

    :try_start_26
    const-string v6, ", maxSubLayers="

    .line 75
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6

    :cond_19
    :try_start_27
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzG:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_8

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1a

    :try_start_28
    const-string v6, ", channels="

    .line 76
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_6

    :cond_1a
    :try_start_29
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzH:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_8

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1b

    :try_start_2a
    const-string v6, ", sample_rate="

    .line 77
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_6

    :cond_1b
    :try_start_2b
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_8

    if-eqz v4, :cond_1c

    :try_start_2c
    const-string v6, ", language="

    .line 78
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_6

    :cond_1c
    :try_start_2d
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzc:Ljava/util/List;

    .line 79
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_8

    const-string v7, "]"

    if-nez v6, :cond_1d

    :try_start_2e
    const-string v6, ", labels=["

    .line 80
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzw;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzw;-><init>()V

    .line 81
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzfzg;->zzc(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfve;)Ljava/util/List;

    move-result-object v4

    .line 82
    invoke-static {v14, v4, v12}, Lcom/google/android/gms/internal/ads/zzfvh;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_6

    :cond_1d
    :try_start_2f
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zze:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_8

    if-eqz v4, :cond_20

    :try_start_30
    const-string v6, ", selectionFlags=["

    .line 84
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sget-object v6, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    .line 86
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_1e

    const-string v8, "default"

    .line 87
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1f

    const-string v4, "forced"

    .line 88
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1f
    invoke-static {v14, v6, v12}, Lcom/google/android/gms/internal/ads/zzfvh;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_6

    :cond_20
    :try_start_31
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzf:I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_8

    const v6, 0x8000

    if-eqz v4, :cond_31

    :try_start_32
    const-string v8, ", roleFlags=["

    .line 90
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    sget-object v8, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    .line 92
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_21

    const-string v9, "main"

    .line 93
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    and-int/lit8 v9, v4, 0x2

    if-eqz v9, :cond_22

    const-string v9, "alt"

    .line 94
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_23

    const-string v9, "supplementary"

    .line 95
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v9, v4, 0x8

    if-eqz v9, :cond_24

    const-string v9, "commentary"

    .line 96
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    and-int/lit8 v9, v4, 0x10

    if-eqz v9, :cond_25

    const-string v9, "dub"

    .line 97
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    and-int/lit8 v9, v4, 0x20

    if-eqz v9, :cond_26

    const-string v9, "emergency"

    .line 98
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit8 v9, v4, 0x40

    if-eqz v9, :cond_27

    const-string v9, "caption"

    .line 99
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    and-int/lit16 v9, v4, 0x80

    if-eqz v9, :cond_28

    const-string v9, "subtitle"

    .line 100
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit16 v9, v4, 0x100

    if-eqz v9, :cond_29

    const-string v9, "sign"

    .line 101
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v9, v4, 0x200

    if-eqz v9, :cond_2a

    const-string v9, "describes-video"

    .line 102
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    and-int/lit16 v9, v4, 0x400

    if-eqz v9, :cond_2b

    const-string v9, "describes-music"

    .line 103
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    and-int/lit16 v9, v4, 0x800

    if-eqz v9, :cond_2c

    const-string v9, "enhanced-intelligibility"

    .line 104
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    and-int/lit16 v9, v4, 0x1000

    if-eqz v9, :cond_2d

    const-string v9, "transcribes-dialog"

    .line 105
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    and-int/lit16 v9, v4, 0x2000

    if-eqz v9, :cond_2e

    const-string v9, "easy-read"

    .line 106
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    and-int/lit16 v9, v4, 0x4000

    if-eqz v9, :cond_2f

    const-string v9, "trick-play"

    .line 107
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    and-int v9, v4, v6

    if-eqz v9, :cond_30

    const-string v9, "auxiliary"

    .line 108
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_30
    invoke-static {v14, v8, v12}, Lcom/google/android/gms/internal/ads/zzfvh;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    and-int/2addr v4, v6

    if-eqz v4, :cond_37

    const-string v4, ", auxiliaryTrackType="

    .line 110
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzz;->zzg:I

    .line 111
    sget-object v6, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    if-eqz v4, :cond_36

    const/4 v6, 0x1

    if-eq v4, v6, :cond_35

    const/4 v6, 0x2

    if-eq v4, v6, :cond_34

    const/4 v6, 0x3

    if-eq v4, v6, :cond_33

    const/4 v6, 0x4

    if-ne v4, v6, :cond_32

    .line 124
    const-string v4, "depth metadata"

    goto :goto_e

    .line 38
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported auxiliary track type"

    .line 140
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_33
    const-string v4, "depth-inverse"

    goto :goto_e

    :cond_34
    const-string v4, "depth-linear"

    goto :goto_e

    :cond_35
    const-string v4, "original"

    goto :goto_e

    .line 111
    :cond_36
    const-string v4, "undefined"

    :goto_e
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_6

    :cond_37
    :try_start_33
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    .line 112
    sget-object v6, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 113
    invoke-static {v6, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_8

    move-object/from16 v8, v22

    .line 114
    :try_start_34
    invoke-static {v8, v4}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v8, v22

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v13, v6

    move-object v8, v9

    goto :goto_f

    :catch_a
    move-exception v0

    move-object v8, v9

    move-object/from16 v21, v10

    move-object/from16 v23, v13

    move-object v13, v6

    :goto_f
    const/4 v10, 0x1

    move-object/from16 v9, p0

    :goto_10
    move-object v11, v13

    goto/16 :goto_17

    :cond_38
    move-object v8, v9

    move-object/from16 v21, v10

    move-object/from16 v23, v13

    move-object v13, v6

    :goto_11
    move-object/from16 v9, p0

    :try_start_35
    iput v1, v9, Lcom/google/android/gms/internal/ads/zztp;->zzx:F

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v1, 0x0

    .line 119
    iput v1, v9, Lcom/google/android/gms/internal/ads/zztp;->zzB:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_39

    const-string v0, "c2.android.aac.decoder"

    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_12

    :cond_39
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, v9, Lcom/google/android/gms/internal/ads/zztp;->zzC:Z

    const/4 v4, 0x0

    .line 126
    iput-boolean v4, v9, Lcom/google/android/gms/internal/ads/zztp;->zzD:Z

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    .line 127
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v4, v1, :cond_3b

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    .line 132
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_14

    :cond_3a
    :goto_13
    const/4 v0, 0x1

    goto :goto_15

    :cond_3b
    :goto_14
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "AFTS"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, v13, Lcom/google/android/gms/internal/ads/zzti;->zzf:Z

    if-eqz v0, :cond_3c

    goto :goto_13

    :cond_3c
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, v9, Lcom/google/android/gms/internal/ads/zztp;->zzG:Z

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-eqz v0, :cond_3e

    .line 135
    check-cast v0, Lcom/google/android/gms/internal/ads/zztf;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcU()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzic;->zzcX()Lcom/google/android/gms/internal/ads/zzdj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdj;->zzb()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    add-long/2addr v0, v4

    iput-wide v0, v9, Lcom/google/android/gms/internal/ads/zztp;->zzJ:J

    :cond_3d
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzid;

    .line 137
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzid;->zza:I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_c

    const/4 v10, 0x1

    add-int/2addr v1, v10

    :try_start_36
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzid;->zza:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_b

    sub-long v6, v18, v16

    move-object/from16 v1, p0

    move-wide/from16 v4, v18

    move-object v11, v13

    .line 138
    :try_start_37
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zztp;->zzap(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zztc;JJ)V

    move v11, v10

    move-object/from16 v10, v21

    move-object/from16 v13, v23

    goto/16 :goto_19

    :catch_b
    move-exception v0

    goto/16 :goto_10

    :cond_3e
    move-object v11, v13

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 139
    throw v1

    :catch_c
    move-exception v0

    move-object v11, v13

    const/4 v10, 0x1

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object/from16 v21, v10

    move v10, v11

    move-object/from16 v23, v13

    move-object v11, v6

    move-object/from16 v26, v9

    move-object v9, v8

    move-object/from16 v8, v26

    .line 37
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 38
    throw v0

    :cond_3f
    move-object/from16 v21, v10

    move v10, v11

    move-object/from16 v23, v13

    move-object v1, v14

    move-object v11, v6

    move-object/from16 v26, v9

    move-object v9, v8

    move-object/from16 v8, v26

    .line 141
    throw v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_d

    :catch_d
    move-exception v0

    goto :goto_17

    :catch_e
    move-exception v0

    move-object/from16 v21, v10

    move v10, v11

    move-object/from16 v23, v13

    move-object v11, v6

    :goto_16
    move-object/from16 v26, v9

    move-object v9, v8

    move-object/from16 v8, v26

    .line 149
    :goto_17
    :try_start_38
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    const-string v2, "Failed to initialize decoder: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    invoke-static {v8, v1, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztl;

    move-object/from16 v2, v23

    const/4 v3, 0x0

    .line 144
    invoke-direct {v1, v2, v0, v3, v11}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzti;)V

    .line 145
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zztp;->zzao(Ljava/lang/Exception;)V

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zztp;->zzz:Lcom/google/android/gms/internal/ads/zztl;

    if-nez v0, :cond_40

    iput-object v1, v9, Lcom/google/android/gms/internal/ads/zztp;->zzz:Lcom/google/android/gms/internal/ads/zztl;

    goto :goto_18

    .line 146
    :cond_40
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zztl;->zza(Lcom/google/android/gms/internal/ads/zztl;Lcom/google/android/gms/internal/ads/zztl;)Lcom/google/android/gms/internal/ads/zztl;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zztp;->zzz:Lcom/google/android/gms/internal/ads/zztl;

    .line 147
    :goto_18
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    move-object v13, v2

    move v11, v10

    move-object/from16 v10, v21

    :goto_19
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v26, v9

    move-object v9, v8

    move-object/from16 v8, v26

    goto/16 :goto_2

    :cond_41
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zztp;->zzz:Lcom/google/android/gms/internal/ads/zztl;

    .line 148
    throw v0

    :cond_42
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v1, v14

    .line 149
    throw v1

    :cond_43
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v1, v14

    .line 124
    iput-object v1, v9, Lcom/google/android/gms/internal/ads/zztp;->zzy:Ljava/util/ArrayDeque;

    return-void

    :cond_44
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v1, v14

    .line 150
    throw v1

    :cond_45
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v2, v13

    move-object v1, v14

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zztl;

    const v3, -0xc34f

    const/4 v4, 0x0

    .line 19
    invoke-direct {v0, v2, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zztl;-><init>(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_46
    move-object v9, v8

    move-object/from16 v21, v10

    move-object v1, v14

    .line 151
    throw v1
    :try_end_38
    .catch Lcom/google/android/gms/internal/ads/zztl; {:try_start_38 .. :try_end_38} :catch_f

    :catch_f
    move-exception v0

    goto :goto_1a

    :catch_10
    move-exception v0

    move-object v9, v8

    move-object/from16 v21, v10

    :goto_1a
    const/16 v1, 0xfa1

    move-object/from16 v2, v21

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v9, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzic;->zzk(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzin;

    move-result-object v0

    .line 153
    throw v0

    :cond_47
    :goto_1b
    move-object v9, v8

    return-void
.end method

.method protected zzaK(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzaf:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zztn;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zztn;->zzb:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zztn;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zztn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zztp;->zzbb(Lcom/google/android/gms/internal/ads/zztn;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzat()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zzaL(Lcom/google/android/gms/internal/ads/zzhs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    return-void
.end method

.method protected final zzaM()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zztf;->zzm()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzid;

    .line 2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzid;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzid;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzA:Lcom/google/android/gms/internal/ads/zzti;

    if-eqz v1, :cond_0

    .line 3
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzti;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zztp;->zzaq(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzp:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzal:Lcom/google/android/gms/internal/ads/zzsi;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaO()V

    return-void

    :catchall_0
    move-exception v1

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzp:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzal:Lcom/google/android/gms/internal/ads/zzsi;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaO()V

    .line 6
    throw v1
.end method

.method protected zzaN()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzas()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzba()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzam()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzJ:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzX:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzH:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzW:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzE:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzF:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzN:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzO:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzU:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzS:Z

    iput v3, p0, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzai:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzaj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzak:J

    return-void
.end method

.method protected final zzaO()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaN()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzy:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzA:Lcom/google/android/gms/internal/ads/zzti;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzv:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzY:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzx:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzB:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzC:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzI:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzS:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    return-void
.end method

.method protected final zzaP()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaJ()V

    :cond_0
    return v0
.end method

.method protected final zzaQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzai:Z

    return v0
.end method

.method protected final zzaR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzP:Z

    return v0
.end method

.method protected final zzaS(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzam:Lcom/google/android/gms/internal/ads/zzsi;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zztp;->zzaw(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected zzaT(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaU(Lcom/google/android/gms/internal/ads/zzhs;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected zzaV()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected zzaW(Lcom/google/android/gms/internal/ads/zzti;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected zzaX()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzC:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzY:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzD:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzX:Z

    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbc()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzin; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v3, "Failed to update the DRM session, releasing the codec instead."

    .line 2
    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    return v2
.end method

.method protected final zzaZ()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zztp;->zzbj(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    return v0
.end method

.method protected zzaa(FLcom/google/android/gms/internal/ads/zzz;[Lcom/google/android/gms/internal/ads/zzz;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected abstract zzab(Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzz;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztw;
        }
    .end annotation
.end method

.method protected zzac(JJZ)J
    .locals 0

    const-wide/16 p1, 0x2710

    return-wide p1
.end method

.method protected zzad(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzie;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzae(Lcom/google/android/gms/internal/ads/zzkv;)Lcom/google/android/gms/internal/ads/zzie;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzad:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    .line 2
    const-string v4, "video/av01"

    .line 4
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "video/x-vnd.on2.vp9"

    .line 5
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzr:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzT(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    :cond_1
    move-object v9, v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzsi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzam:Lcom/google/android/gms/internal/ads/zzsi;

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzP:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzR:Z

    return-object v5

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-nez p1, :cond_3

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zztp;->zzy:Ljava/util/ArrayDeque;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaJ()V

    return-object v5

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzA:Lcom/google/android/gms/internal/ads/zzti;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzti;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    .line 22
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v2, v8

    check-cast v2, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzal:Lcom/google/android/gms/internal/ads/zzsi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztp;->zzam:Lcom/google/android/gms/internal/ads/zzsi;

    if-ne v2, v4, :cond_12

    if-eq v4, v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v3

    .line 11
    :goto_0
    invoke-virtual {p0, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zztp;->zzad(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzie;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzie;->zzd:I

    const/4 v6, 0x3

    if-eqz v5, :cond_e

    const/16 v7, 0x10

    const/4 v10, 0x2

    if-eq v5, v0, :cond_a

    if-eq v5, v10, :cond_6

    .line 12
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zztp;->zzbj(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v2, :cond_f

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbd()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3

    .line 14
    :cond_6
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zztp;->zzbj(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_2

    :cond_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzS:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzT:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zztp;->zzB:I

    if-eq v7, v10, :cond_9

    if-ne v7, v0, :cond_8

    iget v7, v9, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    iget v11, v8, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    if-ne v7, v11, :cond_8

    iget v7, v9, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    iget v11, v8, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    if-ne v7, v11, :cond_8

    goto :goto_1

    :cond_8
    move v0, v3

    :cond_9
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzE:Z

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v2, :cond_f

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbd()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3

    .line 16
    :cond_a
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zztp;->zzbj(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v11

    if-nez v11, :cond_b

    :goto_2
    move v11, v7

    goto :goto_5

    :cond_b
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zztp;->zzu:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v2, :cond_c

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbd()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_3
    move v11, v10

    goto :goto_5

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzW:Z

    if-eqz v2, :cond_f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzU:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzD:Z

    if-eqz v2, :cond_d

    iput v6, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    goto :goto_3

    :cond_d
    iput v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    goto :goto_4

    .line 18
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzag()V

    :cond_f
    :goto_4
    move v11, v3

    :goto_5
    if-eqz v5, :cond_11

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzt:Lcom/google/android/gms/internal/ads/zztf;

    if-ne v0, p1, :cond_10

    iget p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zzV:I

    if-ne p1, v6, :cond_11

    :cond_10
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzie;

    const/4 v10, 0x0

    move-object v6, p1

    .line 19
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzie;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object p1

    :cond_11
    return-object v4

    .line 20
    :cond_12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzag()V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzti;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzie;

    const/4 v10, 0x0

    const/16 v11, 0x80

    move-object v6, p1

    .line 21
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzie;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzz;II)V

    return-object p1

    .line 1
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    .line 3
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzic;->zzk(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;ZI)Lcom/google/android/gms/internal/ads/zzin;

    move-result-object p1

    .line 2
    throw p1
.end method

.method protected abstract zzaj(Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zztc;
.end method

.method protected abstract zzak(Lcom/google/android/gms/internal/ads/zztr;Lcom/google/android/gms/internal/ads/zzz;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zztw;
        }
    .end annotation
.end method

.method protected zzan(Lcom/google/android/gms/internal/ads/zzhs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzao(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzap(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zztc;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzaq(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzar(Lcom/google/android/gms/internal/ads/zzz;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzat()V
    .locals 0

    return-void
.end method

.method protected zzau()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/4 v0, 0x0

    throw v0
.end method

.method protected abstract zzav(JJLcom/google/android/gms/internal/ads/zztf;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzz;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation
.end method

.method protected zzaw(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzax()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzr:F

    return v0
.end method

.method protected zzay(Lcom/google/android/gms/internal/ads/zzhs;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected final zzaz()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzaa:J

    return-wide v0
.end method

.method public final zze()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final zzf(JJ)J
    .locals 6

    .line 1
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zztp;->zzI:Z

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zztp;->zzac(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public zzv(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzlz;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zztp;->zzo:Lcom/google/android/gms/internal/ads/zzlz;

    :cond_0
    return-void
.end method

.method protected zzy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzm:Lcom/google/android/gms/internal/ads/zzz;

    sget-object v0, Lcom/google/android/gms/internal/ads/zztn;->zza:Lcom/google/android/gms/internal/ads/zztn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zztp;->zzbb(Lcom/google/android/gms/internal/ads/zztn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzk:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zztp;->zzP:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzaf()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zztp;->zzbe()Z

    return-void
.end method

.method protected zzz(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzin;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzid;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzid;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztp;->zza:Lcom/google/android/gms/internal/ads/zzid;

    return-void
.end method
