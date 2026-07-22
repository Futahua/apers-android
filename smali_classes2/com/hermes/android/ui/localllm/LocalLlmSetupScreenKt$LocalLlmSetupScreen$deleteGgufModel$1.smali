.class final Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LocalLlmSetupScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->LocalLlmSetupScreen$deleteGgufModel(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)V
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
    c = "com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1"
    f = "LocalLlmSetupScreen.kt"
    i = {
        0x0
    }
    l = {
        0x16f
    }
    m = "invokeSuspend"
    n = {
        "deleteFailed"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $busyLabel$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $errorText$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $strDeleteFailed:Ljava/lang/String;

.field final synthetic $strDeleting:Ljava/lang/String;

.field final synthetic $strEngineBusy:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$strDeleting:Ljava/lang/String;

    iput-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$strDeleteFailed:Ljava/lang/String;

    iput-object p3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$strEngineBusy:Ljava/lang/String;

    iput-object p4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance p1, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$strDeleting:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$strDeleteFailed:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$strEngineBusy:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 363
    iget v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 364
    iget-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$strDeleting:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$21(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 366
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 367
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1$ok$1;

    iget-object v5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$context:Landroid/content/Context;

    invoke-direct {v4, v5, p1, v2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1$ok$1;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->label:I

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 383
    iget-object v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    if-nez p1, :cond_4

    .line 384
    iget-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$strDeleteFailed:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$strEngineBusy:Ljava/lang/String;

    :goto_1
    invoke-static {p1, v0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$21(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 385
    :cond_4
    iget-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$5(Landroidx/compose/runtime/MutableIntState;)I

    move-result p1

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$deleteGgufModel$1;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    add-int/2addr p1, v3

    invoke-static {v0, p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$6(Landroidx/compose/runtime/MutableIntState;I)V

    .line 386
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
