.class final Lcom/google/android/gms/internal/ads/zzyf;
.super Lcom/google/android/gms/internal/ads/zzyp;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:I


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbm;ILcom/google/android/gms/internal/ads/zzyi;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyp;-><init>(ILcom/google/android/gms/internal/ads/zzbm;I)V

    .line 2
    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzR:Z

    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzmb;->zza(IZ)Z

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zze:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzz;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzf:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzyf;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzyf;->zza(Lcom/google/android/gms/internal/ads/zzyf;)I

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyf;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zzf:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzyf;->zzf:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyf;->zze:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzyp;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzyf;

    const/4 p1, 0x0

    return p1
.end method
