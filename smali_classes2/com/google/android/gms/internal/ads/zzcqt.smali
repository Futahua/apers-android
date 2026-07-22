.class public final Lcom/google/android/gms/internal/ads/zzcqt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcqs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqt;->zza:Lcom/google/android/gms/internal/ads/zzcqs;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcqs;)Lcom/google/android/gms/internal/ads/zzcqt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcqt;-><init>(Lcom/google/android/gms/internal/ads/zzcqs;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqt;->zza:Lcom/google/android/gms/internal/ads/zzcqs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqs;->zzc()Lcom/google/android/gms/internal/ads/zzddv;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzddv;

    return-object v0
.end method
