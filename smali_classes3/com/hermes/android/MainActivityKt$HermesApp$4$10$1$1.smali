.class final Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;
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
    c = "com.hermes.android.MainActivityKt$HermesApp$4$10$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x20a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
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
            "Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "FGS start not allowed: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 520
    iget v2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->label:I

    const-string v3, "HermesApp"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 522
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1$1;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v8, 0x0

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1$1;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->label:I

    invoke-static {p1, v2, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_2

    return-object v1

    .line 530
    :cond_2
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v2, Landroid/content/Context;

    const-class v5, Lcom/hermes/android/HermesService;

    invoke-direct {v1, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 536
    :try_start_3
    const-string v0, "FGS start failed unexpectedly"

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p1

    .line 533
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_1
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    .line 539
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/hermes/android/HermesService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    const-string v2, "null cannot be cast to non-null type com.hermes.android.MainActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/hermes/android/MainActivity;

    invoke-virtual {v1}, Lcom/hermes/android/MainActivity;->getServiceConnection$app_release()Landroid/content/ServiceConnection;

    move-result-object v1

    .line 538
    invoke-virtual {p1, v0, v1, v4}, Landroidx/appcompat/app/AppCompatActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 543
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/hermes/android/AppPhase;->READY:Lcom/hermes/android/AppPhase;

    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 545
    :goto_2
    const-string v0, "Retry install failed!"

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    sget v1, Lcom/hermes/android/R$string;->error_unknown:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    invoke-static {v0, p1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 548
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
