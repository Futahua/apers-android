.class public final synthetic Lcom/google/android/gms/internal/ads/zzeyi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeym;

.field public final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zza:Lcom/google/android/gms/internal/ads/zzeym;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zza:Lcom/google/android/gms/internal/ads/zzeym;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyi;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeym;->zzi(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
