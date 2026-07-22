.class final Lcom/google/android/gms/internal/ads/zzcnb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcnc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnc;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zza:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zzb:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zza:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zzb:Lcom/google/android/gms/internal/ads/zzcnc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzl(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfdi;

    move-result-object v8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzm(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfju;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzk(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfcn;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzj(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzn(Lcom/google/android/gms/internal/ads/zzcnc;)Ljava/util/List;

    move-result-object v6

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcnc;->zzh(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzcuu;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfju;->zze(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcuu;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v8, p1, v0}, Lcom/google/android/gms/internal/ads/zzfdi;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcyi;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zzb:Lcom/google/android/gms/internal/ads/zzcnc;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcnb;->zza:Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zzl(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfdi;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zzm(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfju;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zzk(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfcn;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zzj(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzfca;

    move-result-object v3

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zzn(Lcom/google/android/gms/internal/ads/zzcnc;)Ljava/util/List;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zzh(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzcuu;

    move-result-object v8

    const/4 v4, 0x0

    .line 3
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzfju;->zze(Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfca;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcuu;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcnc;->zzi(Lcom/google/android/gms/internal/ads/zzcnc;)Lcom/google/android/gms/internal/ads/zzcyi;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfdi;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcyi;)V

    return-void
.end method
