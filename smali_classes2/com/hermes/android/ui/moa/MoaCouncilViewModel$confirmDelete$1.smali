.class final Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MoaCouncilViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->confirmDelete(Lkotlinx/coroutines/CoroutineScope;)V
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
    value = "SMAP\nMoaCouncilViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,256:1\n1#2:257\n230#3,5:258\n230#3,5:263\n*S KotlinDebug\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1\n*L\n124#1:258,5\n127#1:263,5\n*E\n"
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
    c = "com.hermes.android.ui.moa.MoaCouncilViewModel$confirmDelete$1"
    f = "MoaCouncilViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;


# direct methods
.method constructor <init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iput-object p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->$name:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->$name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 121
    iget v0, v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->label:I

    if-nez v0, :cond_4

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 122
    iget-object v0, v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v2, v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->$name:Ljava/lang/String;

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$getRepo$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lcom/hermes/android/data/HermesConfigRepository;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/hermes/android/data/HermesConfigRepository;->deleteMoaPreset(Ljava/lang/String;)Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    :goto_0
    iget-object v2, v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_2

    check-cast v0, Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult;

    .line 127
    iget-object v2, v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$get_state$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    .line 264
    :cond_0
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 265
    move-object v5, v2

    check-cast v5, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 130
    sget-object v3, Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult$RefusedLastPreset;->INSTANCE:Lcom/hermes/android/data/HermesConfigRepository$MoaDeleteResult$RefusedLastPreset;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    const-string v3, "__moa_last_preset__"

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v13, v3

    const/16 v15, 0x7f

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 128
    invoke-static/range {v5 .. v16}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v3

    .line 266
    invoke-interface {v4, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v0, v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v2, v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v0, v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->refresh(Lkotlinx/coroutines/CoroutineScope;)V

    .line 136
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 124
    :cond_2
    invoke-static {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$get_state$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 259
    :cond_3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 260
    move-object v4, v2

    check-cast v4, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 124
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x7f

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v4 .. v15}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v4

    .line 261
    invoke-interface {v0, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 121
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
