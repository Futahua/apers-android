.class final Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MeshPollWorker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/mesh/MeshPollWorker;->doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Landroidx/work/ListenableWorker$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMeshPollWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeshPollWorker.kt\ncom/hermes/android/mesh/MeshPollWorker$doWork$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,88:1\n1863#2,2:89\n1557#2:91\n1628#2,3:92\n*S KotlinDebug\n*F\n+ 1 MeshPollWorker.kt\ncom/hermes/android/mesh/MeshPollWorker$doWork$2\n*L\n35#1:89,2\n36#1:91\n36#1:92,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00070\u0001\u00a2\u0006\u0002\u0008\u0002*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/work/ListenableWorker$Result;",
        "Lkotlin/jvm/internal/EnhancedNullability;",
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
    c = "com.hermes.android.mesh.MeshPollWorker$doWork$2"
    f = "MeshPollWorker.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/hermes/android/mesh/MeshPollWorker;


# direct methods
.method constructor <init>(Lcom/hermes/android/mesh/MeshPollWorker;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/mesh/MeshPollWorker;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;->this$0:Lcom/hermes/android/mesh/MeshPollWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;

    iget-object v0, p0, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;->this$0:Lcom/hermes/android/mesh/MeshPollWorker;

    invoke-direct {p1, v0, p2}, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;-><init>(Lcom/hermes/android/mesh/MeshPollWorker;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 29
    iget v0, p0, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    new-instance p1, Lcom/hermes/android/mesh/MeshController;

    iget-object v0, p0, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;->this$0:Lcom/hermes/android/mesh/MeshPollWorker;

    invoke-virtual {v0}, Lcom/hermes/android/mesh/MeshPollWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/hermes/android/mesh/MeshController;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p1}, Lcom/hermes/android/mesh/MeshController;->isPaired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/hermes/android/mesh/MeshController;->poll()Ljava/util/List;

    move-result-object v0

    .line 34
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 35
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    iget-object v3, p0, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;->this$0:Lcom/hermes/android/mesh/MeshPollWorker;

    .line 89
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hermes/android/mesh/MeshClient$Result;

    .line 35
    sget-object v5, Lcom/hermes/android/mesh/MeshNotifier;->INSTANCE:Lcom/hermes/android/mesh/MeshNotifier;

    invoke-virtual {v3}, Lcom/hermes/android/mesh/MeshPollWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/hermes/android/mesh/MeshClient$Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/hermes/android/mesh/MeshNotifier;->notifyResult(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    check-cast v0, Ljava/lang/Iterable;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 92
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 93
    check-cast v2, Lcom/hermes/android/mesh/MeshClient$Result;

    .line 36
    invoke-virtual {v2}, Lcom/hermes/android/mesh/MeshClient$Result;->getId()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 36
    invoke-virtual {p1, v1}, Lcom/hermes/android/mesh/MeshController;->ack(Ljava/util/List;)V

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/hermes/android/mesh/MeshPollWorker$doWork$2;->this$0:Lcom/hermes/android/mesh/MeshPollWorker;

    invoke-static {p1}, Lcom/hermes/android/mesh/MeshPollWorker;->access$maybeSyncBack(Lcom/hermes/android/mesh/MeshPollWorker;)V

    .line 39
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 41
    :catch_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->retry()Landroidx/work/ListenableWorker$Result;

    move-result-object p1

    :goto_2
    return-object p1

    .line 29
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
