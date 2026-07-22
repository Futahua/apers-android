.class public final synthetic Lcom/google/android/gms/internal/ads/zzebu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfge;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeca;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzecc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeca;Lcom/google/android/gms/internal/ads/zzecc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebu;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebu;->zzb:Lcom/google/android/gms/internal/ads/zzecc;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebu;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzebu;->zzb:Lcom/google/android/gms/internal/ads/zzecc;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeca;->zza(Lcom/google/android/gms/internal/ads/zzeca;Lcom/google/android/gms/internal/ads/zzecc;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method
