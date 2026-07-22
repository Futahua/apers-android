.class final Lcom/google/android/gms/internal/ads/zzye;
.super Lcom/google/android/gms/internal/ads/zzyp;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final zze:I

.field private final zzf:Z

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzyi;

.field private final zzi:Z

.field private final zzj:I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Z

.field private final zzn:I

.field private final zzo:I

.field private final zzp:Z

.field private final zzq:I

.field private final zzr:I

.field private final zzs:I

.field private final zzt:I

.field private final zzu:Z

.field private final zzv:Z

.field private final zzw:Z


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzbm;ILcom/google/android/gms/internal/ads/zzyi;IZLcom/google/android/gms/internal/ads/zzfvq;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzyp;-><init>(ILcom/google/android/gms/internal/ads/zzbm;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzye;->zzh:Lcom/google/android/gms/internal/ads/zzyi;

    .line 2
    iget-boolean p1, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzP:Z

    const/4 p2, 0x1

    if-eq p2, p1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0x18

    .line 3
    :goto_0
    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzL:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 4
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzz;->zzd:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzyu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzg:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzmb;->zza(IZ)Z

    move-result p8

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzye;->zzi:Z

    move p8, p3

    .line 5
    :goto_1
    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzp:Lcom/google/android/gms/internal/ads/zzfyq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyq;->size()I

    move-result v0

    const v1, 0x7fffffff

    if-ge p8, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 6
    iget-object v2, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzp:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 7
    invoke-virtual {v2, p8}, Lcom/google/android/gms/internal/ads/zzfyq;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v0, v2, p3}, Lcom/google/android/gms/internal/ads/zzyu;->zzc(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 p8, p8, 0x1

    goto :goto_1

    :cond_2
    move v0, p3

    move p8, v1

    :goto_2
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzye;->zzk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzj:I

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzye;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 9
    iget p8, p8, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    iget v0, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzq:I

    .line 10
    invoke-static {p8, p3}, Lcom/google/android/gms/internal/ads/zzyu;->zzb(II)I

    move-result p8

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzye;->zzl:I

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzye;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 11
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzz;->zzf:I

    if-eqz v0, :cond_4

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, p3

    goto :goto_4

    :cond_4
    :goto_3
    move v0, p2

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzm:Z

    .line 12
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzz;->zze:I

    and-int/2addr v0, p2

    if-eq p2, v0, :cond_5

    move v0, p3

    goto :goto_5

    :cond_5
    move v0, p2

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzp:Z

    .line 13
    iget-object v0, p8, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-nez v0, :cond_6

    :goto_6
    move v0, p3

    goto :goto_9

    .line 24
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7e929daa

    if-eq v4, v5, :cond_9

    const v5, 0xb269699

    if-eq v4, v5, :cond_8

    const v5, 0x59afdf4a

    if-eq v4, v5, :cond_7

    goto :goto_7

    :cond_7
    const-string v4, "audio/iamf"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_8

    :cond_8
    const-string v4, "audio/ac4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, p2

    goto :goto_8

    :cond_9
    const-string v4, "audio/eac3-joc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, p3

    goto :goto_8

    :cond_a
    :goto_7
    move v0, v3

    :goto_8
    if-eqz v0, :cond_b

    if-eq v0, p2, :cond_b

    if-eq v0, v2, :cond_b

    goto :goto_6

    :cond_b
    move v0, p2

    .line 13
    :goto_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzw:Z

    .line 14
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzq:I

    .line 15
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzr:I

    .line 16
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzz;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzs:I

    .line 17
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzz;->zzj:I

    if-eq v0, v3, :cond_d

    iget v4, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzs:I

    if-gt v0, v4, :cond_c

    goto :goto_a

    :cond_c
    move p7, p3

    goto :goto_b

    :cond_d
    :goto_a
    iget v0, p8, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    if-eq v0, v3, :cond_e

    iget v4, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzr:I

    if-gt v0, v4, :cond_c

    .line 18
    :cond_e
    invoke-interface {p7, p8}, Lcom/google/android/gms/internal/ads/zzfvq;->zza(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_c

    move p7, p2

    :goto_b
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzye;->zzf:Z

    .line 19
    sget-object p7, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p7

    .line 21
    invoke-virtual {p7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p7

    invoke-virtual {p7}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p7

    const-string p8, ","

    .line 22
    invoke-virtual {p7, p8, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p7

    move p8, p3

    .line 25
    :goto_c
    array-length v0, p7

    if-ge p8, v0, :cond_f

    .line 26
    aget-object v0, p7, p8

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzex;->zzE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p7, p8

    add-int/lit8 p8, p8, 0x1

    goto :goto_c

    :cond_f
    move p8, p3

    .line 27
    :goto_d
    array-length v0, p7

    if-ge p8, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 28
    aget-object v4, p7, p8

    .line 29
    invoke-static {v0, v4, p3}, Lcom/google/android/gms/internal/ads/zzyu;->zzc(Lcom/google/android/gms/internal/ads/zzz;Ljava/lang/String;Z)I

    move-result v0

    if-lez v0, :cond_10

    goto :goto_e

    :cond_10
    add-int/lit8 p8, p8, 0x1

    goto :goto_d

    :cond_11
    move v0, p3

    move p8, v1

    :goto_e
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzye;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzo:I

    move p7, p3

    .line 30
    :goto_f
    iget-object p8, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzt:Lcom/google/android/gms/internal/ads/zzfyq;

    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzfyq;->size()I

    move-result p8

    if-ge p7, p8, :cond_13

    iget-object p8, p0, Lcom/google/android/gms/internal/ads/zzye;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 31
    iget-object p8, p8, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    if-eqz p8, :cond_12

    iget-object v0, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzt:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 32
    invoke-virtual {v0, p7}, Lcom/google/android/gms/internal/ads/zzfyq;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_12

    move v1, p7

    goto :goto_10

    :cond_12
    add-int/lit8 p7, p7, 0x1

    goto :goto_f

    :cond_13
    :goto_10
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzye;->zzt:I

    and-int/lit16 p4, p5, 0x180

    const/16 p7, 0x80

    if-ne p4, p7, :cond_14

    move p4, p2

    goto :goto_11

    :cond_14
    move p4, p3

    :goto_11
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzye;->zzu:Z

    and-int/lit8 p4, p5, 0x40

    const/16 p7, 0x40

    if-ne p4, p7, :cond_15

    move p4, p2

    goto :goto_12

    :cond_15
    move p4, p3

    :goto_12
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzye;->zzv:Z

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzye;->zzh:Lcom/google/android/gms/internal/ads/zzyi;

    .line 33
    iget-boolean p7, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzR:Z

    invoke-static {p5, p7}, Lcom/google/android/gms/internal/ads/zzmb;->zza(IZ)Z

    move-result p7

    if-nez p7, :cond_16

    :goto_13
    move p2, p3

    goto :goto_14

    :cond_16
    iget-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzye;->zzf:Z

    if-nez p7, :cond_17

    .line 34
    iget-boolean p8, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzK:Z

    if-nez p8, :cond_17

    goto :goto_13

    .line 35
    :cond_17
    iget-object p8, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzu:Lcom/google/android/gms/internal/ads/zzbp;

    iget p8, p8, Lcom/google/android/gms/internal/ads/zzbp;->zzb:I

    invoke-static {p5, p3}, Lcom/google/android/gms/internal/ads/zzmb;->zza(IZ)Z

    move-result p3

    if-eqz p3, :cond_19

    if-eqz p7, :cond_19

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 36
    iget p3, p3, Lcom/google/android/gms/internal/ads/zzz;->zzj:I

    if-eq p3, v3, :cond_19

    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzC:Z

    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzB:Z

    iget-boolean p3, p4, Lcom/google/android/gms/internal/ads/zzyi;->zzT:Z

    if-nez p3, :cond_18

    if-nez p6, :cond_19

    :cond_18
    and-int/2addr p1, p5

    if-eqz p1, :cond_19

    move p2, v2

    .line 33
    :cond_19
    :goto_14
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzye;->zze:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzye;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzye;->zza(Lcom/google/android/gms/internal/ads/zzye;)I

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzye;)I
    .locals 6

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzf:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzye;->zzi:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyu;->zzg()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v1

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzyu;->zzg()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgab;->zza()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v1

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzi:Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyf;->zzj()Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzye;->zzi:Z

    .line 4
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzfyf;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzk:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzye;->zzk:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgab;->zzc()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgab;->zza()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v5

    .line 7
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfyf;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzj:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzye;->zzj:I

    .line 8
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfyf;->zzb(II)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzl:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzye;->zzl:I

    .line 9
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfyf;->zzb(II)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzp:Z

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzye;->zzp:Z

    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfyf;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzm:Z

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzye;->zzm:Z

    .line 11
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfyf;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzn:I

    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzye;->zzn:I

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgab;->zzc()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgab;->zza()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v5

    .line 14
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfyf;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzye;->zzo:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzye;->zzo:I

    .line 15
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfyf;->zzb(II)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v2

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzye;->zzf:Z

    .line 16
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzfyf;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzt:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzye;->zzt:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgab;->zzc()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgab;->zza()Lcom/google/android/gms/internal/ads/zzgab;

    move-result-object v4

    .line 19
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfyf;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzh:Lcom/google/android/gms/internal/ads/zzyi;

    .line 20
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzyi;->zzB:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzu:Z

    .line 21
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzye;->zzu:Z

    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfyf;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzv:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzye;->zzv:Z

    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfyf;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzw:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzye;->zzw:Z

    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfyf;->zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzq:I

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzye;->zzq:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfyf;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzr:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzye;->zzr:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfyf;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzg:Ljava/lang/String;

    .line 27
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzye;->zzg:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzye;->zzs:I

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzye;->zzs:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzfyf;->zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfyf;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyf;->zza()I

    move-result p1

    return p1
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zze:I

    return v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzyp;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzh:Lcom/google/android/gms/internal/ads/zzyi;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzye;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzyi;->zzN:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzye;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzye;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    if-ne v2, v5, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 3
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzyi;->zzM:Z

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    if-eq v1, v3, :cond_0

    iget v2, v4, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzyi;->zzO:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzu:Z

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzye;->zzu:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzye;->zzv:Z

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzye;->zzv:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
