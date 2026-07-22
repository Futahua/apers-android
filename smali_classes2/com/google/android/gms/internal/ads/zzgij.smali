.class public final synthetic Lcom/google/android/gms/internal/ads/zzgij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgoo;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgez;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgit;

    sget v0, Lcom/google/android/gms/internal/ads/zzgik;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgit;->zzd()Lcom/google/android/gms/internal/ads/zzgiy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgiy;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgit;->zzd()Lcom/google/android/gms/internal/ads/zzgiy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgiy;->zzb()Lcom/google/android/gms/internal/ads/zzgga;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgfk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgfj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgfj;->zzb()Lcom/google/android/gms/internal/ads/zzget;

    move-result-object v0

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzgih;->zza:I

    .line 3
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgfo;->zzb(Lcom/google/android/gms/internal/ads/zzgfm;)[B

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyr;->zza()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v2

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzguf;->zzf([BLcom/google/android/gms/internal/ads/zzgyr;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgzw; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgih;

    .line 7
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzgih;-><init>(Lcom/google/android/gms/internal/ads/zzguf;Lcom/google/android/gms/internal/ads/zzget;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgit;->zzb()Lcom/google/android/gms/internal/ads/zzgxe;

    move-result-object p1

    .line 8
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzglm;->zzc(Lcom/google/android/gms/internal/ads/zzget;Lcom/google/android/gms/internal/ads/zzgxe;)Lcom/google/android/gms/internal/ads/zzget;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
