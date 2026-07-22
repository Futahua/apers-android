.class public final Lcom/google/android/gms/internal/ads/zzmj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zziw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcem;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zziw;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zziw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcem;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zza:Lcom/google/android/gms/internal/ads/zziw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzkx;)Lcom/google/android/gms/internal/ads/zzmj;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zza:Lcom/google/android/gms/internal/ads/zziw;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zziw;->zzs:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzio;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Lcom/google/android/gms/internal/ads/zzkx;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zziw;->zzf:Lcom/google/android/gms/internal/ads/zzfwh;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzzd;)Lcom/google/android/gms/internal/ads/zzmj;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zza:Lcom/google/android/gms/internal/ads/zziw;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zziw;->zzs:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zziv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zziv;-><init>(Lcom/google/android/gms/internal/ads/zzzd;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zziw;->zze:Lcom/google/android/gms/internal/ads/zzfwh;

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzmk;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmj;->zza:Lcom/google/android/gms/internal/ads/zziw;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zziw;->zzs:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zziw;->zzs:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzmk;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzmk;-><init>(Lcom/google/android/gms/internal/ads/zziw;)V

    return-object v1
.end method
