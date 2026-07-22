.class public final synthetic Lcom/google/android/gms/internal/ads/zzdlk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdln;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfcn;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfca;

.field public final synthetic zzd:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdln;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zza:Lcom/google/android/gms/internal/ads/zzdln;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzb:Lcom/google/android/gms/internal/ads/zzfcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzd:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zza:Lcom/google/android/gms/internal/ads/zzdln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzb:Lcom/google/android/gms/internal/ads/zzfcn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdlk;->zzd:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdln;->zzb(Lcom/google/android/gms/internal/ads/zzdln;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdit;

    move-result-object v0

    return-object v0
.end method
