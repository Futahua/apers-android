.class public final Lcom/google/android/gms/internal/ads/zzfmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmj;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfmq;


# instance fields
.field private zzb:F

.field private zzc:Lcom/google/android/gms/internal/ads/zzfme;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfmi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfmf;Lcom/google/android/gms/internal/ads/zzfmb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:F

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfmq;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Lcom/google/android/gms/internal/ads/zzfmq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfmb;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfmf;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfmq;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfmq;-><init>(Lcom/google/android/gms/internal/ads/zzfmf;Lcom/google/android/gms/internal/ads/zzfmb;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Lcom/google/android/gms/internal/ads/zzfmq;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmq;->zza:Lcom/google/android/gms/internal/ads/zzfmq;

    return-object v0
.end method


# virtual methods
.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:F

    return v0
.end method

.method public final zzc(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzd()Lcom/google/android/gms/internal/ads/zzfns;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfns;->zzi()V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzd()Lcom/google/android/gms/internal/ads/zzfns;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfns;->zzh()V

    return-void
.end method

.method public final zzd(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfma;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfma;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfme;

    .line 2
    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfme;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfma;Lcom/google/android/gms/internal/ads/zzfmq;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzc:Lcom/google/android/gms/internal/ads/zzfme;

    return-void
.end method

.method public final zze(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzd:Lcom/google/android/gms/internal/ads/zzfmi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmi;->zza()Lcom/google/android/gms/internal/ads/zzfmi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzd:Lcom/google/android/gms/internal/ads/zzfmi;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzd:Lcom/google/android/gms/internal/ads/zzfmi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmi;->zzb()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzflp;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflp;->zzg()Lcom/google/android/gms/internal/ads/zzfmy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfmy;->zzl(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Lcom/google/android/gms/internal/ads/zzfmh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfmk;->zze(Lcom/google/android/gms/internal/ads/zzfmj;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Lcom/google/android/gms/internal/ads/zzfmh;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmk;->zzf()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzd()Lcom/google/android/gms/internal/ads/zzfns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfns;->zzi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzc:Lcom/google/android/gms/internal/ads/zzfme;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfme;->zze()V

    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfns;->zzd()Lcom/google/android/gms/internal/ads/zzfns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfns;->zzj()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Lcom/google/android/gms/internal/ads/zzfmh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmk;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmq;->zzc:Lcom/google/android/gms/internal/ads/zzfme;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfme;->zzf()V

    return-void
.end method
