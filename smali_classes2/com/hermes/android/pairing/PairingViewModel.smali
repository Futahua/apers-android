.class public final Lcom/hermes/android/pairing/PairingViewModel;
.super Ljava/lang/Object;
.source "PairingViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/pairing/PairingViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairingViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairingViewModel.kt\ncom/hermes/android/pairing/PairingViewModel\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,184:1\n230#2,5:185\n230#2,5:190\n230#2,5:195\n230#2,5:200\n230#2,5:205\n230#2,5:210\n*S KotlinDebug\n*F\n+ 1 PairingViewModel.kt\ncom/hermes/android/pairing/PairingViewModel\n*L\n123#1:185,5\n138#1:190,5\n144#1:195,5\n151#1:200,5\n164#1:205,5\n166#1:210,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0006\u0010\u0018\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/hermes/android/pairing/PairingViewModel;",
        "",
        "context",
        "Landroid/content/Context;",
        "configRepo",
        "Lcom/hermes/android/data/HermesConfigRepository;",
        "<init>",
        "(Landroid/content/Context;Lcom/hermes/android/data/HermesConfigRepository;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/hermes/android/pairing/PairingUiState;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "server",
        "Lcom/hermes/android/pairing/PairingServer;",
        "startServer",
        "",
        "stopServer",
        "handleConfig",
        "",
        "config",
        "Lcom/hermes/android/pairing/PairingConfig;",
        "dispose",
        "Companion",
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

.field public static final Companion:Lcom/hermes/android/pairing/PairingViewModel$Companion;

.field private static final TAG:Ljava/lang/String; = "PairingVM"


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/hermes/android/pairing/PairingUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final configRepo:Lcom/hermes/android/data/HermesConfigRepository;

.field private final context:Landroid/content/Context;

