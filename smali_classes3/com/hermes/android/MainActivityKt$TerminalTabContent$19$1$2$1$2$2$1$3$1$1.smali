.class final Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    c = "com.hermes.android.MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $hudRepo:Lcom/hermes/android/data/HermesHudRepository;

.field final synthetic $s:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

.field final synthetic $sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

.field label:I


# direct methods
.method constructor <init>(Lcom/hermes/android/data/HermesHudRepository;Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/HermesHudRepository;",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$s:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

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

    new-instance p1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$s:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;-><init>(Lcom/hermes/android/data/HermesHudRepository;Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4627
    iget v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4628
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$s:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    invoke-virtual {v0}, Lcom/hermes/android/data/HermesHudRepository$SessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hermes/android/data/HermesHudRepository;->deleteSession(Ljava/lang/String;)Z

    .line 4629
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$414(Landroidx/compose/runtime/MutableIntState;)I

    move-result p1

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$415(Landroidx/compose/runtime/MutableIntState;I)V

    .line 4630
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4627
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
