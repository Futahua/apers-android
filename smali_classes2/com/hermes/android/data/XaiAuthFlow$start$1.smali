.class final Lcom/hermes/android/data/XaiAuthFlow$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "XaiAuthFlow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/data/XaiAuthFlow;->start(Landroid/content/Context;)V
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
    value = "SMAP\nXaiAuthFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XaiAuthFlow.kt\ncom/hermes/android/data/XaiAuthFlow$start$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,247:1\n1#2:248\n*E\n"
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
    c = "com.hermes.android.data.XaiAuthFlow$start$1"
    f = "XaiAuthFlow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x91,
        0x99
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "discovery",
        "verifier",
        "challenge",
        "srv",
        "$this$launch",
        "discovery",
        "verifier",
        "challenge",
        "srv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/data/XaiAuthFlow;


# direct methods
.method constructor <init>(Lcom/hermes/android/data/XaiAuthFlow;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/XaiAuthFlow;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/data/XaiAuthFlow$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    iput-object p2, p0, Lcom/hermes/android/data/XaiAuthFlow$start$1;->$context:Landroid/content/Context;

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

    new-instance v0, Lcom/hermes/android/data/XaiAuthFlow$start$1;

    iget-object v1, p0, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    iget-object v2, p0, Lcom/hermes/android/data/XaiAuthFlow$start$1;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lcom/hermes/android/data/XaiAuthFlow$start$1;-><init>(Lcom/hermes/android/data/XaiAuthFlow;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/data/XaiAuthFlow$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/data/XaiAuthFlow$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/data/XaiAuthFlow$start$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/data/XaiAuthFlow$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "Could not start local callback server (port 56121 in use?): "

    const-string v3, "Wrote tokens failed: "

    const-string v4, "Token exchange failed: "

    const-string v5, "Callback error: "

    const-string v6, " \u2014 "

    const-string v0, "OIDC discovery failed: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 104
    iget v8, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->label:I

    const-string v10, "XaiAuthFlow"

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v8, :cond_2

    if-eq v8, v12, :cond_1

    if-ne v8, v11, :cond_0

    iget-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lcom/hermes/android/data/oauth/OauthCallbackServer;

    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v7, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

    iget-object v11, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v9, p1

    move-object/from16 v18, v10

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lcom/hermes/android/data/oauth/OauthCallbackServer;

    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v8, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v12, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

    iget-object v13, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v18, v10

    goto/16 :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$0:Ljava/lang/Object;

    move-object v13, v8

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    .line 107
    :try_start_2
    iget-object v8, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v8}, Lcom/hermes/android/data/XaiAuthFlow;->access$getOauth$p(Lcom/hermes/android/data/XaiAuthFlow;)Lcom/hermes/android/data/oauth/XaiOauthRepository;

    move-result-object v8

    invoke-virtual {v8}, Lcom/hermes/android/data/oauth/XaiOauthRepository;->discover()Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult;

    move-result-object v8

    .line 108
    instance-of v14, v8, Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Success;

    if-eqz v14, :cond_e

    check-cast v8, Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Success;

    invoke-virtual {v8}, Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Success;->getDiscovery()Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

    move-result-object v0

    .line 114
    iget-object v8, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v8}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    sget-object v14, Lcom/hermes/android/data/XaiAuthFlow$State$Starting;->INSTANCE:Lcom/hermes/android/data/XaiAuthFlow$State$Starting;

    invoke-interface {v8, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 116
    sget-object v8, Lcom/hermes/android/data/oauth/PkceGenerator;->INSTANCE:Lcom/hermes/android/data/oauth/PkceGenerator;

    invoke-virtual {v8}, Lcom/hermes/android/data/oauth/PkceGenerator;->generateVerifier()Ljava/lang/String;

    move-result-object v8

    .line 117
    sget-object v14, Lcom/hermes/android/data/oauth/PkceGenerator;->INSTANCE:Lcom/hermes/android/data/oauth/PkceGenerator;

    invoke-virtual {v14, v8}, Lcom/hermes/android/data/oauth/PkceGenerator;->deriveChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 118
    sget-object v15, Lcom/hermes/android/data/oauth/PkceGenerator;->INSTANCE:Lcom/hermes/android/data/oauth/PkceGenerator;

    invoke-virtual {v15}, Lcom/hermes/android/data/oauth/PkceGenerator;->generateState()Ljava/lang/String;

    move-result-object v15

    .line 119
    sget-object v16, Lcom/hermes/android/data/oauth/PkceGenerator;->INSTANCE:Lcom/hermes/android/data/oauth/PkceGenerator;

    invoke-virtual/range {v16 .. v16}, Lcom/hermes/android/data/oauth/PkceGenerator;->generateState()Ljava/lang/String;

    move-result-object v11

    .line 122
    iget-object v12, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v12, v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$setDiscovery$p(Lcom/hermes/android/data/XaiAuthFlow;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;)V

    .line 123
    iget-object v12, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v12, v8}, Lcom/hermes/android/data/XaiAuthFlow;->access$setVerifier$p(Lcom/hermes/android/data/XaiAuthFlow;Ljava/lang/String;)V

    .line 124
    iget-object v12, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v12, v14}, Lcom/hermes/android/data/XaiAuthFlow;->access$setChallenge$p(Lcom/hermes/android/data/XaiAuthFlow;Ljava/lang/String;)V

    .line 125
    iget-object v12, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v12, v15}, Lcom/hermes/android/data/XaiAuthFlow;->access$setStateNonce$p(Lcom/hermes/android/data/XaiAuthFlow;Ljava/lang/String;)V

    .line 127
    sget-object v12, Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;->INSTANCE:Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;

    .line 128
    new-instance v12, Lcom/hermes/android/data/oauth/OauthCallbackServer;

    .line 130
    const-string v9, "/callback"

    move-object/from16 v17, v2

    const v2, 0xdb39

    .line 128
    invoke-direct {v12, v15, v9, v2}, Lcom/hermes/android/data/oauth/OauthCallbackServer;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v2, v12}, Lcom/hermes/android/data/XaiAuthFlow;->access$setServer$p(Lcom/hermes/android/data/XaiAuthFlow;Lcom/hermes/android/data/oauth/OauthCallbackServer;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const v2, 0x493e0

    const/4 v9, 0x0

    .line 135
    :try_start_3
    invoke-virtual {v12, v2, v9}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->start(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_5

    .line 142
    :try_start_4
    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v2}, Lcom/hermes/android/data/XaiAuthFlow;->access$getOauth$p(Lcom/hermes/android/data/XaiAuthFlow;)Lcom/hermes/android/data/oauth/XaiOauthRepository;

    move-result-object v2

    invoke-virtual {v2, v0, v14, v15, v11}, Lcom/hermes/android/data/oauth/XaiOauthRepository;->buildAuthorizeUrl(Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    iget-object v9, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v9}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    new-instance v11, Lcom/hermes/android/data/XaiAuthFlow$State$AwaitingCallback;

    invoke-direct {v11, v2}, Lcom/hermes/android/data/XaiAuthFlow$State$AwaitingCallback;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v9

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    new-instance v11, Lcom/hermes/android/data/XaiAuthFlow$start$1$1;

    iget-object v15, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->$context:Landroid/content/Context;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v18, v10

    const/4 v10, 0x0

    :try_start_5
    invoke-direct {v11, v2, v15, v10}, Lcom/hermes/android/data/XaiAuthFlow$start$1$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    check-cast v11, Lkotlin/jvm/functions/Function2;

    move-object v2, v1

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v13, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$2:Ljava/lang/Object;

    iput-object v14, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$3:Ljava/lang/Object;

    iput-object v12, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$4:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->label:I

    invoke-static {v9, v11, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_3

    return-object v7

    :cond_3
    move-object v2, v14

    move-object/from16 v19, v12

    move-object v12, v0

    move-object/from16 v0, v19

    .line 153
    :goto_0
    move-object v9, v1

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v13, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$2:Ljava/lang/Object;

    iput-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$3:Ljava/lang/Object;

    iput-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->L$4:Ljava/lang/Object;

    const/4 v10, 0x2

    iput v10, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->label:I

    const-wide/32 v10, 0x493e0

    invoke-virtual {v0, v10, v11, v9}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->awaitCode(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_4

    return-object v7

    :cond_4
    move-object v7, v8

    move-object v8, v12

    .line 104
    :goto_1
    check-cast v9, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 154
    :try_start_6
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->stop()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_7
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :goto_2
    iget-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/hermes/android/data/XaiAuthFlow;->access$setServer$p(Lcom/hermes/android/data/XaiAuthFlow;Lcom/hermes/android/data/oauth/OauthCallbackServer;)V

    .line 158
    instance-of v0, v9, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sget-object v5, Lcom/hermes/android/data/XaiAuthFlow$State$Exchanging;->INSTANCE:Lcom/hermes/android/data/XaiAuthFlow$State$Exchanging;

    invoke-interface {v0, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 160
    iget-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$getOauth$p(Lcom/hermes/android/data/XaiAuthFlow;)Lcom/hermes/android/data/oauth/XaiOauthRepository;

    move-result-object v0

    check-cast v9, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;

    invoke-virtual {v9}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5, v7, v2}, Lcom/hermes/android/data/oauth/XaiOauthRepository;->exchangeCode(Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult;

    move-result-object v0

    .line 161
    instance-of v2, v0, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Success;

    if-eqz v2, :cond_7

    .line 162
    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v2}, Lcom/hermes/android/data/XaiAuthFlow;->access$getStore$p(Lcom/hermes/android/data/XaiAuthFlow;)Lcom/hermes/android/data/oauth/XaiCredentialStore;

    move-result-object v2

    check-cast v0, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Success;

    invoke-virtual {v0}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Success;->getTokens()Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;

    move-result-object v0

    const-string v4, "http://127.0.0.1:56121/callback"

    invoke-virtual {v2, v0, v8, v4}, Lcom/hermes/android/data/oauth/XaiCredentialStore;->write-0E7RQCE(Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Lkotlin/Unit;

    .line 163
    invoke-static {v2}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    sget-object v4, Lcom/hermes/android/data/XaiAuthFlow$State$Success;->INSTANCE:Lcom/hermes/android/data/XaiAuthFlow$State$Success;

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 164
    :cond_5
    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 165
    invoke-static {v2}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    new-instance v5, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 164
    :cond_6
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto/16 :goto_5

    .line 168
    :cond_7
    instance-of v2, v0, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Failure;

    if-eqz v2, :cond_8

    .line 169
    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v2}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    new-instance v3, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    check-cast v0, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Failure;

    invoke-virtual {v0}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 160
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 172
    :cond_9
    instance-of v0, v9, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;

    if-eqz v0, :cond_c

    .line 173
    iget-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    move-object v2, v9

    check-cast v2, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;

    invoke-virtual {v2}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;->getError()Ljava/lang/String;

    move-result-object v2

    check-cast v9, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;

    invoke-virtual {v9}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_a
    const-string v3, ""

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    invoke-direct {v3, v2}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 174
    :cond_c
    instance-of v0, v9, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$StateMismatch;

    if-eqz v0, :cond_d

    .line 175
    iget-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v2, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    const-string v3, "State mismatch (possible CSRF). Try again."

    invoke-direct {v2, v3}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 157
    :cond_d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    :goto_3
    move-object/from16 v4, v18

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v18, v10

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v18, v10

    move-object v2, v0

    .line 137
    const-string v0, "callback server start failed"

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;
    :try_end_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v4, v18

    :try_start_8
    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    iget-object v0, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v3, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 139
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_e
    move-object v4, v10

    .line 109
    instance-of v2, v8, Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Failure;

    if-eqz v2, :cond_f

    .line 110
    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v2}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    new-instance v3, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    check-cast v8, Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Failure;

    invoke-virtual {v8}, Lcom/hermes/android/data/oauth/XaiOauthRepository$DiscoveryResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 111
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 107
    :cond_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v4, v10

    .line 182
    :goto_4
    const-string v2, "xai auth flow crashed"

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    iget-object v2, v1, Lcom/hermes/android/data/XaiAuthFlow$start$1;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v2}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    new-instance v3, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "unknown error"

    :cond_10
    invoke-direct {v3, v0}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 185
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catch_5
    move-exception v0

    .line 180
    throw v0
.end method
