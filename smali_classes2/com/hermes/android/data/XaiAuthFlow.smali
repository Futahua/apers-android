.class public final Lcom/hermes/android/data/XaiAuthFlow;
.super Ljava/lang/Object;
.source "XaiAuthFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/XaiAuthFlow$Companion;,
        Lcom/hermes/android/data/XaiAuthFlow$PastedCallback;,
        Lcom/hermes/android/data/XaiAuthFlow$State;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXaiAuthFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XaiAuthFlow.kt\ncom/hermes/android/data/XaiAuthFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,247:1\n1#2:248\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0003%&\'B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001aJ\u0006\u0010#\u001a\u00020\u001eJ\u0006\u0010$\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/hermes/android/data/XaiAuthFlow;",
        "",
        "bootstrap",
        "Lcom/hermes/android/BootstrapManager;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/hermes/android/data/XaiAuthFlow$State;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "oauth",
        "Lcom/hermes/android/data/oauth/XaiOauthRepository;",
        "store",
        "Lcom/hermes/android/data/oauth/XaiCredentialStore;",
        "server",
        "Lcom/hermes/android/data/oauth/OauthCallbackServer;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "discovery",
        "Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;",
        "verifier",
        "",
        "challenge",
        "stateNonce",
        "start",
        "",
        "context",
        "Landroid/content/Context;",
        "submitPastedCode",
        "input",
        "cancel",
        "reset",
        "Companion",
        "State",
        "PastedCallback",
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

.field public static final Companion:Lcom/hermes/android/data/XaiAuthFlow$Companion;

.field private static final NANOHTTPD_TIMEOUT_MS:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "XaiAuthFlow"

.field private static final TIMEOUT_MS:J = 0x493e0L


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/hermes/android/data/XaiAuthFlow$State;",
            ">;"
        }
    .end annotation
.end field

.field private final bootstrap:Lcom/hermes/android/BootstrapManager;

.field private challenge:Ljava/lang/String;

.field private discovery:Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

.field private job:Lkotlinx/coroutines/Job;

.field private final oauth:Lcom/hermes/android/data/oauth/XaiOauthRepository;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/data/XaiAuthFlow$State;",
            ">;"
        }
    .end annotation
.end field

.field private stateNonce:Ljava/lang/String;

.field private final store:Lcom/hermes/android/data/oauth/XaiCredentialStore;

.field private verifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/data/XaiAuthFlow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/XaiAuthFlow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/XaiAuthFlow;->Companion:Lcom/hermes/android/data/XaiAuthFlow$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/XaiAuthFlow;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "bootstrap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->bootstrap:Lcom/hermes/android/BootstrapManager;

    .line 36
    iput-object p2, p0, Lcom/hermes/android/data/XaiAuthFlow;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 85
    sget-object p2, Lcom/hermes/android/data/XaiAuthFlow$State$Idle;->INSTANCE:Lcom/hermes/android/data/XaiAuthFlow$State$Idle;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 86
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/hermes/android/data/XaiAuthFlow;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 88
    new-instance p2, Lcom/hermes/android/data/oauth/XaiOauthRepository;

    invoke-direct {p2}, Lcom/hermes/android/data/oauth/XaiOauthRepository;-><init>()V

    iput-object p2, p0, Lcom/hermes/android/data/XaiAuthFlow;->oauth:Lcom/hermes/android/data/oauth/XaiOauthRepository;

    .line 89
    new-instance p2, Lcom/hermes/android/data/oauth/XaiCredentialStore;

    invoke-direct {p2, p1}, Lcom/hermes/android/data/oauth/XaiCredentialStore;-><init>(Lcom/hermes/android/BootstrapManager;)V

    iput-object p2, p0, Lcom/hermes/android/data/XaiAuthFlow;->store:Lcom/hermes/android/data/oauth/XaiCredentialStore;

    return-void
.end method

.method public static final synthetic access$getOauth$p(Lcom/hermes/android/data/XaiAuthFlow;)Lcom/hermes/android/data/oauth/XaiOauthRepository;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hermes/android/data/XaiAuthFlow;->oauth:Lcom/hermes/android/data/oauth/XaiOauthRepository;

    return-object p0
.end method

