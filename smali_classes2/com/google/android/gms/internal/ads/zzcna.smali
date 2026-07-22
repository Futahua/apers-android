.class final Lcom/google/android/gms/internal/ads/zzcna;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcnc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->zza:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 9

    .line 1
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcna;->zza:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzl(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfdi;

    move-result-object v8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzm(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfju;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzk(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfcn;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzj(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzj(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v3

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzfca;->zzc:Ljava/util/List;

    const-string v4, ""

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfju;->zze(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcuu;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzg(Lcom/google/android/gms/internal/ads/zzcnc;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzA(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 4
    :goto_0
    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzfdi;->zzc(Ljava/util/List;I)V

    return-void
.end method
