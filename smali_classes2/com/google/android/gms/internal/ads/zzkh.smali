.class final Lcom/google/android/gms/internal/ads/zzkh;
.super Lcom/google/android/gms/internal/ads/zzg;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziy;


# static fields
.field public static final synthetic zzd:I


# instance fields
.field private final zzA:Lcom/google/android/gms/internal/ads/zzdi;

.field private zzB:I

.field private zzC:I

.field private zzD:Z

.field private zzE:Lcom/google/android/gms/internal/ads/zzmh;

.field private zzF:Lcom/google/android/gms/internal/ads/zzmi;

.field private zzG:Lcom/google/android/gms/internal/ads/zzix;

.field private zzH:Lcom/google/android/gms/internal/ads/zzbd;

.field private zzI:Lcom/google/android/gms/internal/ads/zzat;

.field private zzJ:Ljava/lang/Object;

.field private zzK:Landroid/view/Surface;

.field private zzL:I

.field private zzM:Lcom/google/android/gms/internal/ads/zzeo;

.field private zzN:Lcom/google/android/gms/internal/ads/zze;

.field private zzO:F

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:I

.field private zzT:Lcom/google/android/gms/internal/ads/zzat;

.field private zzU:Lcom/google/android/gms/internal/ads/zzls;

.field private zzV:I

.field private zzW:J

.field private final zzX:Lcom/google/android/gms/internal/ads/zzjj;

.field private zzY:Lcom/google/android/gms/internal/ads/zzxc;

.field final zzb:Lcom/google/android/gms/internal/ads/zzze;

.field final zzc:Lcom/google/android/gms/internal/ads/zzbd;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdm;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbh;

