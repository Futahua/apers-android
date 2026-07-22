.class public final synthetic Lcom/google/android/gms/internal/ads/zzvl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdn;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzvr;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzuy;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzvd;

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvr;Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzvd;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvl;->zza:Lcom/google/android/gms/internal/ads/zzvr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzc:Lcom/google/android/gms/internal/ads/zzvd;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvl;->zza:Lcom/google/android/gms/internal/ads/zzvr;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzvr;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzc:Lcom/google/android/gms/internal/ads/zzvd;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvl;->zzd:I

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvs;

    const/4 v2, 0x0

    .line 1
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvs;->zzak(ILcom/google/android/gms/internal/ads/zzvh;Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzvd;I)V

    return-void
.end method
