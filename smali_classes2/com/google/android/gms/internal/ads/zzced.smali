.class public final synthetic Lcom/google/android/gms/internal/ads/zzced;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgi;


# instance fields
.field public final synthetic zza:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzced;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgj;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzceo;->zza:I

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzge;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzced;->zza:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzge;-><init>([B)V

    return-object v0
.end method
