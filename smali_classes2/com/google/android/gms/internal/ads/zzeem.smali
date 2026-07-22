.class public final synthetic Lcom/google/android/gms/internal/ads/zzeem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeen;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfcn;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfca;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeen;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeem;->zza:Lcom/google/android/gms/internal/ads/zzeen;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzb:Lcom/google/android/gms/internal/ads/zzfcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeem;->zza:Lcom/google/android/gms/internal/ads/zzeen;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzb:Lcom/google/android/gms/internal/ads/zzfcn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeem;->zzc:Lcom/google/android/gms/internal/ads/zzfca;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzeen;->zzc(Lcom/google/android/gms/internal/ads/zzeen;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
