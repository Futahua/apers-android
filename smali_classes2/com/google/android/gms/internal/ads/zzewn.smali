.class public final Lcom/google/android/gms/internal/ads/zzewn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzewi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzewi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewn;->zza:Lcom/google/android/gms/internal/ads/zzewi;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzewi;)Lcom/google/android/gms/internal/ads/zzewn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzewn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzewn;-><init>(Lcom/google/android/gms/internal/ads/zzewi;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzewi;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzewi;->zzg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewn;->zza:Lcom/google/android/gms/internal/ads/zzewi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzewn;->zzd(Lcom/google/android/gms/internal/ads/zzewi;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewn;->zza:Lcom/google/android/gms/internal/ads/zzewi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzewn;->zzd(Lcom/google/android/gms/internal/ads/zzewi;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
