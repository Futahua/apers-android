.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgf;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgf;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zza:Lcom/google/android/gms/internal/ads/zzcgf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzc:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zza:Lcom/google/android/gms/internal/ads/zzcgf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzc:Landroid/webkit/ValueCallback;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcgf;->zzaQ(Lcom/google/android/gms/internal/ads/zzcgf;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