.method public static final synthetic access$getStore$p(Lcom/hermes/android/data/XaiAuthFlow;)Lcom/hermes/android/data/oauth/XaiCredentialStore;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hermes/android/data/XaiAuthFlow;->store:Lcom/hermes/android/data/oauth/XaiCredentialStore;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lcom/hermes/android/data/XaiAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$setChallenge$p(Lcom/hermes/android/data/XaiAuthFlow;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->challenge:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setDiscovery$p(Lcom/hermes/android/data/XaiAuthFlow;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->discovery:Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

    return-void
.end method

.method public static final synthetic access$setServer$p(Lcom/hermes/android/data/XaiAuthFlow;Lcom/hermes/android/data/oauth/OauthCallbackServer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

    return-void
.end method

.method public static final synthetic access$setStateNonce$p(Lcom/hermes/android/data/XaiAuthFlow;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->stateNonce:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setVerifier$p(Lcom/hermes/android/data/XaiAuthFlow;Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->verifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/hermes/android/data/XaiAuthFlow;->job:Lkotlinx/coroutines/Job;

    .line 238
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/hermes/android/data/XaiAuthFlow;

    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

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
    iput-object v1, p0, Lcom/hermes/android/data/XaiAuthFlow;->server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

    .line 239
    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/hermes/android/data/XaiAuthFlow$State$Idle;->INSTANCE:Lcom/hermes/android/data/XaiAuthFlow$State$Idle;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/data/XaiAuthFlow$State;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final reset()V
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/hermes/android/data/XaiAuthFlow;->cancel()V

    .line 244
    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/hermes/android/data/XaiAuthFlow$State$Idle;->INSTANCE:Lcom/hermes/android/data/XaiAuthFlow$State$Idle;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/hermes/android/data/XaiAuthFlow$State$Idle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/hermes/android/data/XaiAuthFlow$State$Discovering;->INSTANCE:Lcom/hermes/android/data/XaiAuthFlow$State$Discovering;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 104
    iget-object v2, p0, Lcom/hermes/android/data/XaiAuthFlow;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/hermes/android/data/XaiAuthFlow$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/hermes/android/data/XaiAuthFlow$start$1;-><init>(Lcom/hermes/android/data/XaiAuthFlow;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final submitPastedCode(Ljava/lang/String;)V
    .locals 13

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/hermes/android/data/XaiAuthFlow;->discovery:Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;

    iget-object v5, p0, Lcom/hermes/android/data/XaiAuthFlow;->verifier:Ljava/lang/String;

    iget-object v6, p0, Lcom/hermes/android/data/XaiAuthFlow;->challenge:Ljava/lang/String;

    iget-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->stateNonce:Ljava/lang/String;

    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    if-nez v6, :cond_0

    goto/16 :goto_3

    .line 202
    :cond_0
    sget-object v1, Lcom/hermes/android/data/XaiAuthFlow;->Companion:Lcom/hermes/android/data/XaiAuthFlow$Companion;

    invoke-virtual {v1, p1}, Lcom/hermes/android/data/XaiAuthFlow$Companion;->parsePastedCallback$app_release(Ljava/lang/String;)Lcom/hermes/android/data/XaiAuthFlow$PastedCallback;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcom/hermes/android/data/XaiAuthFlow$PastedCallback;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 204
    move-object v1, v4

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 210
    :cond_1
    invoke-virtual {p1}, Lcom/hermes/android/data/XaiAuthFlow$PastedCallback;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/hermes/android/data/XaiAuthFlow$PastedCallback;->getState()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    const-string v1, "State mismatch \u2014 paste the code from this sign-in attempt, then try again."

    invoke-direct {v0, v1}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/hermes/android/data/XaiAuthFlow$State$Exchanging;->INSTANCE:Lcom/hermes/android/data/XaiAuthFlow$State$Exchanging;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 217
    iget-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->job:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 218
    :cond_3
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, p0

    check-cast p1, Lcom/hermes/android/data/XaiAuthFlow;

    iget-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->stop()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iput-object v0, p0, Lcom/hermes/android/data/XaiAuthFlow;->server:Lcom/hermes/android/data/oauth/OauthCallbackServer;

    .line 219
    iget-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/hermes/android/data/XaiAuthFlow$submitPastedCode$2;-><init>(Lcom/hermes/android/data/XaiAuthFlow;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->job:Lkotlinx/coroutines/Job;

    return-void

    .line 205
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    const-string v1, "No authorization code found in the pasted text."

    invoke-direct {v0, v1}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 199
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/hermes/android/data/XaiAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    const-string v1, "Sign-in not ready yet \u2014 wait for the browser to open, then paste."

    invoke-direct {v0, v1}, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
