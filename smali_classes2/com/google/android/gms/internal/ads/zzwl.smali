.class final Lcom/google/android/gms/internal/ads/zzwl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvf;
.implements Lcom/google/android/gms/internal/ads/zzady;
.implements Lcom/google/android/gms/internal/ads/zzzs;
.implements Lcom/google/android/gms/internal/ads/zzzw;
.implements Lcom/google/android/gms/internal/ads/zzww;


# static fields
.field private static final zzb:Ljava/util/Map;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzz;


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzaeu;

.field private zzB:J

.field private zzC:Z

.field private zzD:I

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:I

.field private zzI:Z

.field private zzJ:J

.field private zzK:J

.field private zzL:Z

.field private zzM:I

.field private zzN:Z

.field private zzO:Z

.field private final zzP:Lcom/google/android/gms/internal/ads/zzzm;

.field private final zzd:Landroid/net/Uri;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgj;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzsh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzvr;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzsc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzwh;

.field private final zzj:J

.field private final zzk:J

.field private final zzl:Lcom/google/android/gms/internal/ads/zzaaa;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzwa;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzdm;

.field private final zzo:Ljava/lang/Runnable;

.field private final zzp:Ljava/lang/Runnable;

.field private final zzq:Landroid/os/Handler;

.field private zzr:Lcom/google/android/gms/internal/ads/zzve;

.field private zzs:Lcom/google/android/gms/internal/ads/zzagv;

