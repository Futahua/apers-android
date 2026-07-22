.class final Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->TerminalTabContent$launchHermes(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)V
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
    c = "com.hermes.android.MainActivityKt$TerminalTabContent$launchHermes$3"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x109c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $altSticky$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/termux/terminal/TerminalSession;",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $sessionManager:Lcom/hermes/android/TerminalSessionManager;

.field final synthetic $showSqliteError$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tv:Lcom/termux/view/TerminalView;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$5ZQ8GwW2LBM0olPxwK_MM9TfY0E(Lcom/termux/view/TerminalView;)V
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->invokeSuspend$lambda$1(Lcom/termux/view/TerminalView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rOHR6s5Okg7fEcTQglGuxiC8Lw0(Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->invokeSuspend$lambda$0(Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/termux/view/TerminalView;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/termux/view/TerminalView;",
            "Lcom/hermes/android/TerminalSessionManager;",
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/termux/terminal/TerminalSession;",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$tv:Lcom/termux/view/TerminalView;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p12, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 1

    .line 4268
    invoke-static {p0}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$452(Landroidx/compose/runtime/MutableIntState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$453(Landroidx/compose/runtime/MutableIntState;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lcom/termux/view/TerminalView;)V
    .locals 2

    .line 4282
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 4283
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4284
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 4285
    check-cast p0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 16
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

    move-object/from16 v0, p0

    new-instance v15, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$tv:Lcom/termux/view/TerminalView;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v13, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v1, v15

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/termux/view/TerminalView;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    check-cast v15, Lkotlin/coroutines/Continuation;

    return-object v15
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 4250
    iget v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4252
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3$ok$1;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-direct {v1, v5, v2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3$ok$1;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->label:I

    invoke-static {p1, v1, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move p1, v3

    :goto_1
    if-nez p1, :cond_3

    .line 4264
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v4}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$468(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4265
    :cond_3
    new-instance p1, Lcom/hermes/android/SimpleTerminalClient;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/hermes/android/SimpleTerminalClient;-><init>(Landroid/content/Context;)V

    .line 4266
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v4}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$456(Landroidx/compose/runtime/MutableState;Z)V

    .line 4267
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {v0, v3}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$453(Landroidx/compose/runtime/MutableIntState;I)V

    .line 4268
    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v9, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$tv:Lcom/termux/view/TerminalView;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    new-instance v11, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableIntState;)V

    move-object v10, p1

    invoke-static/range {v5 .. v11}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$installScrollAwareCallback(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Lcom/termux/view/TerminalView;Lcom/hermes/android/SimpleTerminalClient;Lkotlin/jvm/functions/Function0;)V

    .line 4269
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$tv:Lcom/termux/view/TerminalView;

    move-object v1, p1

    check-cast v1, Lcom/termux/view/TerminalViewClient;

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView;->setTerminalViewClient(Lcom/termux/view/TerminalViewClient;)V

    .line 4270
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    check-cast p1, Lcom/termux/terminal/TerminalSessionClient;

    invoke-virtual {v0, p1}, Lcom/hermes/android/TerminalSessionManager;->setSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V

    .line 4274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4275
    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    const-string v5, "hermes"

    const-string v6, "Hermes"

    invoke-virtual {v3, v5, p1, v6}, Lcom/hermes/android/TerminalSessionManager;->createSession(Ljava/lang/String;Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;)Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4276
    :cond_4
    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    .line 4278
    new-instance v5, Lcom/hermes/android/TerminalSessionManager$HermesBinding;

    invoke-direct {v5, v0, v1, v2}, Lcom/hermes/android/TerminalSessionManager$HermesBinding;-><init>(JLjava/lang/String;)V

    .line 4276
    invoke-virtual {v3, p1, v5}, Lcom/hermes/android/TerminalSessionManager;->setHermesBinding(Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/TerminalSessionManager$HermesBinding;)V

    .line 4280
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$tv:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->attachSession(Lcom/termux/terminal/TerminalSession;)Z

    .line 4281
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$tv:Lcom/termux/view/TerminalView;

    new-instance v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3$$ExternalSyntheticLambda1;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-virtual {p1, v0}, Lcom/termux/view/TerminalView;->post(Ljava/lang/Runnable;)Z

    .line 4287
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$414(Landroidx/compose/runtime/MutableIntState;)I

    move-result p1

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$launchHermes$3;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    add-int/2addr p1, v4

    invoke-static {v0, p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$415(Landroidx/compose/runtime/MutableIntState;I)V

    .line 4288
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
