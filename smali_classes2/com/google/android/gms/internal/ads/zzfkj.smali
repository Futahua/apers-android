.class public final Lcom/google/android/gms/internal/ads/zzfkj;
.super Lcom/google/android/gms/ads/internal/client/zzcj;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfkc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfkp;Lcom/google/android/gms/internal/ads/zzfkc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzcj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    return-void
.end method


# virtual methods
.method public final zze(ILjava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zza(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zzf(I)Landroid/os/Bundle;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzf(I)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzfv;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v1

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object p1

    return-object p1
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;

    move-result-object p1

    return-object p1
.end method

.method public final zzk(ILjava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzfv;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzd(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzfv;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;

    move-result-object p1

    return-object p1
.end method

.method public final zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwv;

    move-result-object p1

    return-object p1
.end method

.method public final zzn(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zzg(I)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzbpq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzg(Lcom/google/android/gms/internal/ads/zzbpq;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkp;->zzi()V

    return-void
.end method

.method public final zzp(Ljava/util/List;Lcom/google/android/gms/ads/internal/client/zzce;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkp;->zzh(Ljava/util/List;Lcom/google/android/gms/ads/internal/client/zzce;)V

    return-void
.end method

.method public final zzq(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzh(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzr(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzi(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzs(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzj(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzk(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzu(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkp;->zzl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzv(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkj;->zzb:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfkc;->zzj(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfv;Lcom/google/android/gms/ads/internal/client/zzch;)Z

    move-result p1

    return p1
.end method