.field private zzt:[Lcom/google/android/gms/internal/ads/zzwy;

.field private zzu:[Lcom/google/android/gms/internal/ads/zzwj;

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Z

.field private zzz:Lcom/google/android/gms/internal/ads/zzwk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwl;->zzb:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzx;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    const-string v1, "icy"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwl;->zzc:Lcom/google/android/gms/internal/ads/zzz;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgj;Lcom/google/android/gms/internal/ads/zzwa;Lcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzsc;Lcom/google/android/gms/internal/ads/zzzq;Lcom/google/android/gms/internal/ads/zzvr;Lcom/google/android/gms/internal/ads/zzwh;Lcom/google/android/gms/internal/ads/zzzm;Ljava/lang/String;IILcom/google/android/gms/internal/ads/zzz;JLcom/google/android/gms/internal/ads/zzaai;)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzd:Landroid/net/Uri;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzgj;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzf:Lcom/google/android/gms/internal/ads/zzsh;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzh:Lcom/google/android/gms/internal/ads/zzsc;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:Lcom/google/android/gms/internal/ads/zzvr;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzi:Lcom/google/android/gms/internal/ads/zzwh;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzP:Lcom/google/android/gms/internal/ads/zzzm;

    move v1, p11

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzj:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaa;

    const-string v2, "ProgressiveMediaPeriod"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaaa;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzl:Lcom/google/android/gms/internal/ads/zzaaa;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzm:Lcom/google/android/gms/internal/ads/zzwa;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzk:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdm;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdj;->zza:Lcom/google/android/gms/internal/ads/zzdj;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdm;-><init>(Lcom/google/android/gms/internal/ads/zzdj;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzn:Lcom/google/android/gms/internal/ads/zzdm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(Lcom/google/android/gms/internal/ads/zzwl;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzo:Ljava/lang/Runnable;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzwd;-><init>(Lcom/google/android/gms/internal/ads/zzwl;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzp:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzex;->zzy(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzq:Landroid/os/Handler;

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzwj;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzwy;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzD:I

    return-void
.end method

.method public static synthetic zzA(Lcom/google/android/gms/internal/ads/zzwl;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzO:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzr:Lcom/google/android/gms/internal/ads/zzve;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzve;->zzj(Lcom/google/android/gms/internal/ads/zzxb;)V

    :cond_0
    return-void
.end method

.method public static synthetic zzB(Lcom/google/android/gms/internal/ads/zzwl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzV()V

    return-void
.end method

.method public static synthetic zzC(Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzaeu;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzs:Lcom/google/android/gms/internal/ads/zzagv;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaet;

    const-wide/16 v3, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzaet;-><init>(JJ)V

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zza()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzI:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zza()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzC:Z

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    :goto_1
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzD:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzw:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzi:Lcom/google/android/gms/internal/ads/zzwh;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    .line 4
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzwh;->zza(JLcom/google/android/gms/internal/ads/zzaeu;Z)V

    return-void

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzV()V

    return-void
.end method

.method public static synthetic zzD(Lcom/google/android/gms/internal/ads/zzwl;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzI:Z

    return-void
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzagv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzs:Lcom/google/android/gms/internal/ads/zzagv;

    return-void
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzwl;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(Lcom/google/android/gms/internal/ads/zzwl;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzq:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzR()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwy;->zzd()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final zzS(Z)J
    .locals 6

    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzwk;->zzc:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    aget-object v3, v3, v0

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwy;->zzh()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private final zzT(Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzafb;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 2
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzwj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 3
    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzv:Z

    if-eqz v1, :cond_2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzwj;->zza:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extractor added new track (id="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadr;-><init>()V

    return-object p1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzP:Lcom/google/android/gms/internal/ads/zzzm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzf:Lcom/google/android/gms/internal/ads/zzsh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzh:Lcom/google/android/gms/internal/ads/zzsc;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzwy;

    .line 5
    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/ads/zzsh;

    .line 6
    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzsc;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzwy;-><init>(Lcom/google/android/gms/internal/ads/zzzm;Lcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzsc;)V

    .line 7
    invoke-virtual {v4, p0}, Lcom/google/android/gms/internal/ads/zzwy;->zzv(Lcom/google/android/gms/internal/ads/zzww;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    add-int/lit8 v2, v0, 0x1

    .line 8
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzwj;

    .line 9
    aput-object p1, v1, v0

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzwj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 11
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzwy;

    .line 12
    aput-object v4, p1, v0

    .line 13
    check-cast p1, [Lcom/google/android/gms/internal/ads/zzwy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    return-object v4
.end method

.method private final zzU()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzw:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private final zzV()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzO:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzw:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzv:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwy;->zzi()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    if-eqz v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzn:Lcom/google/android/gms/internal/ads/zzdm;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzd()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 4
    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzbm;

    new-array v3, v0, [Z

    move v4, v2

    :goto_1
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-ge v4, v0, :cond_9

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 5
    aget-object v8, v8, v4

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzwy;->zzi()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v8

    .line 17
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v9, v8

    check-cast v9, Lcom/google/android/gms/internal/ads/zzz;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 6
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzay;->zzh(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 7
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzay;->zzj(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    move v11, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v7

    .line 8
    :goto_3
    aput-boolean v11, v3, v4

    iget-boolean v12, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzx:Z

    or-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzx:Z

    .line 9
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzay;->zzi(Ljava/lang/String;)Z

    move-result v9

    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzk:J

    cmp-long v11, v11, v5

    if-eqz v11, :cond_4

    if-ne v0, v7, :cond_4

    if-eqz v9, :cond_4

    move v9, v7

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_4
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzy:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzs:Lcom/google/android/gms/internal/ads/zzagv;

    if-eqz v9, :cond_8

    if-nez v10, :cond_5

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzu:[Lcom/google/android/gms/internal/ads/zzwj;

    .line 10
    aget-object v11, v11, v4

    iget-boolean v11, v11, Lcom/google/android/gms/internal/ads/zzwj;->zzb:Z

    if-eqz v11, :cond_7

    :cond_5
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzz;->zzl:Lcom/google/android/gms/internal/ads/zzav;

    if-nez v11, :cond_6

    new-instance v11, Lcom/google/android/gms/internal/ads/zzav;

    new-array v12, v7, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v9, v12, v2

    .line 11
    invoke-direct {v11, v5, v6, v12}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    goto :goto_5

    .line 16
    :cond_6
    new-array v5, v7, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v9, v5, v2

    .line 12
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzav;->zzc([Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v11

    .line 11
    :goto_5
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzx;->zzaa(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v8

    :cond_7
    if-eqz v10, :cond_8

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzz;->zzh:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzz;->zzi:I

    if-ne v5, v6, :cond_8

    iget v5, v9, Lcom/google/android/gms/internal/ads/zzagv;->zza:I

    if-eq v5, v6, :cond_8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzC(I)Lcom/google/android/gms/internal/ads/zzx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v8

    :cond_8
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzf:Lcom/google/android/gms/internal/ads/zzsh;

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/ads/zzsh;->zza(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v5

    .line 15
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzz;->zzc(I)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v5

    .line 16
    new-instance v6, Lcom/google/android/gms/internal/ads/zzbm;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzz;

    aput-object v5, v7, v2

    invoke-direct {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzbm;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzz;)V

    aput-object v6, v1, v4

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzG:Z

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzu:Z

    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzG:Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 12
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwk;

    .line 18
    new-instance v2, Lcom/google/android/gms/internal/ads/zzxk;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzxk;-><init>([Lcom/google/android/gms/internal/ads/zzbm;)V

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Lcom/google/android/gms/internal/ads/zzxk;[Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzy:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 19
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzaeu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzi:Lcom/google/android/gms/internal/ads/zzwh;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzC:Z

    .line 20
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzwh;->zza(JLcom/google/android/gms/internal/ads/zzaeu;Z)V

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzw:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzr:Lcom/google/android/gms/internal/ads/zzve;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzve;->zzl(Lcom/google/android/gms/internal/ads/zzvf;)V

    :cond_b
    :goto_6
    return-void
.end method

.method private final zzW(I)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzd:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwk;->zza:Lcom/google/android/gms/internal/ads/zzxk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzxk;->zzb(I)Lcom/google/android/gms/internal/ads/zzbm;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbm;->zzb(I)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:Lcom/google/android/gms/internal/ads/zzvr;

    .line 5
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzay;->zzb(Ljava/lang/String;)I

    move-result v5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzJ:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzvd;

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzvd;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    .line 8
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzvr;->zzd(Lcom/google/android/gms/internal/ads/zzvd;)V

    const/4 v0, 0x1

    .line 9
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method private final zzX(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzU()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzL:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzb:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwy;->zzy(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzL:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzF:Z

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzJ:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzM:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 4
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 5
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzwy;->zzq(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzr:Lcom/google/android/gms/internal/ads/zzve;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzve;->zzj(Lcom/google/android/gms/internal/ads/zzxb;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzY()V
    .locals 10

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzd:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zze:Lcom/google/android/gms/internal/ads/zzgj;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzwg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzm:Lcom/google/android/gms/internal/ads/zzwa;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzn:Lcom/google/android/gms/internal/ads/zzdm;

    move-object v0, v7

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzwg;-><init>(Lcom/google/android/gms/internal/ads/zzwl;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgj;Lcom/google/android/gms/internal/ads/zzwa;Lcom/google/android/gms/internal/ads/zzady;Lcom/google/android/gms/internal/ads/zzdm;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzw:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzZ()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    return-void

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaeu;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzaeu;->zzg(J)Lcom/google/android/gms/internal/ads/zzaes;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaes;->zza:Lcom/google/android/gms/internal/ads/zzaev;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzaev;->zzc:J

    .line 4
    invoke-static {v7, v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzwg;->zzf(Lcom/google/android/gms/internal/ads/zzwg;JJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 5
    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v5, v0, v4

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    .line 6
    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzwy;->zzu(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzR()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzM:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzl:Lcom/google/android/gms/internal/ads/zzaaa;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzD:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzzq;->zza(I)I

    move-result v1

    .line 8
    invoke-virtual {v0, v7, p0, v1}, Lcom/google/android/gms/internal/ads/zzaaa;->zza(Lcom/google/android/gms/internal/ads/zzzv;Lcom/google/android/gms/internal/ads/zzzs;I)J

    return-void
.end method

.method private final zzZ()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaa()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzF:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzwl;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzj:J

    return-wide v0
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/internal/ads/zzwl;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    return-wide v0
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/internal/ads/zzwl;Z)J
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwl;->zzS(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/internal/ads/zzwl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzq:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic zzt()Lcom/google/android/gms/internal/ads/zzz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwl;->zzc:Lcom/google/android/gms/internal/ads/zzz;

    return-object v0
.end method

.method static bridge synthetic zzx(Lcom/google/android/gms/internal/ads/zzwl;)Lcom/google/android/gms/internal/ads/zzagv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzs:Lcom/google/android/gms/internal/ads/zzagv;

    return-object p0
.end method

.method static bridge synthetic zzy(Lcom/google/android/gms/internal/ads/zzwl;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzp:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic zzz()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwl;->zzb:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final zzG()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzq:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzH()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzD:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzq;->zza(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzl:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzi(I)V

    return-void
.end method

.method final zzI(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzn()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzH()V

    return-void
.end method

.method public final bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzzv;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwg;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zze(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    .line 3
    new-instance v15, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(Lcom/google/android/gms/internal/ads/zzwg;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzd(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzh()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzi()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzg()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(JLcom/google/android/gms/internal/ads/zzgo;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(Lcom/google/android/gms/internal/ads/zzwg;)J

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzc(Lcom/google/android/gms/internal/ads/zzwg;)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    new-instance v13, Lcom/google/android/gms/internal/ads/zzvd;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v11

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v1

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v13

    move-object v3, v13

    move-wide v13, v1

    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/internal/ads/zzvd;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:Lcom/google/android/gms/internal/ads/zzvr;

    .line 7
    invoke-virtual {v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzvr;->zze(Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzvd;)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 8
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 9
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzwy;->zzq(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzH:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzr:Lcom/google/android/gms/internal/ads/zzve;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzve;->zzj(Lcom/google/android/gms/internal/ads/zzxb;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic zzK(Lcom/google/android/gms/internal/ads/zzzv;JJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwg;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    if-eqz v2, :cond_1

    .line 2
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzS(Z)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    :goto_0
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzi:Lcom/google/android/gms/internal/ads/zzwh;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzC:Z

    .line 3
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzwh;->zza(JLcom/google/android/gms/internal/ads/zzaeu;Z)V

    .line 4
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zze(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v2

    .line 5
    new-instance v14, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(Lcom/google/android/gms/internal/ads/zzwg;)J

    move-result-wide v5

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzd(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzh()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzi()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhi;->zzg()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v2, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(JLcom/google/android/gms/internal/ads/zzgo;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(Lcom/google/android/gms/internal/ads/zzwg;)J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:Lcom/google/android/gms/internal/ads/zzvr;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwg;->zzc(Lcom/google/android/gms/internal/ads/zzwg;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvd;

    .line 8
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzvd;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    .line 9
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzvr;->zzf(Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzvd;)V

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzr:Lcom/google/android/gms/internal/ads/zzve;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzve;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzve;->zzj(Lcom/google/android/gms/internal/ads/zzxb;)V

    return-void
.end method

.method public final bridge synthetic zzL(Lcom/google/android/gms/internal/ads/zzzv;JJI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwg;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zze(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v3

    if-nez v1, :cond_0

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(Lcom/google/android/gms/internal/ads/zzwg;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzd(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v7

    move-object v4, v3

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(JLcom/google/android/gms/internal/ads/zzgo;J)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(Lcom/google/android/gms/internal/ads/zzwg;)J

    move-result-wide v9

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzd(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhi;->zzh()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhi;->zzi()Ljava/util/Map;

    move-result-object v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhi;->zzg()J

    move-result-wide v18

    move-object v8, v4

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(JLcom/google/android/gms/internal/ads/zzgo;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v3, v4

    .line 3
    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:Lcom/google/android/gms/internal/ads/zzvr;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzc(Lcom/google/android/gms/internal/ads/zzwg;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    new-instance v2, Lcom/google/android/gms/internal/ads/zzvd;

    .line 6
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v15

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v17

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v18}, Lcom/google/android/gms/internal/ads/zzvd;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    .line 7
    invoke-virtual {v4, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzvr;->zzh(Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzvd;I)V

    return-void
.end method

.method public final zzM()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwy;->zzp()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzm:Lcom/google/android/gms/internal/ads/zzwa;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwa;->zze()V

    return-void
.end method

.method public final zzN(Lcom/google/android/gms/internal/ads/zzz;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzq:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzo:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzO()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwy;->zzo()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzl:Lcom/google/android/gms/internal/ads/zzaaa;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzj(Lcom/google/android/gms/internal/ads/zzzw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzq:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzr:Lcom/google/android/gms/internal/ads/zzve;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzO:Z

    return-void
.end method

.method public final zzP(Lcom/google/android/gms/internal/ads/zzaeu;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwe;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Lcom/google/android/gms/internal/ads/zzwl;Lcom/google/android/gms/internal/ads/zzaeu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzq:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final zzQ(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzaa()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwy;->zzy(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zza(JLcom/google/android/gms/internal/ads/zzmi;)J
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzU()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzaeu;->zzh()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 3
    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzaeu;->zzg(J)Lcom/google/android/gms/internal/ads/zzaes;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzaes;->zza:Lcom/google/android/gms/internal/ads/zzaev;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaes;->zzb:Lcom/google/android/gms/internal/ads/zzaev;

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzmi;->zzc:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_2

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzmi;->zzd:J

    cmp-long v8, v8, v5

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    move-wide v8, v5

    :cond_2
    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzaev;->zzb:J

    .line 4
    sget-object v7, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    sub-long v12, v1, v8

    xor-long v7, v1, v8

    xor-long v14, v1, v12

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzmi;->zzd:J

    add-long v16, v1, v5

    xor-long v18, v1, v16

    xor-long v5, v5, v16

    and-long/2addr v7, v14

    const-wide/16 v14, 0x0

    cmp-long v3, v7, v14

    if-gez v3, :cond_3

    const-wide/high16 v12, -0x8000000000000000L

    :cond_3
    and-long v5, v18, v5

    cmp-long v3, v5, v14

    if-gez v3, :cond_4

    const-wide v16, 0x7fffffffffffffffL

    :cond_4
    cmp-long v3, v12, v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v3, :cond_5

    cmp-long v3, v10, v16

    if-gtz v3, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    move v3, v6

    :goto_0
    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzaev;->zzb:J

    cmp-long v4, v12, v7

    if-gtz v4, :cond_6

    cmp-long v4, v7, v16

    if-gtz v4, :cond_6

    goto :goto_1

    :cond_6
    move v5, v6

    :goto_1
    if-eqz v3, :cond_8

    if-eqz v5, :cond_8

    sub-long v3, v10, v1

    sub-long v1, v7, v1

    .line 5
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gtz v1, :cond_7

    goto :goto_2

    :cond_7
    return-wide v7

    :cond_8
    if-eqz v3, :cond_9

    :goto_2
    move-wide v1, v10

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_a

    move-wide v1, v7

    :goto_3
    return-wide v1

    :cond_a
    return-wide v12
.end method

.method public final zzb()J
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzU()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzH:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzx:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 2
    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    .line 3
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzwk;->zzb:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzwk;->zzc:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    aget-object v9, v9, v6

    .line 4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzwy;->zzx()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 5
    aget-object v9, v9, v6

    .line 6
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzwy;->zzh()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzwl;->zzS(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzJ:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final zzc()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzG:Z

    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzJ:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzF:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzR()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzM:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzF:Z

    goto :goto_0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zze(J)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzb:[Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaeu;->zzh()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzF:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzJ:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzJ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzZ()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    return-wide p1

    :cond_1
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzD:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzl:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaaa;->zzl()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 4
    array-length v4, v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_9

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 5
    aget-object v6, v6, v5

    .line 6
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzwy;->zzb()I

    move-result v7

    if-nez v7, :cond_3

    cmp-long v7, v2, p1

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzy:Z

    if-eqz v7, :cond_4

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzwy;->zza()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzwy;->zzz(I)Z

    move-result v6

    goto :goto_1

    .line 15
    :cond_4
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    .line 8
    invoke-virtual {v6, p1, p2, v7}, Lcom/google/android/gms/internal/ads/zzwy;->zzA(JZ)Z

    move-result v6

    :goto_1
    if-nez v6, :cond_5

    .line 9
    aget-boolean v6, v0, v5

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzx:Z

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzL:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzK:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzG:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzl:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzl()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 10
    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwy;->zzk()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 12
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzg()V

    goto :goto_6

    .line 13
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 14
    array-length v2, v0

    move v3, v1

    :goto_5
    if-ge v3, v2, :cond_9

    aget-object v4, v0, v3

    .line 15
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzwy;->zzq(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-wide p1
.end method

.method public final zzf([Lcom/google/android/gms/internal/ads/zzyw;[Z[Lcom/google/android/gms/internal/ads/zzwz;[ZJ)J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwk;->zza:Lcom/google/android/gms/internal/ads/zzxk;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzc:[Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzH:I

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 5
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    .line 6
    :cond_0
    check-cast v5, Lcom/google/android/gms/internal/ads/zzwi;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzwi;->zzc(Lcom/google/android/gms/internal/ads/zzwi;)I

    move-result v5

    .line 7
    aget-boolean v6, v0, v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzH:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzH:I

    .line 8
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 9
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzE:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    :goto_1
    move p2, v4

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_4

    .line 30
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzy:Z

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move p2, v3

    :goto_2
    move v2, v3

    .line 10
    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    .line 11
    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyw;->zzh()I

    move-result v6

    if-ne v6, v4, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v3

    .line 12
    :goto_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 13
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzyw;->zze(I)I

    move-result v6

    if-nez v6, :cond_6

    move v6, v4

    goto :goto_5

    :cond_6
    move v6, v3

    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyw;->zzc()Lcom/google/android/gms/internal/ads/zzbm;

    move-result-object v6

    .line 14
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzxk;->zza(Lcom/google/android/gms/internal/ads/zzbm;)I

    move-result v6

    .line 15
    aget-boolean v7, v0, v6

    xor-int/2addr v7, v4

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzH:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzH:I

    .line 16
    aput-boolean v4, v0, v6

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzG:Z

    .line 17
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyw;->zzb()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzz;->zzu:Z

    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzG:Z

    new-instance v5, Lcom/google/android/gms/internal/ads/zzwi;

    .line 18
    invoke-direct {v5, p0, v6}, Lcom/google/android/gms/internal/ads/zzwi;-><init>(Lcom/google/android/gms/internal/ads/zzwl;I)V

    aput-object v5, p3, v2

    .line 19
    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 20
    aget-object p2, p2, v6

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzwy;->zzb()I

    move-result v5

    if-eqz v5, :cond_7

    .line 22
    invoke-virtual {p2, p5, p6, v4}, Lcom/google/android/gms/internal/ads/zzwy;->zzA(JZ)Z

    move-result p2

    if-nez p2, :cond_7

    move p2, v4

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzH:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzL:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzF:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzG:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzl:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaaa;->zzl()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 23
    array-length p3, p2

    :goto_7
    if-ge v3, p3, :cond_a

    aget-object p4, p2, v3

    .line 24
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzwy;->zzk()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 25
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaaa;->zzg()V

    goto :goto_a

    :cond_b
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 26
    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 27
    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzwy;->zzq(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 28
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/zzwl;->zze(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 29
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 30
    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 25
    :cond_e
    :goto_a
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzE:Z

    return-wide p5
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzxk;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzU()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwk;->zza:Lcom/google/android/gms/internal/ads/zzxk;

    return-object v0
.end method

.method public final zzh(JZ)V
    .locals 5

    .line 1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzy:Z

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzU()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzZ()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzz:Lcom/google/android/gms/internal/ads/zzwk;

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzwk;->zzc:[Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 3
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 4
    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzwy;->zzj(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final zzi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzH()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzw:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method final zzj(ILcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzhs;I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzaa()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwl;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    .line 3
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/gms/internal/ads/zzwy;->zze(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzhs;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwl;->zzX(I)V

    :cond_1
    return p2
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzve;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzr:Lcom/google/android/gms/internal/ads/zzve;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzn:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdm;->zzf()Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzY()V

    return-void
.end method

.method final zzl(IJ)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzaa()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwl;->zzW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 2
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    .line 3
    invoke-virtual {v0, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzwy;->zzc(JZ)I

    move-result p2

    .line 4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzwy;->zzw(I)V

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwl;->zzX(I)V

    return v1

    :cond_1
    return p2
.end method

.method public final zzm(J)V
    .locals 0

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzla;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzN:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzl:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaaa;->zzk()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzL:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzw:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzH:I

    if-nez v0, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzn:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzf()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaaa;->zzl()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzY()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final zzp()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzl:Lcom/google/android/gms/internal/ads/zzaaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaaa;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwl;->zzn:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdm;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzu(Lcom/google/android/gms/internal/ads/zzzv;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzzt;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwg;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zze(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzhi;

    move-result-object v3

    .line 3
    new-instance v14, Lcom/google/android/gms/internal/ads/zzuy;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(Lcom/google/android/gms/internal/ads/zzwg;)J

    move-result-wide v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzd(Lcom/google/android/gms/internal/ads/zzwg;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhi;->zzh()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhi;->zzi()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhi;->zzg()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v3, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(JLcom/google/android/gms/internal/ads/zzgo;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzc(Lcom/google/android/gms/internal/ads/zzwg;)J

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzaz;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v4, :cond_2

    .line 6
    instance-of v4, v1, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_2

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzgz;

    if-nez v4, :cond_2

    instance-of v4, v1, Lcom/google/android/gms/internal/ads/zzzy;

    if-nez v4, :cond_2

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_1

    instance-of v7, v4, Lcom/google/android/gms/internal/ads/zzgk;

    if-eqz v7, :cond_0

    .line 7
    move-object v7, v4

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgk;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzgk;->zza:I

    const/16 v8, 0x7d8

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p7, -0x1

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v7, 0x1388

    .line 9
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-long v7, v4

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v7, v5

    :goto_2
    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaaa;->zzb:Lcom/google/android/gms/internal/ads/zzzt;

    goto :goto_7

    .line 10
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzR()I

    move-result v4

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzM:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-le v4, v9, :cond_4

    move v9, v10

    goto :goto_3

    :cond_4
    move v9, v11

    :goto_3
    iget-boolean v12, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzI:Z

    if-nez v12, :cond_8

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzA:Lcom/google/android/gms/internal/ads/zzaeu;

    if-eqz v12, :cond_5

    .line 11
    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzaeu;->zza()J

    move-result-wide v12

    cmp-long v5, v12, v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzw:Z

    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwl;->zzaa()Z

    move-result v5

    if-nez v5, :cond_6

    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzL:Z

    sget-object v4, Lcom/google/android/gms/internal/ads/zzaaa;->zza:Lcom/google/android/gms/internal/ads/zzzt;

    goto :goto_7

    :cond_6
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzF:Z

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzJ:J

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzM:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzt:[Lcom/google/android/gms/internal/ads/zzwy;

    .line 12
    array-length v10, v6

    move v12, v11

    :goto_4
    if-ge v12, v10, :cond_7

    aget-object v13, v6, v12

    .line 13
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzwy;->zzq(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 14
    :cond_7
    invoke-static {v2, v4, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzwg;->zzf(Lcom/google/android/gms/internal/ads/zzwg;JJ)V

    goto :goto_6

    .line 11
    :cond_8
    :goto_5
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzM:I

    :goto_6
    invoke-static {v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzaaa;->zzb(ZJ)Lcom/google/android/gms/internal/ads/zzzt;

    move-result-object v4

    .line 7
    :goto_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzt;->zzc()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzg:Lcom/google/android/gms/internal/ads/zzvr;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzc(Lcom/google/android/gms/internal/ads/zzwg;)J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzwl;->zzB:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v18

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v20

    new-instance v8, Lcom/google/android/gms/internal/ads/zzvd;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v21}, Lcom/google/android/gms/internal/ads/zzvd;-><init>(IILcom/google/android/gms/internal/ads/zzz;ILjava/lang/Object;JJ)V

    .line 16
    invoke-virtual {v7, v3, v8, v1, v6}, Lcom/google/android/gms/internal/ads/zzvr;->zzg(Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzvd;Ljava/io/IOException;Z)V

    if-nez v5, :cond_9

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(Lcom/google/android/gms/internal/ads/zzwg;)J

    :cond_9
    return-object v4
.end method

.method final zzv()Lcom/google/android/gms/internal/ads/zzafb;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwj;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwl;->zzT(Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object v0

    return-object v0
.end method

.method public final zzw(II)Lcom/google/android/gms/internal/ads/zzafb;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzwj;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzwj;-><init>(IZ)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzwl;->zzT(Lcom/google/android/gms/internal/ads/zzwj;)Lcom/google/android/gms/internal/ads/zzafb;

    move-result-object p1

    return-object p1
.end method
