.class public final synthetic Lcom/google/android/gms/internal/ads/zzbxr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxv;

.field public final synthetic zzb:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbxv;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxr;->zza:Lcom/google/android/gms/internal/ads/zzbxv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxr;->zzb:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxr;->zza:Lcom/google/android/gms/internal/ads/zzbxv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxr;->zzb:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxv;->zzd(Lcom/google/android/gms/internal/ads/zzbxv;Landroid/graphics/Bitmap;)V

    return-void
.end method
