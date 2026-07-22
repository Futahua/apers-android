.class public final Lcom/hermes/android/ui/moa/MoaCouncilViewModel;
.super Ljava/lang/Object;
.source "MoaCouncilViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/ui/moa/MoaCouncilViewModel$Companion;,
        Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;,
        Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoaCouncilViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n168#1:297\n168#1:304\n168#1:311\n168#1:320\n168#1:327\n168#1:334\n168#1:344\n168#1:351\n168#1:361\n230#2,5:257\n230#2,5:262\n230#2,5:275\n230#2,5:282\n230#2,5:287\n230#2,5:292\n230#2,3:298\n233#2,2:302\n230#2,3:305\n233#2,2:309\n230#2,3:312\n233#2,2:318\n230#2,3:321\n233#2,2:325\n230#2,3:328\n233#2,2:332\n230#2,3:335\n233#2,2:339\n230#2,3:345\n233#2,2:349\n230#2,3:352\n233#2,2:356\n230#2,3:362\n233#2,2:366\n230#2,5:368\n774#3:267\n865#3,2:268\n1557#3:270\n1628#3,3:271\n295#3,2:280\n295#3,2:316\n774#3:341\n865#3,2:342\n1755#3,3:358\n1#4:274\n1#4:301\n1#4:308\n1#4:315\n1#4:324\n1#4:331\n1#4:338\n1#4:348\n1#4:355\n1#4:365\n*S KotlinDebug\n*F\n+ 1 MoaCouncilViewModel.kt\ncom/hermes/android/ui/moa/MoaCouncilViewModel\n*L\n170#1:297\n174#1:304\n178#1:311\n183#1:320\n187#1:327\n198#1:334\n203#1:344\n207#1:351\n213#1:361\n116#1:257,5\n117#1:262,5\n147#1:275,5\n154#1:282,5\n165#1:287,5\n168#1:292,5\n170#1:298,3\n170#1:302,2\n174#1:305,3\n174#1:309,2\n178#1:312,3\n178#1:318,2\n183#1:321,3\n183#1:325,2\n187#1:328,3\n187#1:332,2\n198#1:335,3\n198#1:339,2\n203#1:345,3\n203#1:349,2\n207#1:352,3\n207#1:356,2\n213#1:362,3\n213#1:366,2\n249#1:368,5\n143#1:267\n143#1:268,2\n144#1:270\n144#1:271,3\n153#1:280,2\n179#1:316,2\n201#1:341\n201#1:342,2\n211#1:358,3\n170#1:301\n174#1:308\n178#1:315\n183#1:324\n187#1:331\n198#1:338\n203#1:348\n207#1:355\n213#1:365\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 32\u00020\u0001:\u0003123B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0012J\u000e\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u001e\u001a\u00020\u0012J\u001d\u0010\u001f\u001a\u00020\u00122\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!H\u0082\u0008J\u000e\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0017J\u0016\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)J\u0006\u0010*\u001a\u00020\u0012J\u000e\u0010+\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\'J\u000e\u0010,\u001a\u00020\u00122\u0006\u0010(\u001a\u00020)J\u0016\u0010-\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u00064"
    }
    d2 = {
        "Lcom/hermes/android/ui/moa/MoaCouncilViewModel;",
        "",
        "repo",
        "Lcom/hermes/android/data/HermesConfigRepository;",
        "hermesDir",
        "Ljava/io/File;",
        "io",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "<init>",
        "(Lcom/hermes/android/data/HermesConfigRepository;Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "_state",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;",
        "state",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "refresh",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "usePreset",
        "name",
        "",
        "fixStaleInUse",
        "requestDelete",
        "cancelDelete",
        "confirmDelete",
        "openCreate",
        "openEdit",
        "closeEditor",
        "updateEditor",
        "block",
        "Lkotlin/Function1;",
        "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;",
        "editorSetName",
        "v",
        "editorSetReference",
        "index",
        "",
        "slot",
        "Lcom/hermes/android/data/MoaSlot;",
        "editorAddReference",
        "editorRemoveReference",
        "editorSetAggregator",
        "save",
        "useNow",
        "",
        "dismissError",
        "UiState",
        "EditorState",
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

.field public static final Companion:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$Companion;

.field public static final LAST_PRESET_SENTINEL:Ljava/lang/String; = "__moa_last_preset__"


# instance fields
.field private final _state:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;",
            ">;"
        }
    .end annotation
