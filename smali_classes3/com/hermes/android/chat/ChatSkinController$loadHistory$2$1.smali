.class final Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatSkinController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController$loadHistory$2$1\n+ 2 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController\n+ 3 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,443:1\n191#2,2:444\n193#2:451\n230#3,5:446\n*S KotlinDebug\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController$loadHistory$2$1\n*L\n144#1:444,2\n144#1:451\n144#1:446,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.hermes.android.chat.ChatSkinController$loadHistory$2$1"
    f = "ChatSkinController.kt"
    i = {}
    l = {}
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
            "Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

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

    new-instance p1, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    invoke-direct {p1, v0, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;-><init>(Lcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 144
    iget v0, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2$1;->this$0:Lcom/hermes/android/chat/ChatSkinController;

    .line 444
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

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 445
    :cond_0
    invoke-static {p1}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    .line 447
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 448
    move-object v1, v0

    check-cast v1, Lcom/hermes/android/chat/ChatSkinState;

    .line 144
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hermes/android/chat/ChatSkinState;->withHistory(Ljava/util/List;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v1

    .line 449
    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 451
    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 144
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
