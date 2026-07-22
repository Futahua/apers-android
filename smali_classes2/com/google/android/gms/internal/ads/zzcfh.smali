.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfo;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbya;

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfo;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbya;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zza:Lcom/google/android/gms/internal/ads/zzcfo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzc:Lcom/google/android/gms/internal/ads/zzbya;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzd:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zza:Lcom/google/android/gms/internal/ads/zzcfo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzc:Lcom/google/android/gms/internal/ads/zzbya;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzd:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfo;->zzg(Lcom/google/android/gms/internal/ads/zzcfo;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbya;I)V

    return-void
.end method
