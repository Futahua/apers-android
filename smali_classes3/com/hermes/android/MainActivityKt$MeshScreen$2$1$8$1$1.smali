.class final Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;
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
    c = "com.hermes.android.MainActivityKt$MeshScreen$2$1$8$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x8d9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $busy$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $controller:Lcom/hermes/android/mesh/MeshController;

.field final synthetic $dispatchedMsg:Ljava/lang/String;

.field final synthetic $p:Ljava/lang/String;

.field final synthetic $pending:Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $prompt$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $status$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/mesh/MeshController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/snapshots/SnapshotStateList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/hermes/android/mesh/MeshController;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$pending:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$p:Ljava/lang/String;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$dispatchedMsg:Ljava/lang/String;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$controller:Lcom/hermes/android/mesh/MeshController;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$prompt$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$status$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$busy$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance p1, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$pending:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$p:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$dispatchedMsg:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$controller:Lcom/hermes/android/mesh/MeshController;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$prompt$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$status$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$busy$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/String;Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/mesh/MeshController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2263
    iget v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2265
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1$1;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$controller:Lcom/hermes/android/mesh/MeshController;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$p:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v5, v6}, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1$1;-><init>(Lcom/hermes/android/mesh/MeshController;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->label:I

    invoke-static {p1, v1, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 2266
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$pending:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$p:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$prompt$delegate:Landroidx/compose/runtime/MutableState;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$146(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$status$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$dispatchedMsg:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$149(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2268
    :goto_1
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$busy$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v3}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$152(Landroidx/compose/runtime/MutableState;Z)V

    goto :goto_3

    .line 2267
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$status$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lcom/hermes/android/R$string;->mesh_dispatch_fail:I

    check-cast p1, Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v4, Landroid/content/Context;

    invoke-static {p1, v4}, Lcom/hermes/android/UiErrorKt;->uiMessage(Ljava/lang/Throwable;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$149(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2269
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2268
    :goto_4
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$MeshScreen$2$1$8$1$1;->$busy$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v3}, Lcom/hermes/android/MainActivityKt;->access$MeshScreen$lambda$152(Landroidx/compose/runtime/MutableState;Z)V

    throw p1
.end method
