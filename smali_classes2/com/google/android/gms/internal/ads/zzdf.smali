.class public final synthetic Lcom/google/android/gms/internal/ads/zzdf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfve;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdi;Lcom/google/android/gms/internal/ads/zzfve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdf;->zza:Lcom/google/android/gms/internal/ads/zzdi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdf;->zzb:Lcom/google/android/gms/internal/ads/zzfve;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdf;->zza:Lcom/google/android/gms/internal/ads/zzdi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdf;->zzb:Lcom/google/android/gms/internal/ads/zzfve;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdi;->zzc(Lcom/google/android/gms/internal/ads/zzdi;Lcom/google/android/gms/internal/ads/zzfve;)V

    return-void
.end method
