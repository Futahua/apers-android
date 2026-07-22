.class public final synthetic Lcom/google/android/gms/internal/ads/zzgie;
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
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgil;

    sget v0, Lcom/google/android/gms/internal/ads/zzgig;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgil;->zzd()Lcom/google/android/gms/internal/ads/zzgin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgin;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgfk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgfj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgfj;->zzb()Lcom/google/android/gms/internal/ads/zzget;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgil;->zzb()Lcom/google/android/gms/internal/ads/zzgxe;

    move-result-object p1

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzglm;->zzc(Lcom/google/android/gms/internal/ads/zzget;Lcom/google/android/gms/internal/ads/zzgxe;)Lcom/google/android/gms/internal/ads/zzget;

    move-result-object p1

    return-object p1
.end method
