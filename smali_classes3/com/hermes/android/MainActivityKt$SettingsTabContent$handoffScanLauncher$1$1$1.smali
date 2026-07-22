.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->SettingsTabContent(Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5577:1\n1#2:5578\n*E\n"
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
    c = "com.hermes.android.MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1"
    f = "MainActivity.kt"
    i = {
        0x2,
        0x2
    }
    l = {
        0x9d9,
        0x9e0,
        0x9e3,
        0x9e5
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "peer"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $contents:Ljava/lang/String;

.field final synthetic $handoffController:Lcom/hermes/android/handoff/HandoffController;

.field final synthetic $handoffError$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffImportedSessionId$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffPaired$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffReceiving$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffResult$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/handoff/HandoffImporter$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/hermes/android/handoff/HandoffController;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/handoff/HandoffController;",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/handoff/HandoffImporter$Stats;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffController:Lcom/hermes/android/handoff/HandoffController;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$contents:Ljava/lang/String;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffError$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffPaired$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffReceiving$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffResult$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffImportedSessionId$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v10, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffController:Lcom/hermes/android/handoff/HandoffController;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$contents:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffError$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffPaired$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffReceiving$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffResult$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffImportedSessionId$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;-><init>(Lcom/hermes/android/handoff/HandoffController;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v10, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/coroutines/Continuation;

    return-object v10
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 2517
    iget v0, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    iget-object v4, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 2519
    :try_start_0
    iget-object v8, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffController:Lcom/hermes/android/handoff/HandoffController;

    iget-object v9, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$contents:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/hermes/android/handoff/HandoffController;->pairFromQr(Ljava/lang/String;)Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2526
    invoke-virtual {v6}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getSessionId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    .line 2528
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$1;

    iget-object v4, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffPaired$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v3, v6, v4, v7}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$1;-><init>(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v5, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->label:I

    invoke-static {v0, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_7

    return-object v2

    .line 2531
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$2;

    iget-object v9, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffReceiving$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v8, v9, v7}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$2;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v0, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->L$1:Ljava/lang/Object;

    iput v4, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->label:I

    invoke-static {v5, v8, v9}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_6

    return-object v2

    :cond_6
    move-object v11, v6

    .line 2532
    :goto_1
    iget-object v0, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffController:Lcom/hermes/android/handoff/HandoffController;

    :try_start_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0, v11}, Lcom/hermes/android/handoff/HandoffController;->receive(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;)Lcom/hermes/android/handoff/HandoffImporter$Stats;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    move-object v9, v0

    .line 2533
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;

    iget-object v10, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffReceiving$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffResult$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffImportedSessionId$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v14, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v15, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffError$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v16, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v16}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v7, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->L$1:Ljava/lang/Object;

    iput v3, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->label:I

    invoke-static {v0, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_7

    return-object v2

    .line 2542
    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catch_0
    move-exception v0

    .line 2521
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$peer$1;

    iget-object v5, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v8, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->$handoffError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v4, v0, v5, v8, v7}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$peer$1;-><init>(Ljava/lang/Exception;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v0, v1

    check-cast v0, Lkotlin/coroutines/Continuation;

    iput v6, v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_8

    return-object v2

    .line 2524
    :cond_8
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
