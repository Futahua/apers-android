.class public final Lcom/google/android/gms/internal/ads/zzajp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:J

.field public final zzd:J

.field public final zze:J

.field public final zzf:J

.field public final zzg:Lcom/google/android/gms/internal/ads/zzz;

.field public final zzh:I

.field public final zzi:[J

.field public final zzj:[J

.field public final zzk:I

.field private final zzl:[Lcom/google/android/gms/internal/ads/zzajq;


# direct methods
.method public constructor <init>(IIJJJJLcom/google/android/gms/internal/ads/zzz;I[Lcom/google/android/gms/internal/ads/zzajq;I[J[J)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    move v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzf:J

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    move v1, p12

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzh:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzl:[Lcom/google/android/gms/internal/ads/zzajq;

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzk:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzi:[J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzajp;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzh:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzl:[Lcom/google/android/gms/internal/ads/zzajq;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzk:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzi:[J

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzj:[J

    move-object/from16 v17, v1

    new-instance v18, Lcom/google/android/gms/internal/ads/zzajp;

    move-object/from16 v1, v18

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajp;->zza:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzb:I

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzd:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzajp;->zze:J

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzajp;->zzf:J

    invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzz;I[Lcom/google/android/gms/internal/ads/zzajq;I[J[J)V

    return-object v18
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzajq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzl:[Lcom/google/android/gms/internal/ads/zzajq;

    aget-object p1, v0, p1

    return-object p1
.end method
