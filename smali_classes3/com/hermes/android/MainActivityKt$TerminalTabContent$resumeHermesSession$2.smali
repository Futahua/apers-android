.class final Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->TerminalTabContent$resumeHermesSession(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Ljava/lang/String;)V
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
    c = "com.hermes.android.MainActivityKt$TerminalTabContent$resumeHermesSession$2"
    f = "MainActivity.kt"
    i = {}
    l = {
        0x1008,
        0x102a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $client:Lcom/hermes/android/SimpleTerminalClient;

.field final synthetic $drawerState:Landroidx/compose/material3/DrawerState;

.field final synthetic $sessionId:Ljava/lang/String;

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

.field final synthetic $tv:Lcom/termux/view/TerminalView;

.field label:I


# direct methods
.method public static synthetic $r8$lambda$AR7MKOsQwo22IpV230e_yVFZrq4(Lcom/termux/view/TerminalView;)V
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->invokeSuspend$lambda$0(Lcom/termux/view/TerminalView;)V

    return-void
.end method

.method constructor <init>(Lcom/hermes/android/TerminalSessionManager;Ljava/lang/String;Lcom/hermes/android/SimpleTerminalClient;Lcom/termux/view/TerminalView;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/TerminalSessionManager;",
            "Ljava/lang/String;",
            "Lcom/hermes/android/SimpleTerminalClient;",
            "Lcom/termux/view/TerminalView;",
            "Landroidx/compose/material3/DrawerState;",
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$client:Lcom/hermes/android/SimpleTerminalClient;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$tv:Lcom/termux/view/TerminalView;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lcom/termux/view/TerminalView;)V
    .locals 2

    .line 4132
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    .line 4133
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

    .line 4134
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 4135
    check-cast p0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance p1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$client:Lcom/hermes/android/SimpleTerminalClient;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$tv:Lcom/termux/view/TerminalView;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;-><init>(Lcom/hermes/android/TerminalSessionManager;Ljava/lang/String;Lcom/hermes/android/SimpleTerminalClient;Lcom/termux/view/TerminalView;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 4102
    iget v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4104
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2$ok$1;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2$ok$1;-><init>(Lcom/hermes/android/BootstrapManager;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->label:I

    invoke-static {p1, v1, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catch Lcom/hermes/android/PackageSubsystemPoisonedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 4116
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v3}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$468(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4118
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4119
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    .line 4120
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionId:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "hermes --resume "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4121
    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$client:Lcom/hermes/android/SimpleTerminalClient;

    check-cast v6, Lcom/termux/terminal/TerminalSessionClient;

    .line 4122
    const-string v7, "Hermes"

    .line 4119
    invoke-virtual {p1, v1, v6, v7}, Lcom/hermes/android/TerminalSessionManager;->createSession(Ljava/lang/String;Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;)Lcom/termux/terminal/TerminalSession;

    move-result-object p1

    if-nez p1, :cond_5

    .line 4123
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4126
    :cond_5
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    .line 4128
    new-instance v6, Lcom/hermes/android/TerminalSessionManager$HermesBinding;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionId:Ljava/lang/String;

    invoke-direct {v6, v4, v5, v7}, Lcom/hermes/android/TerminalSessionManager$HermesBinding;-><init>(JLjava/lang/String;)V

    .line 4126
    invoke-virtual {v1, p1, v6}, Lcom/hermes/android/TerminalSessionManager;->setHermesBinding(Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/TerminalSessionManager$HermesBinding;)V

    .line 4130
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$tv:Lcom/termux/view/TerminalView;

    invoke-virtual {v1, p1}, Lcom/termux/view/TerminalView;->attachSession(Lcom/termux/terminal/TerminalSession;)Z

    .line 4131
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$tv:Lcom/termux/view/TerminalView;

    new-instance v1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2$$ExternalSyntheticLambda0;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-virtual {p1, v1}, Lcom/termux/view/TerminalView;->post(Ljava/lang/Runnable;)Z

    .line 4137
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$414(Landroidx/compose/runtime/MutableIntState;)I

    move-result p1

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    add-int/2addr p1, v3

    invoke-static {v1, p1}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$415(Landroidx/compose/runtime/MutableIntState;I)V

    .line 4138
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$resumeHermesSession$2;->label:I

    invoke-virtual {p1, v1}, Landroidx/compose/material3/DrawerState;->close(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 4139
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
