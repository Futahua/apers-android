.class public final Lcom/google/android/gms/internal/ads/zzbfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzg:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzh:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzi:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzj:Lcom/google/android/gms/internal/ads/zzbeo;

.field public static final zzk:Lcom/google/android/gms/internal/ads/zzbeo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "gads:disable_flag_shared_pref_listener_v2:enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zza:Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:include_package_name_v2:enabled"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzb:Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:js_flags:mf"

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzc:Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:js_flags:update_interval"

    const-wide/32 v2, 0xdbba00

    .line 4
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbeo;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzd:Lcom/google/android/gms/internal/ads/zzbeo;

    .line 5
    const-string v0, "gads:persist_js_flag:ars"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zze:Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:persist_js_flag:as"

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:persist_js_flag:scar"

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzf:Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:read_local_flags_v2:enabled"

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzg:Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:read_local_flags_cld_v2:enabled"

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzh:Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:write_local_flags_cld_v2:enabled"

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzi:Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:write_local_flags_client_v2:enabled"

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzj:Lcom/google/android/gms/internal/ads/zzbeo;

    const-string v0, "gads:write_local_flags_service_v2:enabled"

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeo;->zzd(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbfe;->zzk:Lcom/google/android/gms/internal/ads/zzbeo;

    return-void
.end method
