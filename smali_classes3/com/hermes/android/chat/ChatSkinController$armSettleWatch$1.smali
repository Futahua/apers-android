.class final Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatSkinController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/chat/ChatSkinController;->armSettleWatch(Ljava/lang/String;)V
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
    c = "com.hermes.android.chat.ChatSkinController$armSettleWatch$1"
    f = "ChatSkinController.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0xce,
        0xcf
    }
    m = "invokeSuspend"
    n = {
        "startMs",
        "startMs"
    }
    s = {
        "J$0",
        "J$0"
    }
.end annotation


# instance fields
.field final synthetic $sid:Ljava/lang/String;

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/hermes/android/chat/ChatSkinController;


# direct methods
.method constructor <init>(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/chat/ChatSkinController;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    iput-object p2, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->$sid:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->$sid:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;-><init>(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 203
    iget v1, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v4, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v4, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettleMaxSlowPollMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v8

    cmp-long p1, v6, v8

    if-gez p1, :cond_6

    .line 206
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$getSettleSlowPollIntervalMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v6

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-wide v4, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->J$0:J

    iput v3, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->label:I

    invoke-static {v6, v7, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 207
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$getIo$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1$result$1;

    iget-object v6, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    iget-object v7, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->$sid:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, v8}, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1$result$1;-><init>(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-wide v4, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->J$0:J

    iput v2, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->label:I

    invoke-static {p1, v1, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 203
    :cond_5
    :goto_1
    check-cast p1, Lcom/hermes/android/data/HermesHudRepository$TurnSettle;

    .line 208
    instance-of v1, p1, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;

    if-eqz v1, :cond_3

    .line 209
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    check-cast p1, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;

    invoke-static {v0, p1}, Lcom/hermes/android/chat/ChatSkinController;->access$endTurnSettled(Lcom/hermes/android/chat/ChatSkinController;Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;)V

    .line 210
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 213
    :cond_6
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$endTurnFrozen(Lcom/hermes/android/chat/ChatSkinController;)V

    .line 214
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
