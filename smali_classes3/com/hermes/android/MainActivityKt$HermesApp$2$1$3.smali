.class final Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.hermes.android.MainActivityKt$HermesApp$2$1$3"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$BXOkfqp1HETlaEPIQIA1Mr4MshM(Lcom/hermes/android/BootstrapManager;Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->invokeSuspend$lambda$0(Lcom/hermes/android/BootstrapManager;Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/hermes/android/BootstrapManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/BootstrapManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/hermes/android/BootstrapManager;Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;)Z
    .locals 2

    .line 372
    sget-object v0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->ensureCoreDepsCurrent()V

    goto :goto_0

    .line 372
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/hermes/android/BootstrapManager;->ensureSqlite()Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-direct {p1, v0, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 346
    iget v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 356
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {p1}, Lcom/hermes/android/BootstrapManager;->ensureDpkgRepaired()Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    move-result-object p1

    .line 357
    sget-object v0, Lcom/hermes/android/DpkgHealPolicy;->INSTANCE:Lcom/hermes/android/DpkgHealPolicy;

    .line 359
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager;->sqliteRepairPending()Z

    move-result v1

    .line 360
    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v2}, Lcom/hermes/android/BootstrapManager;->coreDepsMigrationPending()Z

    move-result v2

    .line 357
    invoke-virtual {v0, p1, v1, v2}, Lcom/hermes/android/DpkgHealPolicy;->maintenanceSteps(Lcom/hermes/android/DpkgHealPolicy$RepairResult;ZZ)Ljava/util/List;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/hermes/android/DpkgHealPolicy$RepairResult;->DEFERRED:Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    const-string v2, "MainActivity"

    if-ne p1, v1, :cond_0

    .line 365
    const-string p1, "dpkg repair deferred; sqlite/core-deps maintenance skipped this launch"

    .line 363
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy;->INSTANCE:Lcom/hermes/android/DpkgHealPolicy;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    new-instance v3, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/BootstrapManager;)V

    invoke-virtual {p1, v0, v3}, Lcom/hermes/android/DpkgHealPolicy;->runMaintenance(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 384
    const-string p1, "startup maintenance aborted at a failed step; unconsumed markers retried next launch (session-open ensureSqlite gate stays authoritative)"

    .line 382
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 346
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
