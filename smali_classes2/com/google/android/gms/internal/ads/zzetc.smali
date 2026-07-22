.class public final synthetic Lcom/google/android/gms/internal/ads/zzetc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgct;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeti;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeti;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetc;->zza:Lcom/google/android/gms/internal/ads/zzeti;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetc;->zza:Lcom/google/android/gms/internal/ads/zzeti;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeti;->zzc(Lcom/google/android/gms/internal/ads/zzeti;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
