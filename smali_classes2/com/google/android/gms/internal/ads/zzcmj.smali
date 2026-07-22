.class public final synthetic Lcom/google/android/gms/internal/ads/zzcmj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcmq;

.field public final synthetic zzb:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcmq;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmj;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmj;->zzb:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmj;->zza:Lcom/google/android/gms/internal/ads/zzcmq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmj;->zzb:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmq;->zzg(Lcom/google/android/gms/internal/ads/zzcmq;Ljava/lang/Throwable;)V

    return-void
.end method
