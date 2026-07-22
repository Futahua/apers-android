.class public final synthetic Lcom/google/android/gms/internal/ads/zzghh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnn;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgfm;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgez;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzghm;

    sget v0, Lcom/google/android/gms/internal/ads/zzghi;->zza:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghm;->zzb()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzghc;-><init>(Lcom/google/android/gms/internal/ads/zzghd;)V

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzghc;->zzc(Lcom/google/android/gms/internal/ads/zzghm;)Lcom/google/android/gms/internal/ads/zzghc;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzghc;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzghc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghm;->zzb()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxf;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzghc;->zzb(Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzghc;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghc;->zzd()Lcom/google/android/gms/internal/ads/zzghe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgez;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "192 bit AES GCM Parameters are not valid"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
