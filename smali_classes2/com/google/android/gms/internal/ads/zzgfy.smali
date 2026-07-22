.class public final Lcom/google/android/gms/internal/ads/zzgfy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgmo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgfy;->zzb()Lcom/google/android/gms/internal/ads/zzgmo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgfy;->zzb:Lcom/google/android/gms/internal/ads/zzgmo;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzgex;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmh;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgfy;->zzb:Lcom/google/android/gms/internal/ads/zzgmo;

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant AeadConfigurationV1 in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzb()Lcom/google/android/gms/internal/ads/zzgmo;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgov;->zza()Lcom/google/android/gms/internal/ads/zzgos;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzggf;->zzd(Lcom/google/android/gms/internal/ads/zzgos;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgfr;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzggi;

    const-class v3, Lcom/google/android/gms/internal/ads/zzget;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgos;->zza(Lcom/google/android/gms/internal/ads/zzgoq;)Lcom/google/android/gms/internal/ads/zzgos;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgfs;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzghe;

    const-class v3, Lcom/google/android/gms/internal/ads/zzget;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgos;->zza(Lcom/google/android/gms/internal/ads/zzgoq;)Lcom/google/android/gms/internal/ads/zzgos;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgft;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgft;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzghp;

    const-class v3, Lcom/google/android/gms/internal/ads/zzget;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgos;->zza(Lcom/google/android/gms/internal/ads/zzgoq;)Lcom/google/android/gms/internal/ads/zzgos;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgfu;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzggu;

    const-class v3, Lcom/google/android/gms/internal/ads/zzget;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgos;->zza(Lcom/google/android/gms/internal/ads/zzgoq;)Lcom/google/android/gms/internal/ads/zzgos;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgfv;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzghy;

    const-class v3, Lcom/google/android/gms/internal/ads/zzget;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgos;->zza(Lcom/google/android/gms/internal/ads/zzgoq;)Lcom/google/android/gms/internal/ads/zzgos;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgfw;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgju;

    const-class v3, Lcom/google/android/gms/internal/ads/zzget;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgos;->zza(Lcom/google/android/gms/internal/ads/zzgoq;)Lcom/google/android/gms/internal/ads/zzgos;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgfx;-><init>()V

    const-class v2, Lcom/google/android/gms/internal/ads/zzgjo;

    const-class v3, Lcom/google/android/gms/internal/ads/zzget;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Lcom/google/android/gms/internal/ads/zzgoo;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgoq;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgos;->zza(Lcom/google/android/gms/internal/ads/zzgoq;)Lcom/google/android/gms/internal/ads/zzgos;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgos;->zzc()Lcom/google/android/gms/internal/ads/zzgov;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmo;->zzb(Lcom/google/android/gms/internal/ads/zzgov;)Lcom/google/android/gms/internal/ads/zzgmo;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
