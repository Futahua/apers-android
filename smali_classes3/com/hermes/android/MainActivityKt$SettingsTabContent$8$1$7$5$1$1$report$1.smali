.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/hermes/android/BootstrapManager$HealthReport;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/hermes/android/BootstrapManager$HealthReport;",
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
    c = "com.hermes.android.MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0xb00
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $repairProgress$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Landroidx/lifecycle/LifecycleCoroutineScope;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$yKwl0Ce9yN9LjHs2H6bNRLlmGjw(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->invokeSuspend$lambda$0(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/BootstrapManager;Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/lifecycle/LifecycleCoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$repairProgress$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)Lkotlin/Unit;
    .locals 6

    .line 2817
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1$1$1;

    const/4 v2, 0x0

    invoke-direct {p0, p2, p1, v2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1$1$1;-><init>(Lcom/hermes/android/BootstrapManager$Progress;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v3, p0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2820
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$repairProgress$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;-><init>(Lcom/hermes/android/BootstrapManager;Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/hermes/android/BootstrapManager$HealthReport;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 2815
    iget v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->label:I

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

    .line 2816
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$repairProgress$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v4, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v3}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;)V

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->label:I

    invoke-virtual {p1, v4, v1}, Lcom/hermes/android/BootstrapManager;->repair(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 2823
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {p1}, Lcom/hermes/android/BootstrapManager;->healthCheck()Lcom/hermes/android/BootstrapManager$HealthReport;

    move-result-object p1

    return-object p1
.end method