.field private server:Lcom/hermes/android/pairing/PairingServer;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/pairing/PairingUiState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$asqzA_7B2gJgcNZBQY6de041Uyk(Lcom/hermes/android/pairing/PairingViewModel;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/pairing/PairingViewModel;->startServer$lambda$1(Lcom/hermes/android/pairing/PairingViewModel;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gOycyVKxYkzho6_QRszqwPh63w4(Lcom/hermes/android/pairing/PairingViewModel;Lcom/hermes/android/pairing/PairingConfig;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/pairing/PairingViewModel;->startServer$lambda$2(Lcom/hermes/android/pairing/PairingViewModel;Lcom/hermes/android/pairing/PairingConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/pairing/PairingViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/pairing/PairingViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/pairing/PairingViewModel;->Companion:Lcom/hermes/android/pairing/PairingViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/pairing/PairingViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hermes/android/data/HermesConfigRepository;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configRepo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/hermes/android/pairing/PairingViewModel;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/hermes/android/pairing/PairingViewModel;->configRepo:Lcom/hermes/android/data/HermesConfigRepository;

    .line 113
    new-instance p1, Lcom/hermes/android/pairing/PairingUiState;

    const/16 v9, 0x7f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/hermes/android/pairing/PairingUiState;-><init>(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/pairing/PairingViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 114
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/pairing/PairingViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method private final handleConfig(Lcom/hermes/android/pairing/PairingConfig;)Ljava/lang/String;
    .locals 13

    .line 161
    sget-object v0, Lcom/hermes/android/pairing/PairingViewModel;->Companion:Lcom/hermes/android/pairing/PairingViewModel$Companion;

    iget-object v1, p0, Lcom/hermes/android/pairing/PairingViewModel;->configRepo:Lcom/hermes/android/data/HermesConfigRepository;

    invoke-virtual {v0, v1, p1}, Lcom/hermes/android/pairing/PairingViewModel$Companion;->applyPairedConfig$app_release(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/pairing/PairingConfig;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 163
    sget-object v1, Lcom/hermes/android/data/AiProvider;->Companion:Lcom/hermes/android/data/AiProvider$Companion;

    invoke-virtual {p1}, Lcom/hermes/android/pairing/PairingConfig;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hermes/android/data/AiProvider$Companion;->findById(Ljava/lang/String;)Lcom/hermes/android/data/AiProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hermes/android/data/AiProvider;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/hermes/android/pairing/PairingConfig;->getProviderId()Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/hermes/android/pairing/PairingViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 206
    :cond_2
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    .line 207
    move-object v2, v12

    check-cast v2, Lcom/hermes/android/pairing/PairingUiState;

    const/16 v10, 0x4f

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v7, v1

    .line 164
    invoke-static/range {v2 .. v11}, Lcom/hermes/android/pairing/PairingUiState;->copy$default(Lcom/hermes/android/pairing/PairingUiState;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/pairing/PairingUiState;

    move-result-object v2

    .line 208
    invoke-interface {p1, v12, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 166
    :cond_3
    iget-object p1, p0, Lcom/hermes/android/pairing/PairingViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 211
    :cond_4
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 212
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/pairing/PairingUiState;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    .line 166
    invoke-static/range {v2 .. v11}, Lcom/hermes/android/pairing/PairingUiState;->copy$default(Lcom/hermes/android/pairing/PairingUiState;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/pairing/PairingUiState;

    move-result-object v2

    .line 213
    invoke-interface {p1, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-object v0
.end method

.method private static final startServer$lambda$1(Lcom/hermes/android/pairing/PairingViewModel;)Ljava/util/Map;
    .locals 1

    .line 135
    sget-object v0, Lcom/hermes/android/data/ModelCatalogCache;->INSTANCE:Lcom/hermes/android/data/ModelCatalogCache;

    iget-object p0, p0, Lcom/hermes/android/pairing/PairingViewModel;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/hermes/android/data/ModelCatalogCache;->cachedAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private static final startServer$lambda$2(Lcom/hermes/android/pairing/PairingViewModel;Lcom/hermes/android/pairing/PairingConfig;)Ljava/lang/String;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/hermes/android/pairing/PairingViewModel;->handleConfig(Lcom/hermes/android/pairing/PairingConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final dispose()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/hermes/android/pairing/PairingViewModel;->stopServer()V

    return-void
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/pairing/PairingUiState;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/hermes/android/pairing/PairingViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final startServer()V
    .locals 17

    move-object/from16 v1, p0

    .line 119
    const-string v2, "PairingVM"

    iget-object v0, v1, Lcom/hermes/android/pairing/PairingViewModel;->server:Lcom/hermes/android/pairing/PairingServer;

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    sget-object v0, Lcom/hermes/android/pairing/PairingServer;->Companion:Lcom/hermes/android/pairing/PairingServer$Companion;

    iget-object v3, v1, Lcom/hermes/android/pairing/PairingViewModel;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/hermes/android/pairing/PairingServer$Companion;->getDeviceIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 123
    iget-object v3, v1, Lcom/hermes/android/pairing/PairingViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 186
    :cond_1
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 187
    move-object v4, v0

    check-cast v4, Lcom/hermes/android/pairing/PairingUiState;

    const/16 v12, 0x3f

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 123
    const-string v11, "Cannot determine device IP. Connect to Wi-Fi first."

    invoke-static/range {v4 .. v13}, Lcom/hermes/android/pairing/PairingUiState;->copy$default(Lcom/hermes/android/pairing/PairingUiState;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/pairing/PairingUiState;

    move-result-object v2

    .line 188
    invoke-interface {v3, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 128
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":8765"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    :try_start_0
    new-instance v4, Lcom/hermes/android/pairing/PairingServer;

    new-instance v5, Lcom/hermes/android/pairing/PairingViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1}, Lcom/hermes/android/pairing/PairingViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/pairing/PairingViewModel;)V

    new-instance v6, Lcom/hermes/android/pairing/PairingViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1}, Lcom/hermes/android/pairing/PairingViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/pairing/PairingViewModel;)V

    const/16 v14, 0x223d

    invoke-direct {v4, v14, v5, v6}, Lcom/hermes/android/pairing/PairingServer;-><init>(ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    iput-object v4, v1, Lcom/hermes/android/pairing/PairingViewModel;->server:Lcom/hermes/android/pairing/PairingServer;

    .line 137
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/hermes/android/pairing/PairingServer;->start()V

    .line 138
    iget-object v15, v1, Lcom/hermes/android/pairing/PairingViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 191
    :goto_0
    invoke-interface {v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 192
    move-object v4, v13

    check-cast v4, Lcom/hermes/android/pairing/PairingUiState;

    .line 139
    const-string v11, ""

    const/16 v12, 0x30

    const/16 v16, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v3

    move-object v7, v0

    move v8, v14

    move-object v14, v13

    move-object/from16 v13, v16

    invoke-static/range {v4 .. v13}, Lcom/hermes/android/pairing/PairingUiState;->copy$default(Lcom/hermes/android/pairing/PairingUiState;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/pairing/PairingUiState;

    move-result-object v4

    .line 193
    invoke-interface {v15, v14, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pairing server started at "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    const/16 v14, 0x223d

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    const-string v3, "Failed to start pairing server"

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    iget-object v2, v1, Lcom/hermes/android/pairing/PairingViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 196
    :cond_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 197
    move-object v4, v3

    check-cast v4, Lcom/hermes/android/pairing/PairingUiState;

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to start server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x3f

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v13}, Lcom/hermes/android/pairing/PairingUiState;->copy$default(Lcom/hermes/android/pairing/PairingUiState;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/pairing/PairingUiState;

    move-result-object v4

    .line 198
    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    return-void
.end method

.method public final stopServer()V
    .locals 12

    .line 149
    iget-object v0, p0, Lcom/hermes/android/pairing/PairingViewModel;->server:Lcom/hermes/android/pairing/PairingServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hermes/android/pairing/PairingServer;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/hermes/android/pairing/PairingViewModel;->server:Lcom/hermes/android/pairing/PairingServer;

    .line 151
    iget-object v0, p0, Lcom/hermes/android/pairing/PairingViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 201
    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 202
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/pairing/PairingUiState;

    const/16 v10, 0x5c

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 151
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lcom/hermes/android/pairing/PairingUiState;->copy$default(Lcom/hermes/android/pairing/PairingUiState;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/pairing/PairingUiState;

    move-result-object v2

    .line 203
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    const-string v0, "PairingVM"

    const-string v1, "Pairing server stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
