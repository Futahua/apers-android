.class final Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NousAuthDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.hermes.android.NousAuthDialogKt$NousAuthDialog$2$1$1"
    f = "NousAuthDialog.kt"
    i = {}
    l = {
        0x4a,
        0x4f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

.field final synthetic $oauthToken:J

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $provider:Lcom/hermes/android/data/AiProvider;

.field label:I


# direct methods
.method constructor <init>(JLcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/hermes/android/data/HermesConfigRepository;",
            "Lcom/hermes/android/data/AiProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$oauthToken:J

    iput-object p3, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p4, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iput-object p5, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;

    iget-wide v1, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$oauthToken:J

    iget-object v3, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v4, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iget-object v5, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;-><init>(JLcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 73
    iget v1, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    sget-object p1, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    iget-wide v5, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$oauthToken:J

    new-instance v1, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1$1;

    iget-object v7, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v8, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-direct {v1, v7, v8, v2}, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1$1;-><init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->label:I

    invoke-virtual {p1, v5, v6, v1, v7}, Lcom/hermes/android/ProviderSwitchCoordinator;->commitIfLatest(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 79
    :cond_3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1$2;

    iget-object v4, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v4, v2}, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/hermes/android/NousAuthDialogKt$NousAuthDialog$2$1$1;->label:I

    invoke-static {p1, v1, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 80
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
