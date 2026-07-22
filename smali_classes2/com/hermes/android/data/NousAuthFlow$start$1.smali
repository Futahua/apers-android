.class final Lcom/hermes/android/data/NousAuthFlow$start$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NousAuthFlow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/data/NousAuthFlow;->start()V
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
    value = "SMAP\nNousAuthFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NousAuthFlow.kt\ncom/hermes/android/data/NousAuthFlow$start$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
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
    c = "com.hermes.android.data.NousAuthFlow$start$1"
    f = "NousAuthFlow.kt"
    i = {}
    l = {
        0x43
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/hermes/android/data/NousAuthFlow;


# direct methods
.method constructor <init>(Lcom/hermes/android/data/NousAuthFlow;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/NousAuthFlow;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/data/NousAuthFlow$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/hermes/android/data/NousAuthFlow$start$1;

    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-direct {p1, v0, p2}, Lcom/hermes/android/data/NousAuthFlow$start$1;-><init>(Lcom/hermes/android/data/NousAuthFlow;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/data/NousAuthFlow$start$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/data/NousAuthFlow$start$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/data/NousAuthFlow$start$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/data/NousAuthFlow$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 53
    iget v1, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->label:I

    const/4 v2, 0x1

    const-string v3, "NousAuthFlow"

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {p1}, Lcom/hermes/android/data/NousAuthFlow;->access$getClient$p(Lcom/hermes/android/data/NousAuthFlow;)Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->requestDeviceCode-d1pmJ48()Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_9

    check-cast p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    .line 59
    iget-object v1, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {v1}, Lcom/hermes/android/data/NousAuthFlow;->access$get_state$p(Lcom/hermes/android/data/NousAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    new-instance v4, Lcom/hermes/android/data/NousAuthFlow$State$AwaitingApproval;

    .line 60
    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->getUserCode()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->getVerificationUriComplete()Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->getExpiresIn()I

    move-result v7

    .line 59
    invoke-direct {v4, v5, v6, v7}, Lcom/hermes/android/data/NousAuthFlow$State$AwaitingApproval;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 67
    :try_start_1
    iget-object v1, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {v1}, Lcom/hermes/android/data/NousAuthFlow;->access$getClient$p(Lcom/hermes/android/data/NousAuthFlow;)Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    move-result-object v1

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->label:I

    invoke-virtual {v1, p1, v4}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->pollForToken(Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    instance-of v0, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;

    if-eqz v0, :cond_5

    .line 77
    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/NousAuthFlow;->access$getStore$p(Lcom/hermes/android/data/NousAuthFlow;)Lcom/hermes/android/data/oauth/NousCredentialStore;

    move-result-object v0

    check-cast p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->getTokenJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hermes/android/data/oauth/NousCredentialStore;->write-IoAF18A(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Lkotlin/Unit;

    invoke-static {v0}, Lcom/hermes/android/data/NousAuthFlow;->access$get_state$p(Lcom/hermes/android/data/NousAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/data/NousAuthFlow$State$Success;->INSTANCE:Lcom/hermes/android/data/NousAuthFlow$State$Success;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 80
    const-string v2, "credential save failed"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    invoke-static {v0}, Lcom/hermes/android/data/NousAuthFlow;->access$get_state$p(Lcom/hermes/android/data/NousAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v2, Lcom/hermes/android/data/NousAuthFlow$State$Failed;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Save failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/hermes/android/data/NousAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 79
    :cond_4
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    goto :goto_1

    .line 84
    :cond_5
    instance-of v0, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;

    if-eqz v0, :cond_6

    .line 85
    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/NousAuthFlow;->access$get_state$p(Lcom/hermes/android/data/NousAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v1, Lcom/hermes/android/data/NousAuthFlow$State$Failed;

    check-cast p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;->getDescription()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/hermes/android/data/NousAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    :cond_6
    instance-of p1, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Expired;

    if-eqz p1, :cond_7

    .line 87
    iget-object p1, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {p1}, Lcom/hermes/android/data/NousAuthFlow;->access$get_state$p(Lcom/hermes/android/data/NousAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    new-instance v0, Lcom/hermes/android/data/NousAuthFlow$State$Failed;

    const-string v1, "expired"

    invoke-direct {v0, v1}, Lcom/hermes/android/data/NousAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 89
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 75
    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 71
    :goto_2
    const-string v0, "token polling failed"

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow$start$1;->this$0:Lcom/hermes/android/data/NousAuthFlow;

    invoke-static {v0}, Lcom/hermes/android/data/NousAuthFlow;->access$get_state$p(Lcom/hermes/android/data/NousAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v1, Lcom/hermes/android/data/NousAuthFlow$State$Failed;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "Network error during sign-in"

    :cond_8
    invoke-direct {v1, p1}, Lcom/hermes/android/data/NousAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 69
    :goto_3
    throw p1

    .line 55
    :cond_9
    const-string p1, "device code request failed"

    invoke-static {v3, p1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    invoke-static {v1}, Lcom/hermes/android/data/NousAuthFlow;->access$get_state$p(Lcom/hermes/android/data/NousAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    new-instance v0, Lcom/hermes/android/data/NousAuthFlow$State$Failed;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, "Device code request failed"

    :cond_a
    invoke-direct {v0, v1}, Lcom/hermes/android/data/NousAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 57
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
