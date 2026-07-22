.class public final enum Lcom/google/android/gms/internal/ads/zzflx;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzflx;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzflx;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzflx;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/ads/zzflx;


# instance fields
.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzflx;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "native"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzflx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzflx;->zza:Lcom/google/android/gms/internal/ads/zzflx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzflx;

    const-string v2, "JAVASCRIPT"

    const/4 v3, 0x1

    .line 2
    const-string v4, "javascript"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzflx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzflx;->zzb:Lcom/google/android/gms/internal/ads/zzflx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzflx;

    const-string v3, "NONE"

    const/4 v4, 0x2

    .line 3
    const-string v5, "none"

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzflx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzflx;->zzc:Lcom/google/android/gms/internal/ads/zzflx;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/ads/zzflx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzflx;->zzd:[Lcom/google/android/gms/internal/ads/zzflx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzflx;->zze:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzflx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzflx;->zzd:[Lcom/google/android/gms/internal/ads/zzflx;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzflx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzflx;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflx;->zze:Ljava/lang/String;

    return-object v0
.end method
