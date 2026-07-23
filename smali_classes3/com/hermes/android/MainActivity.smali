.class public final Lcom/hermes/android/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u001bH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/hermes/android/MainActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "bootstrapManager",
        "Lcom/hermes/android/BootstrapManager;",
        "proStatus",
        "Lcom/hermes/android/data/ProStatus;",
        "billingRepository",
        "Lcom/hermes/android/data/BillingRepository;",
        "adManager",
        "Lcom/hermes/android/data/AdManager;",
        "hermesService",
        "Lcom/hermes/android/HermesService;",
        "serviceBound",
        "",
        "sessionManagerReady",
        "Landroidx/compose/runtime/MutableState;",
        "sessionManager",
        "Lcom/hermes/android/TerminalSessionManager;",
        "getSessionManager",
        "()Lcom/hermes/android/TerminalSessionManager;",
        "serviceConnection",
        "Landroid/content/ServiceConnection;",
        "getServiceConnection$app_release",
        "()Landroid/content/ServiceConnection;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
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
.field public static final $stable:I = 0x8


# instance fields
.field private adManager:Lcom/hermes/android/data/AdManager;

.field private billingRepository:Lcom/hermes/android/data/BillingRepository;

.field private bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field private hermesService:Lcom/hermes/android/HermesService;

.field private proStatus:Lcom/hermes/android/data/ProStatus;

.field private serviceBound:Z

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final sessionManagerReady:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 117
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/MainActivity;->sessionManagerReady:Landroidx/compose/runtime/MutableState;

    .line 134
    new-instance v0, Lcom/hermes/android/MainActivity$serviceConnection$1;

    invoke-direct {v0, p0}, Lcom/hermes/android/MainActivity$serviceConnection$1;-><init>(Lcom/hermes/android/MainActivity;)V

    check-cast v0, Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/hermes/android/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static final synthetic access$getAdManager$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/data/AdManager;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/hermes/android/MainActivity;->adManager:Lcom/hermes/android/data/AdManager;

    return-object p0
.end method

.method public static final synthetic access$getBillingRepository$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/data/BillingRepository;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/hermes/android/MainActivity;->billingRepository:Lcom/hermes/android/data/BillingRepository;

    return-object p0
.end method

.method public static final synthetic access$getBootstrapManager$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/BootstrapManager;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/hermes/android/MainActivity;->bootstrapManager:Lcom/hermes/android/BootstrapManager;

    return-object p0
.end method

.method public static final synthetic access$getHermesService$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/HermesService;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/hermes/android/MainActivity;->hermesService:Lcom/hermes/android/HermesService;

    return-object p0
.end method

.method public static final synthetic access$getProStatus$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/data/ProStatus;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/hermes/android/MainActivity;->proStatus:Lcom/hermes/android/data/ProStatus;

    return-object p0
.end method

