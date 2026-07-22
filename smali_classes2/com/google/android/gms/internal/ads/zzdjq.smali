.class public final synthetic Lcom/google/android/gms/internal/ads/zzdjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdjt;

.field public final synthetic zzb:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdjt;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zza:Lcom/google/android/gms/internal/ads/zzdjt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzb:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zza:Lcom/google/android/gms/internal/ads/zzdjt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjq;->zzb:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdjt;->zza(Lcom/google/android/gms/internal/ads/zzdjt;Landroid/view/ViewGroup;)V

    return-void
.end method
