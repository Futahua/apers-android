.class public final synthetic Lcom/google/android/gms/internal/ads/zzgcm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzgcn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfyl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgcn;Lcom/google/android/gms/internal/ads/zzfyl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcm;->zza:Lcom/google/android/gms/internal/ads/zzgcn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgcm;->zzb:Lcom/google/android/gms/internal/ads/zzfyl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcm;->zza:Lcom/google/android/gms/internal/ads/zzgcn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgcm;->zzb:Lcom/google/android/gms/internal/ads/zzfyl;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcn;->zze(Lcom/google/android/gms/internal/ads/zzgcn;Lcom/google/android/gms/internal/ads/zzfyl;)V

    return-void
.end method
