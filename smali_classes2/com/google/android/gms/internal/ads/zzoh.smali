.class public final synthetic Lcom/google/android/gms/internal/ads/zzoh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdw;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzmp;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbf;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmp;ILcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoh;->zza:Lcom/google/android/gms/internal/ads/zzmp;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoh;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzoh;->zzc:Lcom/google/android/gms/internal/ads/zzbf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzoh;->zzd:Lcom/google/android/gms/internal/ads/zzbf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmr;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoh;->zza:Lcom/google/android/gms/internal/ads/zzmp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzoh;->zzd:Lcom/google/android/gms/internal/ads/zzbf;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzoh;->zzb:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzoh;->zzc:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-interface {p1, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzmr;->zzm(Lcom/google/android/gms/internal/ads/zzmp;Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzbf;I)V

    return-void
.end method
