.class final Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1225#2,6:5578\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1\n*L\n4495#1:5578,6\n*E\n"
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
.field final synthetic $activeIdx:I

.field final synthetic $altSticky$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $sessionManager:Lcom/hermes/android/TerminalSessionManager;

.field final synthetic $sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
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
.method public static synthetic $r8$lambda$k5w7poXh1qtV-6F1iEC1PSoS-7c(ILcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/material3/DrawerState;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->invoke$lambda$1$lambda$0(ILcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/material3/DrawerState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/List;ILcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;I",
            "Lcom/hermes/android/TerminalSessionManager;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/termux/terminal/TerminalSession;",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/material3/DrawerState;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/termux/view/TerminalView;",
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
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessions:Ljava/util/List;

    iput p2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$activeIdx:I

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(ILcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/material3/DrawerState;)Lkotlin/Unit;
    .locals 11

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move v10, p0

    .line 4495
    invoke-static/range {v0 .. v10}, Lcom/hermes/android/MainActivityKt;->access$TerminalTabContent$switchToSession(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/material3/DrawerState;I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4491
    check-cast p1, Landroidx/compose/foundation/lazy/LazyItemScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/lazy/LazyItemScope;ILandroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v13, p2

    move-object/from16 v15, p3

    const-string v1, "$this$items"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x30

    const/16 v2, 0x20

    if-nez v1, :cond_1

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int v1, p4, v1

    goto :goto_1

    :cond_1
    move/from16 v1, p4

    :goto_1
    and-int/lit16 v3, v1, 0x91

    const/16 v4, 0x90

    if-ne v3, v4, :cond_3

    .line 4492
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 4546
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 4492
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    const-string v4, "com.hermes.android.TerminalTabContent.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:4491)"

    const v5, -0x15cd08fe

    invoke-static {v5, v1, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessions:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 4493
    iget v3, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$activeIdx:I

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-ne v13, v3, :cond_5

    move/from16 v18, v12

    goto :goto_3

    :cond_5
    move/from16 v18, v4

    .line 4496
    :goto_3
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    if-eqz v18, :cond_6

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v19

    const/16 v25, 0xe

    const/16 v26, 0x0

    const v21, 0x3df5c28f    # 0.12f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v19 .. v26}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v5

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v5

    :goto_4
    move-wide/from16 v21, v5

    .line 4497
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v3, Landroidx/compose/ui/Modifier;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v12, v6}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v30

    const v3, -0x4fc9d2b5

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    and-int/lit8 v1, v1, 0x70

    if-ne v1, v2, :cond_7

    move v4, v12

    :cond_7
    or-int v1, v3, v4

    .line 4495
    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    .line 5578
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v1, :cond_8

    .line 5579
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v12, v1, :cond_9

    .line 4495
    :cond_8
    new-instance v12, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1$$ExternalSyntheticLambda0;

    move-object v1, v12

    move-object/from16 v17, v2

    move/from16 v2, p2

    move-object v13, v12

    move-object/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1$$ExternalSyntheticLambda0;-><init>(ILcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/material3/DrawerState;)V

    .line 5581
    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v12, v13

    .line 4495
    :cond_9
    move-object/from16 v17, v12

    check-cast v17, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 4498
    new-instance v13, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1$2;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessions:Ljava/util/List;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v1, v13

    move-object/from16 v19, v2

    move/from16 v2, v16

    move-object/from16 v16, v3

    move/from16 v3, p2

    move-object/from16 v20, v4

    move-object v4, v14

    move-object v14, v5

    move/from16 v5, v18

    move-object v0, v13

    move-object v13, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v16

    move-object/from16 v16, v19

    invoke-direct/range {v1 .. v16}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1$2$1$1$2;-><init>(ZILjava/lang/String;ZLjava/util/List;Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V

    const/16 v1, 0x36

    const v2, -0x61fa94b3

    move-object/from16 v3, p3

    const/4 v4, 0x1

    invoke-static {v2, v4, v0, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Lkotlin/jvm/functions/Function2;

    const/16 v32, 0x6

    const/16 v33, 0x3ec

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x30

    move-object/from16 v18, v30

    move-object/from16 v30, p3

    .line 4494
    invoke-static/range {v17 .. v33}, Landroidx/compose/material3/SurfaceKt;->Surface-o_FOJdg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    :goto_5
    return-void
.end method
