.class final Lcom/hermes/android/data/CodexAuthFlow$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CodexAuthFlow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/data/CodexAuthFlow;->start(Landroid/content/Context;)V
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
    value = "SMAP\nCodexAuthFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodexAuthFlow.kt\ncom/hermes/android/data/CodexAuthFlow$start$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"
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
    c = "com.hermes.android.data.CodexAuthFlow$start$1"
    f = "CodexAuthFlow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x52,
        0x5b
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "verifier",
        "srv",
        "$this$launch",
        "verifier",
        "srv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/data/CodexAuthFlow;


# direct methods
.method constructor <init>(Lcom/hermes/android/data/CodexAuthFlow;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/CodexAuthFlow;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/data/CodexAuthFlow$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    iput-object p2, p0, Lcom/hermes/android/data/CodexAuthFlow$start$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/hermes/android/data/CodexAuthFlow$start$1;

    iget-object v1, p0, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    iget-object v2, p0, Lcom/hermes/android/data/CodexAuthFlow$start$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lcom/hermes/android/data/CodexAuthFlow$start$1;-><init>(Lcom/hermes/android/data/CodexAuthFlow;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/data/CodexAuthFlow$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/data/CodexAuthFlow$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/data/CodexAuthFlow$start$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/data/CodexAuthFlow$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    const-string v2, "Wrote tokens failed: "

    const-string v3, "Token exchange failed: "

    const-string v4, "Callback error: "

    const-string v5, " \u2014 "

    const-string v6, "Could not start local callback server (port 1455 in use?): "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v7, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->label:I

    const/4 v8, 0x0

    const-string v9, "CodexAuthFlow"

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v7, :cond_2

    if-eq v7, v11, :cond_1

    if-ne v7, v10, :cond_0

    iget-object v0, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/hermes/android/data/oauth/OauthCallbackServer;

    iget-object v6, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v10, p1

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v6, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/hermes/android/data/oauth/OauthCallbackServer;

    iget-object v7, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 63
    :try_start_2
    sget-object v12, Lcom/hermes/android/data/oauth/PkceGenerator;->INSTANCE:Lcom/hermes/android/data/oauth/PkceGenerator;

    invoke-virtual {v12}, Lcom/hermes/android/data/oauth/PkceGenerator;->generateVerifier()Ljava/lang/String;

    move-result-object v12

    .line 64
    sget-object v13, Lcom/hermes/android/data/oauth/PkceGenerator;->INSTANCE:Lcom/hermes/android/data/oauth/PkceGenerator;

    invoke-virtual {v13, v12}, Lcom/hermes/android/data/oauth/PkceGenerator;->deriveChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 65
    sget-object v14, Lcom/hermes/android/data/oauth/PkceGenerator;->INSTANCE:Lcom/hermes/android/data/oauth/PkceGenerator;

    invoke-virtual {v14}, Lcom/hermes/android/data/oauth/PkceGenerator;->generateState()Ljava/lang/String;

    move-result-object v14

    .line 68
    new-instance v15, Lcom/hermes/android/data/oauth/OauthCallbackServer;

    const/16 v19, 0x6

    const/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v15

    move-object/from16 v16, v14

    invoke-direct/range {v15 .. v20}, Lcom/hermes/android/data/oauth/OauthCallbackServer;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    iget-object v15, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    move-object/from16 v10, p1

    invoke-static {v15, v10}, Lcom/hermes/android/data/CodexAuthFlow;->access$setServer$p(Lcom/hermes/android/data/CodexAuthFlow;Lcom/hermes/android/data/oauth/OauthCallbackServer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const v15, 0x493e0

    const/4 v11, 0x0

    .line 71
    :try_start_3
    invoke-virtual {v10, v15, v11}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->start(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 78
    :try_start_4
    iget-object v6, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v6}, Lcom/hermes/android/data/CodexAuthFlow;->access$getOauth$p(Lcom/hermes/android/data/CodexAuthFlow;)Lcom/hermes/android/data/oauth/OauthRepository;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Lcom/hermes/android/data/oauth/OauthRepository;->buildAuthorizeUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    iget-object v11, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v11}, Lcom/hermes/android/data/CodexAuthFlow;->access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    new-instance v13, Lcom/hermes/android/data/CodexAuthFlow$State$AwaitingCallback;

    invoke-direct {v13, v6}, Lcom/hermes/android/data/CodexAuthFlow$State$AwaitingCallback;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v11

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    new-instance v13, Lcom/hermes/android/data/CodexAuthFlow$start$1$1;

    iget-object v14, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->$context:Landroid/content/Context;

    invoke-direct {v13, v6, v14, v8}, Lcom/hermes/android/data/CodexAuthFlow$start$1$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v7, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$2:Ljava/lang/Object;

    const/4 v14, 0x1

    iput v14, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->label:I

    invoke-static {v11, v13, v6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    return-object v0

    :cond_3
    move-object v11, v7

    move-object v6, v10

    move-object v7, v12

    .line 91
    :goto_0
    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v11, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$1:Ljava/lang/Object;

    iput-object v6, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->L$2:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->label:I

    const-wide/32 v11, 0x493e0

    invoke-virtual {v6, v11, v12, v10}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->awaitCode(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v6

    move-object v6, v7

    .line 61
    :goto_1
    check-cast v10, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 92
    :try_start_5
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->stop()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_6
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_2
    iget-object v0, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v0, v8}, Lcom/hermes/android/data/CodexAuthFlow;->access$setServer$p(Lcom/hermes/android/data/CodexAuthFlow;Lcom/hermes/android/data/oauth/OauthCallbackServer;)V

    .line 96
    instance-of v0, v10, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/CodexAuthFlow;->access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sget-object v4, Lcom/hermes/android/data/CodexAuthFlow$State$Exchanging;->INSTANCE:Lcom/hermes/android/data/CodexAuthFlow$State$Exchanging;

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 98
    iget-object v0, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/CodexAuthFlow;->access$getOauth$p(Lcom/hermes/android/data/CodexAuthFlow;)Lcom/hermes/android/data/oauth/OauthRepository;

    move-result-object v0

    check-cast v10, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;

    invoke-virtual {v10}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Lcom/hermes/android/data/oauth/OauthRepository;->exchangeCode(Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/data/oauth/OauthRepository$TokenResult;

    move-result-object v0

    .line 99
    instance-of v4, v0, Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Success;

    if-eqz v4, :cond_7

    .line 100
    iget-object v3, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v3}, Lcom/hermes/android/data/CodexAuthFlow;->access$getStore$p(Lcom/hermes/android/data/CodexAuthFlow;)Lcom/hermes/android/data/oauth/CodexCredentialStore;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Success;

    invoke-virtual {v4}, Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Success;->getTokens()Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hermes/android/data/oauth/CodexCredentialStore;->write-IoAF18A(Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v3}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v3

    check-cast v5, Lkotlin/Unit;

    .line 101
    invoke-static {v4}, Lcom/hermes/android/data/CodexAuthFlow;->access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    new-instance v5, Lcom/hermes/android/data/CodexAuthFlow$State$Success;

    check-cast v0, Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Success;

    invoke-virtual {v0}, Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Success;->getTokens()Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;->getPlanType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/hermes/android/data/CodexAuthFlow$State$Success;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 102
    :cond_5
    iget-object v0, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 103
    invoke-static {v0}, Lcom/hermes/android/data/CodexAuthFlow;->access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v5, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 102
    :cond_6
    invoke-static {v3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto/16 :goto_3

    .line 106
    :cond_7
    instance-of v2, v0, Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Failure;

    if-eqz v2, :cond_8

    .line 107
    iget-object v2, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v2}, Lcom/hermes/android/data/CodexAuthFlow;->access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    new-instance v4, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;

    check-cast v0, Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Failure;

    invoke-virtual {v0}, Lcom/hermes/android/data/oauth/OauthRepository$TokenResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 98
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 110
    :cond_9
    instance-of v0, v10, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;

    if-eqz v0, :cond_c

    .line 111
    iget-object v0, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/CodexAuthFlow;->access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    move-object v2, v10

    check-cast v2, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;

    invoke-virtual {v2}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;->getError()Ljava/lang/String;

    move-result-object v2

    check-cast v10, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;

    invoke-virtual {v10}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_a
    const-string v3, ""

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;

    invoke-direct {v3, v2}, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 112
    :cond_c
    instance-of v0, v10, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$StateMismatch;

    if-eqz v0, :cond_d

    .line 113
    iget-object v0, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/CodexAuthFlow;->access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v2, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;

    const-string v3, "State mismatch (possible CSRF). Try again."

    invoke-direct {v2, v3}, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 95
    :cond_d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 73
    const-string v0, "callback server start failed"

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v9, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    iget-object v0, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/CodexAuthFlow;->access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v3, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 75
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 116
    const-string v2, "codex auth flow crashed"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v9, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    iget-object v2, v1, Lcom/hermes/android/data/CodexAuthFlow$start$1;->this$0:Lcom/hermes/android/data/CodexAuthFlow;

    invoke-static {v2}, Lcom/hermes/android/data/CodexAuthFlow;->access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    new-instance v3, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "unknown error"

    :cond_e
    invoke-direct {v3, v0}, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 119
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
