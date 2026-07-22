.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcdf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcdf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdd;->zza:Lcom/google/android/gms/internal/ads/zzcdf;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdd;->zza:Lcom/google/android/gms/internal/ads/zzcdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzd(Lcom/google/android/gms/internal/ads/zzcdf;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
