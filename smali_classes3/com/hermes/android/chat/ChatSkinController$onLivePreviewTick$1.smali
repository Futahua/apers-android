.class final Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ChatSkinController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/chat/ChatSkinController;->onLivePreviewTick()V
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
    value = "SMAP\nChatSkinController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,443:1\n230#2,5:444\n*S KotlinDebug\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1\n*L\n273#1:444,5\n*E\n"
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
    c = "com.hermes.android.chat.ChatSkinController$onLivePreviewTick$1"
    f = "ChatSkinController.kt"
    i = {}
    l = {
        0x10e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
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
            "Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

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

    new-instance p1, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-direct {p1, v0, p2}, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;-><init>(Lcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 269
    iget v1, p0, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 270
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$getPreviewThrottleMs$p(Lcom/hermes/android/chat/ChatSkinController;)J

    move-result-wide v3

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->label:I

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 271
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hermes/android/chat/ChatSkinController;->access$setPreviewScheduled$p(Lcom/hermes/android/chat/ChatSkinController;Z)V

    .line 272
    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$getDetector$p(Lcom/hermes/android/chat/ChatSkinController;)Lcom/hermes/android/chat/TurnDetector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hermes/android/chat/TurnDetector;->currentTurnText()Ljava/lang/String;

    move-result-object p1

    .line 273
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-static {v0}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 445
    :cond_3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 446
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    .line 273
    invoke-virtual {v2, p1}, Lcom/hermes/android/chat/ChatSkinState;->onLivePreview(Ljava/lang/String;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v2

    .line 447
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
