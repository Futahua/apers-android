.class final Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HermesHudScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.hermes.android.ui.HermesHudScreenKt$HermesHudScreen$1$1$1"
    f = "HermesHudScreen.kt"
    i = {}
    l = {
        0x54
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cronJobs$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$CronJob;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $hudRepo:Lcom/hermes/android/data/HermesHudRepository;

.field final synthetic $isLoading$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $memories$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$MemoryEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $overview$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/HermesHudRepository$HudOverview;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sessions$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $tools$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$ToolUsage;",
            ">;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lcom/hermes/android/data/HermesHudRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/HermesHudRepository;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/HermesHudRepository$HudOverview;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$ToolUsage;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$MemoryEntry;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$CronJob;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    iput-object p2, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$overview$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$sessions$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$tools$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$memories$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$cronJobs$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$isLoading$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;

    iget-object v1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    iget-object v2, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$overview$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$sessions$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$tools$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$memories$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$cronJobs$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$isLoading$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;-><init>(Lcom/hermes/android/data/HermesHudRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 78
    iget v2, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    iget-object v2, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    invoke-virtual {v2}, Lcom/hermes/android/data/HermesHudRepository;->collectOverview()Lcom/hermes/android/data/HermesHudRepository$HudOverview;

    move-result-object v5

    .line 80
    iget-object v2, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v4, v3, v6}, Lcom/hermes/android/data/HermesHudRepository;->recentSessions$default(Lcom/hermes/android/data/HermesHudRepository;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 81
    iget-object v7, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    invoke-static {v7, v4, v3, v6}, Lcom/hermes/android/data/HermesHudRepository;->topTools$default(Lcom/hermes/android/data/HermesHudRepository;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 82
    iget-object v4, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    invoke-virtual {v4}, Lcom/hermes/android/data/HermesHudRepository;->memoryEntries()Ljava/util/List;

    move-result-object v8

    .line 83
    iget-object v4, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    invoke-virtual {v4}, Lcom/hermes/android/data/HermesHudRepository;->cronJobs()Ljava/util/List;

    move-result-object v9

    .line 84
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lkotlin/coroutines/CoroutineContext;

    new-instance v17, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;

    iget-object v10, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$overview$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$sessions$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$tools$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$memories$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v14, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$cronJobs$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->$isLoading$delegate:Landroidx/compose/runtime/MutableState;

    const/16 v16, 0x0

    move-object/from16 v4, v17

    move-object/from16 v18, v6

    move-object v6, v2

    move-object v2, v15

    move-object/from16 v15, v18

    invoke-direct/range {v4 .. v16}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;-><init>(Lcom/hermes/android/data/HermesHudRepository$HudOverview;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v4, v17

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->label:I

    invoke-static {v2, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 92
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
