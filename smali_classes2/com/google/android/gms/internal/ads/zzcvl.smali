.class public final Lcom/google/android/gms/internal/ads/zzcvl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcvh;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zza:Lcom/google/android/gms/internal/ads/zzcvh;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcvh;)Lcom/google/android/gms/internal/ads/zzcvl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcvl;-><init>(Lcom/google/android/gms/internal/ads/zzcvh;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcuy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zza:Lcom/google/android/gms/internal/ads/zzcvh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvh;->zzd()Lcom/google/android/gms/internal/ads/zzcuy;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;->zza:Lcom/google/android/gms/internal/ads/zzcvh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvh;->zzd()Lcom/google/android/gms/internal/ads/zzcuy;

    move-result-object v0

    return-object v0
.end method
