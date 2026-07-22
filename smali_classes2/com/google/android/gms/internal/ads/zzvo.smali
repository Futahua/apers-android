.class public final synthetic Lcom/google/android/gms/internal/ads/zzvo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdn;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzvr;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzuy;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzvd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvr;Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzvd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzvr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzc:Lcom/google/android/gms/internal/ads/zzvd;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvo;->zza:Lcom/google/android/gms/internal/ads/zzvr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvr;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvo;->zzc:Lcom/google/android/gms/internal/ads/zzvd;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvs;

    const/4 v3, 0x0

    .line 1
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzvs;->zzah(ILcom/google/android/gms/internal/ads/zzvh;Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzvd;)V

    return-void
.end method
