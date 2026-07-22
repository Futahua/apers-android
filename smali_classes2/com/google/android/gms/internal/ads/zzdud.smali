.class public final synthetic Lcom/google/android/gms/internal/ads/zzdud;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdun;

.field public final synthetic zzb:Ljava/lang/Object;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcak;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:J

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfhj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdun;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcak;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfhj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdud;->zza:Lcom/google/android/gms/internal/ads/zzdun;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdud;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdud;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdud;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzdud;->zze:J

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdud;->zzf:Lcom/google/android/gms/internal/ads/zzfhj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdud;->zza:Lcom/google/android/gms/internal/ads/zzdun;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdud;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdud;->zzc:Lcom/google/android/gms/internal/ads/zzcak;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdud;->zzd:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdud;->zze:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdud;->zzf:Lcom/google/android/gms/internal/ads/zzfhj;

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdun;->zzi(Lcom/google/android/gms/internal/ads/zzdun;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcak;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfhj;)V

    return-void
.end method
