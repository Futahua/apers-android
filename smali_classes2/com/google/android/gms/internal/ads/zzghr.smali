.class public final synthetic Lcom/google/android/gms/internal/ads/zzghr;
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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzghx;

    sget v0, Lcom/google/android/gms/internal/ads/zzght;->zza:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzghn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzghn;-><init>(Lcom/google/android/gms/internal/ads/zzgho;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzghn;->zzc(Lcom/google/android/gms/internal/ads/zzghx;)Lcom/google/android/gms/internal/ads/zzghn;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzghn;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzghn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghx;->zzb()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxf;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzghn;->zzb(Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzghn;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzghn;->zzd()Lcom/google/android/gms/internal/ads/zzghp;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgez;

    return-object p1
.end method
