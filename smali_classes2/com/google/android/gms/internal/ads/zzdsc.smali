.class public final Lcom/google/android/gms/internal/ads/zzdsc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhgr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzdsc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsb;->zza:Lcom/google/android/gms/internal/ads/zzdsc;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgu;->zzA:Lcom/google/android/gms/internal/ads/zzfgu;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfgu;->zzd:Lcom/google/android/gms/internal/ads/zzfgu;

    const-string v3, "t_load_as"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgu;Lcom/google/android/gms/internal/ads/zzfgu;)V

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdsl;

    return-object v0
.end method
