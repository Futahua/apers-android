.class public final Lcom/hermes/android/HermesService;
.super Landroid/app/Service;
.source "HermesService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/HermesService$Companion;,
        Lcom/hermes/android/HermesService$LocalBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHermesService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HermesService.kt\ncom/hermes/android/HermesService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n1#2:199\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0002$%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u0008\u0010\u0019\u001a\u00020\u0017H\u0002J\"\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0016J\u0012\u0010\u001e\u001a\u00020\u00172\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010 \u001a\u00020\u0017H\u0016J\u0008\u0010!\u001a\u00020\u0017H\u0002J\u0008\u0010\"\u001a\u00020\u0017H\u0002J\u0008\u0010#\u001a\u00020\u0017H\u0002R\u001e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0005@BX\u0086.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0018\u00010\nR\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00060\u000fR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/hermes/android/HermesService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "value",
        "Lcom/hermes/android/TerminalSessionManager;",
        "sessionManager",
        "getSessionManager",
        "()Lcom/hermes/android/TerminalSessionManager;",
        "wakeLock",
        "Landroid/os/PowerManager$WakeLock;",
        "Landroid/os/PowerManager;",
        "ttsBridge",
        "Lcom/hermes/android/TtsPlaybackBridge;",
        "binder",
        "Lcom/hermes/android/HermesService$LocalBinder;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onUnbind",
        "",
        "onRebind",
        "",
        "onCreate",
        "ensureLocalLlmReadyIfConfigured",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "onTaskRemoved",
        "rootIntent",
        "onDestroy",
        "acquireWakeLock",
        "releaseWakeLock",
        "createNotificationChannel",
        "Companion",
        "LocalBinder",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field private static final CHANNEL_ID:Ljava/lang/String; = "hermes_service"

.field public static final Companion:Lcom/hermes/android/HermesService$Companion;

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HermesService"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "hermes:terminal_session"


# instance fields
.field private final binder:Lcom/hermes/android/HermesService$LocalBinder;

.field private sessionManager:Lcom/hermes/android/TerminalSessionManager;

