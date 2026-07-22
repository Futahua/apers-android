.class public final synthetic Lcom/google/android/gms/internal/ads/zzeyu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeyx;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzezs;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzeyw;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzezq;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzcve;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeyx;Lcom/google/android/gms/internal/ads/zzezs;Lcom/google/android/gms/internal/ads/zzeyw;Lcom/google/android/gms/internal/ads/zzezq;Lcom/google/android/gms/internal/ads/zzcve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zza:Lcom/google/android/gms/internal/ads/zzeyx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zzb:Lcom/google/android/gms/internal/ads/zzezs;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zzc:Lcom/google/android/gms/internal/ads/zzeyw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zzd:Lcom/google/android/gms/internal/ads/zzezq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zze:Lcom/google/android/gms/internal/ads/zzcve;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zza:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zzb:Lcom/google/android/gms/internal/ads/zzezs;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zzc:Lcom/google/android/gms/internal/ads/zzeyw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zzd:Lcom/google/android/gms/internal/ads/zzezq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeyu;->zze:Lcom/google/android/gms/internal/ads/zzcve;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzezc;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeyx;->zzb(Lcom/google/android/gms/internal/ads/zzeyx;Lcom/google/android/gms/internal/ads/zzezs;Lcom/google/android/gms/internal/ads/zzeyw;Lcom/google/android/gms/internal/ads/zzezq;Lcom/google/android/gms/internal/ads/zzcve;Lcom/google/android/gms/internal/ads/zzezc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
