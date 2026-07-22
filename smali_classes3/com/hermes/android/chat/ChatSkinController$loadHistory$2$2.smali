.class final Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatSkinController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nChatSkinController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController$loadHistory$2$2\n+ 2 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,443:1\n191#2,2:444\n193#2:455\n191#2,2:456\n193#2:463\n191#2,2:464\n193#2:471\n191#2,2:472\n193#2:479\n230#3,3:446\n233#3,2:453\n230#3,5:458\n230#3,5:466\n230#3,5:474\n1557#4:449\n1628#4,3:450\n*S KotlinDebug\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController$loadHistory$2$2\n*L\n162#1:444,2\n162#1:455\n166#1:456,2\n166#1:463\n172#1:464,2\n172#1:471\n176#1:472,2\n176#1:479\n162#1:446,3\n162#1:453,2\n166#1:458,5\n172#1:466,5\n176#1:474,5\n162#1:449\n162#1:450,3\n*E\n"
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
    c = "com.hermes.android.chat.ChatSkinController$loadHistory$2$2"
    f = "ChatSkinController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $check:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/hermes/android/data/HermesHudRepository$TurnSettle;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $midTurnBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sid:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/chat/ChatSkinController;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/hermes/android/data/HermesHudRepository$TurnSettle;",
            ">;",
            "Lcom/hermes/android/chat/ChatSkinController;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$check:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    iput-object p3, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$sid:Ljava/lang/String;

    iput-object p4, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$midTurnBubbles:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;

    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$check:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    iget-object v3, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$sid:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$midTurnBubbles:Ljava/util/List;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 159
    iget v0, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->label:I

    if-nez v0, :cond_e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$check:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/hermes/android/data/HermesHudRepository$TurnSettle;

    .line 161
    instance-of v0, p1, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    iget-object v3, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$check:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 444
    sget-object p1, Lcom/hermes/android/chat/InitApplyGate;->INSTANCE:Lcom/hermes/android/chat/InitApplyGate;

    invoke-static {v0}, Lcom/hermes/android/chat/ChatSkinController;->access$getDisposed$p(Lcom/hermes/android/chat/ChatSkinController;)Z

    move-result v4

    invoke-static {v0}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hermes/android/chat/ChatSkinState;

    invoke-virtual {v5}, Lcom/hermes/android/chat/ChatSkinState;->getPhase()Lcom/hermes/android/chat/ChatSkinState$Phase;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/hermes/android/chat/InitApplyGate;->canApply(ZLcom/hermes/android/chat/ChatSkinState$Phase;)Z

    move-result p1

    if-nez p1, :cond_0

    move v1, v2

    goto :goto_1

    .line 445
    :cond_0
    invoke-static {v0}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    .line 447
    :cond_1
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 448
    move-object v2, p1

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    .line 162
    iget-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;

    invoke-virtual {v5}, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;->getMessages()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .line 449
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 450
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 451
    check-cast v7, Lcom/hermes/android/data/HermesHudRepository$ChatMessage;

    .line 162
    invoke-static {v0, v7}, Lcom/hermes/android/chat/ChatSkinController;->access$toBubble(Lcom/hermes/android/chat/ChatSkinController;Lcom/hermes/android/data/HermesHudRepository$ChatMessage;)Lcom/hermes/android/chat/ChatBubble;

    move-result-object v7

    .line 451
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_2
    check-cast v6, Ljava/util/List;

    .line 162
    invoke-virtual {v2, v6}, Lcom/hermes/android/chat/ChatSkinState;->withHistory(Ljava/util/List;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v2

    .line 453
    invoke-interface {v4, p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 455
    :goto_1
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 163
    :cond_3
    sget-object v0, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$MidTurn;->INSTANCE:Lcom/hermes/android/data/HermesHudRepository$TurnSettle$MidTurn;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$midTurnBubbles:Ljava/util/List;

    .line 456
    sget-object v1, Lcom/hermes/android/chat/InitApplyGate;->INSTANCE:Lcom/hermes/android/chat/InitApplyGate;

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$getDisposed$p(Lcom/hermes/android/chat/ChatSkinController;)Z

    move-result v2

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hermes/android/chat/ChatSkinState;

    invoke-virtual {v3}, Lcom/hermes/android/chat/ChatSkinState;->getPhase()Lcom/hermes/android/chat/ChatSkinState$Phase;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hermes/android/chat/InitApplyGate;->canApply(ZLcom/hermes/android/chat/ChatSkinState$Phase;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_4

    .line 457
    :cond_4
    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    .line 459
    :cond_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 460
    move-object v1, p1

    check-cast v1, Lcom/hermes/android/chat/ChatSkinState;

    if-nez v0, :cond_6

    .line 166
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/hermes/android/chat/ChatSkinState;->withHistoryTurnInFlight(Ljava/util/List;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v1

    .line 461
    invoke-interface {v3, p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 167
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$sid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hermes/android/chat/ChatSkinController;->access$armSettleWatch(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 171
    :cond_7
    sget-object v0, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Stale;->INSTANCE:Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Stale;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 172
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    .line 464
    sget-object v0, Lcom/hermes/android/chat/InitApplyGate;->INSTANCE:Lcom/hermes/android/chat/InitApplyGate;

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$getDisposed$p(Lcom/hermes/android/chat/ChatSkinController;)Z

    move-result v3

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hermes/android/chat/ChatSkinState;

    invoke-virtual {v4}, Lcom/hermes/android/chat/ChatSkinState;->getPhase()Lcom/hermes/android/chat/ChatSkinState$Phase;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/hermes/android/chat/InitApplyGate;->canApply(ZLcom/hermes/android/chat/ChatSkinState$Phase;)Z

    move-result v0

    if-nez v0, :cond_8

    move v1, v2

    goto :goto_3

    .line 465
    :cond_8
    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 467
    :cond_9
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 468
    move-object v2, p1

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    .line 172
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hermes/android/chat/ChatSkinState;->withHistory(Ljava/util/List;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v2

    .line 469
    invoke-interface {v0, p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 471
    :goto_3
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    goto :goto_4

    .line 175
    :cond_a
    sget-object v0, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Unavailable;->INSTANCE:Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Unavailable;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 176
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    .line 472
    sget-object v0, Lcom/hermes/android/chat/InitApplyGate;->INSTANCE:Lcom/hermes/android/chat/InitApplyGate;

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$getDisposed$p(Lcom/hermes/android/chat/ChatSkinController;)Z

    move-result v1

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    invoke-virtual {v2}, Lcom/hermes/android/chat/ChatSkinState;->getPhase()Lcom/hermes/android/chat/ChatSkinState$Phase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hermes/android/chat/InitApplyGate;->canApply(ZLcom/hermes/android/chat/ChatSkinState$Phase;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4

    .line 473
    :cond_b
    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    .line 475
    :cond_c
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 476
    move-object v1, v0

    check-cast v1, Lcom/hermes/android/chat/ChatSkinState;

    .line 176
    invoke-virtual {v1}, Lcom/hermes/android/chat/ChatSkinState;->getHistory()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hermes/android/chat/ChatSkinState;->withHistoryTurnInFlight(Ljava/util/List;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v1

    .line 477
    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 177
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;->$sid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hermes/android/chat/ChatSkinController;->access$armSettleWatch(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;)V

    .line 181
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 160
    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 159
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
