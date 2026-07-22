.class final Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;
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
    c = "com.hermes.android.MainActivityKt$TerminalTabContent$7$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
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

.field final synthetic $isSessionReady$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onHermesLaunched:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pendingHermesLaunch:Z

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $sessionManager:Lcom/hermes/android/TerminalSessionManager;

.field final synthetic $showMaxSessionsAlert$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic $terminalView$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/termux/view/TerminalView;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/hermes/android/TerminalSessionManager;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/termux/view/TerminalView;",
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
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    iput-boolean v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$pendingHermesLaunch:Z

    move-object v1, p2

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$onHermesLaunched:Lkotlin/jvm/functions/Function0;

    move-object v1, p3

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$isSessionReady$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p4

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    move-object v1, p5

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    move-object v1, p6

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p7

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p8

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p9

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v1, p10

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p11

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p12

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$showMaxSessionsAlert$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x2

    move-object/from16 v2, p18

    invoke-direct {p0, v1, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 21
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

    move-object/from16 v19, p2

    new-instance v20, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;

    move-object/from16 v1, v20

    iget-boolean v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$pendingHermesLaunch:Z

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$onHermesLaunched:Lkotlin/jvm/functions/Function0;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$isSessionReady$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v14, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v15, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$showMaxSessionsAlert$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v19}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v20, Lkotlin/coroutines/Continuation;

    return-object v20
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 4294
    iget v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4295
    iget-boolean p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$pendingHermesLaunch:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$isSessionReady$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$395(Landroidx/compose/runtime/MutableState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4296
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v10, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v11, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$showMaxSessionsAlert$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v13, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static/range {v0 .. v13}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$launchHermes(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)V

    .line 4297
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$7$1;->$onHermesLaunched:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4299
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4294
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
