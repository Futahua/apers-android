.class public final synthetic Lcom/google/android/gms/internal/ads/zzbnp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzboi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzboh;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbnd;

.field public final synthetic zzd:Ljava/util/ArrayList;

.field public final synthetic zze:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzbnd;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zza:Lcom/google/android/gms/internal/ads/zzboi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzb:Lcom/google/android/gms/internal/ads/zzboh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzc:Lcom/google/android/gms/internal/ads/zzbnd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzd:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zze:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zza:Lcom/google/android/gms/internal/ads/zzboi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzb:Lcom/google/android/gms/internal/ads/zzboh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzc:Lcom/google/android/gms/internal/ads/zzbnd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzd:Ljava/util/ArrayList;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zze:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzboi;->zzi(Lcom/google/android/gms/internal/ads/zzboi;Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzbnd;Ljava/util/ArrayList;J)V

    return-void
.end method
