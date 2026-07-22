.class public abstract Lcom/google/android/gms/internal/ads/zzgmt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxe;

.field private final zzb:Ljava/lang/Class;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgms;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmt;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgmt;->zzb:Ljava/lang/Class;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgmr;Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgmt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmq;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzgmq;-><init>(Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgmr;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzgpb;Lcom/google/android/gms/internal/ads/zzgfn;)Lcom/google/android/gms/internal/ads/zzgez;
    .param p2    # Lcom/google/android/gms/internal/ads/zzgfn;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgxe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmt;->zza:Lcom/google/android/gms/internal/ads/zzgxe;

    return-object v0
.end method

.method public final zzd()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmt;->zzb:Ljava/lang/Class;

    return-object v0
.end method
