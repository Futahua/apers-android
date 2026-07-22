.class final Lcom/google/android/gms/internal/ads/zzaar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaco;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabs;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabx;

.field private final zzc:Ljava/util/Queue;

.field private zzd:Landroid/view/Surface;

.field private zze:Lcom/google/android/gms/internal/ads/zzz;

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzacl;

.field private zzh:Ljava/util/concurrent/Executor;

.field private zzi:Lcom/google/android/gms/internal/ads/zzabp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabs;Lcom/google/android/gms/internal/ads/zzdj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzabs;->zzi(Lcom/google/android/gms/internal/ads/zzdj;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzabx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaap;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaap;-><init>(Lcom/google/android/gms/internal/ads/zzaar;Lcom/google/android/gms/internal/ads/zzaaq;)V

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzabx;-><init>(Lcom/google/android/gms/internal/ads/zzaap;Lcom/google/android/gms/internal/ads/zzabs;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabx;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzc:Ljava/util/Queue;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzx;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zze:Lcom/google/android/gms/internal/ads/zzz;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzf:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzacl;->zzb:Lcom/google/android/gms/internal/ads/zzacl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzg:Lcom/google/android/gms/internal/ads/zzacl;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaaj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaaj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzh:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaak;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaak;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzi:Lcom/google/android/gms/internal/ads/zzabp;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaar;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzd:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzabp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzi:Lcom/google/android/gms/internal/ads/zzabp;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzaar;)Lcom/google/android/gms/internal/ads/zzacl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzg:Lcom/google/android/gms/internal/ads/zzacl;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzaar;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzc:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzaar;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzh:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzaar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzg:Lcom/google/android/gms/internal/ads/zzacl;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzacl;->zzb()V

    return-void
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final zzB()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzg()Z

    move-result v0

    return v0
.end method

.method public final zzC()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzD(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzm(Z)Z

    move-result p1

    return p1
.end method

.method public final zzb()Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzd:Landroid/view/Surface;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/view/Surface;

    return-object v0
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabs;->zzb()V

    return-void
.end method

.method public final zzi()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzd:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabs;->zzk(Landroid/view/Surface;)V

    return-void
.end method

.method public final zzj(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzg()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabx;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabx;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzc:Ljava/util/Queue;

    .line 3
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final zzk(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzc(Z)V

    return-void
.end method

.method public final zzl(ILcom/google/android/gms/internal/ads/zzz;JILjava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 2
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaar;->zze:Lcom/google/android/gms/internal/ads/zzz;

    iget v0, p6, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    if-ne p1, v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    iget p6, p6, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    if-eq v0, p6, :cond_1

    :cond_0
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabx;

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    invoke-virtual {p6, p1, v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzd(II)V

    .line 4
    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzz:F

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaar;->zze:Lcom/google/android/gms/internal/ads/zzz;

    iget p6, p6, Lcom/google/android/gms/internal/ads/zzz;->zzz:F

    cmpl-float p6, p1, p6

    if-eqz p6, :cond_2

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    .line 5
    invoke-virtual {p6, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzj(F)V

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaar;->zze:Lcom/google/android/gms/internal/ads/zzz;

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzf:J

    cmp-long p1, p3, p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabx;

    .line 6
    invoke-virtual {p1, p5, p3, p4}, Lcom/google/android/gms/internal/ads/zzabx;->zzc(IJ)V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzf:J

    :cond_3
    return-void
.end method

.method public final zzm()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zzn()V
    .locals 0

    return-void
.end method

.method public final zzo(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzacn;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabx;

    .line 1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzabx;->zze(JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzin; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzacn;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaar;->zze:Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzacn;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;)V

    throw p2
.end method

.method public final zzp(J)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzq(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzh(I)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzacl;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzg:Lcom/google/android/gms/internal/ads/zzacl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzh:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final zzs(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzeo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzd:Landroid/view/Surface;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzk(Landroid/view/Surface;)V

    return-void
.end method

.method public final zzt(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzl(F)V

    return-void
.end method

.method public final zzu(Ljava/util/List;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzabp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzi:Lcom/google/android/gms/internal/ads/zzabp;

    return-void
.end method

.method public final zzw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabx;->zzf()V

    return-void
.end method

.method public final zzx()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabs;->zzd()V

    return-void
.end method

.method public final zzy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zza:Lcom/google/android/gms/internal/ads/zzabs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabs;->zze()V

    return-void
.end method

.method public final zzz(JLcom/google/android/gms/internal/ads/zzacm;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzc:Ljava/util/Queue;

    invoke-interface {v0, p3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzb:Lcom/google/android/gms/internal/ads/zzabx;

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzabx;->zzb(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaar;->zzh:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaal;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaal;-><init>(Lcom/google/android/gms/internal/ads/zzaar;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
