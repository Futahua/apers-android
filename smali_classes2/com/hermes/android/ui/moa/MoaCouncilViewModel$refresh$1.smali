.class final Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MoaCouncilViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->refresh(Lkotlinx/coroutines/CoroutineScope;)V
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
    value = "SMAP\nMoaCouncilViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,256:1\n1368#2:257\n1454#2,5:258\n2632#2,3:266\n1755#2,3:269\n230#3,3:263\n233#3,2:272\n*S KotlinDebug\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1\n*L\n69#1:257\n69#1:258,5\n81#1:266,3\n83#1:269,3\n76#1:263,3\n76#1:272,2\n*E\n"
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
    c = "com.hermes.android.ui.moa.MoaCouncilViewModel$refresh$1"
    f = "MoaCouncilViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;


# direct methods
.method constructor <init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

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

    new-instance p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-direct {p1, v0, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 66
    iget v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->label:I

    if-nez v1, :cond_9

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    iget-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {v1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$getRepo$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lcom/hermes/android/data/HermesConfigRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hermes/android/data/HermesConfigRepository;->readMoaSection()Lcom/hermes/android/data/MoaSection;

    move-result-object v1

    .line 68
    iget-object v2, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$getRepo$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lcom/hermes/android/data/HermesConfigRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hermes/android/data/HermesConfigRepository;->readActiveMoaPresetName()Ljava/lang/String;

    move-result-object v14

    .line 69
    invoke-virtual {v1}, Lcom/hermes/android/data/MoaSection;->getPresets()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 257
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 258
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 259
    check-cast v4, Lcom/hermes/android/data/MoaPreset;

    .line 69
    invoke-virtual {v4}, Lcom/hermes/android/data/MoaPreset;->getReferenceModels()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4}, Lcom/hermes/android/data/MoaPreset;->getAggregator()Lcom/hermes/android/data/MoaSlot;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 260
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 262
    :cond_0
    move-object v9, v3

    check-cast v9, Ljava/util/List;

    .line 71
    new-instance v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1$candidates$1;

    iget-object v3, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {v3}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$getRepo$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lcom/hermes/android/data/HermesConfigRepository;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1$candidates$1;-><init>(Ljava/lang/Object;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 72
    sget-object v2, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    iget-object v3, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {v3}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$getHermesDir$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hermes/android/data/oauth/AuthJsonStore;->configuredProviders(Ljava/io/File;)Ljava/util/Set;

    move-result-object v7

    .line 73
    iget-object v2, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$getRepo$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lcom/hermes/android/data/HermesConfigRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hermes/android/data/HermesConfigRepository;->readCustomProviderNames()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 70
    invoke-static/range {v5 .. v11}, Lcom/hermes/android/data/MoaSlotCandidatesKt;->buildSlotCandidates$default(Ljava/util/List;Lkotlin/jvm/functions/Function1;Ljava/util/Set;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 76
    iget-object v2, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$get_state$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    .line 264
    :goto_1
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 265
    move-object v2, v12

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 81
    move-object v3, v14

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_4

    invoke-virtual {v1}, Lcom/hermes/android/data/MoaSection;->getPresets()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 266
    instance-of v6, v3, Ljava/util/Collection;

    if-eqz v6, :cond_1

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 267
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hermes/android/data/MoaPreset;

    .line 81
    invoke-virtual {v6}, Lcom/hermes/android/data/MoaPreset;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v6, v5

    .line 83
    :goto_4
    move-object v3, v15

    check-cast v3, Ljava/lang/Iterable;

    .line 269
    instance-of v7, v3, Ljava/util/Collection;

    if-eqz v7, :cond_6

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    move v8, v5

    goto :goto_5

    .line 270
    :cond_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hermes/android/data/SlotCandidate;

    .line 83
    invoke-virtual {v7}, Lcom/hermes/android/data/SlotCandidate;->getConfigured()Z

    move-result v7

    if-eqz v7, :cond_7

    move v8, v4

    :goto_5
    const/16 v16, 0x140

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    move-object v5, v14

    move-object v7, v15

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-object v0, v13

    move-object/from16 v13, v17

    .line 77
    invoke-static/range {v2 .. v13}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v2

    move-object/from16 v3, v18

    .line 272
    invoke-interface {v0, v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 87
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_8
    move-object v13, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 66
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