.field private ttsBridge:Lcom/hermes/android/TtsPlaybackBridge;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$_L78aAVPNPGWuWNbiEYvd8B1R3o(Lcom/hermes/android/HermesService;)V
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/HermesService;->ensureLocalLlmReadyIfConfigured$lambda$2(Lcom/hermes/android/HermesService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gwQJjSrT2vNNpNzL2IPqmxyf-TA(Lcom/hermes/android/NullTerminalSessionClient;Lcom/termux/terminal/TerminalSession;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/HermesService;->onUnbind$lambda$0(Lcom/hermes/android/NullTerminalSessionClient;Lcom/termux/terminal/TerminalSession;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/HermesService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/HermesService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/HermesService;->Companion:Lcom/hermes/android/HermesService$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/HermesService;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    new-instance v0, Lcom/hermes/android/HermesService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/hermes/android/HermesService$LocalBinder;-><init>(Lcom/hermes/android/HermesService;)V

    iput-object v0, p0, Lcom/hermes/android/HermesService;->binder:Lcom/hermes/android/HermesService$LocalBinder;

    return-void
.end method

.method private final acquireWakeLock()V
    .locals 3

    .line 166
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/hermes/android/HermesService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 167
    const-string v2, "hermes:terminal_session"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 167
    iput-object v0, p0, Lcom/hermes/android/HermesService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    const-string v0, "HermesService"

    const-string v1, "WakeLock acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final createNotificationChannel()V
    .locals 4

    .line 186
    new-instance v0, Landroid/app/NotificationChannel;

    .line 188
    sget v1, Lcom/hermes/android/R$string;->service_channel:I

    invoke-virtual {p0, v1}, Lcom/hermes/android/HermesService;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    .line 186
    const-string v3, "hermes_service"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 191
    sget v1, Lcom/hermes/android/R$string;->service_channel_desc:I

    invoke-virtual {p0, v1}, Lcom/hermes/android/HermesService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 194
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/hermes/android/HermesService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 195
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private final ensureLocalLlmReadyIfConfigured()V
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/Thread;

    .line 101
    new-instance v1, Lcom/hermes/android/HermesService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/hermes/android/HermesService$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/HermesService;)V

    const-string v2, "local-llm-ready-check"

    .line 86
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final ensureLocalLlmReadyIfConfigured$lambda$2(Lcom/hermes/android/HermesService;)V
    .locals 4

    .line 88
    :try_start_0
    new-instance v0, Lcom/hermes/android/data/HermesConfigRepository;

    sget-object v1, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/hermes/android/HermesPaths;->hermesHome(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hermes/android/data/HermesConfigRepository;-><init>(Ljava/io/File;)V

    .line 89
    invoke-virtual {v0}, Lcom/hermes/android/data/HermesConfigRepository;->readActiveProviderId()Ljava/lang/String;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/hermes/android/NpuModuleBridge;->INSTANCE:Lcom/hermes/android/NpuModuleBridge;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/hermes/android/NpuModuleBridge;->activeContextLength(Landroid/content/Context;)I

    move-result v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/hermes/android/data/HermesConfigRepository;->ensureLocalLlmDefaultsIfActive(Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcom/hermes/android/LocalLlmModuleBridge;->INSTANCE:Lcom/hermes/android/LocalLlmModuleBridge;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/hermes/android/LocalLlmModuleBridge;->ensureServerRunningIfConfigured(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    const-string v0, "ensureLocalLlmReadyIfConfigured failed"

    check-cast p0, Ljava/lang/Throwable;

    const-string v1, "HermesService"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static final onUnbind$lambda$0(Lcom/hermes/android/NullTerminalSessionClient;Lcom/termux/terminal/TerminalSession;)Lkotlin/Unit;
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    check-cast p0, Lcom/termux/terminal/TerminalSessionClient;

    invoke-virtual {p1, p0}, Lcom/termux/terminal/TerminalSession;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V

    .line 57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final releaseWakeLock()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/hermes/android/HermesService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 177
    const-string v0, "HermesService"

    const-string v1, "WakeLock released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/hermes/android/HermesService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final getSessionManager()Lcom/hermes/android/TerminalSessionManager;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/hermes/android/HermesService;->sessionManager:Lcom/hermes/android/TerminalSessionManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sessionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 48
    const-string p1, "HermesService"

    const-string v0, "onBind: Activity binding"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lcom/hermes/android/HermesService;->binder:Lcom/hermes/android/HermesService$LocalBinder;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    const-string v0, "HermesService"

    const-string v1, "onCreate: initializing SessionManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/hermes/android/HermesService;->createNotificationChannel()V

    .line 73
    new-instance v0, Lcom/hermes/android/TerminalSessionManager;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/hermes/android/TerminalSessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hermes/android/HermesService;->sessionManager:Lcom/hermes/android/TerminalSessionManager;

    .line 74
    invoke-direct {p0}, Lcom/hermes/android/HermesService;->acquireWakeLock()V

    .line 75
    invoke-direct {p0}, Lcom/hermes/android/HermesService;->ensureLocalLlmReadyIfConfigured()V

    .line 76
    new-instance v0, Lcom/hermes/android/TtsPlaybackBridge;

    sget-object v2, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    invoke-virtual {v2, v1}, Lcom/hermes/android/HermesPaths;->hermesHome(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hermes/android/TtsPlaybackBridge;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/hermes/android/TtsPlaybackBridge;->start()V

    iput-object v0, p0, Lcom/hermes/android/HermesService;->ttsBridge:Lcom/hermes/android/TtsPlaybackBridge;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 155
    const-string v0, "HermesService"

    const-string v1, "onDestroy: closing all sessions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/hermes/android/HermesService;->getSessionManager()Lcom/hermes/android/TerminalSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hermes/android/TerminalSessionManager;->closeAll()V

    .line 157
    invoke-direct {p0}, Lcom/hermes/android/HermesService;->releaseWakeLock()V

    .line 158
    iget-object v0, p0, Lcom/hermes/android/HermesService;->ttsBridge:Lcom/hermes/android/TtsPlaybackBridge;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hermes/android/TtsPlaybackBridge;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/hermes/android/HermesService;->ttsBridge:Lcom/hermes/android/TtsPlaybackBridge;

    .line 160
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 64
    const-string p1, "HermesService"

    const-string v0, "onRebind: Activity re-binding"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 106
    const-string p1, "HermesService"

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    .line 107
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/hermes/android/MainActivity;

    invoke-direct {p3, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    const/4 v1, 0x0

    .line 105
    invoke-static {p2, v1, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 111
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "hermes_service"

    invoke-direct {v0, p2, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    const-string p2, "Hermes-agent Android"

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 113
    sget v0, Lcom/hermes/android/R$string;->service_text:I

    invoke-virtual {p0, v0}, Lcom/hermes/android/HermesService;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const v0, 0x108009b

    .line 114
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 115
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 116
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 117
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const-string v0, "build(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 120
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    .line 121
    invoke-virtual {p0, p3, p2, v1}, Lcom/hermes/android/HermesService;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0, p3, p2}, Lcom/hermes/android/HermesService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p3

    :catch_0
    move-exception p2

    .line 141
    const-string p3, "startForeground failed unexpectedly \u2014 stopping self"

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-virtual {p0}, Lcom/hermes/android/HermesService;->stopSelf()V

    return v0

    :catch_1
    move-exception p2

    .line 134
    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "startForeground not allowed (background start) \u2014 stopping self: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/hermes/android/HermesService;->stopSelf()V

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/hermes/android/HermesService;->getSessionManager()Lcom/hermes/android/TerminalSessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hermes/android/TerminalSessionManager;->getSessionCount()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTaskRemoved: service continues running ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " sessions)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HermesService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 53
    const-string p1, "HermesService"

    const-string v0, "onUnbind: switching all sessions to NullClient"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance p1, Lcom/hermes/android/NullTerminalSessionClient;

    invoke-direct {p1}, Lcom/hermes/android/NullTerminalSessionClient;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/hermes/android/HermesService;->getSessionManager()Lcom/hermes/android/TerminalSessionManager;

    move-result-object v0

    new-instance v1, Lcom/hermes/android/HermesService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/hermes/android/HermesService$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/NullTerminalSessionClient;)V

    invoke-virtual {v0, v1}, Lcom/hermes/android/TerminalSessionManager;->forEachSession(Lkotlin/jvm/functions/Function1;)V

    .line 58
    invoke-virtual {p0}, Lcom/hermes/android/HermesService;->getSessionManager()Lcom/hermes/android/TerminalSessionManager;

    move-result-object v0

    check-cast p1, Lcom/termux/terminal/TerminalSessionClient;

    invoke-virtual {v0, p1}, Lcom/hermes/android/TerminalSessionManager;->setSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V

    const/4 p1, 0x1

    return p1
.end method
