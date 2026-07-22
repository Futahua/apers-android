.class public final Lcom/hermes/android/chat/ChatSkinController;
.super Ljava/lang/Object;
.source "ChatSkinController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatSkinController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,443:1\n230#2,5:444\n230#2,5:449\n230#2,5:454\n230#2,3:459\n233#2,2:466\n230#2,5:468\n1557#3:462\n1628#3,3:463\n*S KotlinDebug\n*F\n+ 1 ChatSkinController.kt\ncom/hermes/android/chat/ChatSkinController\n*L\n120#1:444,5\n192#1:449,5\n227#1:454,5\n344#1:459,3\n344#1:466,2\n349#1:468,5\n344#1:462\n344#1:463,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020,J\u001d\u0010.\u001a\u00020\u001c2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u001f00H\u0082\u0008J\u0010\u00101\u001a\u00020,2\u0006\u00102\u001a\u00020\u0007H\u0002J\u000e\u00103\u001a\u00020,2\u0006\u00104\u001a\u00020\u0007J\u0010\u00105\u001a\u00020,2\u0008\u00106\u001a\u0004\u0018\u00010\u0007J\u0006\u00108\u001a\u00020,J\u0008\u00109\u001a\u00020,H\u0002J\u0008\u0010:\u001a\u00020,H\u0002J\u0010\u0010;\u001a\u00020,2\u0006\u0010<\u001a\u00020=H\u0002J\u0008\u0010>\u001a\u00020,H\u0002J\u000c\u0010?\u001a\u00020@*\u00020AH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0!\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006B"
    }
    d2 = {
        "Lcom/hermes/android/chat/ChatSkinController;",
        "",
        "terminal",
        "Lcom/termux/terminal/TerminalSession;",
        "hudRepo",
        "Lcom/hermes/android/data/HermesHudRepository;",
        "sessionId",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "minSessionStartSec",
        "",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "debounceMs",
        "",
        "settlePollIntervalMs",
        "settleTimeoutMs",
        "settleSlowPollIntervalMs",
        "settleMaxSlowPollMs",
        "settleNoEvidenceGiveUpMs",
        "previewThrottleMs",
        "<init>",
        "(Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Double;Lkotlinx/coroutines/CoroutineDispatcher;JJJJJJJ)V",
        "Ljava/lang/Double;",
        "turnStartEpochMs",
        "Ljava/lang/Long;",
        "turnSawMidTurn",
        "",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/hermes/android/chat/ChatSkinState;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "detector",
        "Lcom/hermes/android/chat/TurnDetector;",
        "settleJob",
        "Lkotlinx/coroutines/Job;",
        "initJob",
        "previewJob",
        "previewScheduled",
        "onTerminalChanged",
        "",
        "loadHistory",
        "applyInitResult",
        "transform",
        "Lkotlin/Function1;",
        "armSettleWatch",
        "sid",
        "sendMessage",
        "text",
        "updateSessionId",
        "id",
        "disposed",
        "dispose",
        "onLivePreviewTick",
        "onDebounceCandidate",
        "endTurnSettled",
        "result",
        "Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;",
        "endTurnFrozen",
        "toBubble",
        "Lcom/hermes/android/chat/ChatBubble;",
        "Lcom/hermes/android/data/HermesHudRepository$ChatMessage;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/hermes/android/chat/ChatSkinState;",
            ">;"
        }
    .end annotation
.end field

.field private final detector:Lcom/hermes/android/chat/TurnDetector;

.field private volatile disposed:Z

.field private final hudRepo:Lcom/hermes/android/data/HermesHudRepository;

.field private initJob:Lkotlinx/coroutines/Job;

.field private final io:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final minSessionStartSec:Ljava/lang/Double;

.field private previewJob:Lkotlinx/coroutines/Job;

.field private previewScheduled:Z

.field private final previewThrottleMs:J

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private volatile sessionId:Ljava/lang/String;

.field private settleJob:Lkotlinx/coroutines/Job;

.field private final settleMaxSlowPollMs:J

.field private final settleNoEvidenceGiveUpMs:J

.field private final settlePollIntervalMs:J

.field private final settleSlowPollIntervalMs:J

.field private final settleTimeoutMs:J

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/chat/ChatSkinState;",
            ">;"
        }
    .end annotation
.end field

.field private final terminal:Lcom/termux/terminal/TerminalSession;

.field private volatile turnSawMidTurn:Z

.field private volatile turnStartEpochMs:Ljava/lang/Long;


