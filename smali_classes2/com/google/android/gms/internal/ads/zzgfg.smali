.class public final Lcom/google/android/gms/internal/ads/zzgfg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgez;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgfb;

.field private final zzc:I

.field private final zzd:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgez;Lcom/google/android/gms/internal/ads/zzgfb;IZLcom/google/android/gms/internal/ads/zzgfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfg;->zza:Lcom/google/android/gms/internal/ads/zzgez;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfg;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgfg;->zzc:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzgfg;->zzd:Z

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgfg;->zzc:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgez;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfg;->zza:Lcom/google/android/gms/internal/ads/zzgez;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfg;->zzb:Lcom/google/android/gms/internal/ads/zzgfb;

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgfg;->zzd:Z

    return v0
.end method