.method public static final synthetic access$getSessionManager(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/TerminalSessionManager;
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/hermes/android/MainActivity;->getSessionManager()Lcom/hermes/android/TerminalSessionManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSessionManagerReady$p(Lcom/hermes/android/MainActivity;)Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/hermes/android/MainActivity;->sessionManagerReady:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method

.method public static final synthetic access$setHermesService$p(Lcom/hermes/android/MainActivity;Lcom/hermes/android/HermesService;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/hermes/android/MainActivity;->hermesService:Lcom/hermes/android/HermesService;

    return-void
.end method

.method public static final synthetic access$setServiceBound$p(Lcom/hermes/android/MainActivity;Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/hermes/android/MainActivity;->serviceBound:Z

    return-void
.end method

.method private final getSessionManager()Lcom/hermes/android/TerminalSessionManager;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/hermes/android/MainActivity;->hermesService:Lcom/hermes/android/HermesService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hermes/android/HermesService;->getSessionManager()Lcom/hermes/android/TerminalSessionManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final getServiceConnection$app_release()Landroid/content/ServiceConnection;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/hermes/android/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "MainActivity"

    .line 150
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    # ── All-files-access (MANAGE_EXTERNAL_STORAGE) request (added for standalone build) ──
    # On Android 11+ (R/API 30), if we don't already hold "All files access", open the
    # system settings screen so the user can grant it. Wrapped so it can never crash startup.
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v1, v3, :apers_mes_done

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v1

    if-nez v1, :apers_mes_done

    :try_start_apers_mes
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hermes/android/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package"

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/hermes/android/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_apers_mes
    .catch Ljava/lang/Exception; {:try_start_apers_mes .. :try_end_apers_mes} :catch_apers_mes

    goto :apers_mes_done

    :catch_apers_mes
    move-exception v1

    const-string v3, "All-files-access settings screen unavailable"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :apers_mes_done
    # ── end All-files-access request ──

    .line 153
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt p1, v1, :cond_0

    .line 154
    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, p1}, Lcom/hermes/android/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-array v1, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/16 p1, 0x3e9

    invoke-virtual {p0, v1, p1}, Lcom/hermes/android/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 161
    :cond_0
    new-instance p1, Lcom/hermes/android/BootstrapManager;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/hermes/android/BootstrapManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hermes/android/MainActivity;->bootstrapManager:Lcom/hermes/android/BootstrapManager;

    .line 164
    new-instance p1, Lcom/hermes/android/data/ProStatus;

    invoke-direct {p1, v1}, Lcom/hermes/android/data/ProStatus;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hermes/android/MainActivity;->proStatus:Lcom/hermes/android/data/ProStatus;

    .line 165
    new-instance p1, Lcom/hermes/android/data/BillingRepository;

    iget-object v3, p0, Lcom/hermes/android/MainActivity;->proStatus:Lcom/hermes/android/data/ProStatus;

    const-string v4, "proStatus"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_1
    invoke-direct {p1, v1, v3}, Lcom/hermes/android/data/BillingRepository;-><init>(Landroid/content/Context;Lcom/hermes/android/data/ProStatus;)V

    iput-object p1, p0, Lcom/hermes/android/MainActivity;->billingRepository:Lcom/hermes/android/data/BillingRepository;

    .line 166
    new-instance p1, Lcom/hermes/android/data/AdManager;

    iget-object v3, p0, Lcom/hermes/android/MainActivity;->proStatus:Lcom/hermes/android/data/ProStatus;

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_2
    invoke-direct {p1, v1, v3}, Lcom/hermes/android/data/AdManager;-><init>(Landroid/content/Context;Lcom/hermes/android/data/ProStatus;)V

    iput-object p1, p0, Lcom/hermes/android/MainActivity;->adManager:Lcom/hermes/android/data/AdManager;

    .line 167
    invoke-virtual {p1}, Lcom/hermes/android/data/AdManager;->initialize()V

    .line 168
    iget-object p1, p0, Lcom/hermes/android/MainActivity;->billingRepository:Lcom/hermes/android/data/BillingRepository;

    if-nez p1, :cond_3

    const-string p1, "billingRepository"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_3
    invoke-virtual {p1}, Lcom/hermes/android/data/BillingRepository;->connect()V

    .line 171
    iget-object p1, p0, Lcom/hermes/android/MainActivity;->bootstrapManager:Lcom/hermes/android/BootstrapManager;

    if-nez p1, :cond_4

    const-string p1, "bootstrapManager"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_4
    invoke-virtual {p1}, Lcom/hermes/android/BootstrapManager;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 173
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    const-class v4, Lcom/hermes/android/HermesService;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/hermes/android/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    const-string v3, "FGS start failed unexpectedly"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 176
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FGS start not allowed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hermes/android/HermesService;

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    iget-object v0, p0, Lcom/hermes/android/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 181
    invoke-virtual {p0, p1, v0, v2}, Lcom/hermes/android/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 190
    :cond_5
    move-object p1, p0

    check-cast p1, Landroidx/activity/ComponentActivity;

    new-instance v0, Lcom/hermes/android/MainActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/hermes/android/MainActivity$onCreate$1;-><init>(Lcom/hermes/android/MainActivity;)V

    const v1, -0x761b9512

    invoke-static {v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v5, v0, v2, v5}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/hermes/android/MainActivity;->serviceBound:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/hermes/android/MainActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/hermes/android/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/hermes/android/MainActivity;->serviceBound:Z

    .line 211
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/hermes/android/MainActivity;->billingRepository:Lcom/hermes/android/data/BillingRepository;

    if-nez v0, :cond_1

    const-string v0, "billingRepository"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/hermes/android/data/BillingRepository;->destroy()V

    return-void
.end method
