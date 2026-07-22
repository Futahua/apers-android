.class public final Lcom/google/android/gms/internal/ads/zzclf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhha;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzclf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzclf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzclf;-><init>(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcle;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclf;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhgv;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhgv;->zzd()Ljava/util/Map;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclf;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhgv;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhgv;->zzd()Ljava/util/Map;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcle;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcle;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzclf;->zza()Lcom/google/android/gms/internal/ads/zzcle;

    move-result-object v0

    return-object v0
.end method
