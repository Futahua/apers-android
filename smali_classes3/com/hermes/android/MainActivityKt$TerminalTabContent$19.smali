.class final Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->TerminalTabContent(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$TerminalTabContent$19\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,5577:1\n149#2:5578\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$TerminalTabContent$19\n*L\n4450#1:5578\n*E\n"
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
.method constructor <init>(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/compose/runtime/MutableIntState;",
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    move-object v1, p2

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$context:Landroidx/appcompat/app/AppCompatActivity;

    move-object v1, p3

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v1, p4

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p5

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$drawerState:Landroidx/compose/material3/DrawerState;

    move-object v1, p6

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    move-object v1, p7

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v1, p8

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p9

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p10

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p11

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p12

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$showMaxSessionsAlert$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p13

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$previewSessionId$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4447
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 4448
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4711
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 4448
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.hermes.android.TerminalTabContent.<anonymous> (MainActivity.kt:4447)"

    const v4, -0x7c20989a

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const-wide v1, 0xff1a1a2eL

    .line 4449
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v5

    .line 4450
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x104

    int-to-float v2, v2

    .line 5578
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 4450
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 4451
    new-instance v1, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1;

    move-object v7, v1

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$clipboardImageInjectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$drawerState:Landroidx/compose/material3/DrawerState;

    iget-object v13, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v14, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$sessionListVersion$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v15, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$terminalView$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$terminalScrolledUp$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$ctrlSticky$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$altSticky$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$showMaxSessionsAlert$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$hermesLaunched$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$hermesResponseCount$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$showSqliteError$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19;->$previewSessionId$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v23, v2

    invoke-direct/range {v7 .. v23}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$19$1;-><init>(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/concurrent/atomic/AtomicReference;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/DrawerState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const/16 v2, 0x36

    const v4, -0x5de779f6

    const/4 v7, 0x1

    move-object/from16 v12, p1

    invoke-static {v4, v7, v1, v12, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function3;

    const v13, 0x180186

    const/16 v14, 0x3a

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4448
    invoke-static/range {v3 .. v14}, Landroidx/compose/material3/NavigationDrawerKt;->ModalDrawerSheet-afqeVBk(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
