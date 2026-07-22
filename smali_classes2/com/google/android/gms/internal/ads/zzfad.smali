.class public final Lcom/google/android/gms/internal/ads/zzfad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelo;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzche;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeky;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfbd;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbdz;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfhx;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfcu;

.field private zzi:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzche;Lcom/google/android/gms/internal/ads/zzeky;Lcom/google/android/gms/internal/ads/zzfbd;Lcom/google/android/gms/internal/ads/zzfcu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzc:Lcom/google/android/gms/internal/ads/zzche;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzeky;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzh:Lcom/google/android/gms/internal/ads/zzfcu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfad;->zze:Lcom/google/android/gms/internal/ads/zzfbd;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzche;->zzy()Lcom/google/android/gms/internal/ads/zzfhx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzg:Lcom/google/android/gms/internal/ads/zzfhx;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfad;)Lcom/google/android/gms/internal/ads/zzeky;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzeky;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfad;)Lcom/google/android/gms/internal/ads/zzfbd;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zze:Lcom/google/android/gms/internal/ads/zzfbd;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfad;)Lcom/google/android/gms/internal/ads/zzfhx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzg:Lcom/google/android/gms/internal/ads/zzfhx;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzfad;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzb:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzfad;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzeky;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfdx;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzeky;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzfad;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelm;Lcom/google/android/gms/internal/ads/zzeln;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzb:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzezx;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzezx;-><init>(Lcom/google/android/gms/internal/ads/zzfad;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfad;->zza()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 5
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzjp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzc:Lcom/google/android/gms/internal/ads/zzche;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzche;->zzk()Lcom/google/android/gms/internal/ads/zzdvi;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvi;->zzo(Z)V

    .line 8
    :cond_2
    check-cast p3, Lcom/google/android/gms/internal/ads/zzezw;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzezw;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    .line 9
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrr;->zza:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v0

    new-instance v0, Landroid/util/Pair;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrr;->zzb:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, v1, v2

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdrt;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzh:Lcom/google/android/gms/internal/ads/zzfcu;

    .line 14
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfcu;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 15
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfcu;->zzt(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfcu;->zzJ(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfcu;->zzB(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfcu;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfad;->zza:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfcu;->zzL()Lcom/google/android/gms/internal/ads/zzfcw;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfht;->zzf(Lcom/google/android/gms/internal/ads/zzfcw;)I

    move-result v0

    const/4 v1, 0x4

    .line 19
    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfhi;->zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfhj;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zziC:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzc:Lcom/google/android/gms/internal/ads/zzche;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzche;->zzf()Lcom/google/android/gms/internal/ads/zzdge;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcvf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcvf;-><init>()V

    .line 23
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzcvf;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 24
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzcvf;->zzk(Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzcvf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcvf;->zzl()Lcom/google/android/gms/internal/ads/zzcvh;

    move-result-object p2

    .line 25
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdge;->zze(Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/internal/ads/zzdge;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdbu;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdbu;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzeky;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzb:Ljava/util/concurrent/Executor;

    .line 26
    invoke-virtual {p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzj(Lcom/google/android/gms/internal/ads/zzcza;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 27
    invoke-virtual {p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzk(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdbu;->zzn()Lcom/google/android/gms/internal/ads/zzdbw;

    move-result-object p2

    .line 28
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdge;->zzd(Lcom/google/android/gms/internal/ads/zzdbw;)Lcom/google/android/gms/internal/ads/zzdge;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzejh;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzf:Lcom/google/android/gms/internal/ads/zzbdz;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzejh;-><init>(Lcom/google/android/gms/internal/ads/zzbdz;)V

    .line 29
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdge;->zzc(Lcom/google/android/gms/internal/ads/zzejh;)Lcom/google/android/gms/internal/ads/zzdge;

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdge;->zzf()Lcom/google/android/gms/internal/ads/zzdgf;

    move-result-object p2

    :goto_0
    move-object v8, p2

    goto :goto_1

    .line 58
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbu;

    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdbu;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zze:Lcom/google/android/gms/internal/ads/zzfbd;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzb:Ljava/util/concurrent/Executor;

    .line 32
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdbu;->zze(Lcom/google/android/gms/internal/ads/zzcvy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 33
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdbu;->zzf(Lcom/google/android/gms/internal/ads/zzcxm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 34
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdbu;->zzb(Lcom/google/android/gms/internal/ads/zzcwb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzc:Lcom/google/android/gms/internal/ads/zzche;

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzche;->zzf()Lcom/google/android/gms/internal/ads/zzdge;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcvf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcvf;-><init>()V

    .line 36
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzcvf;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 37
    invoke-virtual {v4, p3}, Lcom/google/android/gms/internal/ads/zzcvf;->zzk(Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzcvf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcvf;->zzl()Lcom/google/android/gms/internal/ads/zzcvh;

    move-result-object p2

    .line 38
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdge;->zze(Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/internal/ads/zzdge;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzd:Lcom/google/android/gms/internal/ads/zzeky;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzb:Ljava/util/concurrent/Executor;

    .line 39
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzj(Lcom/google/android/gms/internal/ads/zzcza;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 40
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbu;->zze(Lcom/google/android/gms/internal/ads/zzcvy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 41
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzf(Lcom/google/android/gms/internal/ads/zzcxm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 42
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzb(Lcom/google/android/gms/internal/ads/zzcwb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 43
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbu;->zza(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 44
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzl(Lcom/google/android/gms/internal/ads/zzded;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 45
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzk(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 46
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzi(Lcom/google/android/gms/internal/ads/zzcyk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    .line 47
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbu;->zzc(Lcom/google/android/gms/internal/ads/zzcwo;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbu;->zzn()Lcom/google/android/gms/internal/ads/zzdbw;

    move-result-object p2

    .line 48
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdge;->zzd(Lcom/google/android/gms/internal/ads/zzdbw;)Lcom/google/android/gms/internal/ads/zzdge;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzejh;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzf:Lcom/google/android/gms/internal/ads/zzbdz;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzejh;-><init>(Lcom/google/android/gms/internal/ads/zzbdz;)V

    .line 49
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdge;->zzc(Lcom/google/android/gms/internal/ads/zzejh;)Lcom/google/android/gms/internal/ads/zzdge;

    .line 50
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdge;->zzf()Lcom/google/android/gms/internal/ads/zzdgf;

    move-result-object p2

    goto :goto_0

    .line 51
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbex;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbeo;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 52
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdgf;->zze()Lcom/google/android/gms/internal/ads/zzfhu;

    move-result-object p2

    .line 53
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzi(I)Lcom/google/android/gms/internal/ads/zzfhu;

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 54
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfhu;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhu;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 55
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfhu;

    move-object v6, p2

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    move-object v6, p1

    .line 56
    :goto_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdgf;->zza()Lcom/google/android/gms/internal/ads/zzcse;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcse;->zzi()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcse;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfac;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    .line 58
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfac;-><init>(Lcom/google/android/gms/internal/ads/zzfad;Lcom/google/android/gms/internal/ads/zzeln;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzfhj;Lcom/google/android/gms/internal/ads/zzdgf;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    return v2
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbdz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfad;->zzf:Lcom/google/android/gms/internal/ads/zzbdz;

    return-void
.end method
