.class final Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MoaCouncilViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->usePreset(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;)V
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
    value = "SMAP\nMoaCouncilViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,256:1\n1#2:257\n230#3,5:258\n*S KotlinDebug\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1\n*L\n105#1:258,5\n*E\n"
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
    c = "com.hermes.android.ui.moa.MoaCouncilViewModel$usePreset$1"
    f = "MoaCouncilViewModel.kt"
    i = {}
    l = {
        0x64
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $token:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;


# direct methods
.method constructor <init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iput-object p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-wide p3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->$token:J

    iput-object p5, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->$name:Ljava/lang/String;

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

    new-instance v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-wide v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->$token:J

    iget-object v5, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->$name:Ljava/lang/String;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 98
    iget v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->label:I

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

    iget-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    iget-wide v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->$token:J

    iget-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->$name:Ljava/lang/String;

    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 100
    sget-object v5, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    new-instance v6, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v1, v7}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iput v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->label:I

    invoke-virtual {v5, v3, v4, v6, p0}, Lcom/hermes/android/ProviderSwitchCoordinator;->commitIfLatest(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 104
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 99
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

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$get_state$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 259
    :cond_3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 260
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 105
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

    .line 261
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 106
    :cond_4
    iget-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p1, v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->refresh(Lkotlinx/coroutines/CoroutineScope;)V

    .line 107
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
