.class public final Lcom/google/android/gms/internal/ads/zzdr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public static zza(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdq;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdq;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzb()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const-string v0, "EGL_EXT_gl_colorspace_bt2020_pq"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdr;->zzf(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static zzc(I)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdr;->zzb()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    const-string p0, "EGL_EXT_gl_colorspace_bt2020_hlg"

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdr;->zzf(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static zzd(Landroid/content/Context;)Z
    .locals 0

    .line 3
    const-string p0, "EGL_EXT_protected_content"

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdr;->zzf(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zze()Z
    .locals 1

    .line 1
    const-string v0, "EGL_KHR_surfaceless_context"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdr;->zzf(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static zzf(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x3055

    .line 2
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
