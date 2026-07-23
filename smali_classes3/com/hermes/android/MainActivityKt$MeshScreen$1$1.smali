.class final Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->MeshScreen(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$MeshScreen$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,5577:1\n774#2:5578\n865#2:5579\n2632#2,3:5580\n866#2:5583\n1863#2,2:5584\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$MeshScreen$1$1\n*L\n2103#1:5578\n2103#1:5579\n2103#1:5580,3\n2103#1:5583\n2107#1:5584,2\n*E\n"
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
    c = "com.hermes.android.MainActivityKt$MeshScreen$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x835,
        0x83c,
        0x841
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $controller:Lcom/hermes/android/mesh/MeshController;

.field final synthetic $online$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $paired$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pending:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $results:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Lcom/hermes/android/mesh/MeshClient$Result;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/mesh/MeshController;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Lcom/hermes/android/mesh/MeshClient$Result;",
            ">;",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/hermes/android/mesh/MeshController;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$results:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$pending:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$paired$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$controller:Lcom/hermes/android/mesh/MeshController;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$online$delegate:Landroidx/compose/runtime/MutableState;

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

    new-instance p1, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$results:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$pending:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$paired$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$controller:Lcom/hermes/android/mesh/MeshController;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$online$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/snapshots/SnapshotStateList;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/mesh/MeshController;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2096
    iget v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2098
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$paired$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$133(Landroidx/compose/runtime/MutableState;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/hermes/android/mesh/MeshPollWorker;->Companion:Lcom/hermes/android/mesh/MeshPollWorker$Companion;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/hermes/android/mesh/MeshPollWorker$Companion;->schedule(Landroid/content/Context;)V

    .line 2099
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$paired$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$133(Landroidx/compose/runtime/MutableState;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2101
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1$fresh$1;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$controller:Lcom/hermes/android/mesh/MeshController;

    invoke-direct {v1, v7, v2}, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1$fresh$1;-><init>(Lcom/hermes/android/mesh/MeshController;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v6, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->label:I

    invoke-static {p1, v1, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 2096
    :cond_5
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 2102
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$online$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v6}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$137(Landroidx/compose/runtime/MutableState;Z)V

    .line 2103
    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$results:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 5578
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 5579
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/hermes/android/mesh/MeshClient$Result;

    .line 2103
    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    .line 5580
    instance-of v11, v10, Ljava/util/Collection;

    if-eqz v11, :cond_6

    move-object v11, v10

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_3

    .line 5581
    :cond_6
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hermes/android/mesh/MeshClient$Result;

    .line 2103
    invoke-virtual {v11}, Lcom/hermes/android/mesh/MeshClient$Result;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/hermes/android/mesh/MeshClient$Result;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    .line 5579
    :cond_8
    :goto_3
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5583
    :cond_9
    check-cast v7, Ljava/util/List;

    .line 2104
    move-object p1, v7

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 2105
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$results:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-object v1, v7

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1, v3, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(ILjava/util/Collection;)Z

    .line 2106
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$pending:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$pending:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    .line 2107
    :cond_a
    move-object p1, v7

    check-cast p1, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    .line 5584
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hermes/android/mesh/MeshClient$Result;

    .line 2107
    sget-object v9, Lcom/hermes/android/mesh/MeshNotifier;->INSTANCE:Lcom/hermes/android/mesh/MeshNotifier;

    move-object v10, v1

    check-cast v10, Landroid/content/Context;

    invoke-virtual {v8}, Lcom/hermes/android/mesh/MeshClient$Result;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/hermes/android/mesh/MeshNotifier;->notifyResult(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 2108
    :cond_b
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1$2;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$controller:Lcom/hermes/android/mesh/MeshController;

    invoke-direct {v1, v8, v7, v2}, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1$2;-><init>(Lcom/hermes/android/mesh/MeshController;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->label:I

    invoke-static {p1, v1, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_c

    return-object v0

    .line 2111
    :catch_0
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$online$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v3}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$137(Landroidx/compose/runtime/MutableState;Z)V

    .line 2113
    :cond_c
    :goto_5
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->label:I

    const-wide/16 v7, 0xbb8

    invoke-static {v7, v8, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 2115
    :cond_d
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$controller:Lcom/hermes/android/mesh/MeshController;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$paired$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$1$1;->$online$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v1, v2, v3}, Lcom/hermes/android/handoff/AutoPair;->start(Landroid/content/Context;Lcom/hermes/android/mesh/MeshController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
