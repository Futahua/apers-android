.class final Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "XaiAuthFlow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/data/XaiAuthFlow;->submitPastedCode(Ljava/lang/String;)V
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
    c = "com.hermes.android.data.XaiAuthFlow$submitPastedCode$2"
    f = "XaiAuthFlow.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $ch:Ljava/lang/String;

.field final synthetic $code:Ljava/lang/String;

.field final synthetic $d:Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

.field final synthetic $v:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/data/XaiAuthFlow;


# direct methods
.method constructor <init>(Lcom/hermes/android/data/XaiAuthFlow;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/XaiAuthFlow;",
            "Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    iput-object p2, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$d:Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

    iput-object p3, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$code:Ljava/lang/String;

    iput-object p4, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$v:Ljava/lang/String;

    iput-object p5, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$ch:Ljava/lang/String;

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

    new-instance p1, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;

    iget-object v1, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    iget-object v2, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$d:Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

    iget-object v3, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$code:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$v:Ljava/lang/String;

    iget-object v5, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$ch:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;-><init>(Lcom/hermes/android/data/XaiAuthFlow;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 219
    iget v0, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 220
    iget-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {p1}, Lcom/hermes/android/data/XaiAuthFlow;->access$getOauth$p(Lcom/hermes/android/data/XaiAuthFlow;)Lcom/hermes/android/data/oauth/XaiOauthRepository;

    move-result-object p1

    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$d:Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

    iget-object v1, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$code:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$v:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$ch:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/hermes/android/data/oauth/XaiOauthRepository;->exchangeCode(Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult;

    move-result-object p1

    .line 221
    instance-of v0, p1, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Success;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$getStore$p(Lcom/hermes/android/data/XaiAuthFlow;)Lcom/hermes/android/data/oauth/XaiCredentialStore;

    move-result-object v0

    check-cast p1, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Success;

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Success;->getTokens()Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;

    move-result-object p1

    iget-object v1, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->$d:Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

    const-string v2, "http://127.0.0.1:56121/callback"

    invoke-virtual {v0, p1, v1, v2}, Lcom/hermes/android/data/oauth/XaiCredentialStore;->write-0E7RQCE(Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lkotlin/Unit;

    .line 223
    invoke-static {v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/data/XaiAuthFlow$State$Success;->INSTANCE:Lcom/hermes/android/data/XaiAuthFlow$State$Success;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 225
    invoke-static {v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v2, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrote tokens failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 224
    :cond_1
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto :goto_0

    .line 228
    :cond_2
    instance-of v0, p1, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Failure;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;->this$0:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/XaiAuthFlow;->access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v1, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    check-cast p1, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Failure;

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token exchange failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 231
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 220
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 219
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
