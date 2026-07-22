.class public final Lcom/hermes/android/data/CodexAuthFlow;
.super Ljava/lang/Object;
.source "CodexAuthFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/CodexAuthFlow$Companion;,
        Lcom/hermes/android/data/CodexAuthFlow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodexAuthFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodexAuthFlow.kt\ncom/hermes/android/data/CodexAuthFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,135:1\n1#2:136\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0018J\u0006\u0010\u001c\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/hermes/android/data/CodexAuthFlow;",
        "",
        "bootstrap",
        "Lcom/hermes/android/BootstrapManager;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/hermes/android/data/CodexAuthFlow$State;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "oauth",
        "Lcom/hermes/android/data/oauth/OauthRepository;",
        "store",
        "Lcom/hermes/android/data/oauth/CodexCredentialStore;",
        "server",
        "Lcom/hermes/android/data/oauth/OauthCallbackServer;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "start",
        "",
        "context",
        "Landroid/content/Context;",
        "cancel",
        "reset",
        "Companion",
        "State",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/hermes/android/data/CodexAuthFlow$Companion;

.field private static final TAG:Ljava/lang/String; = "CodexAuthFlow"

.field private static final TIMEOUT_MS:J = 0x493e0L


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/hermes/android/data/CodexAuthFlow$State;",
            ">;"
        }
    .end annotation
.end field

.field private final bootstrap:Lcom/hermes/android/BootstrapManager;

.field private job:Lkotlinx/coroutines/Job;

.field private final oauth:Lcom/hermes/android/data/oauth/OauthRepository;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/data/CodexAuthFlow$State;",
            ">;"
        }
    .end annotation
.end field

.field private final store:Lcom/hermes/android/data/oauth/CodexCredentialStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/data/CodexAuthFlow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/CodexAuthFlow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/CodexAuthFlow;->Companion:Lcom/hermes/android/data/CodexAuthFlow$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/CodexAuthFlow;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "bootstrap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/hermes/android/data/CodexAuthFlow;->bootstrap:Lcom/hermes/android/BootstrapManager;

    .line 35
    iput-object p2, p0, Lcom/hermes/android/data/CodexAuthFlow;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 49
    sget-object p2, Lcom/hermes/android/data/CodexAuthFlow$State$Idle;->INSTANCE:Lcom/hermes/android/data/CodexAuthFlow$State$Idle;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/hermes/android/data/CodexAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 50
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/hermes/android/data/CodexAuthFlow;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 52
    new-instance p2, Lcom/hermes/android/data/oauth/OauthRepository;

    invoke-direct {p2}, Lcom/hermes/android/data/oauth/OauthRepository;-><init>()V

    iput-object p2, p0, Lcom/hermes/android/data/CodexAuthFlow;->oauth:Lcom/hermes/android/data/oauth/OauthRepository;

    .line 53
    new-instance p2, Lcom/hermes/android/data/oauth/CodexCredentialStore;

    invoke-direct {p2, p1}, Lcom/hermes/android/data/oauth/CodexCredentialStore;-><init>(Lcom/hermes/android/BootstrapManager;)V

    iput-object p2, p0, Lcom/hermes/android/data/CodexAuthFlow;->store:Lcom/hermes/android/data/oauth/CodexCredentialStore;

    return-void
.end method

.method public static final synthetic access$getOauth$p(Lcom/hermes/android/data/CodexAuthFlow;)Lcom/hermes/android/data/oauth/OauthRepository;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/hermes/android/data/CodexAuthFlow;->oauth:Lcom/hermes/android/data/oauth/OauthRepository;

    return-object p0
.end method

.method public static final synthetic access$getStore$p(Lcom/hermes/android/data/CodexAuthFlow;)Lcom/hermes/android/data/oauth/CodexCredentialStore;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/hermes/android/data/CodexAuthFlow;->store:Lcom/hermes/android/data/oauth/CodexCredentialStore;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lcom/hermes/android/data/CodexAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/hermes/android/data/CodexAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$setServer$p(Lcom/hermes/android/data/CodexAuthFlow;Lcom/hermes/android/data/oauth/OauthCallbackServer;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/hermes/android/data/CodexAuthFlow;->server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/hermes/android/data/CodexAuthFlow;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/hermes/android/data/CodexAuthFlow;->job:Lkotlinx/coroutines/Job;

    .line 124
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/hermes/android/data/CodexAuthFlow;

    iget-object v0, p0, Lcom/hermes/android/data/CodexAuthFlow;->server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->stop()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iput-object v1, p0, Lcom/hermes/android/data/CodexAuthFlow;->server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

    .line 125
    iget-object v0, p0, Lcom/hermes/android/data/CodexAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/hermes/android/data/CodexAuthFlow$State$Idle;->INSTANCE:Lcom/hermes/android/data/CodexAuthFlow$State$Idle;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/data/CodexAuthFlow$State;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/hermes/android/data/CodexAuthFlow;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final reset()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/hermes/android/data/CodexAuthFlow;->cancel()V

    .line 130
    iget-object v0, p0, Lcom/hermes/android/data/CodexAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/hermes/android/data/CodexAuthFlow$State$Idle;->INSTANCE:Lcom/hermes/android/data/CodexAuthFlow$State$Idle;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/hermes/android/data/CodexAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/hermes/android/data/CodexAuthFlow$State$Idle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hermes/android/data/CodexAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/hermes/android/data/CodexAuthFlow$State$Failed;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/data/CodexAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/hermes/android/data/CodexAuthFlow$State$Starting;->INSTANCE:Lcom/hermes/android/data/CodexAuthFlow$State$Starting;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/hermes/android/data/CodexAuthFlow;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/hermes/android/data/CodexAuthFlow$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/hermes/android/data/CodexAuthFlow$start$1;-><init>(Lcom/hermes/android/data/CodexAuthFlow;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/data/CodexAuthFlow;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