.end field

.field private final hermesDir:Ljava/io/File;

.field private final io:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final repo:Lcom/hermes/android/data/HermesConfigRepository;

.field private final state:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->Companion:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/data/HermesConfigRepository;Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "repo"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "hermesDir"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "io"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->repo:Lcom/hermes/android/data/HermesConfigRepository;

    .line 30
    iput-object v2, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->hermesDir:Ljava/io/File;

    .line 31
    iput-object v3, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 62
    new-instance v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    const/16 v15, 0x1ff

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;-><init>(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 63
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hermes/android/data/HermesConfigRepository;Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    .line 28
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;-><init>(Lcom/hermes/android/data/HermesConfigRepository;Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void
.end method

.method public static final synthetic access$getHermesDir$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Ljava/io/File;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->hermesDir:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getRepo$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lcom/hermes/android/data/HermesConfigRepository;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->repo:Lcom/hermes/android/data/HermesConfigRepository;

    return-object p0
.end method

.method public static final synthetic access$get_state$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method private final updateEditor(Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 168
    iget-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 293
    :cond_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 294
    move-object v15, v2

    check-cast v15, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 168
    invoke-virtual {v15}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v14, p1

    invoke-interface {v14, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    const/16 v13, 0x1bf

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, v15

    move-object/from16 v14, v16

    invoke-static/range {v3 .. v14}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v15, v3

    .line 295
    :cond_2
    :goto_0
    invoke-interface {v1, v2, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method


# virtual methods
.method public final cancelDelete()V
    .locals 14

    .line 117
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 263
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 264
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 117
    invoke-static/range {v2 .. v13}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v2

    .line 265
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final closeEditor()V
    .locals 14

    .line 165
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 288
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 289
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    const/16 v12, 0x1bf

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 165
    invoke-static/range {v2 .. v13}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v2

    .line 290
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final confirmDelete(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 8

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getPendingDelete()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$confirmDelete$1;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final dismissError()V
    .locals 14

    .line 249
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 369
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 370
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    const/16 v12, 0x17f

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 249
    invoke-static/range {v2 .. v13}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v2

    .line 371
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final editorAddReference()V
    .locals 15

    .line 311
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 313
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 314
    move-object v14, v1

    check-cast v14, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 311
    invoke-virtual {v14}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 179
    iget-object v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    invoke-virtual {v3}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getCandidates()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 316
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/hermes/android/data/SlotCandidate;

    .line 179
    invoke-virtual {v5}, Lcom/hermes/android/data/SlotCandidate;->getConfigured()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Lcom/hermes/android/data/SlotCandidate;

    .line 180
    invoke-virtual {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getReferences()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-instance v5, Lcom/hermes/android/data/MoaSlot;

    const-string v6, ""

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/hermes/android/data/SlotCandidate;->getProviderSlug()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_3
    move-object v7, v6

    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/hermes/android/data/SlotCandidate;->getDefaultModel()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move-object v6, v4

    :cond_6
    :goto_1
    invoke-direct {v5, v7, v6}, Lcom/hermes/android/data/MoaSlot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/16 v11, 0xf7

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v12}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v9

    const/16 v12, 0x1bf

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v2, v14

    .line 311
    invoke-static/range {v2 .. v13}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v14, v2

    .line 318
    :cond_8
    :goto_2
    invoke-interface {v0, v1, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final editorRemoveReference(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 320
    iget-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 322
    :cond_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 323
    move-object v15, v2

    check-cast v15, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 320
    invoke-virtual {v15}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 184
    invoke-virtual {v3}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getReferences()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v7

    move/from16 v14, p1

    invoke-interface {v7, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/16 v12, 0x77

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v3 .. v13}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v10

    const/16 v13, 0x1bf

    const/16 v16, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v3, v15

    move-object/from16 v14, v16

    .line 320
    invoke-static/range {v3 .. v14}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v15, v3

    .line 325
    :cond_2
    :goto_0
    invoke-interface {v1, v2, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void
.end method

.method public final editorSetAggregator(Lcom/hermes/android/data/MoaSlot;)V
    .locals 28

    const-string v0, "slot"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 327
    iget-object v13, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 329
    :cond_0
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 330
    move-object/from16 v27, v14

    check-cast v27, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 327
    invoke-virtual/range {v27 .. v27}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v10, 0xef

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p1

    .line 187
    invoke-static/range {v1 .. v11}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v22

    const/16 v25, 0x1bf

    const/16 v26, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v15, v27

    .line 327
    invoke-static/range {v15 .. v26}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    move-object/from16 v1, v27

    .line 332
    :cond_2
    invoke-interface {v13, v14, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final editorSetName(Ljava/lang/String;)V
    .locals 28

    const-string v0, "v"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 297
    iget-object v13, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 299
    :cond_0
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 300
    move-object/from16 v27, v14

    check-cast v27, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 297
    invoke-virtual/range {v27 .. v27}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v10, 0xb9

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    .line 171
    invoke-static/range {v1 .. v11}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v22

    const/16 v25, 0x1bf

    const/16 v26, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v15, v27

    .line 297
    invoke-static/range {v15 .. v26}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    move-object/from16 v1, v27

    .line 302
    :cond_2
    invoke-interface {v13, v14, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final editorSetReference(ILcom/hermes/android/data/MoaSlot;)V
    .locals 18

    move-object/from16 v0, p2

    const-string v1, "slot"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 304
    iget-object v2, v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 306
    :cond_0
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 307
    move-object/from16 v16, v3

    check-cast v16, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 304
    invoke-virtual/range {v16 .. v16}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 175
    invoke-virtual {v4}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getReferences()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    move/from16 v15, p1

    invoke-interface {v8, v15, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/16 v13, 0x77

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v4 .. v14}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v11

    const/16 v14, 0x1bf

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v4, v16

    move-object/from16 v15, v17

    .line 304
    invoke-static/range {v4 .. v15}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    move-object/from16 v4, v16

    .line 309
    :cond_2
    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void
.end method

.method public final fixStaleInUse(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getSection()Lcom/hermes/android/data/MoaSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hermes/android/data/MoaSection;->getDefaultPreset()Ljava/lang/String;

    move-result-object v0

    .line 113
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->usePreset(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->state:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final openCreate()V
    .locals 19

    move-object/from16 v0, p0

    .line 143
    iget-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    invoke-virtual {v1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getCandidates()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 268
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hermes/android/data/SlotCandidate;

    .line 143
    invoke-virtual {v4}, Lcom/hermes/android/data/SlotCandidate;->getConfigured()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 144
    move-object v1, v2

    check-cast v1, Ljava/lang/Iterable;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 270
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 271
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 272
    check-cast v4, Lcom/hermes/android/data/SlotCandidate;

    .line 144
    new-instance v5, Lcom/hermes/android/data/MoaSlot;

    invoke-virtual {v4}, Lcom/hermes/android/data/SlotCandidate;->getProviderSlug()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/hermes/android/data/SlotCandidate;->getDefaultModel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/hermes/android/data/MoaSlot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 273
    :cond_2
    check-cast v3, Ljava/util/List;

    .line 145
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hermes/android/data/SlotCandidate;

    if-eqz v1, :cond_3

    new-instance v2, Lcom/hermes/android/data/MoaSlot;

    invoke-virtual {v1}, Lcom/hermes/android/data/SlotCandidate;->getProviderSlug()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/hermes/android/data/SlotCandidate;->getDefaultModel()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/hermes/android/data/MoaSlot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 146
    :cond_3
    new-instance v2, Lcom/hermes/android/data/MoaSlot;

    const-string v1, ""

    invoke-direct {v2, v1, v1}, Lcom/hermes/android/data/MoaSlot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_2
    iget-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 276
    :cond_4
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 277
    move-object v5, v4

    check-cast v5, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 148
    new-instance v18, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    const/16 v16, 0xe4

    const/16 v17, 0x0

    const/4 v8, 0x1

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, v18

    move-object v11, v3

    move-object v12, v2

    invoke-direct/range {v7 .. v17}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;-><init>(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v15, 0x1bf

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, v18

    invoke-static/range {v5 .. v16}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v5

    .line 278
    invoke-interface {v1, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void
.end method

.method public final openEdit(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v2, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    invoke-virtual {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getSection()Lcom/hermes/android/data/MoaSection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hermes/android/data/MoaSection;->getPresets()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 280
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hermes/android/data/MoaPreset;

    .line 153
    invoke-virtual {v4}, Lcom/hermes/android/data/MoaPreset;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lcom/hermes/android/data/MoaPreset;

    if-nez v3, :cond_2

    return-void

    .line 154
    :cond_2
    iget-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 283
    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 284
    move-object v15, v2

    check-cast v15, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 155
    new-instance v16, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    .line 157
    invoke-virtual {v3}, Lcom/hermes/android/data/MoaPreset;->getName()Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-virtual {v3}, Lcom/hermes/android/data/MoaPreset;->getReferenceModels()Ljava/util/List;

    move-result-object v8

    .line 159
    invoke-virtual {v3}, Lcom/hermes/android/data/MoaPreset;->getAggregator()Lcom/hermes/android/data/MoaSlot;

    move-result-object v9

    const/16 v13, 0xc4

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, v16

    move-object v10, v3

    .line 155
    invoke-direct/range {v4 .. v14}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;-><init>(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v14, 0x1bf

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v4, v15

    move-object/from16 v11, v16

    move-object/from16 v15, v17

    invoke-static/range {v4 .. v15}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v4

    .line 285
    invoke-interface {v1, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void
.end method

.method public final refresh(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 7

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$refresh$1;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final requestDelete(Ljava/lang/String;)V
    .locals 14

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 258
    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 259
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, p1

    .line 116
    invoke-static/range {v2 .. v13}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v2

    .line 260
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final save(Lkotlinx/coroutines/CoroutineScope;Z)V
    .locals 20

    move-object/from16 v7, p0

    const-string v0, "scope"

    move-object/from16 v8, p1

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v0, v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/hermes/android/data/MoaNormalize;->INSTANCE:Lcom/hermes/android/data/MoaNormalize;

    invoke-virtual {v1, v5}, Lcom/hermes/android/data/MoaNormalize;->isValidPresetName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 334
    iget-object v1, v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 336
    :cond_1
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 337
    move-object v2, v0

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 334
    invoke-virtual {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 198
    sget v3, Lcom/hermes/android/R$string;->moa_editor_name_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v17, 0xfb

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v8 .. v18}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v15

    const/16 v18, 0x1bf

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v8, v2

    .line 334
    invoke-static/range {v8 .. v19}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 339
    :cond_3
    :goto_0
    invoke-interface {v1, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 201
    :cond_4
    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getReferences()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 342
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hermes/android/data/MoaSlot;

    .line 201
    invoke-virtual {v4}, Lcom/hermes/android/data/MoaSlot;->getProvider()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Lcom/hermes/android/data/MoaSlot;->getModel()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 342
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    :cond_6
    move-object v1, v2

    check-cast v1, Ljava/util/List;

    .line 202
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 344
    iget-object v2, v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 346
    :cond_7
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 347
    move-object v1, v0

    check-cast v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 344
    invoke-virtual {v1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 203
    sget v3, Lcom/hermes/android/R$string;->moa_editor_min_ref_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x7f

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v18}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v15

    const/16 v18, 0x1bf

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v1

    .line 344
    invoke-static/range {v8 .. v19}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, v3

    .line 349
    :cond_9
    :goto_2
    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 206
    :cond_a
    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getAggregator()Lcom/hermes/android/data/MoaSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hermes/android/data/MoaSlot;->getProvider()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getAggregator()Lcom/hermes/android/data/MoaSlot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hermes/android/data/MoaSlot;->getModel()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_7

    .line 210
    :cond_b
    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 211
    iget-object v2, v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    invoke-virtual {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getSection()Lcom/hermes/android/data/MoaSection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hermes/android/data/MoaSection;->getPresets()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 358
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_c

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_4

    .line 359
    :cond_c
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hermes/android/data/MoaPreset;

    .line 211
    invoke-virtual {v3}, Lcom/hermes/android/data/MoaPreset;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 212
    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getOverwriteConfirmNeeded()Z

    move-result v2

    if-nez v2, :cond_11

    .line 361
    iget-object v2, v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 363
    :cond_e
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 364
    move-object v1, v0

    check-cast v1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 361
    invoke-virtual {v1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v8

    if-eqz v8, :cond_10

    const/16 v17, 0xbf

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 213
    invoke-static/range {v8 .. v18}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v15

    const/16 v18, 0x1bf

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v8, v1

    .line 361
    invoke-static/range {v8 .. v19}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v3

    if-nez v3, :cond_f

    goto :goto_3

    :cond_f
    move-object v1, v3

    .line 366
    :cond_10
    :goto_3
    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 219
    :cond_11
    :goto_4
    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getOriginal()Lcom/hermes/android/data/MoaPreset;

    move-result-object v2

    if-nez v2, :cond_12

    new-instance v2, Lcom/hermes/android/data/MoaPreset;

    .line 220
    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getAggregator()Lcom/hermes/android/data/MoaSlot;

    move-result-object v12

    const/16 v18, 0xf8

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v2

    move-object v10, v5

    move-object v11, v1

    .line 219
    invoke-direct/range {v9 .. v19}, Lcom/hermes/android/data/MoaPreset;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;ZLjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_12
    move-object v9, v2

    .line 221
    :goto_5
    invoke-virtual {v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->getAggregator()Lcom/hermes/android/data/MoaSlot;

    move-result-object v12

    const/16 v18, 0xf8

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v5

    move-object v11, v1

    invoke-static/range {v9 .. v19}, Lcom/hermes/android/data/MoaPreset;->copy$default(Lcom/hermes/android/data/MoaPreset;Ljava/lang/String;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;ZLjava/util/Map;ILjava/lang/Object;)Lcom/hermes/android/data/MoaPreset;

    move-result-object v3

    if-eqz p2, :cond_13

    .line 227
    sget-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    invoke-virtual {v0}, Lcom/hermes/android/ProviderSwitchCoordinator;->onSelected()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_6

    :cond_13
    const/4 v0, 0x0

    :goto_6
    move-object v4, v0

    .line 228
    iget-object v0, v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$save$5;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/data/MoaPreset;Ljava/lang/Long;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v10

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 351
    :cond_14
    :goto_7
    iget-object v0, v7, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->_state:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 353
    :cond_15
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 354
    move-object v2, v1

    check-cast v2, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    .line 351
    invoke-virtual {v2}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v8

    if-eqz v8, :cond_17

    .line 207
    sget v3, Lcom/hermes/android/R$string;->moa_editor_aggregator_error:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x7f

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v18}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v15

    const/16 v18, 0x1bf

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v2

    .line 351
    invoke-static/range {v8 .. v19}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v3

    if-nez v3, :cond_16

    goto :goto_8

    :cond_16
    move-object v2, v3

    .line 356
    :cond_17
    :goto_8
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-void
.end method

.method public final usePreset(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;)V
    .locals 12

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    invoke-virtual {v0}, Lcom/hermes/android/ProviderSwitchCoordinator;->onSelected()J

    move-result-wide v4

    .line 98
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->io:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function2;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move-object v7, v0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
