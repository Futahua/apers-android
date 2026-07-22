.class final Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalLlmSetupScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1"
    f = "LocalLlmSetupScreen.kt"
    i = {}
    l = {
        0x12b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $backendValue:Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->$backendValue:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->$backendValue:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 298
    iget v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->label:I

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

    .line 299
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1$1;

    iget-object v3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->$backendValue:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$activateEngine$1$ok$1;->label:I

    invoke-static {p1, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
