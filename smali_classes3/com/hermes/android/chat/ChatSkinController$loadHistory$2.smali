.class final Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatSkinController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/chat/ChatSkinController;->loadHistory()V
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
    value = "SMAP\nChatSkinController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController$loadHistory$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,443:1\n1#2:444\n1557#3:445\n1628#3,3:446\n*S KotlinDebug\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController$loadHistory$2\n*L\n157#1:445\n157#1:446,3\n*E\n"
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
    c = "com.hermes.android.chat.ChatSkinController$loadHistory$2"
    f = "ChatSkinController.kt"
    i = {
        0x0,
        0x0,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x85,
        0x90,
        0x98,
        0x9f
    }
    m = "invokeSuspend"
    n = {
        "maxTries",
        "tries",
        "sid",
        "check",
        "maxTries",
        "tries"
    }
    s = {
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/chat/ChatSkinController;


# direct methods
.method constructor <init>(Lcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/chat/ChatSkinController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

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

    new-instance p1, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-direct {p1, v0, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;-><init>(Lcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 122
    iget v2, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->I$1:I

    iget v8, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->I$0:I

    iget-object v9, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->L$0:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v10

    move-object v10, v9

    move-object/from16 v9, v18

    goto/16 :goto_7

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget v2, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->I$1:I

    iget v8, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->I$0:I

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 123
    iget-object v2, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v2}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettleTimeoutMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v8

    iget-object v2, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v2}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettlePollIntervalMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v10

    div-long/2addr v8, v10

    long-to-int v2, v8

    invoke-static {v2, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 128
    iget-object v8, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v8}, Lcom/hermes/android/chat/ChatSkinController;->access$getSessionId$p(Lcom/hermes/android/chat/ChatSkinController;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 129
    new-instance v9, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;

    invoke-direct {v9, v8}, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;-><init>(Ljava/lang/String;)V

    check-cast v9, Lcom/hermes/android/data/HermesHudRepository$SessionResolution;

    goto :goto_0

    .line 130
    :cond_5
    iget-object v8, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v8}, Lcom/hermes/android/chat/ChatSkinController;->access$getHudRepo$p(Lcom/hermes/android/chat/ChatSkinController;)Lcom/hermes/android/data/HermesHudRepository;

    move-result-object v8

    iget-object v9, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v9}, Lcom/hermes/android/chat/ChatSkinController;->access$getMinSessionStartSec$p(Lcom/hermes/android/chat/ChatSkinController;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/hermes/android/data/HermesHudRepository;->resolveNewestSession(Ljava/lang/Double;)Lcom/hermes/android/data/HermesHudRepository$SessionResolution;

    move-result-object v9

    :goto_0
    move v8, v2

    move v2, v7

    .line 132
    :goto_1
    sget-object v10, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Unavailable;->INSTANCE:Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Unavailable;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-ge v2, v8, :cond_7

    .line 133
    iget-object v9, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v9}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettlePollIntervalMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v9

    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput v8, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->I$0:I

    iput v2, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->I$1:I

    iput v7, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->label:I

    invoke-static {v9, v10, v11}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_6

    return-object v1

    .line 134
    :cond_6
    :goto_2
    iget-object v9, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v9}, Lcom/hermes/android/chat/ChatSkinController;->access$getHudRepo$p(Lcom/hermes/android/chat/ChatSkinController;)Lcom/hermes/android/data/HermesHudRepository;

    move-result-object v9

    iget-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v10}, Lcom/hermes/android/chat/ChatSkinController;->access$getMinSessionStartSec$p(Lcom/hermes/android/chat/ChatSkinController;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/hermes/android/data/HermesHudRepository;->resolveNewestSession(Ljava/lang/Double;)Lcom/hermes/android/data/HermesHudRepository$SessionResolution;

    move-result-object v9

    add-int/2addr v2, v7

    goto :goto_1

    .line 137
    :cond_7
    instance-of v2, v9, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;

    if-eqz v2, :cond_8

    check-cast v9, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;

    goto :goto_3

    :cond_8
    move-object v9, v6

    :goto_3
    if-eqz v9, :cond_9

    .line 138
    invoke-virtual {v9}, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v9, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v9, v2}, Lcom/hermes/android/chat/ChatSkinController;->access$setSessionId$p(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object v2, v6

    :goto_4
    if-nez v2, :cond_b

    .line 144
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;

    iget-object v4, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-direct {v3, v4, v6}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;-><init>(Lcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v5, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->label:I

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    return-object v1

    .line 145
    :cond_a
    :goto_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 149
    :cond_b
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v10}, Lcom/hermes/android/chat/ChatSkinController;->access$getHudRepo$p(Lcom/hermes/android/chat/ChatSkinController;)Lcom/hermes/android/data/HermesHudRepository;

    move-result-object v10

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v11, v2

    invoke-static/range {v10 .. v16}, Lcom/hermes/android/data/HermesHudRepository;->settleCheck$default(Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;DIILjava/lang/Object;)Lcom/hermes/android/data/HermesHudRepository$TurnSettle;

    move-result-object v10

    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v2

    move v2, v7

    move-object v10, v9

    .line 151
    :goto_6
    iget-object v9, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v11, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Unavailable;->INSTANCE:Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Unavailable;

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-ge v2, v8, :cond_d

    .line 152
    iget-object v9, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v9}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettlePollIntervalMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v13

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v12, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->L$1:Ljava/lang/Object;

    iput v8, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->I$0:I

    iput v2, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->I$1:I

    iput v4, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->label:I

    invoke-static {v13, v14, v9}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_c

    return-object v1

    :cond_c
    move-object v9, v12

    .line 153
    :goto_7
    iget-object v11, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v11}, Lcom/hermes/android/chat/ChatSkinController;->access$getHudRepo$p(Lcom/hermes/android/chat/ChatSkinController;)Lcom/hermes/android/data/HermesHudRepository;

    move-result-object v11

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object v12, v9

    invoke-static/range {v11 .. v17}, Lcom/hermes/android/data/HermesHudRepository;->settleCheck$default(Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;DIILjava/lang/Object;)Lcom/hermes/android/data/HermesHudRepository$TurnSettle;

    move-result-object v11

    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    add-int/2addr v2, v7

    goto :goto_6

    .line 156
    :cond_d
    iget-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v2, v2, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$MidTurn;

    if-eqz v2, :cond_f

    .line 157
    iget-object v2, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v2}, Lcom/hermes/android/chat/ChatSkinController;->access$getHudRepo$p(Lcom/hermes/android/chat/ChatSkinController;)Lcom/hermes/android/data/HermesHudRepository;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v12, v4, v5, v6}, Lcom/hermes/android/data/HermesHudRepository;->chatMessages$default(Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    iget-object v4, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    .line 445
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 446
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 447
    check-cast v7, Lcom/hermes/android/data/HermesHudRepository$ChatMessage;

    .line 157
    invoke-static {v4, v7}, Lcom/hermes/android/chat/ChatSkinController;->access$toBubble(Lcom/hermes/android/chat/ChatSkinController;Lcom/hermes/android/data/HermesHudRepository$ChatMessage;)Lcom/hermes/android/chat/ChatBubble;

    move-result-object v7

    .line 447
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 448
    :cond_e
    check-cast v5, Ljava/util/List;

    move-object v13, v5

    goto :goto_9

    :cond_f
    move-object v13, v6

    .line 159
    :goto_9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;

    iget-object v11, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    const/4 v14, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v6, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;->label:I

    invoke-static {v2, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_10

    return-object v1

    .line 182
    :cond_10
    :goto_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
