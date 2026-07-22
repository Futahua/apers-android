.class final Lcom/hermes/android/MainActivityKt$HermesApp$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->HermesApp(Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AdManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
    c = "com.hermes.android.MainActivityKt$HermesApp$2$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x11c,
        0x124,
        0x12c,
        0x12f,
        0x144,
        0x15a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $installProgress$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $phase$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/AppPhase;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public static synthetic $r8$lambda$_bKRyUINdblsRgs2fX5j4GT1ClE(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->invokeSuspend$lambda$0(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/AppPhase;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$HermesApp$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)Lkotlin/Unit;
    .locals 0

    .line 304
    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$6(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)V

    .line 305
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;-><init>(Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 280
    iget v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->label:I

    const-string v2, "MainActivity"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 281
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {p1}, Lcom/hermes/android/BootstrapManager;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {p1}, Lcom/hermes/android/BootstrapManager;->isHermesInstalled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 284
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$1;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-direct {v1, v5, v4}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$1;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->label:I

    invoke-static {p1, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 292
    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$2;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-direct {v1, v5, v4}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$2;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x2

    iput v6, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->label:I

    invoke-static {p1, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 300
    :cond_1
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$needsUpgrade$1;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-direct {v1, v5, v4}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$needsUpgrade$1;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x3

    iput v6, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->label:I

    invoke-static {p1, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 302
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v1, Lcom/hermes/android/AppPhase;->INSTALLING:Lcom/hermes/android/AppPhase;

    invoke-static {p1, v1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V

    .line 303
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v5, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;)V

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x4

    iput v6, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->label:I

    invoke-virtual {p1, v5, v1}, Lcom/hermes/android/BootstrapManager;->upgradeBundleFromApk(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 306
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v4}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$6(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)V

    if-nez p1, :cond_4

    .line 308
    const-string p1, "Bundle auto-upgrade failed; will retry next launch"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$migrationPending$1;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-direct {v1, v5, v4}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$migrationPending$1;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x5

    iput v6, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->label:I

    invoke-static {p1, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 329
    sget-object p1, Lcom/hermes/android/TerminalSessionManager;->Companion:Lcom/hermes/android/TerminalSessionManager$Companion;

    invoke-virtual {p1}, Lcom/hermes/android/TerminalSessionManager$Companion;->getProcessInstance()Lcom/hermes/android/TerminalSessionManager;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/hermes/android/TerminalSessionManager;->hasRunningSession()Z

    move-result p1

    if-ne p1, v3, :cond_6

    .line 332
    const-string p1, "Startup maintenance deferred: PTY session running (retry next cold start)"

    .line 330
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    goto :goto_6

    .line 340
    :cond_6
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v1, Lcom/hermes/android/AppPhase;->INSTALLING:Lcom/hermes/android/AppPhase;

    invoke-static {p1, v1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V

    .line 341
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v1, Lcom/hermes/android/BootstrapManager$Progress;

    .line 343
    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    sget v5, Lcom/hermes/android/R$string;->settings_updating:I

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "getString(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    sget v7, Lcom/hermes/android/R$string;->settings_please_wait:I

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-direct {v1, v3, v3, v2, v6}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$6(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)V

    .line 346
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-direct {v1, v2, v4}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x6

    iput v3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->label:I

    invoke-static {p1, v1, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 389
    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v4}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$6(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)V

    .line 397
    :cond_8
    :goto_6
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/hermes/android/AppPhase;->READY:Lcom/hermes/android/AppPhase;

    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V

    goto :goto_7

    .line 399
    :cond_9
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/hermes/android/AppPhase;->ONBOARDING:Lcom/hermes/android/AppPhase;

    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V

    .line 401
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
