.class final Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MoaCouncilViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->save(Lkotlinx/coroutines/CoroutineScope;Z)V
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
    value = "SMAP\nMoaCouncilViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel$save$5\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,256:1\n230#2,5:257\n230#2,5:262\n*S KotlinDebug\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel$save$5\n*L\n241#1:257,5\n244#1:262,5\n*E\n"
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
    c = "com.hermes.android.ui.moa.MoaCouncilViewModel$save$5"
    f = "MoaCouncilViewModel.kt"
    i = {}
    l = {
        0xe8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $preset:Lcom/hermes/android/data/MoaPreset;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $useNowToken:Ljava/lang/Long;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;


# direct methods
.method constructor <init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/data/MoaPreset;Ljava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/hermes/android/data/MoaPreset;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iput-object p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$preset:Lcom/hermes/android/data/MoaPreset;

    iput-object p4, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$useNowToken:Ljava/lang/Long;

    iput-object p5, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$name:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$preset:Lcom/hermes/android/data/MoaPreset;

    iget-object v4, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$useNowToken:Ljava/lang/Long;

    iget-object v5, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$name:Ljava/lang/String;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/data/MoaPreset;Ljava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 228
    iget v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 229
    iget-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$preset:Lcom/hermes/android/data/MoaPreset;

    iget-object v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$useNowToken:Ljava/lang/Long;

    iget-object v4, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$name:Ljava/lang/String;

    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 230
    invoke-static {p1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$getRepo$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lcom/hermes/android/data/HermesConfigRepository;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v1, v6, v7, v8}, Lcom/hermes/android/data/HermesConfigRepository;->upsertMoaPreset$default(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/MoaPreset;ZILjava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 232
    sget-object v1, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-instance v3, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5$1$1;

    invoke-direct {v3, p1, v4, v8}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5$1$1;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iput v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->label:I

    invoke-virtual {v1, v5, v6, v3, p0}, Lcom/hermes/android/ProviderSwitchCoordinator;->commitIfLatest(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 240
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 229
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 240
    :goto_1
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 241
    invoke-static {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$get_state$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 258
    :cond_3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 259
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 241
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x17f

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v2 .. v13}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v2

    .line 260
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 244
    :cond_4
    iget-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {p1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$get_state$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    .line 263
    :cond_5
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 264
    move-object v1, v0

    check-cast v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    const/16 v11, 0x1bf

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 244
    invoke-static/range {v1 .. v12}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v1

    .line 265
    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    iget-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p1, v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->refresh(Lkotlinx/coroutines/CoroutineScope;)V

    .line 246
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
