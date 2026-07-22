.class public final synthetic Lcom/google/android/gms/internal/ads/zzfvx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfwd;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfvc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfvc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvx;->zza:Lcom/google/android/gms/internal/ads/zzfvc;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfwe;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvx;->zza:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfvc;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzfvb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfvz;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfvz;-><init>(Lcom/google/android/gms/internal/ads/zzfwe;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/ads/zzfvb;)V

    return-object v1
.end method
