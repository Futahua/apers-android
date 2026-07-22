.class public final synthetic Lcom/google/android/gms/internal/ads/zzpz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzqg;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzqi;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqg;Lcom/google/android/gms/internal/ads/zzqi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzqg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzb:Lcom/google/android/gms/internal/ads/zzqi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->zza:Lcom/google/android/gms/internal/ads/zzqg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzb:Lcom/google/android/gms/internal/ads/zzqi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzqg;->zzd(Lcom/google/android/gms/internal/ads/zzqg;Lcom/google/android/gms/internal/ads/zzqi;)V

    return-void
.end method
