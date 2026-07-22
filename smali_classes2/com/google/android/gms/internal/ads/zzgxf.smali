.class public final Lcom/google/android/gms/internal/ads/zzgxf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgxe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxf;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    return-void
.end method

.method public static zzb([BLcom/google/android/gms/internal/ads/zzgfn;)Lcom/google/android/gms/internal/ads/zzgxf;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgxf;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgxe;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxe;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgxf;-><init>(Lcom/google/android/gms/internal/ads/zzgxe;)V

    return-object p1
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzgxf;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxf;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgpa;->zzb(I)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgxe;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxe;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgxf;-><init>(Lcom/google/android/gms/internal/ads/zzgxe;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxf;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxe;->zza()I

    move-result v0

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgfn;)[B
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxf;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxe;->zzd()[B

    move-result-object p1

    return-object p1
.end method
