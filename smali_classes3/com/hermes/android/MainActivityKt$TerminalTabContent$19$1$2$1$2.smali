.class final Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1#2:5578\n1225#3,6:5579\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2\n*L\n4570#1:5579,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $altSticky$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/termux/terminal/TerminalSession;",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $drawerState:Landroidx/compose/material3/DrawerState;

.field final synthetic $hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $hudRepo:Lcom/hermes/android/data/HermesHudRepository;

.field final synthetic $pastSessions$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $previewSessionId$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $sessionManager:Lcom/hermes/android/TerminalSessionManager;

.field final synthetic $showMaxSessionsAlert$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showSqliteError$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $terminalView$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/termux/view/TerminalView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8Hxc2QTDGSHhsjsvbg7RNjVSw-w(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p15}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->invoke$lambda$2$lambda$1(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/data/HermesHudRepository;Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/BootstrapManager;Landroidx/compose/material3/DrawerState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/HermesHudRepository;",
            "Lcom/hermes/android/TerminalSessionManager;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/termux/terminal/TerminalSession;",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/compose/material3/DrawerState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/termux/view/TerminalView;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    move-object v1, p2

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    move-object v1, p3

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$context:Landroidx/appcompat/app/AppCompatActivity;

    move-object v1, p4

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v1, p5

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p6

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    move-object v1, p7

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    move-object v1, p8

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$pastSessions$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p9

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p10

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$showMaxSessionsAlert$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p11

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p12

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v1, p13

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$previewSessionId$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 16

    .line 4572
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/data/HermesHudRepository$SessionInfo;->getId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    invoke-static/range {v0 .. v15}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$resumeHermesSession(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Ljava/lang/String;)V

    .line 4573
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4565
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v14, p3

    const-string v2, "$this$items"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, p4, 0x30

    if-nez v2, :cond_1

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    or-int v2, p4, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p4

    :goto_1
    and-int/lit16 v3, v2, 0x91

    const/16 v4, 0x90

    if-ne v3, v4, :cond_3

    .line 4566
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 4634
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 4566
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    const-string v4, "com.hermes.android.TerminalTabContent.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:4565)"

    const v5, 0x36b62fb9

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$pastSessions$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1;->access$invoke$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    .line 4567
    invoke-virtual {v3}, Lcom/hermes/android/data/HermesHudRepository$SessionInfo;->getFirstUserMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Lcom/hermes/android/data/HermesHudRepository$SessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Session "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 4568
    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    invoke-virtual {v3}, Lcom/hermes/android/data/HermesHudRepository$SessionInfo;->getSessionStart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hermes/android/data/HermesHudRepository;->formatSessionTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4574
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v32

    .line 4575
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    invoke-static {v1, v2, v11, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v34

    const v1, -0x4fc795de

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v14, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 4570
    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$showMaxSessionsAlert$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v13, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v15, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 p2, v8

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 p4, v7

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    iget-object v14, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    move-object/from16 v29, v14

    iget-object v14, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v30, v14

    iget-object v14, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v16, v15

    .line 5579
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v1, :cond_7

    .line 5580
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v15, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object/from16 v14, p3

    goto :goto_4

    .line 4570
    :cond_7
    :goto_3
    new-instance v1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$$ExternalSyntheticLambda0;

    move-object/from16 v25, v16

    move-object v15, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v26, v11

    move-object/from16 v27, v8

    move-object/from16 v28, v7

    move-object/from16 v31, v14

    invoke-direct/range {v15 .. v31}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V

    move-object/from16 v14, p3

    .line 5582
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 4570
    :goto_4
    move-object v1, v15

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 4576
    new-instance v11, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$drawerState:Landroidx/compose/material3/DrawerState;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$hudRepo:Lcom/hermes/android/data/HermesHudRepository;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$previewSessionId$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v2, v11

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v10}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$2$2;-><init>(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/data/HermesHudRepository;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V

    const/16 v2, 0x36

    const v3, 0x3fbcbd44

    const/4 v4, 0x1

    invoke-static {v3, v4, v11, v14, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/16 v16, 0x6

    const/16 v17, 0x3ec

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v15, 0x6030

    move-object/from16 v2, v34

    move-wide/from16 v5, v32

    move-object/from16 v14, p3

    .line 4569
    invoke-static/range {v1 .. v17}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    :goto_5
    return-void
.end method
