.class public final Lcom/google/android/gms/internal/ads/zzfcu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/ads/internal/client/zzm;

.field private zzb:Lcom/google/android/gms/ads/internal/client/zzr;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/ads/internal/client/zzgc;

.field private zze:Z

.field private zzf:Ljava/util/ArrayList;

.field private zzg:Ljava/util/ArrayList;

.field private zzh:Lcom/google/android/gms/internal/ads/zzbge;

.field private zzi:Lcom/google/android/gms/ads/internal/client/zzx;

.field private zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field private zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzco;

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzbmp;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzfch;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Lcom/google/android/gms/internal/ads/zzeky;

.field private zzs:Z

.field private zzt:Landroid/os/Bundle;

.field private final zzu:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzv:Lcom/google/android/gms/ads/internal/client/zzcs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzm:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfch;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzo:Lcom/google/android/gms/internal/ads/zzfch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzs:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/gms/internal/ads/zzfcu;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzO(Lcom/google/android/gms/internal/ads/zzfcu;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzf:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic zzP(Lcom/google/android/gms/internal/ads/zzfcu;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzg:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic zzQ(Lcom/google/android/gms/internal/ads/zzfcu;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static bridge synthetic zzR(Lcom/google/android/gms/internal/ads/zzfcu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    return p0
.end method

.method static bridge synthetic zzS(Lcom/google/android/gms/internal/ads/zzfcu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    return p0
.end method

.method static bridge synthetic zzT(Lcom/google/android/gms/internal/ads/zzfcu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzs:Z

    return p0
.end method

.method static bridge synthetic zzU(Lcom/google/android/gms/internal/ads/zzfcu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zze:Z

    return p0
.end method

.method static bridge synthetic zzX(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzcs;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfcu;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzm:I

    return p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfcu;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzt:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzco;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzl:Lcom/google/android/gms/ads/internal/client/zzco;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzgc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzd:Lcom/google/android/gms/ads/internal/client/zzgc;

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzbge;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzbmp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzn:Lcom/google/android/gms/internal/ads/zzbmp;

    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzeky;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzr:Lcom/google/android/gms/internal/ads/zzeky;

    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzfch;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzo:Lcom/google/android/gms/internal/ads/zzfch;

    return-object p0
.end method


# virtual methods
.method public final zzA(Z)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzs:Z

    return-object p0
.end method

.method public final zzB(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzt:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzC(Z)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zze:Z

    return-object p0
.end method

.method public final zzD(I)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzm:I

    return-object p0
.end method

.method public final zzE(Lcom/google/android/gms/internal/ads/zzbge;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    return-object p0
.end method

.method public final zzF(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzf:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzG(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzg:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final zzH(J)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-object p0
.end method

.method public final zzI(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzb()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zze:Z

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zza()Lcom/google/android/gms/ads/internal/client/zzco;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzl:Lcom/google/android/gms/ads/internal/client/zzco;

    :cond_0
    return-object p0
.end method

.method public final zzJ(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object p0
.end method

.method public final zzK(Lcom/google/android/gms/ads/internal/client/zzgc;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzd:Lcom/google/android/gms/ads/internal/client/zzgc;

    return-object p0
.end method

.method public final zzL()Lcom/google/android/gms/internal/ads/zzfcw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    const-string v1, "ad unit must not be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    const-string v1, "ad size must not be null"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    const-string v1, "ad request must not be null"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcw;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfcw;-><init>(Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfcv;)V

    return-object v0
.end method

.method public final zzN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    return v0
.end method

.method public final zzW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    return v0
.end method

.method public final zzY(Lcom/google/android/gms/ads/internal/client/zzcs;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    return-object p0
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzfch;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzo:Lcom/google/android/gms/internal/ads/zzfch;

    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzo:Lcom/google/android/gms/internal/ads/zzfch;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzo:Lcom/google/android/gms/internal/ads/zzfcj;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfch;->zza(I)Lcom/google/android/gms/internal/ads/zzfch;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzu:Lcom/google/android/gms/ads/internal/client/zzcs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zza:Lcom/google/android/gms/ads/internal/client/zzgc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzd:Lcom/google/android/gms/ads/internal/client/zzgc;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzg:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzf:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzh:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzg:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzi:Lcom/google/android/gms/internal/ads/zzbge;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzj:Lcom/google/android/gms/ads/internal/client/zzx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzl:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfcu;->zzs(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfcu;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzm:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfcu;->zzI(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfcu;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzc:Lcom/google/android/gms/internal/ads/zzeky;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzr:Lcom/google/android/gms/internal/ads/zzeky;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzs:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzs:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzt:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-object p0
.end method

.method public final zzs(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zze:Z

    :cond_0
    return-object p0
.end method

.method public final zzt(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    return-object p0
.end method

.method public final zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzv(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    return-object p0
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzeky;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzr:Lcom/google/android/gms/internal/ads/zzeky;

    return-object p0
.end method

.method public final zzx(Lcom/google/android/gms/internal/ads/zzbmp;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzn:Lcom/google/android/gms/internal/ads/zzbmp;

    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzgc;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzgc;-><init>(ZZZ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzd:Lcom/google/android/gms/ads/internal/client/zzgc;

    return-object p0
.end method

.method public final zzy(Z)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    return-object p0
.end method

.method public final zzz(Z)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    return-object p0
.end method
