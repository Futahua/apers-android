.class final Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->XaiAuthDialog(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/data/HermesConfigRepository;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    c = "com.hermes.android.MainActivityKt$XaiAuthDialog$2$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

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

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $state$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/hermes/android/data/XaiAuthFlow$State;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/hermes/android/data/XaiAuthFlow$State;",
            ">;",
            "Lcom/hermes/android/data/HermesConfigRepository;",
            "Lcom/hermes/android/data/AiProvider;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$state$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

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

    new-instance p1, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$state$delegate:Landroidx/compose/runtime/State;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 5402
    iget v0, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 5403
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$state$delegate:Landroidx/compose/runtime/State;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$XaiAuthDialog$lambda$525(Landroidx/compose/runtime/State;)Lcom/hermes/android/data/XaiAuthFlow$State;

    move-result-object p1

    instance-of p1, p1, Lcom/hermes/android/data/XaiAuthFlow$State$Success;

    if-eqz p1, :cond_0

    .line 5406
    sget-object p1, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    invoke-virtual {p1}, Lcom/hermes/android/ProviderSwitchCoordinator;->onSelected()J

    move-result-wide v1

    .line 5407
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1$1;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$2$1$1;-><init>(JLcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v6, v8

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, v7

    move v7, v0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 5416
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 5402
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
