.class public final Lcom/google/android/gms/internal/ads/zzemq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeuc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeou;Lcom/google/android/gms/internal/ads/zzfcw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemq;->zza:Lcom/google/android/gms/internal/ads/zzeuc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemq;->zzd:Lcom/google/android/gms/internal/ads/zzbzs;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzemq;Lcom/google/android/gms/internal/ads/zzeul;)Lcom/google/android/gms/internal/ads/zzemr;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzemq;->zzb:Lcom/google/android/gms/internal/ads/zzfcw;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfcw;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 5
    iget-object v7, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    .line 6
    iget-boolean v8, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    move-object v10, v7

    move v11, v8

    goto :goto_2

    :cond_0
    move-object v10, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 17
    :goto_0
    array-length v12, v2

    if-ge v7, v12, :cond_5

    .line 2
    aget-object v12, v2, v7

    .line 3
    iget-boolean v13, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-nez v13, :cond_1

    if-nez v8, :cond_1

    .line 4
    iget-object v10, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    const/4 v8, 0x1

    :cond_1
    if-eqz v13, :cond_3

    if-nez v9, :cond_2

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    if-nez v9, :cond_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_5
    :goto_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzemq;->zzc:Landroid/content/Context;

    .line 7
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1d

    if-lt v9, v12, :cond_6

    .line 8
    sget-object v9, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_3

    :cond_6
    move-object v9, v4

    :goto_3
    const/4 v12, 0x0

    if-eqz v8, :cond_7

    .line 9
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzemq;->zzd:Lcom/google/android/gms/internal/ads/zzbzs;

    .line 10
    iget v4, v8, Landroid/util/DisplayMetrics;->density:F

    .line 11
    iget v13, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzj()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    move v0, v4

    move/from16 v17, v13

    move v13, v8

    move/from16 v8, v17

    goto :goto_4

    :cond_7
    move-object v14, v4

    move v0, v12

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 14
    :goto_4
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zznH:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x23

    if-lt v4, v15, :cond_9

    const-string v4, "window"

    .line 16
    invoke-virtual {v7, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    if-eqz v4, :cond_8

    cmpl-float v7, v0, v12

    if-eqz v7, :cond_8

    .line 18
    invoke-interface {v4}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v4

    .line 19
    invoke-virtual {v4}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    .line 20
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v7

    .line 21
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v9

    or-int/2addr v7, v9

    .line 22
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v9

    or-int/2addr v7, v9

    .line 23
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v9

    or-int/2addr v7, v9

    .line 24
    invoke-virtual {v4, v7}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    .line 25
    iget v7, v4, Landroid/graphics/Insets;->left:I

    int-to-float v7, v7

    div-float/2addr v7, v0

    float-to-double v5, v7

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v4, Landroid/graphics/Insets;->top:I

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-double v6, v6

    .line 27
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v4, Landroid/graphics/Insets;->right:I

    int-to-float v7, v7

    div-float/2addr v7, v0

    move/from16 p0, v13

    float-to-double v12, v7

    .line 28
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v7, v12

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-double v12, v4

    .line 29
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v4, v12

    .line 25
    invoke-static {v5, v6, v7, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    goto :goto_5

    :cond_8
    move/from16 p0, v13

    .line 17
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    :goto_5
    move-object v12, v4

    goto :goto_6

    :cond_9
    move/from16 p0, v13

    move-object v12, v9

    .line 25
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_12

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_7
    array-length v7, v2

    const-string v9, "|"

    if-ge v5, v7, :cond_10

    .line 31
    aget-object v7, v2, v5

    .line 32
    iget-boolean v13, v7, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-eqz v13, :cond_a

    const/4 v6, 0x1

    const/16 v16, 0x0

    goto :goto_a

    .line 33
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-eqz v13, :cond_b

    .line 34
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_b
    iget v9, v7, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v13, -0x1

    if-ne v9, v13, :cond_d

    const/16 v16, 0x0

    cmpl-float v9, v0, v16

    if-eqz v9, :cond_c

    .line 36
    iget v9, v7, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    int-to-float v9, v9

    div-float/2addr v9, v0

    float-to-int v9, v9

    goto :goto_8

    :cond_c
    move v9, v13

    .line 37
    :cond_d
    :goto_8
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "x"

    .line 38
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v9, v7, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    const/4 v13, -0x2

    const/16 v16, 0x0

    if-ne v9, v13, :cond_f

    cmpl-float v9, v0, v16

    if-eqz v9, :cond_e

    .line 40
    iget v7, v7, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    int-to-float v7, v7

    div-float/2addr v7, v0

    float-to-int v9, v7

    goto :goto_9

    :cond_e
    move v9, v13

    .line 41
    :cond_f
    :goto_9
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    if-eqz v6, :cond_12

    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v4, v2, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_11
    const/4 v2, 0x0

    :goto_b
    const-string v5, "320x50"

    .line 44
    invoke-virtual {v4, v2, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfcw;->zzq:Z

    new-instance v13, Lcom/google/android/gms/internal/ads/zzemr;

    move-object v2, v13

    move-object v4, v10

    move v5, v11

    move v7, v0

    move/from16 v9, p0

    move-object v10, v14

    move v11, v1

    .line 45
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzemr;-><init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;ZLandroid/graphics/Insets;)V

    return-object v13
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemq;->zza:Lcom/google/android/gms/internal/ads/zzeuc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeuc;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzemp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzemp;-><init>(Lcom/google/android/gms/internal/ads/zzemq;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfve;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
