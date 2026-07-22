.class public final Lcom/google/android/gms/internal/ads/zzegt;
.super Lcom/google/android/gms/internal/ads/zzegq;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzche;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcvf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzejh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdbw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdgw;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcyv;

.field private final zzg:Landroid/view/ViewGroup;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdbb;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzehb;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzedr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzche;Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzejh;Lcom/google/android/gms/internal/ads/zzdbw;Lcom/google/android/gms/internal/ads/zzdgw;Lcom/google/android/gms/internal/ads/zzcyv;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzdbb;Lcom/google/android/gms/internal/ads/zzehb;Lcom/google/android/gms/internal/ads/zzedr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegt;->zza:Lcom/google/android/gms/internal/ads/zzche;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzb:Lcom/google/android/gms/internal/ads/zzcvf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzc:Lcom/google/android/gms/internal/ads/zzejh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzd:Lcom/google/android/gms/internal/ads/zzdbw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegt;->zze:Lcom/google/android/gms/internal/ads/zzdgw;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzf:Lcom/google/android/gms/internal/ads/zzcyv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzg:Landroid/view/ViewGroup;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzh:Lcom/google/android/gms/internal/ads/zzdbb;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzi:Lcom/google/android/gms/internal/ads/zzehb;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzj:Lcom/google/android/gms/internal/ads/zzedr;

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfcw;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzfcn;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzb:Lcom/google/android/gms/internal/ads/zzcvf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzk(Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcvf;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcvf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcuy;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzi:Lcom/google/android/gms/internal/ads/zzehb;

    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzcuy;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lcom/google/android/gms/internal/ads/zzehb;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zzh(Lcom/google/android/gms/internal/ads/zzcuy;)Lcom/google/android/gms/internal/ads/zzcvf;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbde;->zzdR:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzj:Lcom/google/android/gms/internal/ads/zzedr;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcvf;->zze(Lcom/google/android/gms/internal/ads/zzedr;)Lcom/google/android/gms/internal/ads/zzcvf;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegt;->zza:Lcom/google/android/gms/internal/ads/zzche;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzche;->zzd()Lcom/google/android/gms/internal/ads/zzcpw;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvf;->zzl()Lcom/google/android/gms/internal/ads/zzcvh;

    move-result-object p2

    .line 8
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcpw;->zzi(Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/internal/ads/zzcpw;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzd:Lcom/google/android/gms/internal/ads/zzdbw;

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcpw;->zzf(Lcom/google/android/gms/internal/ads/zzdbw;)Lcom/google/android/gms/internal/ads/zzcpw;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzc:Lcom/google/android/gms/internal/ads/zzejh;

    .line 10
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcpw;->zze(Lcom/google/android/gms/internal/ads/zzejh;)Lcom/google/android/gms/internal/ads/zzcpw;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegt;->zze:Lcom/google/android/gms/internal/ads/zzdgw;

    .line 11
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcpw;->zzd(Lcom/google/android/gms/internal/ads/zzdgw;)Lcom/google/android/gms/internal/ads/zzcpw;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzf:Lcom/google/android/gms/internal/ads/zzcyv;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzh:Lcom/google/android/gms/internal/ads/zzdbb;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcqs;

    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/zzcqs;-><init>(Lcom/google/android/gms/internal/ads/zzcyv;Lcom/google/android/gms/internal/ads/zzdbb;)V

    .line 12
    invoke-interface {p1, p4}, Lcom/google/android/gms/internal/ads/zzcpw;->zzg(Lcom/google/android/gms/internal/ads/zzcqs;)Lcom/google/android/gms/internal/ads/zzcpw;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegt;->zzg:Landroid/view/ViewGroup;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcop;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(Landroid/view/ViewGroup;)V

    .line 13
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzcpw;->zzc(Lcom/google/android/gms/internal/ads/zzcop;)Lcom/google/android/gms/internal/ads/zzcpw;

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcpw;->zzk()Lcom/google/android/gms/internal/ads/zzcpx;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcpx;->zzc()Lcom/google/android/gms/internal/ads/zzcse;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcse;->zzi()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcse;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
