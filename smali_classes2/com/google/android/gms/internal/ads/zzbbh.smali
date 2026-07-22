.class final Lcom/google/android/gms/internal/ads/zzbbh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazw;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbbk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbk;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbh;->zza:Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbh;->zza:Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbk;->zzg(Lcom/google/android/gms/internal/ads/zzbbk;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbh;->zza:Lcom/google/android/gms/internal/ads/zzbbk;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbk;->zzh(Lcom/google/android/gms/internal/ads/zzbbk;)V

    return-void
.end method
