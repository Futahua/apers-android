.class final Lcom/google/android/gms/internal/ads/zzcjj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfag;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhha;

.field final zze:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhha;

.field final zzg:Lcom/google/android/gms/internal/ads/zzhha;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcio;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcio;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzh:Lcom/google/android/gms/internal/ads/zzcio;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzb:Lcom/google/android/gms/internal/ads/zzhha;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhgs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhgr;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzc:Lcom/google/android/gms/internal/ads/zzhha;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzl:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzekz;->zza(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzekz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzd:Lcom/google/android/gms/internal/ads/zzhha;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzbh:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbe;->zza(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzfbe;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zze:Lcom/google/android/gms/internal/ads/zzhha;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcio;->zza:Lcom/google/android/gms/internal/ads/zzhha;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzS:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfcy;->zza()Lcom/google/android/gms/internal/ads/zzfcy;

    move-result-object v5

    move-object v0, p2

    move-object v3, v6

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfae;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzfae;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzf:Lcom/google/android/gms/internal/ads/zzhha;

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzi:Lcom/google/android/gms/internal/ads/zzhha;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcio;->zzU:Lcom/google/android/gms/internal/ads/zzhha;

    move-object v0, p2

    move-object v1, p4

    move-object v2, p3

    move-object v4, v6

    move-object v5, v7

    move-object v6, v9

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzelh;->zza(Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzelh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhha;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzg:Lcom/google/android/gms/internal/ads/zzhha;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzelg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjj;->zzg:Lcom/google/android/gms/internal/ads/zzhha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhha;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzelg;

    return-object v0
.end method
