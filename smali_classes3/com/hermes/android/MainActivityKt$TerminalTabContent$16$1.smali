.class final Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->TerminalTabContent(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    c = "com.hermes.android.MainActivityKt$TerminalTabContent$16$1"
    f = "MainActivity.kt"
    i = {
        0x0
    }
    l = {
        0x1110,
        0x1111
    }
    m = "invokeSuspend"
    n = {
        "sid"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $hudRepo:Lcom/hermes/android/data/HermesHudRepository;

.field final synthetic $messages$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$ChatMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $previewSessionId$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sessionInfo$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/HermesHudRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hermes/android/data/HermesHudRepository;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$ChatMessage;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$previewSessionId$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$messages$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$sessionInfo$delegate:Landroidx/compose/runtime/MutableState;

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

    new-instance p1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$previewSessionId$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$messages$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$sessionInfo$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;-><init>(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/HermesHudRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 4366
    iget v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4367
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$previewSessionId$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$482(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4368
    :cond_3
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$messages$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1$1;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    invoke-direct {v6, v7, p1, v4}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1$1;-><init>(Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->label:I

    invoke-static {v5, v6, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_4

    return-object v0

    :cond_4
    move-object v8, v3

    move-object v3, p1

    move-object p1, v8

    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-static {v1, p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$488(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    .line 4369
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$sessionInfo$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1$2;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    invoke-direct {v5, v6, v3, v4}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1$2;-><init>(Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$16$1;->label:I

    invoke-static {v1, v5, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    invoke-static {v0, p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$491(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/HermesHudRepository$SessionInfo;)V

    .line 4372
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
