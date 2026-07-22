.class final Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BootstrapManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/BootstrapManager;->upgradeBundleFromApk(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.hermes.android.BootstrapManager$upgradeBundleFromApk$2"
    f = "BootstrapManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/BootstrapManager;


# direct methods
.method constructor <init>(Lcom/hermes/android/BootstrapManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/BootstrapManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    iput-object p2, p0, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, p2}, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    const-string v2, " "

    const-string v3, " && mv "

    const-string v4, " 2>&1"

    const-string v5, "BootstrapManager"

    const-string/jumbo v0, "upgradeBundleFromApk done: now "

    const-string v6, "rm -rf "

    const-string v7, "post-upgrade verify failed (version="

    const-string/jumbo v8, "upgradeBundleFromApk: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2376
    iget v9, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->label:I

    if-nez v9, :cond_4

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    .line 2377
    iget-object v9, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v9}, Lcom/hermes/android/BootstrapManager;->getInstalledVersion()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v10}, Lcom/hermes/android/BootstrapManager;->getBundledVersion()Ljava/lang/String;

    move-result-object v10

    .line 2378
    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v12}, Lcom/hermes/android/BootstrapManager;->getHomeDir()Ljava/io/File;

    move-result-object v12

    const-string v13, ".hermes-android/hermes-agent"

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2379
    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v13}, Lcom/hermes/android/BootstrapManager;->getHomeDir()Ljava/io/File;

    move-result-object v13

    const-string v14, ".hermes-android/hermes-agent.bak"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2380
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v14}, Lcom/hermes/android/BootstrapManager;->getHomeDir()Ljava/io/File;

    move-result-object v14

    const-string v15, ".hermes-android/wheels"

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2381
    iget-object v14, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-static {v14}, Lcom/hermes/android/BootstrapManager;->access$getContext$p(Lcom/hermes/android/BootstrapManager;)Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/hermes/android/R$string;->step_bundle_upgrade:I

    move-object/from16 v16, v7

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v14, v15, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "getString(...)"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2383
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    iget-object v8, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    new-instance v9, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x3

    const/16 v21, 0x0

    move-object/from16 v17, v9

    move-object/from16 v20, v7

    invoke-direct/range {v17 .. v23}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2385
    iget-object v8, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v8}, Lcom/hermes/android/BootstrapManager;->ensureSqlite()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2389
    iget-object v8, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    new-instance v9, Lcom/hermes/android/BootstrapManager$Progress;

    const/16 v22, 0x8

    const/16 v23, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x3

    const/16 v21, 0x0

    move-object/from16 v17, v9

    move-object/from16 v20, v7

    invoke-direct/range {v17 .. v23}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    iget-object v7, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    .line 2391
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 2392
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 2393
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v11

    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " && rm -rf "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v29, 0x6

    const/16 v30, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v24, v7

    .line 2390
    invoke-static/range {v24 .. v30}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    .line 2398
    iget-object v7, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/hermes/android/BootstrapManager;->access$installHermesAgent(Lcom/hermes/android/BootstrapManager;Z)V

    .line 2401
    iget-object v7, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v7}, Lcom/hermes/android/BootstrapManager;->getInstalledVersion()Ljava/lang/String;

    move-result-object v7

    .line 2402
    iget-object v9, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    .line 2403
    const-string v19, "python3 -c \'import hermes_cli, pydantic_core, pydantic\' 2>&1"

    const/16 v23, 0x6

    const/16 v24, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v9

    .line 2402
    invoke-static/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 2404
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-nez v9, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 2405
    :goto_0
    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v9, :cond_1

    .line 2412
    iget-object v9, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x6

    const/16 v24, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v9

    invoke-static/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    .line 2413
    iget-object v9, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->$onProgress:Lkotlin/jvm/functions/Function1;

    new-instance v10, Lcom/hermes/android/BootstrapManager$Progress;

    iget-object v11, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-static {v11}, Lcom/hermes/android/BootstrapManager;->access$getContext$p(Lcom/hermes/android/BootstrapManager;)Landroid/content/Context;

    move-result-object v11

    sget v13, Lcom/hermes/android/R$string;->step_done:I

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v23, 0x8

    const/16 v24, 0x0

    const/16 v19, 0x3

    const/16 v20, 0x3

    const/16 v22, 0x0

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    invoke-direct/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v8

    goto/16 :goto_3

    .line 2406
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2407
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v11, v16

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " want="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " importOk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2406
    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object/from16 v17, v11

    .line 2385
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v7, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    invoke-static {v7}, Lcom/hermes/android/BootstrapManager;->access$getContext$p(Lcom/hermes/android/BootstrapManager;)Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/hermes/android/R$string;->error_sqlite_install:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v11

    .line 2417
    :goto_1
    const-string/jumbo v7, "upgradeBundleFromApk failed \u2014 restoring previous bundle"

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2419
    iget-object v0, v1, Lcom/hermes/android/BootstrapManager$upgradeBundleFromApk$2;->this$0:Lcom/hermes/android/BootstrapManager;

    :try_start_2
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2420
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2422
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 2423
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x6

    const/16 v24, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    .line 2421
    invoke-static/range {v18 .. v24}, Lcom/hermes/android/BootstrapManager;->runInTermux$default(Lcom/hermes/android/BootstrapManager;Ljava/lang/String;JZILjava/lang/Object;)Lkotlin/Pair;

    .line 2426
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2419
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const/4 v15, 0x0

    .line 2427
    :goto_3
    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 2376
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