.field private final zzh:[Lcom/google/android/gms/internal/ads/zzma;

.field private final zzi:[Lcom/google/android/gms/internal/ads/zzma;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzzd;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdt;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzkt;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdz;

.field private final zzn:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzbj;

.field private final zzp:Ljava/util/List;

.field private final zzq:Z

.field private final zzr:Lcom/google/android/gms/internal/ads/zzmo;

.field private final zzs:Landroid/os/Looper;

.field private final zzt:Lcom/google/android/gms/internal/ads/zzzl;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzdj;

.field private final zzv:Lcom/google/android/gms/internal/ads/zzkd;

.field private final zzw:Lcom/google/android/gms/internal/ads/zzke;

.field private final zzx:Lcom/google/android/gms/internal/ads/zzmm;

.field private final zzy:Lcom/google/android/gms/internal/ads/zzmn;

.field private final zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaq;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zziw;Lcom/google/android/gms/internal/ads/zzbh;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "Init "

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzg;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdm;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdj;->zza:Lcom/google/android/gms/internal/ads/zzdj;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzdm;-><init>(Lcom/google/android/gms/internal/ads/zzdj;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzkh;->zze:Lcom/google/android/gms/internal/ads/zzdm;

    :try_start_0
    const-string v4, "ExoPlayerImpl"

    .line 2
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [AndroidXMedia3/1.8.0-alpha01] ["

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zza:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zzh:Lcom/google/android/gms/internal/ads/zzfve;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zziw;->zzb:Lcom/google/android/gms/internal/ads/zzdj;

    .line 5
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzfve;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzmo;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zzj:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzS:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zzk:Lcom/google/android/gms/internal/ads/zze;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzN:Lcom/google/android/gms/internal/ads/zze;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zzl:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzL:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzP:Z

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zziw;->zzq:J

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzz:J

    .line 6
    new-instance v11, Lcom/google/android/gms/internal/ads/zzkd;

    const/4 v4, 0x0

    invoke-direct {v11, v1, v4}, Lcom/google/android/gms/internal/ads/zzkd;-><init>(Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzkg;)V

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkd;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzke;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/zzke;-><init>(Lcom/google/android/gms/internal/ads/zzkg;)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzw:Lcom/google/android/gms/internal/ads/zzke;

    new-instance v7, Landroid/os/Handler;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zziw;->zzi:Landroid/os/Looper;

    .line 7
    invoke-direct {v7, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zziw;->zzc:Lcom/google/android/gms/internal/ads/zzfwh;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzip;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzip;->zza:Lcom/google/android/gms/internal/ads/zzcem;

    .line 8
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzcem;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzcem;->zza:Lcom/google/android/gms/internal/ads/zzceo;

    move-object v8, v11

    move-object v9, v11

    move-object v10, v11

    .line 9
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzceo;->zzac(Lcom/google/android/gms/internal/ads/zzceo;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzacj;Lcom/google/android/gms/internal/ads/zzqh;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzuf;)[Lcom/google/android/gms/internal/ads/zzma;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzh:[Lcom/google/android/gms/internal/ads/zzma;

    .line 10
    array-length v5, v5

    const/4 v5, 0x2

    new-array v6, v5, [Lcom/google/android/gms/internal/ads/zzma;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzi:[Lcom/google/android/gms/internal/ads/zzma;

    move v6, v3

    :goto_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzi:[Lcom/google/android/gms/internal/ads/zzma;

    .line 11
    array-length v8, v7

    if-ge v6, v5, :cond_0

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzh:[Lcom/google/android/gms/internal/ads/zzma;

    .line 12
    aget-object v8, v8, v6

    .line 13
    aput-object v4, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zziw;->zze:Lcom/google/android/gms/internal/ads/zzfwh;

    .line 14
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzfwh;->zza()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/google/android/gms/internal/ads/zzzd;

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzj:Lcom/google/android/gms/internal/ads/zzzd;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zziw;->zzd:Lcom/google/android/gms/internal/ads/zzfwh;

    check-cast v6, Lcom/google/android/gms/internal/ads/zziq;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zziq;->zza:Landroid/content/Context;

    .line 15
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zziw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object v6

    .line 16
    check-cast v6, Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zziw;->zzg:Lcom/google/android/gms/internal/ads/zzfwh;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzit;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzit;->zza:Landroid/content/Context;

    .line 17
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzzp;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzzp;

    move-result-object v6

    .line 18
    check-cast v6, Lcom/google/android/gms/internal/ads/zzzl;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzt:Lcom/google/android/gms/internal/ads/zzzl;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zziw;->zzm:Z

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Z

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zziw;->zzn:Lcom/google/android/gms/internal/ads/zzmi;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzF:Lcom/google/android/gms/internal/ads/zzmi;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zziw;->zzo:Lcom/google/android/gms/internal/ads/zzmh;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzE:Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zziw;->zzi:Landroid/os/Looper;

    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzs:Landroid/os/Looper;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zziw;->zzb:Lcom/google/android/gms/internal/ads/zzdj;

    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzdj;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzg:Lcom/google/android/gms/internal/ads/zzbh;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzji;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/ads/zzji;-><init>(Lcom/google/android/gms/internal/ads/zzkh;)V

    .line 19
    invoke-direct {v12, v14, v13, v7}, Lcom/google/android/gms/internal/ads/zzdz;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdj;Lcom/google/android/gms/internal/ads/zzdx;)V

    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    .line 20
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzn:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v7, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzp:Ljava/util/List;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzxc;

    .line 22
    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzxc;-><init>(I)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzY:Lcom/google/android/gms/internal/ads/zzxc;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzix;->zza:Lcom/google/android/gms/internal/ads/zzix;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzG:Lcom/google/android/gms/internal/ads/zzix;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzze;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzh:[Lcom/google/android/gms/internal/ads/zzma;

    .line 23
    array-length v7, v7

    new-array v7, v5, [Lcom/google/android/gms/internal/ads/zzme;

    new-array v8, v5, [Lcom/google/android/gms/internal/ads/zzyw;

    sget-object v15, Lcom/google/android/gms/internal/ads/zzbt;->zza:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-direct {v9, v7, v8, v15, v4}, Lcom/google/android/gms/internal/ads/zzze;-><init>([Lcom/google/android/gms/internal/ads/zzme;[Lcom/google/android/gms/internal/ads/zzyw;Lcom/google/android/gms/internal/ads/zzbt;Ljava/lang/Object;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzb:Lcom/google/android/gms/internal/ads/zzze;

    .line 24
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbj;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbj;-><init>()V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbc;

    .line 25
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbc;-><init>()V

    const/16 v8, 0x14

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    .line 26
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzbc;->zzc([I)Lcom/google/android/gms/internal/ads/zzbc;

    .line 27
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzzd;->zzn()Z

    const/16 v8, 0x1d

    const/4 v15, 0x1

    .line 28
    invoke-virtual {v7, v8, v15}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    const/16 v8, 0x17

    .line 29
    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    const/16 v8, 0x19

    .line 30
    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    const/16 v8, 0x21

    .line 31
    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    const/16 v8, 0x1a

    .line 32
    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    const/16 v8, 0x22

    .line 33
    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    .line 34
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbc;->zze()Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzc:Lcom/google/android/gms/internal/ads/zzbd;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbc;

    .line 35
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzbc;-><init>()V

    .line 36
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbc;->zzb(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbc;

    const/4 v7, 0x4

    .line 37
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbc;->zza(I)Lcom/google/android/gms/internal/ads/zzbc;

    const/16 v7, 0xa

    .line 38
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbc;->zza(I)Lcom/google/android/gms/internal/ads/zzbc;

    .line 39
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbc;->zze()Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzbd;

    .line 40
    invoke-interface {v13, v14, v4}, Lcom/google/android/gms/internal/ads/zzdj;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzjj;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzjj;-><init>(Lcom/google/android/gms/internal/ads/zzkh;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzX:Lcom/google/android/gms/internal/ads/zzjj;

    .line 41
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzls;->zzh(Lcom/google/android/gms/internal/ads/zzze;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    .line 42
    invoke-interface {v7, v2, v14}, Lcom/google/android/gms/internal/ads/zzmo;->zzT(Lcom/google/android/gms/internal/ads/zzbh;Landroid/os/Looper;)V

    .line 43
    new-instance v2, Lcom/google/android/gms/internal/ads/zzph;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zziw;->zzt:Ljava/lang/String;

    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v7, Lcom/google/android/gms/internal/ads/zzkt;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzh:[Lcom/google/android/gms/internal/ads/zzma;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzi:[Lcom/google/android/gms/internal/ads/zzma;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zziw;->zzf:Lcom/google/android/gms/internal/ads/zzfwh;

    .line 45
    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzfwh;->zza()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v18, v15

    check-cast v18, Lcom/google/android/gms/internal/ads/zzkx;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    move-object/from16 v19, v15

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzF:Lcom/google/android/gms/internal/ads/zzmi;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zziw;->zzu:Lcom/google/android/gms/internal/ads/zzig;

    move-object/from16 v24, v13

    move-object/from16 v21, v14

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zziw;->zzp:J

    move-object/from16 v22, v15

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzG:Lcom/google/android/gms/internal/ads/zzix;

    move-object/from16 v23, v15

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzw:Lcom/google/android/gms/internal/ads/zzke;

    const/16 v25, 0x0

    move-object/from16 v30, v15

    move-object/from16 v26, v22

    move-object/from16 v29, v23

    const/4 v0, 0x1

    move/from16 v15, v25

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v28, 0x0

    move-object/from16 p2, v7

    move-object/from16 v27, v8

    move-object v8, v5

    move-object v5, v9

    move-object v9, v3

    move-object v3, v10

    move-object v10, v4

    move-object v4, v12

    move-object v12, v5

    move-object/from16 v5, v24

    move-wide/from16 v24, v13

    move-object/from16 v13, v18

    move-object/from16 v31, v21

    move-object v14, v6

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v26

    move-wide/from16 v20, v24

    move-object/from16 v24, v31

    move-object/from16 v25, v5

    move-object/from16 v26, v27

    move-object/from16 v27, v2

    invoke-direct/range {v7 .. v30}, Lcom/google/android/gms/internal/ads/zzkt;-><init>(Landroid/content/Context;[Lcom/google/android/gms/internal/ads/zzma;[Lcom/google/android/gms/internal/ads/zzma;Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/zzze;Lcom/google/android/gms/internal/ads/zzkx;Lcom/google/android/gms/internal/ads/zzzl;IZLcom/google/android/gms/internal/ads/zzmo;Lcom/google/android/gms/internal/ads/zzmi;Lcom/google/android/gms/internal/ads/zzig;JZZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdj;Lcom/google/android/gms/internal/ads/zzjj;Lcom/google/android/gms/internal/ads/zzph;Lcom/google/android/gms/internal/ads/zzlt;Lcom/google/android/gms/internal/ads/zzix;Lcom/google/android/gms/internal/ads/zzabp;)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    .line 46
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzkt;->zze()Landroid/os/Looper;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzO:F

    .line 47
    sget-object v9, Lcom/google/android/gms/internal/ads/zzat;->zza:Lcom/google/android/gms/internal/ads/zzat;

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzI:Lcom/google/android/gms/internal/ads/zzat;

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzT:Lcom/google/android/gms/internal/ads/zzat;

    const/4 v9, -0x1

    iput v9, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzV:I

    .line 48
    sget v10, Lcom/google/android/gms/internal/ads/zzcw;->zza:I

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzQ:Z

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    if-eqz v10, :cond_2

    .line 49
    check-cast v10, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzdz;->zzb(Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Handler;

    move-object/from16 v10, v31

    .line 50
    invoke-direct {v4, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    invoke-interface {v6, v4, v11}, Lcom/google/android/gms/internal/ads/zzzl;->zzf(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzzk;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkd;

    .line 51
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Landroid/content/Context;

    move v4, v0

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zziw;->zzr:Z

    .line 52
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzkt;->zze()Landroid/os/Looper;

    move-result-object v11

    const/4 v12, 0x0

    .line 53
    invoke-interface {v5, v11, v12}, Lcom/google/android/gms/internal/ads/zzdj;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdt;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/internal/ads/zzjx;

    invoke-direct {v12, v3, v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzjx;-><init>(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzph;)V

    .line 54
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/ads/zzdt;->zzi(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move v4, v0

    move-object/from16 v0, p1

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdi;

    const/4 v3, 0x0

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjk;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjk;-><init>(Lcom/google/android/gms/internal/ads/zzkh;)V

    move-object v12, v2

    move-object v13, v6

    move-object v14, v8

    move-object v15, v10

    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzdi;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdj;Lcom/google/android/gms/internal/ads/zzjk;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzA:Lcom/google/android/gms/internal/ads/zzdi;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjl;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjl;-><init>(Lcom/google/android/gms/internal/ads/zzkh;)V

    .line 56
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdi;->zzd(Ljava/lang/Runnable;)V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zziw;->zza:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zzi:Landroid/os/Looper;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzv:Lcom/google/android/gms/internal/ads/zzkd;

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    move-object/from16 v18, v3

    move-object/from16 v19, v10

    move-object/from16 v20, v5

    .line 57
    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzhx;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzhw;Lcom/google/android/gms/internal/ads/zzdj;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmm;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zziw;->zza:Landroid/content/Context;

    .line 58
    invoke-direct {v2, v3, v8, v5}, Lcom/google/android/gms/internal/ads/zzmm;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdj;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzx:Lcom/google/android/gms/internal/ads/zzmm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zziw;->zza:Landroid/content/Context;

    .line 59
    invoke-direct {v2, v0, v8, v5}, Lcom/google/android/gms/internal/ads/zzmn;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdj;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Lcom/google/android/gms/internal/ads/zzmn;

    .line 60
    sget v0, Lcom/google/android/gms/internal/ads/zzo;->zza:I

    .line 61
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Lcom/google/android/gms/internal/ads/zzeo;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzM:Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzE:Lcom/google/android/gms/internal/ads/zzmh;

    .line 63
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzs(Lcom/google/android/gms/internal/ads/zzmh;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzN:Lcom/google/android/gms/internal/ads/zze;

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v7, v0, v2}, Lcom/google/android/gms/internal/ads/zzkt;->zzq(Lcom/google/android/gms/internal/ads/zze;Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzN:Lcom/google/android/gms/internal/ads/zze;

    const/4 v2, 0x3

    .line 65
    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzad(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzL:I

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzad(IILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 67
    invoke-direct {v1, v3, v0, v6}, Lcom/google/android/gms/internal/ads/zzkh;->zzad(IILjava/lang/Object;)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzP:Z

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzad(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzw:Lcom/google/android/gms/internal/ads/zzke;

    const/4 v2, 0x6

    const/16 v3, 0x8

    .line 69
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzad(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zzS:I

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    .line 71
    invoke-direct {v1, v9, v2, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzad(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzkh;->zze:Lcom/google/android/gms/internal/ads/zzdm;

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzf()Z

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 73
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzkh;->zze:Lcom/google/android/gms/internal/ads/zzdm;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdm;->zzf()Z

    .line 74
    throw v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzkh;)Lcom/google/android/gms/internal/ads/zzdi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzA:Lcom/google/android/gms/internal/ads/zzdi;

    return-object p0
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzkh;)Lcom/google/android/gms/internal/ads/zzdz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    return-object p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzkh;)Lcom/google/android/gms/internal/ads/zzmo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    return-object p0
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzkh;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzJ:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic zzI(Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzkq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzab(Lcom/google/android/gms/internal/ads/zzkq;)V

    return-void
.end method

.method public static synthetic zzJ(Lcom/google/android/gms/internal/ads/zzkh;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzf:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zzc(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzA:Lcom/google/android/gms/internal/ads/zzdi;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdi;->zze(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic zzK(Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzkq;)V
    .locals 12

    .line 1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzb:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    .line 2
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzc:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 3
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzd:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzC:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzD:Z

    :cond_0
    if-nez v2, :cond_a

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzV:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzW:J

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_3

    .line 7
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzly;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzly;->zzw()Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzp:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v6, v8, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    move v6, v5

    .line 9
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 10
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzkf;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzkf;->zzc(Lcom/google/android/gms/internal/ads/zzbl;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzD:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_9

    .line 11
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    .line 12
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzvh;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :cond_5
    :goto_2
    if-eqz v4, :cond_8

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    invoke-direct {p0, v2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzW(Lcom/google/android/gms/internal/ads/zzbl;Lcom/google/android/gms/internal/ads/zzvh;J)J

    goto :goto_4

    .line 14
    :cond_7
    :goto_3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    :goto_4
    move v3, v4

    move-wide v6, v7

    goto :goto_5

    :cond_8
    move v3, v4

    goto :goto_5

    :cond_9
    move v3, v5

    :goto_5
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzD:Z

    .line 16
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zza:Lcom/google/android/gms/internal/ads/zzls;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzC:I

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v5, v6

    move v7, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzag(Lcom/google/android/gms/internal/ads/zzls;IZIJIZ)V

    :cond_a
    return-void
.end method

.method public static synthetic zzL(Lcom/google/android/gms/internal/ads/zzkh;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzad(IILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzad(IILjava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzjm;-><init>(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    const/16 p2, 0x15

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdz;->zzc()V

    return-void
.end method

.method public static synthetic zzM(Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzbe;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(Lcom/google/android/gms/internal/ads/zzbd;)V

    return-void
.end method

.method static bridge synthetic zzN(Lcom/google/android/gms/internal/ads/zzkh;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzP:Z

    return-void
.end method

.method static bridge synthetic zzO(Lcom/google/android/gms/internal/ads/zzkh;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzkh;->zzac(II)V

    return-void
.end method

.method static bridge synthetic zzP(Lcom/google/android/gms/internal/ads/zzkh;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Landroid/view/Surface;

    return-void
.end method

.method static bridge synthetic zzQ(Lcom/google/android/gms/internal/ads/zzkh;Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zzR(Lcom/google/android/gms/internal/ads/zzkh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzP:Z

    return p0
.end method

.method private final zzS(Lcom/google/android/gms/internal/ads/zzls;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzV:I

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    return p1
.end method

.method private final zzT(Lcom/google/android/gms/internal/ads/zzls;)J
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    .line 3
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzls;->zzc:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    const-wide/16 v4, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzS(Lcom/google/android/gms/internal/ads/zzls;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    .line 6
    invoke-virtual {v1, p1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzbk;->zzl:J

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzU(Lcom/google/android/gms/internal/ads/zzls;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzW:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzls;->zzp:Z

    .line 4
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v3

    if-eqz v3, :cond_1

    return-wide v1

    .line 6
    :cond_1
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzW(Lcom/google/android/gms/internal/ads/zzbl;Lcom/google/android/gms/internal/ads/zzvh;J)J

    return-wide v1
.end method

.method private static zzV(Lcom/google/android/gms/internal/ads/zzls;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbk;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbj;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    .line 4
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzls;->zzc:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v3, v5

    if-nez p0, :cond_0

    iget p0, v1, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    const-wide/16 v3, 0x0

    .line 5
    invoke-virtual {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbk;->zzl:J

    :cond_0
    return-wide v3
.end method

.method private final zzW(Lcom/google/android/gms/internal/ads/zzbl;Lcom/google/android/gms/internal/ads/zzvh;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    return-wide p3
.end method

.method private final zzX(Lcom/google/android/gms/internal/ads/zzbl;IJ)Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzV:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzW:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbl;->zzc()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbl;->zzg(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    .line 4
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object p3

    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/zzbk;->zzl:J

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide p3

    :cond_3
    move v3, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    .line 6
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbl;->zzl(Lcom/google/android/gms/internal/ads/zzbk;Lcom/google/android/gms/internal/ads/zzbj;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static zzY(Lcom/google/android/gms/internal/ads/zzls;I)Lcom/google/android/gms/internal/ads/zzls;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzls;->zzf(I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzls;->zza(Z)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object p0

    return-object p0
.end method

.method private final zzZ(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzbl;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzls;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    .line 3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzT(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v7

    .line 4
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzls;->zzg(Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v9

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzls;->zzi()Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzW:J

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide v15

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzb:Lcom/google/android/gms/internal/ads/zzze;

    .line 7
    sget-object v19, Lcom/google/android/gms/internal/ads/zzxk;->zza:Lcom/google/android/gms/internal/ads/zzxk;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v21

    const-wide/16 v17, 0x0

    move-object v10, v1

    move-wide v11, v15

    move-wide v13, v15

    move-object/from16 v20, v2

    .line 9
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzls;->zzc(Lcom/google/android/gms/internal/ads/zzvh;JJJJLcom/google/android/gms/internal/ads/zzxk;Lcom/google/android/gms/internal/ads/zzze;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzls;->zzb(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    return-object v1

    :cond_2
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    .line 11
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    .line 12
    sget-object v11, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    move-object v11, v2

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v12, Lcom/google/android/gms/internal/ads/zzvh;

    .line 13
    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-wide/16 v14, -0x1

    .line 14
    invoke-direct {v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Ljava/lang/Object;J)V

    move-object v15, v12

    goto :goto_2

    :cond_3
    move-object v15, v3

    .line 15
    :goto_2
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide v7

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    .line 17
    invoke-virtual {v6, v10, v2}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    :cond_4
    if-eqz v11, :cond_a

    cmp-long v2, v13, v7

    if-gez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez v2, :cond_8

    .line 22
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzvh;

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbl;->zza(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    .line 25
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbl;->zzd(ILcom/google/android/gms/internal/ads/zzbj;Z)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v2

    .line 26
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    if-eq v2, v3, :cond_e

    .line 28
    :cond_6
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    .line 29
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzvh;->zzb:I

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzvh;->zzc:I

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbj;->zzf(II)J

    move-result-wide v1

    goto :goto_3

    .line 31
    :cond_7
    iget-wide v1, v3, Lcom/google/android/gms/internal/ads/zzbj;->zzd:J

    .line 30
    :goto_3
    iget-wide v11, v9, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    iget-wide v5, v9, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    sub-long v17, v1, v5

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzls;->zzh:Lcom/google/android/gms/internal/ads/zzxk;

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzze;

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    move-object v10, v15

    move-object v8, v15

    move-wide v15, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 32
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzls;->zzc(Lcom/google/android/gms/internal/ads/zzvh;JJJJLcom/google/android/gms/internal/ads/zzxk;Lcom/google/android/gms/internal/ads/zzze;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzls;->zzb(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v9

    iput-wide v1, v9, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    goto/16 :goto_8

    :cond_8
    move-object v1, v15

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    sub-long v6, v13, v7

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 35
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzvh;

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzvh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-long v4, v13, v17

    :cond_9
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzh:Lcom/google/android/gms/internal/ads/zzxk;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzze;

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    move-object v10, v1

    move-wide v11, v13

    move-wide v7, v13

    move-wide v15, v7

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    .line 37
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzls;->zzc(Lcom/google/android/gms/internal/ads/zzvh;JJJJLcom/google/android/gms/internal/ads/zzxk;Lcom/google/android/gms/internal/ads/zzze;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v9

    iput-wide v4, v9, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    goto :goto_8

    :cond_a
    :goto_4
    move-wide v7, v13

    move-object v1, v15

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdd;->zzf(Z)V

    if-nez v11, :cond_b

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/ads/zzxk;->zza:Lcom/google/android/gms/internal/ads/zzxk;

    goto :goto_5

    .line 22
    :cond_b
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzh:Lcom/google/android/gms/internal/ads/zzxk;

    :goto_5
    move-object/from16 v19, v2

    if-nez v11, :cond_c

    .line 19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzb:Lcom/google/android/gms/internal/ads/zzze;

    goto :goto_6

    .line 22
    :cond_c
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzze;

    :goto_6
    move-object/from16 v20, v2

    if-nez v11, :cond_d

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v2

    goto :goto_7

    .line 22
    :cond_d
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    :goto_7
    move-object/from16 v21, v2

    const-wide/16 v17, 0x0

    move-object v10, v1

    move-wide v11, v7

    move-wide v13, v7

    move-wide v15, v7

    .line 21
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzls;->zzc(Lcom/google/android/gms/internal/ads/zzvh;JJJJLcom/google/android/gms/internal/ads/zzxk;Lcom/google/android/gms/internal/ads/zzze;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzls;->zzb(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v9

    iput-wide v7, v9, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    :cond_e
    :goto_8
    return-object v9
.end method

.method private final zzaa(Lcom/google/android/gms/internal/ads/zzlv;)Lcom/google/android/gms/internal/ads/zzlw;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzS(Lcom/google/android/gms/internal/ads/zzls;)I

    move-result v0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzlw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzu:Lcom/google/android/gms/internal/ads/zzdj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkt;->zze()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzlw;-><init>(Lcom/google/android/gms/internal/ads/zzlu;Lcom/google/android/gms/internal/ads/zzlv;Lcom/google/android/gms/internal/ads/zzbl;ILcom/google/android/gms/internal/ads/zzdj;Landroid/os/Looper;)V

    return-object v8
.end method

.method private final synthetic zzab(Lcom/google/android/gms/internal/ads/zzkq;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzjo;-><init>(Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzkq;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzi(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzac(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzM:Lcom/google/android/gms/internal/ads/zzeo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeo;->zzb()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzM:Lcom/google/android/gms/internal/ads/zzeo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeo;->zza()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeo;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeo;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzM:Lcom/google/android/gms/internal/ads/zzeo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzjf;-><init>(II)V

    const/16 v2, 0x18

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zzc()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeo;

    .line 5
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeo;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzad(IILjava/lang/Object;)V

    return-void
.end method

.method private final zzad(IILjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:[Lcom/google/android/gms/internal/ads/zzma;

    array-length v1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    aget-object v4, v0, v2

    if-eq p1, v3, :cond_0

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzma;->zzb()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzkh;->zzaa(Lcom/google/android/gms/internal/ads/zzlv;)Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzlw;->zzf(I)Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzlw;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzlw;->zzd()Lcom/google/android/gms/internal/ads/zzlw;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzi:[Lcom/google/android/gms/internal/ads/zzma;

    .line 4
    array-length v2, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v2, v0, v1

    if-eqz v2, :cond_4

    if-eq p1, v3, :cond_3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzma;->zzb()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 5
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzaa(Lcom/google/android/gms/internal/ads/zzlv;)Lcom/google/android/gms/internal/ads/zzlw;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzlw;->zzf(I)Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzlw;->zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzlw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlw;->zzd()Lcom/google/android/gms/internal/ads/zzlw;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private final zzae(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzJ:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzz:J

    goto :goto_0

    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkt;->zzx(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzJ:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Landroid/view/Surface;

    if-ne v1, v2, :cond_2

    .line 2
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Landroid/view/Surface;

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzJ:Ljava/lang/Object;

    if-nez v0, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzku;

    const/4 v0, 0x3

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzku;-><init>(I)V

    const/16 v0, 0x3eb

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzin;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzin;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzaf(Lcom/google/android/gms/internal/ads/zzin;)V

    :cond_3
    return-void
.end method

.method private final zzaf(Lcom/google/android/gms/internal/ads/zzin;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzls;->zzb(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzY(Lcom/google/android/gms/internal/ads/zzls;I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzls;->zze(Lcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzu()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    .line 6
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzag(Lcom/google/android/gms/internal/ads/zzls;IZIJIZ)V

    return-void
.end method

.method private final zzag(Lcom/google/android/gms/internal/ads/zzls;IZIJIZ)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbl;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v7

    const/4 v9, 0x3

    const/4 v10, -0x1

    .line 19
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    .line 4
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/4 v8, 0x0

    .line 19
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v7, :cond_0

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Landroid/util/Pair;

    .line 19
    invoke-direct {v7, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v8

    if-eq v7, v8, :cond_1

    new-instance v7, Landroid/util/Pair;

    .line 4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v15, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    move-object v13, v3

    move-object/from16 v18, v4

    move v3, v2

    move/from16 v2, p3

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    .line 6
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    .line 7
    invoke-virtual {v4, v8, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v8

    .line 8
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzbk;->zzb:Ljava/lang/Object;

    .line 9
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    .line 10
    invoke-virtual {v5, v13, v9}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    move-object v13, v3

    move-object/from16 v18, v4

    const-wide/16 v3, 0x0

    .line 11
    invoke-virtual {v5, v9, v14, v3, v4}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v9

    .line 12
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzbk;->zzb:Ljava/lang/Object;

    .line 13
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p3, :cond_3

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_4

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    move v3, v4

    const/4 v7, 0x2

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    const/4 v7, 0x3

    :goto_2
    new-instance v4, Landroid/util/Pair;

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v15, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v4

    move/from16 v42, v3

    move v3, v2

    move/from16 v2, v42

    goto :goto_4

    .line 17
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 14
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    if-eqz p3, :cond_9

    if-nez v2, :cond_8

    .line 16
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzvh;->zzd:J

    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzvh;->zzd:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_7

    new-instance v7, Landroid/util/Pair;

    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v7, v15, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    move v3, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    move v3, v2

    const/4 v2, 0x0

    :goto_3
    new-instance v7, Landroid/util/Pair;

    .line 17
    invoke-direct {v7, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :goto_4
    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 21
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v4, :cond_b

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v9

    if-nez v9, :cond_a

    .line 23
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    .line 24
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    const-wide/16 v11, 0x0

    .line 25
    invoke-virtual {v5, v9, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v5

    .line 26
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbk;->zzd:Lcom/google/android/gms/internal/ads/zzap;

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    .line 27
    :goto_5
    sget-object v9, Lcom/google/android/gms/internal/ads/zzat;->zza:Lcom/google/android/gms/internal/ads/zzat;

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzT:Lcom/google/android/gms/internal/ads/zzat;

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    move-object v9, v13

    if-nez v4, :cond_c

    .line 28
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    .line 29
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    :cond_c
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzT:Lcom/google/android/gms/internal/ads/zzat;

    .line 30
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzat;->zza()Lcom/google/android/gms/internal/ads/zzar;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzls;->zzj:Ljava/util/List;

    const/4 v12, 0x0

    .line 31
    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_e

    .line 32
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzav;

    const/4 v14, 0x0

    .line 33
    :goto_8
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    move-result v15

    if-ge v14, v15, :cond_d

    .line 34
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzav;->zzb(I)Lcom/google/android/gms/internal/ads/zzau;

    move-result-object v15

    .line 35
    invoke-interface {v15, v10}, Lcom/google/android/gms/internal/ads/zzau;->zza(Lcom/google/android/gms/internal/ads/zzar;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 36
    :cond_e
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzar;->zzw()Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzT:Lcom/google/android/gms/internal/ads/zzat;

    .line 37
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzo()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v10

    .line 38
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzT:Lcom/google/android/gms/internal/ads/zzat;

    goto :goto_9

    .line 39
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zze()I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    const-wide/16 v13, 0x0

    .line 40
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v10

    .line 39
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzbk;->zzd:Lcom/google/android/gms/internal/ads/zzap;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzT:Lcom/google/android/gms/internal/ads/zzat;

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzat;->zza()Lcom/google/android/gms/internal/ads/zzar;

    move-result-object v11

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzap;->zzd:Lcom/google/android/gms/internal/ads/zzat;

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzar;->zzb(Lcom/google/android/gms/internal/ads/zzat;)Lcom/google/android/gms/internal/ads/zzar;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzar;->zzw()Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v10

    .line 38
    :goto_9
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:Lcom/google/android/gms/internal/ads/zzat;

    .line 42
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzat;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:Lcom/google/android/gms/internal/ads/zzat;

    .line 43
    iget-boolean v10, v9, Lcom/google/android/gms/internal/ads/zzls;->zzl:Z

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzls;->zzl:Z

    if-eq v10, v12, :cond_11

    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    .line 44
    :goto_a
    iget v12, v9, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    if-eq v12, v13, :cond_12

    const/4 v12, 0x1

    goto :goto_b

    :cond_12
    const/4 v12, 0x0

    :goto_b
    if-nez v12, :cond_13

    if-eqz v10, :cond_14

    .line 45
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzah()V

    .line 46
    :cond_14
    iget-boolean v13, v9, Lcom/google/android/gms/internal/ads/zzls;->zzg:Z

    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzls;->zzg:Z

    if-eq v13, v14, :cond_15

    const/4 v13, 0x1

    goto :goto_c

    :cond_15
    const/4 v13, 0x0

    :goto_c
    if-nez v6, :cond_16

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v14, Lcom/google/android/gms/internal/ads/zziz;

    move/from16 v15, p2

    invoke-direct {v14, v1, v15}, Lcom/google/android/gms/internal/ads/zziz;-><init>(Lcom/google/android/gms/internal/ads/zzls;I)V

    const/4 v15, 0x0

    .line 47
    invoke-virtual {v6, v15, v14}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    :cond_16
    if-eqz v2, :cond_1e

    .line 48
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbj;-><init>()V

    .line 49
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v14

    if-nez v14, :cond_17

    .line 50
    iget-object v14, v9, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    move-object/from16 v15, v18

    .line 51
    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    .line 52
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbl;->zza(Ljava/lang/Object;)I

    move-result v18

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    move/from16 p4, v12

    move/from16 v19, v13

    const-wide/16 v12, 0x0

    .line 53
    invoke-virtual {v15, v8, v6, v12, v13}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v15

    .line 54
    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzbk;->zzb:Ljava/lang/Object;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbk;->zzd:Lcom/google/android/gms/internal/ads/zzap;

    move-object/from16 v23, v6

    move/from16 v22, v8

    move-object/from16 v21, v12

    move-object/from16 v24, v14

    move/from16 v25, v18

    goto :goto_d

    :cond_17
    move/from16 p4, v12

    move/from16 v19, v13

    move/from16 v22, p7

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    :goto_d
    if-nez v3, :cond_1a

    .line 55
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 56
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzvh;->zzb:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzvh;->zzc:I

    .line 57
    invoke-virtual {v2, v8, v6}, Lcom/google/android/gms/internal/ads/zzbj;->zzf(II)J

    move-result-wide v12

    .line 58
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzkh;->zzV(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v14

    goto :goto_f

    .line 59
    :cond_18
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzvh;->zze:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 60
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkh;->zzV(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v12

    goto :goto_e

    :cond_19
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/zzbj;->zzd:J

    goto :goto_e

    .line 61
    :cond_1a
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 62
    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    .line 63
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzkh;->zzV(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v14

    goto :goto_f

    .line 64
    :cond_1b
    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    :goto_e
    move-wide v14, v12

    .line 65
    :goto_f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbf;

    .line 66
    sget-object v6, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 67
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzvh;->zzb:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzvh;->zzc:I

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v26

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v28

    move-object/from16 v20, v2

    move/from16 v30, v8

    move/from16 v31, v6

    invoke-direct/range {v20 .. v31}, Lcom/google/android/gms/internal/ads/zzbf;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzap;Ljava/lang/Object;IJJII)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zze()I

    move-result v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 69
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v8

    if-nez v8, :cond_1c

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 70
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    .line 71
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    invoke-virtual {v8, v12, v13}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 72
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzbl;->zza(Ljava/lang/Object;)I

    move-result v8

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 73
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkh;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    move/from16 v18, v10

    move v15, v11

    const-wide/16 v10, 0x0

    .line 74
    invoke-virtual {v13, v6, v14, v10, v11}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v13

    .line 73
    iget-object v10, v13, Lcom/google/android/gms/internal/ads/zzbk;->zzb:Ljava/lang/Object;

    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzbk;->zzd:Lcom/google/android/gms/internal/ads/zzap;

    move/from16 v35, v8

    move-object/from16 v31, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    goto :goto_10

    :cond_1c
    move/from16 v18, v10

    move v15, v11

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, -0x1

    :goto_10
    invoke-static/range {p5 .. p6}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v36

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 75
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 76
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzkh;->zzV(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v10

    move-wide/from16 v38, v10

    goto :goto_11

    :cond_1d
    move-wide/from16 v38, v36

    :goto_11
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 77
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget v11, v10, Lcom/google/android/gms/internal/ads/zzvh;->zzb:I

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzvh;->zzc:I

    move-object/from16 v30, v8

    move/from16 v32, v6

    move/from16 v40, v11

    move/from16 v41, v10

    invoke-direct/range {v30 .. v41}, Lcom/google/android/gms/internal/ads/zzbf;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzap;Ljava/lang/Object;IJJII)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzjs;

    invoke-direct {v10, v3, v2, v8}, Lcom/google/android/gms/internal/ads/zzjs;-><init>(ILcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzbf;)V

    const/16 v2, 0xb

    .line 78
    invoke-virtual {v6, v2, v10}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    goto :goto_12

    :cond_1e
    move/from16 v18, v10

    move v15, v11

    move/from16 p4, v12

    move/from16 v19, v13

    :goto_12
    if-eqz v4, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjt;

    invoke-direct {v3, v5, v7}, Lcom/google/android/gms/internal/ads/zzjt;-><init>(Lcom/google/android/gms/internal/ads/zzap;I)V

    const/4 v7, 0x1

    .line 79
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    goto :goto_13

    :cond_1f
    const/4 v7, 0x1

    .line 80
    :goto_13
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzf:Lcom/google/android/gms/internal/ads/zzin;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzls;->zzf:Lcom/google/android/gms/internal/ads/zzin;

    const/16 v4, 0xa

    if-eq v2, v3, :cond_20

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzju;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzju;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    .line 81
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    if-eqz v3, :cond_20

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjv;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjv;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    .line 82
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    .line 83
    :cond_20
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzze;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzze;

    if-eq v2, v3, :cond_21

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzj:Lcom/google/android/gms/internal/ads/zzzd;

    .line 84
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzze;->zze:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzzd;->zzp(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjw;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjw;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    const/4 v5, 0x2

    .line 85
    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    :cond_21
    if-nez v15, :cond_22

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzI:Lcom/google/android/gms/internal/ads/zzat;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzja;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/zzja;-><init>(Lcom/google/android/gms/internal/ads/zzat;)V

    const/16 v2, 0xe

    .line 86
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    :cond_22
    if-eqz v19, :cond_23

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjb;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjb;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    const/4 v5, 0x3

    .line 87
    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    :cond_23
    if-nez p4, :cond_24

    if-eqz v18, :cond_25

    :cond_24
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjc;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    const/4 v5, -0x1

    .line 88
    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    :cond_25
    const/4 v2, 0x4

    if-eqz p4, :cond_26

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzjd;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzjd;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    .line 89
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    :cond_26
    const/4 v3, 0x5

    if-nez v18, :cond_27

    .line 90
    iget v5, v9, Lcom/google/android/gms/internal/ads/zzls;->zzm:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzls;->zzm:I

    if-eq v5, v6, :cond_28

    :cond_27
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjh;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzjh;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    .line 91
    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    .line 92
    :cond_28
    iget v5, v9, Lcom/google/android/gms/internal/ads/zzls;->zzn:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzls;->zzn:I

    const/4 v8, 0x6

    if-eq v5, v6, :cond_29

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    .line 93
    invoke-virtual {v5, v8, v6}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    .line 94
    :cond_29
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzls;->zzj()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzls;->zzj()Z

    move-result v6

    const/4 v10, 0x7

    if-eq v5, v6, :cond_2a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjq;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzjq;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    .line 95
    invoke-virtual {v5, v10, v6}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    .line 96
    :cond_2a
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzls;->zzo:Lcom/google/android/gms/internal/ads/zzbb;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzls;->zzo:Lcom/google/android/gms/internal/ads/zzbb;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbb;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xc

    if-nez v5, :cond_2b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzjr;

    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzjr;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    .line 97
    invoke-virtual {v5, v6, v11}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    :cond_2b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzbd;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzg:Lcom/google/android/gms/internal/ads/zzbh;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzc:Lcom/google/android/gms/internal/ads/zzbd;

    .line 98
    sget-object v13, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 99
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzbh;->zzx()Z

    move-result v13

    move-object v14, v11

    check-cast v14, Lcom/google/android/gms/internal/ads/zzg;

    .line 100
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzo()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v15

    .line 101
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v17

    if-nez v17, :cond_2c

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zze()I

    move-result v7

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    move-object/from16 v17, v5

    const-wide/16 v4, 0x0

    .line 102
    invoke-virtual {v15, v7, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v6

    .line 101
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzbk;->zzh:Z

    if-eqz v4, :cond_2d

    const/4 v7, 0x1

    goto :goto_14

    :cond_2c
    move-object/from16 v17, v5

    :cond_2d
    const/4 v7, 0x0

    .line 103
    :goto_14
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzo()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v16, 0x0

    goto :goto_15

    .line 105
    :cond_2e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zze()I

    move-result v5

    .line 106
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzi()I

    .line 105
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzw()Z

    const/4 v6, 0x0

    .line 107
    invoke-virtual {v4, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzbl;->zzk(IIZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    const/16 v16, 0x1

    goto :goto_15

    :cond_2f
    move/from16 v16, v6

    .line 108
    :goto_15
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzo()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v15

    if-eqz v15, :cond_31

    :cond_30
    move v4, v6

    goto :goto_16

    .line 110
    :cond_31
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zze()I

    move-result v15

    .line 111
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzi()I

    .line 110
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzw()Z

    .line 112
    invoke-virtual {v4, v15, v6, v6}, Lcom/google/android/gms/internal/ads/zzbl;->zzj(IIZ)I

    move-result v4

    if-eq v4, v5, :cond_30

    const/4 v4, 0x1

    .line 113
    :goto_16
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzo()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v15

    if-nez v15, :cond_32

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zze()I

    move-result v15

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    move-object/from16 v18, v9

    const-wide/16 v8, 0x0

    .line 115
    invoke-virtual {v5, v15, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbk;->zzb()Z

    move-result v5

    if-eqz v5, :cond_33

    const/4 v5, 0x1

    goto :goto_17

    :cond_32
    move-object/from16 v18, v9

    const-wide/16 v8, 0x0

    :cond_33
    const/4 v5, 0x0

    .line 116
    :goto_17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zzo()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v6

    .line 117
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v15

    if-nez v15, :cond_34

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzg;->zze()I

    move-result v15

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    .line 118
    invoke-virtual {v6, v15, v14, v8, v9}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v6

    .line 117
    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzbk;->zzi:Z

    if-eqz v6, :cond_34

    const/4 v6, 0x1

    goto :goto_18

    :cond_34
    const/4 v6, 0x0

    .line 119
    :goto_18
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzbh;->zzo()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzbc;

    .line 120
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzbc;-><init>()V

    .line 121
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzbc;->zzb(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbc;

    xor-int/lit8 v11, v13, 0x1

    .line 122
    invoke-virtual {v9, v2, v11}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    if-eqz v7, :cond_35

    if-nez v13, :cond_35

    const/4 v2, 0x1

    goto :goto_19

    :cond_35
    const/4 v2, 0x0

    .line 123
    :goto_19
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    if-eqz v16, :cond_36

    if-nez v13, :cond_36

    const/4 v2, 0x1

    goto :goto_1a

    :cond_36
    const/4 v2, 0x0

    :goto_1a
    const/4 v3, 0x6

    .line 124
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    if-nez v8, :cond_38

    if-nez v16, :cond_37

    if-eqz v5, :cond_37

    if-eqz v7, :cond_38

    :cond_37
    if-nez v13, :cond_38

    const/4 v2, 0x1

    goto :goto_1b

    :cond_38
    const/4 v2, 0x0

    .line 125
    :goto_1b
    invoke-virtual {v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    if-eqz v4, :cond_39

    if-nez v13, :cond_39

    const/4 v2, 0x1

    goto :goto_1c

    :cond_39
    const/4 v2, 0x0

    :goto_1c
    const/16 v3, 0x8

    .line 126
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    if-nez v8, :cond_3b

    if-nez v4, :cond_3a

    if-eqz v5, :cond_3b

    if-eqz v6, :cond_3b

    :cond_3a
    if-nez v13, :cond_3b

    const/4 v2, 0x1

    goto :goto_1d

    :cond_3b
    const/4 v2, 0x0

    :goto_1d
    const/16 v3, 0x9

    .line 127
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    const/16 v2, 0xa

    .line 128
    invoke-virtual {v9, v2, v11}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    if-eqz v7, :cond_3c

    if-nez v13, :cond_3c

    const/4 v2, 0x1

    goto :goto_1e

    :cond_3c
    const/4 v2, 0x0

    :goto_1e
    const/16 v3, 0xb

    .line 129
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    if-eqz v7, :cond_3d

    if-nez v13, :cond_3d

    const/16 v2, 0xc

    const/4 v14, 0x1

    goto :goto_1f

    :cond_3d
    const/16 v2, 0xc

    const/4 v14, 0x0

    .line 130
    :goto_1f
    invoke-virtual {v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(IZ)Lcom/google/android/gms/internal/ads/zzbc;

    .line 131
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzbc;->zze()Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzH:Lcom/google/android/gms/internal/ads/zzbd;

    move-object/from16 v3, v17

    .line 132
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzbd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjp;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzjp;-><init>(Lcom/google/android/gms/internal/ads/zzkh;)V

    const/16 v4, 0xd

    .line 133
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    :cond_3e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    .line 134
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdz;->zzc()V

    move-object/from16 v2, v18

    .line 135
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zzp:Z

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzls;->zzp:Z

    return-void
.end method

.method private final zzah()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzg()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzx:Lcom/google/android/gms/internal/ads/zzmm;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmm;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Lcom/google/android/gms/internal/ads/zzmn;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmn;->zza(Z)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzx:Lcom/google/android/gms/internal/ads/zzmm;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzv()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmm;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Lcom/google/android/gms/internal/ads/zzmn;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzv()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmn;->zza(Z)V

    return-void
.end method

.method private final zzai()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zze:Lcom/google/android/gms/internal/ads/zzdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdm;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzs:Landroid/os/Looper;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 5
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzQ:Z

    if-nez v1, :cond_1

    .line 6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzR:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 6
    :goto_0
    const-string v2, "ExoPlayerImpl"

    .line 7
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzea;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzR:Z

    return-void

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method


# virtual methods
.method public final zzA()V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaq;->zza()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Release "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [AndroidXMedia3/1.8.0-alpha01] ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzea;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzx:Lcom/google/android/gms/internal/ads/zzmm;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmm;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzy:Lcom/google/android/gms/internal/ads/zzmn;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmn;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzjg;-><init>()V

    const/16 v2, 0xa

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zzc()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzk:Lcom/google/android/gms/internal/ads/zzdt;

    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzt:Lcom/google/android/gms/internal/ads/zzzl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    .line 12
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzzl;->zzg(Lcom/google/android/gms/internal/ads/zzzk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 13
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    const/4 v3, 0x1

    .line 14
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zzY(Lcom/google/android/gms/internal/ads/zzls;I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 15
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzls;->zzb(Lcom/google/android/gms/internal/ads/zzvh;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 16
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    const-wide/16 v3, 0x0

    .line 17
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    .line 18
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzmo;->zzR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzK:Landroid/view/Surface;

    .line 20
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/zzcw;->zza:I

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/internal/ads/zzmr;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzmr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmo;->zzS(Lcom/google/android/gms/internal/ads/zzmr;)V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/internal/ads/zzvj;)V
    .locals 16

    move-object/from16 v9, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 5
    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzS(Lcom/google/android/gms/internal/ads/zzls;)I

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzl()J

    iget v1, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzp:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    :goto_0
    if-ltz v5, :cond_0

    .line 9
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzY:Lcom/google/android/gms/internal/ads/zzxc;

    .line 10
    invoke-virtual {v5, v4, v3}, Lcom/google/android/gms/internal/ads/zzxc;->zzh(II)Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v3

    iput-object v3, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzY:Lcom/google/android/gms/internal/ads/zzxc;

    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 12
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzlp;

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzvj;

    iget-boolean v7, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzq:Z

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzlp;-><init>(Lcom/google/android/gms/internal/ads/zzvj;Z)V

    .line 14
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Ljava/lang/Object;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zzvc;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzkf;

    invoke-direct {v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzkf;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzvc;)V

    .line 15
    invoke-interface {v1, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzY:Lcom/google/android/gms/internal/ads/zzxc;

    .line 16
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .line 17
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzxc;->zzg(II)Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzY:Lcom/google/android/gms/internal/ads/zzxc;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzly;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzY:Lcom/google/android/gms/internal/ads/zzxc;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzxc;)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzc()I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_2

    .line 31
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaa;

    .line 32
    invoke-direct {v1, v0, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzaa;-><init>(Lcom/google/android/gms/internal/ads/zzbl;IJ)V

    throw v1

    .line 20
    :cond_4
    :goto_2
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbl;->zzg(Z)I

    move-result v12

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 21
    invoke-direct {v9, v0, v12, v5, v6}, Lcom/google/android/gms/internal/ads/zzkh;->zzX(Lcom/google/android/gms/internal/ads/zzbl;IJ)Landroid/util/Pair;

    move-result-object v7

    .line 22
    invoke-direct {v9, v1, v0, v7}, Lcom/google/android/gms/internal/ads/zzkh;->zzZ(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzbl;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v1

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    if-eq v12, v3, :cond_6

    if-eq v7, v2, :cond_6

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v3

    const/4 v7, 0x4

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzc()I

    move-result v0

    if-lt v12, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x2

    .line 24
    :cond_6
    :goto_3
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzkh;->zzY(Lcom/google/android/gms/internal/ads/zzls;I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v1

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    .line 25
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide v13

    iget-object v15, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzY:Lcom/google/android/gms/internal/ads/zzxc;

    .line 26
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzkt;->zzy(Ljava/util/List;IJLcom/google/android/gms/internal/ads/zzxc;)V

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v0

    if-nez v0, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v4

    .line 30
    :goto_4
    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzag(Lcom/google/android/gms/internal/ads/zzls;IZIJIZ)V

    return-void
.end method

.method public final zzF()Lcom/google/android/gms/internal/ads/zzin;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzf:Lcom/google/android/gms/internal/ads/zzin;

    return-object v0
.end method

.method protected final zzb(IJIZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    const/4 p4, -0x1

    if-ne p1, p4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p4, 0x1

    if-ltz p1, :cond_1

    move p5, p4

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    .line 2
    :goto_0
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 3
    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    .line 4
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbl;->zzc()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmo;->zzv()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzx()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzea;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkq;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzkq;-><init>(Lcom/google/android/gms/internal/ads/zzls;)V

    .line 8
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzkq;->zza(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzX:Lcom/google/android/gms/internal/ads/zzjj;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzjj;->zza:Lcom/google/android/gms/internal/ads/zzkh;

    .line 9
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzab(Lcom/google/android/gms/internal/ads/zzkq;)V

    return-void

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 10
    iget v0, p4, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 11
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    const/4 v0, 0x2

    .line 12
    invoke-static {p4, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzY(Lcom/google/android/gms/internal/ads/zzls;I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object p4

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zze()I

    move-result v7

    .line 14
    invoke-direct {p0, p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkh;->zzX(Lcom/google/android/gms/internal/ads/zzbl;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 15
    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzZ(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzbl;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    .line 16
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzex;->zzs(J)J

    move-result-wide p2

    invoke-virtual {p4, p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkt;->zzo(Lcom/google/android/gms/internal/ads/zzbl;IJ)V

    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzkh;->zzag(Lcom/google/android/gms/internal/ads/zzls;IZIJIZ)V

    return-void
.end method

.method public final zzc()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->zzb:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzx()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->zzc:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zze()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzS(Lcom/google/android/gms/internal/ads/zzls;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final zzf()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbl;->zza(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    return v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzn:I

    return v0
.end method

.method public final zzi()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzx()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzvh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 18
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzm()J

    move-result-wide v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzW:J

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzvh;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzd:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzvh;->zzd:J

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zze()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    .line 7
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzbk;->zzm:J

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    goto :goto_1

    .line 9
    :cond_3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzq:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 10
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    .line 12
    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzvh;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzb:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbj;->zzg(I)J

    goto :goto_0

    :cond_4
    move-wide v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzk:Lcom/google/android/gms/internal/ads/zzvh;

    .line 16
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzkh;->zzW(Lcom/google/android/gms/internal/ads/zzbl;Lcom/google/android/gms/internal/ads/zzvh;J)J

    .line 15
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final zzk()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzT(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzU(Lcom/google/android/gms/internal/ads/zzls;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzg;->zzo()Lcom/google/android/gms/internal/ads/zzbl;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzg;->zze()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzbk;

    const-wide/16 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzbk;->zzm:J

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzvh;->zza:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzo:Lcom/google/android/gms/internal/ads/zzbj;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbl;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    .line 10
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzb:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvh;->zzc:I

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbj;->zzf(II)J

    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzn()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzr:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzv(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzbl;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzbt;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzi:Lcom/google/android/gms/internal/ads/zzze;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzze;->zzd:Lcom/google/android/gms/internal/ads/zzbt;

    return-object v0
.end method

.method public final zzq()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zze:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzls;->zze(Lcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zza:Lcom/google/android/gms/internal/ads/zzbl;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbl;->zzo()Z

    move-result v1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 5
    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzkh;->zzY(Lcom/google/android/gms/internal/ads/zzls;I)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkt;->zzn()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    .line 7
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzkh;->zzag(Lcom/google/android/gms/internal/ads/zzls;IZIJIZ)V

    return-void
.end method

.method public final zzr(Z)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzn:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-nez p1, :cond_0

    move v1, v3

    move v2, v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :cond_1
    :goto_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzls;->zzl:Z

    if-ne v4, p1, :cond_2

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzm:I

    if-ne v1, v3, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzB:I

    .line 4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzls;->zzp:Z

    .line 5
    invoke-virtual {v0, p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzls;->zzd(ZII)Lcom/google/android/gms/internal/ads/zzls;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    .line 6
    invoke-virtual {v0, p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzkt;->zzr(ZII)V

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    .line 7
    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzkh;->zzag(Lcom/google/android/gms/internal/ads/zzls;IZIJIZ)V

    return-void
.end method

.method public final zzs(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzae(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzkh;->zzac(II)V

    return-void
.end method

.method public final zzt(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzO:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzO:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzl:Lcom/google/android/gms/internal/ads/zzkt;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzt(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzm:Lcom/google/android/gms/internal/ads/zzdz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzje;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzje;-><init>(F)V

    const/16 p1, 0x16

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdz;->zzd(ILcom/google/android/gms/internal/ads/zzdw;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdz;->zzc()V

    return-void
.end method

.method public final zzu()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->zzaf(Lcom/google/android/gms/internal/ads/zzin;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyq;->zzn()Lcom/google/android/gms/internal/ads/zzfyq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzls;->zzs:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method public final zzv()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzl:Z

    return v0
.end method

.method public final zzw()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzx()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzU:Lcom/google/android/gms/internal/ads/zzls;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzls;->zzb:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzvh;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzy()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkh;->zzai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzh:[Lcom/google/android/gms/internal/ads/zzma;

    .line 2
    array-length v0, v0

    const/4 v0, 0x2

    return v0
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzmr;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkh;->zzr:Lcom/google/android/gms/internal/ads/zzmo;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzmr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmo;->zzu(Lcom/google/android/gms/internal/ads/zzmr;)V

    return-void
.end method
