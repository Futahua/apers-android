.class public final synthetic Lcom/google/android/gms/internal/ads/zzftm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzftw;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzftd;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfub;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzftw;Lcom/google/android/gms/internal/ads/zzftd;Lcom/google/android/gms/internal/ads/zzfub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftm;->zza:Lcom/google/android/gms/internal/ads/zzftw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftm;->zzb:Lcom/google/android/gms/internal/ads/zzftd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzftm;->zzc:Lcom/google/android/gms/internal/ads/zzfub;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftm;->zza:Lcom/google/android/gms/internal/ads/zzftw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftm;->zzb:Lcom/google/android/gms/internal/ads/zzftd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftm;->zzc:Lcom/google/android/gms/internal/ads/zzfub;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzftw;->zzb(Lcom/google/android/gms/internal/ads/zzftw;Lcom/google/android/gms/internal/ads/zzftd;Lcom/google/android/gms/internal/ads/zzfub;)V

    return-void
.end method
