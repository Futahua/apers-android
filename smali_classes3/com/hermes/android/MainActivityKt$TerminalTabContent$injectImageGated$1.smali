.class final Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->TerminalTabContent$injectImageGated(Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/chat/ChatSkinController;Lcom/termux/terminal/TerminalSession;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lcom/termux/terminal/TerminalSession;JLandroid/net/Uri;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5577:1\n1#2:5578\n*E\n"
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
    c = "com.hermes.android.MainActivityKt$TerminalTabContent$injectImageGated$1"
    f = "MainActivity.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0xf8e
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "savedPath",
        "injected"
    }
    s = {
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $chatActiveSession:Lcom/termux/terminal/TerminalSession;

.field final synthetic $chatController:Lcom/hermes/android/chat/ChatSkinController;

.field final synthetic $chatSurfaceGen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $imageAttachFailedMsg:Ljava/lang/String;

.field final synthetic $imageAttachedMsg:Ljava/lang/String;

.field final synthetic $originGen:J

.field final synthetic $sessionManager:Lcom/hermes/android/TerminalSessionManager;

.field final synthetic $target:Lcom/termux/terminal/TerminalSession;

.field final synthetic $uri:Landroid/net/Uri;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/chat/ChatSkinController;Lcom/termux/terminal/TerminalSession;Lcom/termux/terminal/TerminalSession;JLandroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/TerminalSessionManager;",
            "Lcom/hermes/android/chat/ChatSkinController;",
            "Lcom/termux/terminal/TerminalSession;",
            "Lcom/termux/terminal/TerminalSession;",
            "J",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$chatController:Lcom/hermes/android/chat/ChatSkinController;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$chatActiveSession:Lcom/termux/terminal/TerminalSession;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$target:Lcom/termux/terminal/TerminalSession;

    iput-wide p5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$originGen:J

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$imageAttachedMsg:Ljava/lang/String;

    iput-object p9, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$imageAttachFailedMsg:Ljava/lang/String;

    iput-object p10, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$uri:Landroid/net/Uri;

    iput-object p11, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$chatSurfaceGen$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 15
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

    move-object v0, p0

    new-instance v14, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$chatController:Lcom/hermes/android/chat/ChatSkinController;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$chatActiveSession:Lcom/termux/terminal/TerminalSession;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$target:Lcom/termux/terminal/TerminalSession;

    iget-wide v6, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$originGen:J

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$imageAttachedMsg:Ljava/lang/String;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$imageAttachFailedMsg:Ljava/lang/String;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$uri:Landroid/net/Uri;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$chatSurfaceGen$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, v14

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v13}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;-><init>(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/chat/ChatSkinController;Lcom/termux/terminal/TerminalSession;Lcom/termux/terminal/TerminalSession;JLandroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p1

    iput-object v1, v14, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlin/coroutines/Continuation;

    return-object v14
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 3978
    iget v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->I$0:I

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move v3, v0

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 3979
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 3982
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v6, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1$1;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$uri:Landroid/net/Uri;

    invoke-direct {v6, v1, v7, v8, v2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/appcompat/app/AppCompatActivity;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->I$0:I

    iput v4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->label:I

    invoke-static {v5, v6, v7}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move v0, v3

    .line 3983
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3984
    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    invoke-virtual {v5}, Lcom/hermes/android/TerminalSessionManager;->getActiveSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v5

    .line 3985
    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$chatController:Lcom/hermes/android/chat/ChatSkinController;

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$chatActiveSession:Lcom/termux/terminal/TerminalSession;

    if-ne v5, v7, :cond_3

    .line 3986
    invoke-virtual {v6}, Lcom/hermes/android/chat/ChatSkinController;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    invoke-virtual {v2}, Lcom/hermes/android/chat/ChatSkinState;->getPhase()Lcom/hermes/android/chat/ChatSkinState$Phase;

    move-result-object v2

    :cond_3
    move-object v12, v2

    if-eqz p1, :cond_5

    if-eqz v5, :cond_5

    .line 3989
    sget-object v6, Lcom/hermes/android/chat/ImageAttachGate;->INSTANCE:Lcom/hermes/android/chat/ImageAttachGate;

    .line 3990
    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$target:Lcom/termux/terminal/TerminalSession;

    if-ne v2, v5, :cond_4

    move v7, v4

    goto :goto_1

    :cond_4
    move v7, v3

    .line 3991
    :goto_1
    iget-wide v8, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$originGen:J

    .line 3992
    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$chatSurfaceGen$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$lambda$422(Landroidx/compose/runtime/MutableState;)J

    move-result-wide v10

    .line 3989
    invoke-virtual/range {v6 .. v12}, Lcom/hermes/android/chat/ImageAttachGate;->canInject(ZJJLcom/hermes/android/chat/ChatSkinState$Phase;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3996
    sget-object v2, Lcom/hermes/android/ImageAttach;->INSTANCE:Lcom/hermes/android/ImageAttach;

    invoke-virtual {v2, p1}, Lcom/hermes/android/ImageAttach;->imageCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3998
    :try_start_3
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$imageAttachedMsg:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    move v3, v4

    goto :goto_4

    .line 4000
    :cond_5
    :try_start_4
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    check-cast p1, Landroid/content/Context;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$injectImageGated$1;->$imageAttachFailedMsg:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v4, v0

    :goto_2
    if-nez v4, :cond_6

    .line 4003
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 4005
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_3
    move-exception p1

    :goto_4
    if-nez v3, :cond_7

    .line 4003
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    :try_start_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_7
    throw p1
.end method