# direct methods
.method public static synthetic $r8$lambda$9DcpM24rf3EsHYKHxrKzadSRTgQ(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/chat/ChatSkinController;->_init_$lambda$1(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VDbbj1_Dm-8BX4FG-Iq_FQzAHCA(Lcom/hermes/android/chat/ChatSkinController;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/chat/ChatSkinController;->detector$lambda$0(Lcom/hermes/android/chat/ChatSkinController;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iploDoEZijENIvs_Q7yZfihG2UM(Lcom/hermes/android/chat/ChatSkinController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/chat/ChatSkinController;->_init_$lambda$2(Lcom/hermes/android/chat/ChatSkinController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Double;Lkotlinx/coroutines/CoroutineDispatcher;JJJJJJJ)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p6

    const-string v5, "terminal"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "hudRepo"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "scope"

    invoke-static {p4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "io"

    invoke-static {p6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, v0, Lcom/hermes/android/chat/ChatSkinController;->terminal:Lcom/termux/terminal/TerminalSession;

    .line 37
    iput-object v2, v0, Lcom/hermes/android/chat/ChatSkinController;->hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    .line 39
    iput-object v3, v0, Lcom/hermes/android/chat/ChatSkinController;->scope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p5

    .line 40
    iput-object v1, v0, Lcom/hermes/android/chat/ChatSkinController;->minSessionStartSec:Ljava/lang/Double;

    .line 41
    iput-object v4, v0, Lcom/hermes/android/chat/ChatSkinController;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    move-wide/from16 v1, p9

    .line 44
    iput-wide v1, v0, Lcom/hermes/android/chat/ChatSkinController;->settlePollIntervalMs:J

    move-wide/from16 v1, p11

    .line 45
    iput-wide v1, v0, Lcom/hermes/android/chat/ChatSkinController;->settleTimeoutMs:J

    move-wide/from16 v1, p13

    .line 47
    iput-wide v1, v0, Lcom/hermes/android/chat/ChatSkinController;->settleSlowPollIntervalMs:J

    move-wide/from16 v1, p15

    .line 48
    iput-wide v1, v0, Lcom/hermes/android/chat/ChatSkinController;->settleMaxSlowPollMs:J

    move-wide/from16 v1, p17

    .line 51
    iput-wide v1, v0, Lcom/hermes/android/chat/ChatSkinController;->settleNoEvidenceGiveUpMs:J

    move-wide/from16 v1, p19

    .line 54
    iput-wide v1, v0, Lcom/hermes/android/chat/ChatSkinController;->previewThrottleMs:J

    move-object v1, p3

    .line 57
    iput-object v1, v0, Lcom/hermes/android/chat/ChatSkinController;->sessionId:Ljava/lang/String;

    .line 67
    new-instance v1, Lcom/hermes/android/chat/ChatSkinState;

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p9, v1

    move-object/from16 p10, v5

    move-object/from16 p11, v6

    move-object/from16 p12, v7

    move/from16 p13, v2

    move-object/from16 p14, v4

    invoke-direct/range {p9 .. p14}, Lcom/hermes/android/chat/ChatSkinState;-><init>(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/hermes/android/chat/ChatSkinController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 68
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/hermes/android/chat/ChatSkinController;->state:Lkotlinx/coroutines/flow/StateFlow;

    .line 72
    new-instance v1, Lcom/hermes/android/chat/TurnDetector;

    .line 73
    new-instance v2, Lcom/hermes/android/chat/ChatSkinController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/hermes/android/chat/ChatSkinController$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/chat/ChatSkinController;)V

    move-wide v4, p7

    .line 72
    invoke-direct {v1, v2, v4, v5, p4}, Lcom/hermes/android/chat/TurnDetector;-><init>(Lkotlin/jvm/functions/Function0;JLkotlinx/coroutines/CoroutineScope;)V

    iput-object v1, v0, Lcom/hermes/android/chat/ChatSkinController;->detector:Lcom/hermes/android/chat/TurnDetector;

    .line 83
    new-instance v2, Lcom/hermes/android/chat/ChatSkinController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/hermes/android/chat/ChatSkinController$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/chat/ChatSkinController;)V

    invoke-virtual {v1, v2}, Lcom/hermes/android/chat/TurnDetector;->setOnChunk(Lkotlin/jvm/functions/Function1;)V

    .line 84
    new-instance v2, Lcom/hermes/android/chat/ChatSkinController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/hermes/android/chat/ChatSkinController$$ExternalSyntheticLambda2;-><init>(Lcom/hermes/android/chat/ChatSkinController;)V

    invoke-virtual {v1, v2}, Lcom/hermes/android/chat/TurnDetector;->setOnTurnEnd(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Double;Lkotlinx/coroutines/CoroutineDispatcher;JJJJJJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    .line 41
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x1f4

    move-wide v9, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    const-wide/16 v1, 0x78

    move-wide v11, v1

    goto :goto_3

    :cond_3
    move-wide/from16 v11, p9

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    const-wide/16 v1, 0xbb8

    move-wide v13, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p11

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    const-wide/16 v1, 0x3e8

    move-wide v15, v1

    goto :goto_5

    :cond_5
    move-wide/from16 v15, p13

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    const-wide/32 v1, 0x927c0

    move-wide/from16 v17, v1

    goto :goto_6

    :cond_6
    move-wide/from16 v17, p15

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    const-wide/32 v1, 0xea60

    move-wide/from16 v19, v1

    goto :goto_7

    :cond_7
    move-wide/from16 v19, p17

    :goto_7
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x50

    move-wide/from16 v21, v0

    goto :goto_8

    :cond_8
    move-wide/from16 v21, p19

    :goto_8
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 35
    invoke-direct/range {v2 .. v22}, Lcom/hermes/android/chat/ChatSkinController;-><init>(Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Double;Lkotlinx/coroutines/CoroutineDispatcher;JJJJJJJ)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/hermes/android/chat/ChatSkinController;->onLivePreviewTick()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$2(Lcom/hermes/android/chat/ChatSkinController;)Lkotlin/Unit;
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/hermes/android/chat/ChatSkinController;->onDebounceCandidate()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$armSettleWatch(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/hermes/android/chat/ChatSkinController;->armSettleWatch(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$endTurnFrozen(Lcom/hermes/android/chat/ChatSkinController;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/hermes/android/chat/ChatSkinController;->endTurnFrozen()V

    return-void
.end method

.method public static final synthetic access$endTurnSettled(Lcom/hermes/android/chat/ChatSkinController;Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/hermes/android/chat/ChatSkinController;->endTurnSettled(Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;)V

    return-void
.end method

.method public static final synthetic access$getDetector$p(Lcom/hermes/android/chat/ChatSkinController;)Lcom/hermes/android/chat/TurnDetector;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hermes/android/chat/ChatSkinController;->detector:Lcom/hermes/android/chat/TurnDetector;

    return-object p0
.end method

.method public static final synthetic access$getDisposed$p(Lcom/hermes/android/chat/ChatSkinController;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/hermes/android/chat/ChatSkinController;->disposed:Z

    return p0
.end method

.method public static final synthetic access$getHudRepo$p(Lcom/hermes/android/chat/ChatSkinController;)Lcom/hermes/android/data/HermesHudRepository;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hermes/android/chat/ChatSkinController;->hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    return-object p0
.end method

.method public static final synthetic access$getIo$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hermes/android/chat/ChatSkinController;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getMinSessionStartSec$p(Lcom/hermes/android/chat/ChatSkinController;)Ljava/lang/Double;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hermes/android/chat/ChatSkinController;->minSessionStartSec:Ljava/lang/Double;

    return-object p0
.end method

.method public static final synthetic access$getPreviewThrottleMs$p(Lcom/hermes/android/chat/ChatSkinController;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/hermes/android/chat/ChatSkinController;->previewThrottleMs:J

    return-wide v0
.end method

.method public static final synthetic access$getSessionId$p(Lcom/hermes/android/chat/ChatSkinController;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hermes/android/chat/ChatSkinController;->sessionId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSettleMaxSlowPollMs$p(Lcom/hermes/android/chat/ChatSkinController;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/hermes/android/chat/ChatSkinController;->settleMaxSlowPollMs:J

    return-wide v0
.end method

.method public static final synthetic access$getSettleNoEvidenceGiveUpMs$p(Lcom/hermes/android/chat/ChatSkinController;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/hermes/android/chat/ChatSkinController;->settleNoEvidenceGiveUpMs:J

    return-wide v0
.end method

.method public static final synthetic access$getSettlePollIntervalMs$p(Lcom/hermes/android/chat/ChatSkinController;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/hermes/android/chat/ChatSkinController;->settlePollIntervalMs:J

    return-wide v0
.end method

.method public static final synthetic access$getSettleSlowPollIntervalMs$p(Lcom/hermes/android/chat/ChatSkinController;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/hermes/android/chat/ChatSkinController;->settleSlowPollIntervalMs:J

    return-wide v0
.end method

.method public static final synthetic access$getSettleTimeoutMs$p(Lcom/hermes/android/chat/ChatSkinController;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/hermes/android/chat/ChatSkinController;->settleTimeoutMs:J

    return-wide v0
.end method

.method public static final synthetic access$getTurnSawMidTurn$p(Lcom/hermes/android/chat/ChatSkinController;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/hermes/android/chat/ChatSkinController;->turnSawMidTurn:Z

    return p0
.end method

.method public static final synthetic access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/hermes/android/chat/ChatSkinController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$setPreviewScheduled$p(Lcom/hermes/android/chat/ChatSkinController;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/hermes/android/chat/ChatSkinController;->previewScheduled:Z

    return-void
.end method

.method public static final synthetic access$setSessionId$p(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/hermes/android/chat/ChatSkinController;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setTurnSawMidTurn$p(Lcom/hermes/android/chat/ChatSkinController;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/hermes/android/chat/ChatSkinController;->turnSawMidTurn:Z

    return-void
.end method

.method public static final synthetic access$toBubble(Lcom/hermes/android/chat/ChatSkinController;Lcom/hermes/android/data/HermesHudRepository$ChatMessage;)Lcom/hermes/android/chat/ChatBubble;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/hermes/android/chat/ChatSkinController;->toBubble(Lcom/hermes/android/data/HermesHudRepository$ChatMessage;)Lcom/hermes/android/chat/ChatBubble;

    move-result-object p0

    return-object p0
.end method

.method private final applyInitResult(Lkotlin/jvm/functions/Function1;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hermes/android/chat/ChatSkinState;",
            "Lcom/hermes/android/chat/ChatSkinState;",
            ">;)Z"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/hermes/android/chat/InitApplyGate;->INSTANCE:Lcom/hermes/android/chat/InitApplyGate;

    invoke-static {p0}, Lcom/hermes/android/chat/ChatSkinController;->access$getDisposed$p(Lcom/hermes/android/chat/ChatSkinController;)Z

    move-result v1

    invoke-static {p0}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    invoke-virtual {v2}, Lcom/hermes/android/chat/ChatSkinState;->getPhase()Lcom/hermes/android/chat/ChatSkinState$Phase;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hermes/android/chat/InitApplyGate;->canApply(ZLcom/hermes/android/chat/ChatSkinState$Phase;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 192
    :cond_0
    invoke-static {p0}, Lcom/hermes/android/chat/ChatSkinController;->access$get_state$p(Lcom/hermes/android/chat/ChatSkinController;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    .line 450
    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 451
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 452
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1
.end method

.method private final armSettleWatch(Ljava/lang/String;)V
    .locals 9

    .line 201
    iget-boolean v0, p0, Lcom/hermes/android/chat/ChatSkinController;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->settleJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 203
    :cond_1
    iget-object v3, p0, Lcom/hermes/android/chat/ChatSkinController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/hermes/android/chat/ChatSkinController$armSettleWatch$1;-><init>(Lcom/hermes/android/chat/ChatSkinController;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/chat/ChatSkinController;->settleJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final detector$lambda$0(Lcom/hermes/android/chat/ChatSkinController;)Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/hermes/android/chat/ChatSkinController;->terminal:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getTranscriptText()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final endTurnFrozen()V
    .locals 3

    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->turnStartEpochMs:Ljava/lang/Long;

    .line 349
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 469
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 470
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    .line 349
    invoke-virtual {v2}, Lcom/hermes/android/chat/ChatSkinState;->freezeLiveIntoHistory()Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v2

    .line 471
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method private final endTurnSettled(Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;)V
    .locals 6

    const/4 v0, 0x0

    .line 343
    iput-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->turnStartEpochMs:Ljava/lang/Long;

    .line 344
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 460
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 461
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    .line 344
    invoke-virtual {p1}, Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;->getMessages()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 462
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 463
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 464
    check-cast v5, Lcom/hermes/android/data/HermesHudRepository$ChatMessage;

    .line 344
    invoke-direct {p0, v5}, Lcom/hermes/android/chat/ChatSkinController;->toBubble(Lcom/hermes/android/data/HermesHudRepository$ChatMessage;)Lcom/hermes/android/chat/ChatBubble;

    move-result-object v5

    .line 464
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 344
    invoke-virtual {v2, v4}, Lcom/hermes/android/chat/ChatSkinState;->onTurnEnd(Ljava/util/List;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v2

    .line 466
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method private final onDebounceCandidate()V
    .locals 10

    .line 296
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->settleJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->turnStartEpochMs:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 299
    iget-object v4, p0, Lcom/hermes/android/chat/ChatSkinController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;

    invoke-direct {v0, v2, v3, p0, v1}, Lcom/hermes/android/chat/ChatSkinController$onDebounceCandidate$1;-><init>(JLcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->settleJob:Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method private final onLivePreviewTick()V
    .locals 7

    .line 266
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->turnStartEpochMs:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/hermes/android/chat/ChatSkinController;->previewScheduled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/hermes/android/chat/ChatSkinController;->previewScheduled:Z

    .line 269
    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/hermes/android/chat/ChatSkinController$onLivePreviewTick$1;-><init>(Lcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->previewJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final toBubble(Lcom/hermes/android/data/HermesHudRepository$ChatMessage;)Lcom/hermes/android/chat/ChatBubble;
    .locals 3

    .line 353
    sget-object v0, Lcom/hermes/android/chat/ChatSkinBubbleMapper;->INSTANCE:Lcom/hermes/android/chat/ChatSkinBubbleMapper;

    invoke-virtual {p1}, Lcom/hermes/android/data/HermesHudRepository$ChatMessage;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hermes/android/data/HermesHudRepository$ChatMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hermes/android/data/HermesHudRepository$ChatMessage;->getToolName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/hermes/android/chat/ChatSkinBubbleMapper;->toBubble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/chat/ChatBubble;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/hermes/android/chat/ChatSkinController;->disposed:Z

    .line 247
    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinController;->detector:Lcom/hermes/android/chat/TurnDetector;

    invoke-virtual {v1}, Lcom/hermes/android/chat/TurnDetector;->cancel()V

    .line 248
    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinController;->initJob:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinController;->settleJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_1

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinController;->previewJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    invoke-static {v1, v2, v0, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/hermes/android/chat/ChatSkinController;->previewScheduled:Z

    return-void
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/chat/ChatSkinState;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final loadHistory()V
    .locals 9

    .line 108
    iget-boolean v0, p0, Lcom/hermes/android/chat/ChatSkinController;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/chat/ChatSkinState;

    invoke-virtual {v0}, Lcom/hermes/android/chat/ChatSkinState;->getPhase()Lcom/hermes/android/chat/ChatSkinState$Phase;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/hermes/android/chat/ChatSkinState$Phase;->SENDING:Lcom/hermes/android/chat/ChatSkinState$Phase;

    if-eq v0, v1, :cond_4

    .line 118
    sget-object v1, Lcom/hermes/android/chat/ChatSkinState$Phase;->WAITING_RESPONSE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 445
    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 446
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    .line 120
    sget-object v5, Lcom/hermes/android/chat/ChatSkinState$Phase;->INITIALIZING:Lcom/hermes/android/chat/ChatSkinState$Phase;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/hermes/android/chat/ChatSkinState;->copy$default(Lcom/hermes/android/chat/ChatSkinState;Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;ILjava/lang/Object;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v2

    .line 447
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->initJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/hermes/android/chat/ChatSkinController;->scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;

    invoke-direct {v0, p0, v1}, Lcom/hermes/android/chat/ChatSkinController$loadHistory$2;-><init>(Lcom/hermes/android/chat/ChatSkinController;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->initJob:Lkotlinx/coroutines/Job;

    :cond_4
    :goto_0
    return-void
.end method

.method public final onTerminalChanged()V
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/hermes/android/chat/ChatSkinController;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->detector:Lcom/hermes/android/chat/TurnDetector;

    invoke-virtual {v0}, Lcom/hermes/android/chat/TurnDetector;->onTerminalChanged()V

    return-void
.end method

.method public final sendMessage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-boolean v0, p0, Lcom/hermes/android/chat/ChatSkinController;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 220
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/chat/ChatSkinState;

    invoke-virtual {v0}, Lcom/hermes/android/chat/ChatSkinState;->getPhase()Lcom/hermes/android/chat/ChatSkinState$Phase;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/chat/ChatSkinState$Phase;->IDLE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    if-eq v0, v1, :cond_2

    return-void

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->settleJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 225
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->turnStartEpochMs:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/hermes/android/chat/ChatSkinController;->turnSawMidTurn:Z

    .line 227
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 455
    :cond_4
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 456
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/chat/ChatSkinState;

    .line 227
    invoke-virtual {v2, p1}, Lcom/hermes/android/chat/ChatSkinState;->onUserSend(Ljava/lang/String;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v2

    .line 457
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->detector:Lcom/hermes/android/chat/TurnDetector;

    invoke-virtual {v0, p1}, Lcom/hermes/android/chat/TurnDetector;->markTurnStart(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinController;->terminal:Lcom/termux/terminal/TerminalSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\r"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final updateSessionId(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/hermes/android/chat/ChatSkinController;->sessionId:Ljava/lang/String;

    return-void
.end method
