.class final Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatSkinController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/chat/ChatSkinController;->onDebounceCandidate()V
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
    c = "com.hermes.android.chat.ChatSkinController$onDebounceCandidate$1"
    f = "ChatSkinController.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x13d,
        0x145,
        0x14c
    }
    m = "invokeSuspend"
    n = {
        "sid",
        "sinceSec",
        "elapsed",
        "sid",
        "sinceSec",
        "elapsed",
        "sid",
        "sinceSec"
    }
    s = {
        "L$0",
        "D$0",
        "J$0",
        "L$0",
        "D$0",
        "J$0",
        "L$0",
        "D$0"
    }
.end annotation


# instance fields
.field final synthetic $turnStartMs:J

.field D$0:D

.field J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/chat/ChatSkinController;


# direct methods
.method constructor <init>(JLcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/hermes/android/chat/ChatSkinController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->$turnStartMs:J

    iput-object p3, p0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;

    iget-wide v0, p0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->$turnStartMs:J

    iget-object v2, p0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;-><init>(JLcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 299
    iget v2, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-wide v6, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->D$0:D

    iget-object v2, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v8, v6

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-wide v6, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->J$0:J

    iget-wide v8, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->D$0:D

    iget-object v2, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    goto/16 :goto_2

    :cond_2
    iget-wide v6, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->J$0:J

    iget-wide v8, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->D$0:D

    iget-object v2, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 303
    iget-wide v6, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->$turnStartMs:J

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 304
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v8, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v8}, Lcom/hermes/android/chat/ChatSkinController;->access$getSessionId$p(Lcom/hermes/android/chat/ChatSkinController;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-wide v8, v6

    .line 310
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v10, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->$turnStartMs:J

    sub-long/2addr v6, v10

    .line 311
    sget-object v12, Lcom/hermes/android/chat/ChatTurnSettleWait;->INSTANCE:Lcom/hermes/android/chat/ChatTurnSettleWait;

    .line 312
    iget-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v10}, Lcom/hermes/android/chat/ChatSkinController;->access$getTurnSawMidTurn$p(Lcom/hermes/android/chat/ChatSkinController;)Z

    move-result v15

    iget-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v10}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettleNoEvidenceGiveUpMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v16

    iget-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v10}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettleMaxSlowPollMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v18

    move-wide v13, v6

    .line 311
    invoke-virtual/range {v12 .. v19}, Lcom/hermes/android/chat/ChatTurnSettleWait;->shouldKeepWaiting(JZJJ)Z

    move-result v10

    if-nez v10, :cond_4

    .line 338
    iget-object v1, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v1}, Lcom/hermes/android/chat/ChatSkinController;->access$endTurnFrozen(Lcom/hermes/android/chat/ChatSkinController;)V

    .line 339
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 315
    :cond_4
    iget-object v10, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v10, :cond_6

    .line 317
    iget-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v10}, Lcom/hermes/android/chat/ChatSkinController;->access$getIo$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v10

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1$r$1;

    iget-object v12, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1$r$1;-><init>(Lcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->L$0:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->D$0:D

    iput-wide v6, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->J$0:J

    iput v5, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->label:I

    invoke-static {v10, v11, v12}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_5

    return-object v1

    .line 299
    :cond_5
    :goto_1
    check-cast v10, Lcom/hermes/android/data/HermesHudRepository$SessionResolution;

    .line 318
    instance-of v11, v10, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;

    if-eqz v11, :cond_6

    .line 319
    check-cast v10, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;

    invoke-virtual {v10}, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;->getId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 320
    iget-object v11, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-virtual {v10}, Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/hermes/android/chat/ChatSkinController;->access$setSessionId$p(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;)V

    .line 323
    :cond_6
    iget-object v10, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v10, :cond_9

    .line 325
    iget-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v10}, Lcom/hermes/android/chat/ChatSkinController;->access$getIo$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v10

    check-cast v10, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1$result$1;

    iget-object v13, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    const/16 v17, 0x0

    move-object v12, v11

    move-object v14, v2

    move-wide v15, v8

    invoke-direct/range {v12 .. v17}, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1$result$1;-><init>(Lcom/hermes/android/chat/ChatSkinController;Lkotlin/jvm/internal/Ref$ObjectRef;DLkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object v12, v0

    check-cast v12, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->L$0:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->D$0:D

    iput-wide v6, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->J$0:J

    iput v4, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->label:I

    invoke-static {v10, v11, v12}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_7

    return-object v1

    .line 299
    :cond_7
    :goto_2
    check-cast v10, Lcom/hermes/android/data/HermesHudRepository$TurnSettle;

    .line 326
    instance-of v11, v10, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;

    if-eqz v11, :cond_8

    .line 327
    iget-object v1, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    check-cast v10, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;

    invoke-static {v1, v10}, Lcom/hermes/android/chat/ChatSkinController;->access$endTurnSettled(Lcom/hermes/android/chat/ChatSkinController;Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;)V

    .line 328
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 330
    :cond_8
    instance-of v10, v10, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$MidTurn;

    if-eqz v10, :cond_9

    iget-object v10, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v10, v5}, Lcom/hermes/android/chat/ChatSkinController;->access$setTurnSawMidTurn$p(Lcom/hermes/android/chat/ChatSkinController;Z)V

    :cond_9
    move-wide v13, v8

    move-wide v7, v6

    .line 333
    sget-object v6, Lcom/hermes/android/chat/ChatTurnSettleWait;->INSTANCE:Lcom/hermes/android/chat/ChatTurnSettleWait;

    .line 334
    iget-object v9, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v9}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettleTimeoutMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v9

    iget-object v11, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v11}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettlePollIntervalMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v11

    iget-object v15, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v15}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettleSlowPollIntervalMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v15

    move-wide v4, v13

    move-wide v13, v15

    .line 333
    invoke-virtual/range {v6 .. v14}, Lcom/hermes/android/chat/ChatTurnSettleWait;->pollInterval(JJJJ)J

    move-result-wide v6

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    .line 332
    iput-object v2, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->L$0:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->D$0:D

    iput v3, v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;->label:I

    invoke-static {v6, v7, v8}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_a

    return-object v1

    :cond_a
    move-wide v8, v4

    :goto_3
    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_0
.end method
