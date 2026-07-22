.class public final Lcom/hermes/android/data/NousAuthFlow;
.super Ljava/lang/Object;
.source "NousAuthFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/NousAuthFlow$Companion;,
        Lcom/hermes/android/data/NousAuthFlow$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/hermes/android/data/NousAuthFlow;",
        "",
        "bootstrap",
        "Lcom/hermes/android/BootstrapManager;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/hermes/android/data/NousAuthFlow$State;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "client",
        "Lcom/hermes/android/data/oauth/NousDeviceCodeClient;",
        "store",
        "Lcom/hermes/android/data/oauth/NousCredentialStore;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "start",
        "",
        "cancel",
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

.field public static final Companion:Lcom/hermes/android/data/NousAuthFlow$Companion;

.field private static final TAG:Ljava/lang/String; = "NousAuthFlow"


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/hermes/android/data/NousAuthFlow$State;",
            ">;"
        }
    .end annotation
.end field

.field private final client:Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

.field private job:Lkotlinx/coroutines/Job;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/data/NousAuthFlow$State;",
            ">;"
        }
    .end annotation
.end field

.field private final store:Lcom/hermes/android/data/oauth/NousCredentialStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/data/NousAuthFlow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/NousAuthFlow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/NousAuthFlow;->Companion:Lcom/hermes/android/data/NousAuthFlow$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/NousAuthFlow;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    const-string v0, "bootstrap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/hermes/android/data/NousAuthFlow;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 43
    sget-object p2, Lcom/hermes/android/data/NousAuthFlow$State$Idle;->INSTANCE:Lcom/hermes/android/data/NousAuthFlow$State$Idle;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/hermes/android/data/NousAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 44
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/hermes/android/data/NousAuthFlow;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 46
    new-instance p2, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p2, v0, v0, v1, v0}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/hermes/android/data/NousAuthFlow;->client:Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    .line 47
    new-instance p2, Lcom/hermes/android/data/oauth/NousCredentialStore;

    invoke-direct {p2, p1}, Lcom/hermes/android/data/oauth/NousCredentialStore;-><init>(Lcom/hermes/android/BootstrapManager;)V

    iput-object p2, p0, Lcom/hermes/android/data/NousAuthFlow;->store:Lcom/hermes/android/data/oauth/NousCredentialStore;

    return-void
.end method

.method public static final synthetic access$getClient$p(Lcom/hermes/android/data/NousAuthFlow;)Lcom/hermes/android/data/oauth/NousDeviceCodeClient;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/hermes/android/data/NousAuthFlow;->client:Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    return-object p0
.end method

.method public static final synthetic access$getStore$p(Lcom/hermes/android/data/NousAuthFlow;)Lcom/hermes/android/data/oauth/NousCredentialStore;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/hermes/android/data/NousAuthFlow;->store:Lcom/hermes/android/data/oauth/NousCredentialStore;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lcom/hermes/android/data/NousAuthFlow;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/hermes/android/data/NousAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 94
    :cond_0
    iput-object v1, p0, Lcom/hermes/android/data/NousAuthFlow;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/data/NousAuthFlow$State;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final start()V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow;->job:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/data/NousAuthFlow;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/hermes/android/data/NousAuthFlow$State$Starting;->INSTANCE:Lcom/hermes/android/data/NousAuthFlow$State$Starting;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 53
    iget-object v2, p0, Lcom/hermes/android/data/NousAuthFlow;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/hermes/android/data/NousAuthFlow$start$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hermes/android/data/NousAuthFlow$start$1;-><init>(Lcom/hermes/android/data/NousAuthFlow;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/data/NousAuthFlow;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
