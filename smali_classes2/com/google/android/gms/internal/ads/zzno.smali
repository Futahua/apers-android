.class public final synthetic Lcom/google/android/gms/internal/ads/zzno;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdw;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzmp;

.field public final synthetic zzb:I

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmp;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzno;->zza:Lcom/google/android/gms/internal/ads/zzmp;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzno;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzno;->zzc:J

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmr;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzno;->zza:Lcom/google/android/gms/internal/ads/zzmp;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzno;->zzb:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzno;->zzc:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzmr;->zzh(Lcom/google/android/gms/internal/ads/zzmp;IJ)V

    return-void
.end method
