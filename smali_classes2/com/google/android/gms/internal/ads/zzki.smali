.class public final synthetic Lcom/google/android/gms/internal/ads/zzki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzkt;

.field public final synthetic zzb:I

.field public final synthetic zzc:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzkt;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zza:Lcom/google/android/gms/internal/ads/zzkt;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzc:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zza:Lcom/google/android/gms/internal/ads/zzkt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzb:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzc:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzkt;->zzi(Lcom/google/android/gms/internal/ads/zzkt;IZ)V

    return-void
.end method
