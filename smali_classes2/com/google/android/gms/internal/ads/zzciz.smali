.class public final Lcom/google/android/gms/internal/ads/zzciz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzchh;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcjt;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfhe;

.field private zzd:Lcom/google/android/gms/internal/ads/zzckg;

.field private zze:Lcom/google/android/gms/internal/ads/zzfdy;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzche;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zza:Lcom/google/android/gms/internal/ads/zzchh;

    const-class v1, Lcom/google/android/gms/internal/ads/zzchh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzb:Lcom/google/android/gms/internal/ads/zzcjt;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcjt;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhgz;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzc:Lcom/google/android/gms/internal/ads/zzfhe;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfhe;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzc:Lcom/google/android/gms/internal/ads/zzfhe;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzd:Lcom/google/android/gms/internal/ads/zzckg;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzckg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzckg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzd:Lcom/google/android/gms/internal/ads/zzckg;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zze:Lcom/google/android/gms/internal/ads/zzfdy;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfdy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzciz;->zze:Lcom/google/android/gms/internal/ads/zzfdy;

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcio;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzciz;->zza:Lcom/google/android/gms/internal/ads/zzchh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzb:Lcom/google/android/gms/internal/ads/zzcjt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzc:Lcom/google/android/gms/internal/ads/zzfhe;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzd:Lcom/google/android/gms/internal/ads/zzckg;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzciz;->zze:Lcom/google/android/gms/internal/ads/zzfdy;

    move-object v1, v0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcio;-><init>(Lcom/google/android/gms/internal/ads/zzchh;Lcom/google/android/gms/internal/ads/zzcjt;Lcom/google/android/gms/internal/ads/zzfhe;Lcom/google/android/gms/internal/ads/zzckg;Lcom/google/android/gms/internal/ads/zzfdy;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzchh;)Lcom/google/android/gms/internal/ads/zzciz;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzchh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciz;->zza:Lcom/google/android/gms/internal/ads/zzchh;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzcjt;)Lcom/google/android/gms/internal/ads/zzciz;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciz;->zzb:Lcom/google/android/gms/internal/ads/zzcjt;

    return-object p0
.end method
