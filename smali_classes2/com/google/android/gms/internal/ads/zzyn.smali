.class final Lcom/google/android/gms/internal/ads/zzyn;
.super Lcom/google/android/gms/internal/ads/zzyp;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:Z

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:I

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbm;ILcom/google/android/gms/internal/ads/zzyi;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyp;-><init>(ILcom/google/android/gms/internal/ads/zzbm;I)V

    const/4 p1, 0x0

    invoke-static {p5, p1}, Lcom/google/android/gms/internal/ads/zzmb;->zza(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzz;->zze:I

    iget p3, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzy:I

    and-int/lit8 p3, p2, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzg:Z

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzh:Z

    if-eqz p7, :cond_2

    .line 3
    invoke-static {p7}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object p2

    goto :goto_2

    .line 4
    :cond_2
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzv:Lcom/google/android/gms/internal/ads/zzfyq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfyq;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ""

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object p2

    goto :goto_2

    .line 6
    :cond_3
    iget-object p2, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzv:Lcom/google/android/gms/internal/ads/zzfyq;

    :goto_2
    move p3, p1

    .line 7
    :goto_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfyq;->size()I

    move-result v1

    if-ge p3, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 8
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfyq;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzz:Z

    .line 9
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzyu;->zzc(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    const p3, 0x7fffffff

    move v1, p1

    :goto_4
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzi:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzj:I

    const/16 p2, 0x440

    if-eqz p7, :cond_6

    move p3, p2

    goto :goto_5

    .line 10
    :cond_6
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzw:I

    move p3, p1

    .line 9
    :goto_5
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 11
    iget p7, p7, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    invoke-static {p7, p3}, Lcom/google/android/gms/internal/ads/zzyu;->zzb(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzk:I

    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 12
    iget p7, p7, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    and-int/2addr p2, p7

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_6

    :cond_7
    move p2, p1

    :goto_6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzm:Z

    .line 13
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzyu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    move p2, v0

    goto :goto_7

    :cond_8
    move p2, p1

    :goto_7
    iget-object p7, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 14
    invoke-static {p7, p6, p2}, Lcom/google/android/gms/internal/ads/zzyu;->zzc(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzl:I

    if-gtz v1, :cond_b

    .line 15
    iget-object p6, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzv:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 16
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfyq;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_9

    if-gtz p3, :cond_b

    :cond_9
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzg:Z

    if-nez p3, :cond_b

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzh:Z

    if-eqz p3, :cond_a

    if-lez p2, :cond_a

    goto :goto_8

    :cond_a
    move p2, p1

    goto :goto_9

    :cond_b
    :goto_8
    move p2, v0

    .line 17
    :goto_9
    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzR:Z

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzmb;->zza(IZ)Z

    move-result p3

    if-eqz p3, :cond_c

    if-eqz p2, :cond_c

    move p1, v0

    :cond_c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzyn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzyn;->zza(Lcom/google/android/gms/internal/ads/zzyn;)I

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyn;)I
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyf;->zzj()Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzyn;->zzf:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfyf;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzi:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzyn;->zzi:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgab;->zzc()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgab;->zza()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfyf;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzj:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzyn;->zzj:I

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfyf;->zzb(II)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzk:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzyn;->zzk:I

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfyf;->zzb(II)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzg:Z

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzyn;->zzg:Z

    .line 8
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfyf;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzh:Z

    .line 9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzyn;->zzh:Z

    .line 10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgab;->zzc()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgab;->zzc()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgab;->zza()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v1

    .line 11
    :goto_0
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzfyf;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzl:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzyn;->zzl:I

    .line 12
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfyf;->zzb(II)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    if-nez v2, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzm:Z

    .line 13
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzyn;->zzm:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfyf;->zze(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->zza()I

    move-result p1

    return p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zze:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzyp;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzyn;

    const/4 p1, 0x0

    return p1
.end method
