.class public final synthetic Lcom/google/android/gms/internal/ads/zzeud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeuf;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzeuc;

.field public final synthetic zzd:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeuf;JLcom/google/android/gms/internal/ads/zzeuc;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeud;->zza:Lcom/google/android/gms/internal/ads/zzeuf;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzc:Lcom/google/android/gms/internal/ads/zzeuc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzd:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeud;->zza:Lcom/google/android/gms/internal/ads/zzeuf;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzc:Lcom/google/android/gms/internal/ads/zzeuc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeud;->zzd:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeuf;->zzb(Lcom/google/android/gms/internal/ads/zzeuf;JLcom/google/android/gms/internal/ads/zzeuc;Landroid/os/Bundle;)V

    return-void
.end method
