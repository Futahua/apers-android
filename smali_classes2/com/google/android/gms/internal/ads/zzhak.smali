.class final Lcom/google/android/gms/internal/ads/zzhak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhbm;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhaq;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhaq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhai;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhak;->zza:Lcom/google/android/gms/internal/ads/zzhaq;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhaj;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzhaq;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgza;->zza()Lcom/google/android/gms/internal/ads/zzgza;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhak;->zza:Lcom/google/android/gms/internal/ads/zzhaq;

    sget v3, Lcom/google/android/gms/internal/ads/zzhbc;->zza:I

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhaj;-><init>([Lcom/google/android/gms/internal/ads/zzhaq;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzu;->zzb:[B

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhaq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhak;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhbl;
    .locals 8

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhbn;->zza:I

    const-class v0, Lcom/google/android/gms/internal/ads/zzgzh;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/ads/zzhbc;->zza:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhak;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhaq;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhap;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhap;->zzb()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget v0, Lcom/google/android/gms/internal/ads/zzhbc;->zza:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaz;->zza()Lcom/google/android/gms/internal/ads/zzhay;

    move-result-object v3

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhag;->zza()Lcom/google/android/gms/internal/ads/zzhaf;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbn;->zzm()Lcom/google/android/gms/internal/ads/zzhbx;

    move-result-object v5

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhap;->zzc()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyu;->zza()Lcom/google/android/gms/internal/ads/zzgys;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhao;->zza()Lcom/google/android/gms/internal/ads/zzhan;

    move-result-object v7

    move-object v1, p1

    .line 11
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhav;->zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhap;Lcom/google/android/gms/internal/ads/zzhay;Lcom/google/android/gms/internal/ads/zzhaf;Lcom/google/android/gms/internal/ads/zzhbx;Lcom/google/android/gms/internal/ads/zzgys;Lcom/google/android/gms/internal/ads/zzhan;)Lcom/google/android/gms/internal/ads/zzhav;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget p1, Lcom/google/android/gms/internal/ads/zzhbc;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbn;->zzm()Lcom/google/android/gms/internal/ads/zzhbx;

    move-result-object p1

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyu;->zza()Lcom/google/android/gms/internal/ads/zzgys;

    move-result-object v0

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhap;->zza()Lcom/google/android/gms/internal/ads/zzhas;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhaw;->zzc(Lcom/google/android/gms/internal/ads/zzhbx;Lcom/google/android/gms/internal/ads/zzgys;Lcom/google/android/gms/internal/ads/zzhas;)Lcom/google/android/gms/internal/ads/zzhaw;

    move-result-object p1

    return-object p1
.end method
