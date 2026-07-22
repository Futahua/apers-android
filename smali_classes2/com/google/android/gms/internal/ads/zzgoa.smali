.class final Lcom/google/android/gms/internal/ads/zzgoa;
.super Lcom/google/android/gms/internal/ads/zzgod;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgob;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgob;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zza:Lcom/google/android/gms/internal/ads/zzgob;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgod;-><init>(Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgoc;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgpb;)Lcom/google/android/gms/internal/ads/zzgfm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zza:Lcom/google/android/gms/internal/ads/zzgob;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgob;->zza(Lcom/google/android/gms/internal/ads/zzgpb;)Lcom/google/android/gms/internal/ads/zzgfm;

    move-result-object p1

    return-object p1
.end method
