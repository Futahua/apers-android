.class final Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke(Landroidx/compose/animation/AnimatedContentScope;Lcom/hermes/android/AppPhase;Landroidx/compose/runtime/Composer;I)V
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
    c = "com.hermes.android.MainActivityKt$HermesApp$4$8$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x1be,
        0x1e0
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $apiKey$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $apiModelId$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $apiProvider$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $installError$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $installProgress$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $installToken:J

.field final synthetic $lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

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
.method constructor <init>(JLandroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hermes/android/BootstrapManager;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/AppPhase;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$installToken:J

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p9, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p10, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 16
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

    move-object/from16 v0, p0

    new-instance v15, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;

    iget-wide v2, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$installToken:J

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, v15

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;-><init>(JLandroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/coroutines/Continuation;

    return-object v15
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "FGS start not allowed: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 444
    iget v3, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->label:I

    const/4 v4, 0x2

    const-string v5, "HermesApp"

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v4, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 446
    :try_start_2
    sget-object v3, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    iget-wide v7, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$installToken:J

    new-instance v16, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;

    iget-object v10, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v11, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v14, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v15, 0x0

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v9, v16

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v6, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->label:I

    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/hermes/android/ProviderSwitchCoordinator;->commitIfLatest(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    .line 480
    :cond_3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$2;

    iget-object v8, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v9, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$2;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, v1

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput v4, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->label:I

    invoke-static {v3, v7, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v3, v0, :cond_4

    return-object v0

    .line 489
    :cond_4
    :goto_1
    :try_start_3
    iget-object v0, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v4, Landroid/content/Context;

    const-class v7, Lcom/hermes/android/HermesService;

    invoke-direct {v3, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 495
    :try_start_4
    const-string v2, "FGS start failed unexpectedly"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_2
    iget-object v0, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    .line 498
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v3, Landroid/content/Context;

    const-class v4, Lcom/hermes/android/HermesService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    iget-object v3, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    const-string v4, "null cannot be cast to non-null type com.hermes.android.MainActivity"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/hermes/android/MainActivity;

    invoke-virtual {v3}, Lcom/hermes/android/MainActivity;->getServiceConnection$app_release()Landroid/content/ServiceConnection;

    move-result-object v3

    .line 497
    invoke-virtual {v0, v2, v3, v6}, Landroidx/appcompat/app/AppCompatActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 502
    iget-object v0, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v2, Lcom/hermes/android/AppPhase;->READY:Lcom/hermes/android/AppPhase;

    invoke-static {v0, v2}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 504
    :goto_3
    const-string v2, "Install failed!"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v5, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    iget-object v2, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    sget v3, Lcom/hermes/android/R$string;->error_unknown:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getString(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    invoke-static {v2, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 508
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
