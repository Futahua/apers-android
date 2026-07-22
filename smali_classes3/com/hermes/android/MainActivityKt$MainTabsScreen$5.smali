.class final Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->MainTabsScreen(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AdManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$MainTabsScreen$5\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 Composer.kt\nandroidx/compose/runtime/Updater\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n71#2:5578\n68#2,6:5579\n74#2:5613\n78#2:5665\n79#3,6:5585\n86#3,4:5600\n90#3,2:5610\n94#3:5664\n368#4,9:5591\n377#4:5612\n378#4,2:5662\n4034#5,6:5604\n1225#6,6:5614\n1225#6,6:5620\n1225#6,6:5626\n1225#6,6:5632\n1225#6,6:5638\n1225#6,6:5644\n1225#6,6:5650\n1225#6,6:5656\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$MainTabsScreen$5\n*L\n1755#1:5578\n1755#1:5579,6\n1755#1:5613\n1755#1:5665\n1755#1:5585,6\n1755#1:5600,4\n1755#1:5610,2\n1755#1:5664\n1755#1:5591,9\n1755#1:5612\n1755#1:5662,2\n1755#1:5604,6\n1760#1:5614,6\n1761#1:5620,6\n1762#1:5626,6\n1767#1:5632,6\n1774#1:5638,6\n1776#1:5644,6\n1784#1:5650,6\n1785#1:5656,6\n*E\n"
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
.field final synthetic $billingRepository:Lcom/hermes/android/data/BillingRepository;

.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $hasApiKey$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $meshScreen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pendingHermesLaunch$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pendingResumeSessionId$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $proStatus:Lcom/hermes/android/data/ProStatus;

.field final synthetic $selectedTab$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BottomTab;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sessionManager:Lcom/hermes/android/TerminalSessionManager;

.field final synthetic $showHudOverlay$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$382YMyhFFpSu3Vphl68y88Kgc0w(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->invoke$lambda$17$lambda$16$lambda$15(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8i78UZ3TgH0Ve2G6qPYVtuO9u00(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->invoke$lambda$17$lambda$10$lambda$9(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HDOSS_gIYgn-2uPfWWF34RxyfVc(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->invoke$lambda$17$lambda$14$lambda$13(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XkVtyBXfVbRMYRzwa1l2Ju90Fcs(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->invoke$lambda$17$lambda$6$lambda$5(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_qCSw2uET8ZsvItbsF-2ztp9WgI(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->invoke$lambda$17$lambda$4$lambda$3(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bn7b0YBuV-qAGbrk-8YPdl78tO4(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->invoke$lambda$17$lambda$2$lambda$1(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cYA4eExneP4hHNOjBK24iWffGGI(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->invoke$lambda$17$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$umwNZHCSGdJT7kTffvOLb84HHCg(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->invoke$lambda$17$lambda$12$lambda$11(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Lcom/hermes/android/data/ProStatus;Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/BillingRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BottomTab;",
            ">;",
            "Lcom/hermes/android/BootstrapManager;",
            "Lcom/hermes/android/data/ProStatus;",
            "Lcom/hermes/android/TerminalSessionManager;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/hermes/android/data/BillingRepository;",
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
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$selectedTab$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$proStatus:Lcom/hermes/android/data/ProStatus;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$billingRepository:Lcom/hermes/android/data/BillingRepository;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$hasApiKey$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$pendingHermesLaunch$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$meshScreen$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$pendingResumeSessionId$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$showHudOverlay$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$17$lambda$10$lambda$9(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 1774
    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$89(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$17$lambda$12$lambda$11(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 1776
    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$92(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$17$lambda$14$lambda$13(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 1784
    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$95(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$17$lambda$16$lambda$15(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "sid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1786
    invoke-static {p0, p2}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$92(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 1787
    sget-object p0, Lcom/hermes/android/BottomTab;->Terminal:Lcom/hermes/android/BottomTab;

    invoke-static {p1, p0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$86(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BottomTab;)V

    .line 1788
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$17$lambda$2$lambda$1(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    .line 1760
    sget-object v0, Lcom/hermes/android/BottomTab;->Terminal:Lcom/hermes/android/BottomTab;

    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$86(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BottomTab;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$17$lambda$4$lambda$3(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    .line 1761
    sget-object v0, Lcom/hermes/android/BottomTab;->Settings:Lcom/hermes/android/BottomTab;

    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$86(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BottomTab;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$17$lambda$6$lambda$5(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 1763
    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$89(Landroidx/compose/runtime/MutableState;Z)V

    .line 1764
    sget-object p0, Lcom/hermes/android/BottomTab;->Terminal:Lcom/hermes/android/BottomTab;

    invoke-static {p1, p0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$86(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BottomTab;)V

    .line 1765
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$17$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 1767
    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$98(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1748
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    const-string v2, "innerPadding"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, p3, 0x6

    if-nez v2, :cond_1

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v4, v2, 0x13

    const/16 v5, 0x12

    if-ne v4, v5, :cond_3

    .line 1752
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 1791
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 1752
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    const-string v5, "com.hermes.android.MainTabsScreen.<anonymous> (MainActivity.kt:1751)"

    const v6, 0x117b8034

    invoke-static {v6, v2, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v2, Landroidx/compose/ui/Modifier;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v4, v6, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$selectedTab$delegate:Landroidx/compose/runtime/MutableState;

    .line 1753
    invoke-static {v2}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$85(Landroidx/compose/runtime/MutableState;)Lcom/hermes/android/BottomTab;

    move-result-object v2

    sget-object v4, Lcom/hermes/android/BottomTab;->Terminal:Lcom/hermes/android/BottomTab;

    if-ne v2, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->imePadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 1755
    :goto_3
    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$proStatus:Lcom/hermes/android/data/ProStatus;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$sessionManager:Lcom/hermes/android/TerminalSessionManager;

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$billingRepository:Lcom/hermes/android/data/BillingRepository;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$selectedTab$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$hasApiKey$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$pendingHermesLaunch$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$meshScreen$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v14, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$pendingResumeSessionId$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v15, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5;->$showHudOverlay$delegate:Landroidx/compose/runtime/MutableState;

    const v3, 0x2bb5b5d7

    const-string v6, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo"

    .line 5578
    invoke-static {v11, v3, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 5579
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v3

    const/4 v6, 0x0

    .line 5583
    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    const v6, -0x4ee9b9da

    .line 5584
    const-string v0, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh"

    .line 5585
    invoke-static {v11, v6, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 5586
    invoke-static {v11, v0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHash(Landroidx/compose/runtime/Composer;I)I

    move-result v0

    .line 5587
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v6

    .line 5588
    invoke-static {v11, v1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 5590
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 p1, v13

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    move-object/from16 v16, v10

    const v10, -0x2942ffcf

    move-object/from16 v17, v12

    .line 5589
    const-string v12, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp"

    .line 5591
    invoke-static {v11, v10, v12}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    .line 5592
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v10

    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    if-nez v10, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 5593
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 5594
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 5595
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    .line 5597
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 5599
    :goto_4
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .line 5600
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v10, v3, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 5601
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v10, v6, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 5603
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetCompositeKeyHash()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    .line 5605
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 5606
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 5607
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0, v3}, Landroidx/compose/runtime/Composer;->apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 5610
    :cond_9
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v10, v1, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, -0x7ff519f7    # -1.000876E-39f

    .line 5612
    const-string v1, "C73@3429L9:Box.kt#2w3rfo"

    .line 5613
    invoke-static {v11, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    check-cast v0, Landroidx/compose/foundation/layout/BoxScope;

    .line 1756
    invoke-static {v9}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$85(Landroidx/compose/runtime/MutableState;)Lcom/hermes/android/BottomTab;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/hermes/android/BottomTab;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    const v0, 0x1bbc50cd

    .line 1778
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v0, 0x1bbc74d4

    .line 1783
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5650
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 5651
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_a

    .line 1784
    new-instance v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda6;

    invoke-direct {v0, v15}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda6;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5653
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1784
    :cond_a
    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v0, 0x1bbc7da7

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5656
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 5657
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 1785
    new-instance v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda7;

    invoke-direct {v0, v14, v9}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 5659
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1785
    :cond_b
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget v1, Lcom/hermes/android/TerminalSessionManager;->$stable:I

    shl-int/lit8 v1, v1, 0x6

    const/high16 v3, 0x1b0000

    or-int/2addr v1, v3

    sget v3, Lcom/hermes/android/data/BillingRepository;->$stable:I

    shl-int/lit8 v3, v3, 0x9

    or-int/2addr v1, v3

    sget v3, Lcom/hermes/android/data/ProStatus;->$stable:I

    shl-int/lit8 v3, v3, 0xc

    or-int v9, v1, v3

    const/4 v10, 0x0

    move-object v1, v4

    move-object v3, v5

    move-object v4, v8

    move-object v5, v7

    move-object v7, v0

    move-object/from16 v8, p2

    .line 1778
    invoke-static/range {v1 .. v10}, Lcom/hermes/android/MainActivityKt;->SettingsTabContent(Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_5

    :cond_c
    const v0, 0x1bbbc653

    .line 1756
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_d
    const v0, 0x1bbc11ca

    .line 1769
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1773
    invoke-static/range {v17 .. v17}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$88(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    const v1, 0x1bbc31fa

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5638
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 5639
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_e

    .line 1774
    new-instance v1, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda4;

    move-object/from16 v3, v17

    invoke-direct {v1, v3}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5641
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1774
    :cond_e
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 1775
    invoke-static {v14}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$91(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v7

    const v1, 0x1bbc437c

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5644
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 5645
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_f

    .line 1776
    new-instance v1, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda5;

    invoke-direct {v1, v14}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda5;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5647
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1776
    :cond_f
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v1, 0x186000

    sget v3, Lcom/hermes/android/TerminalSessionManager;->$stable:I

    or-int v9, v3, v1

    const/4 v10, 0x0

    move-object v1, v5

    move-object v3, v4

    move v4, v0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v8, p2

    .line 1769
    invoke-static/range {v1 .. v10}, Lcom/hermes/android/MainActivityKt;->TerminalTabContent(Lcom/hermes/android/TerminalSessionManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_5

    :cond_10
    move-object/from16 v3, v17

    const v0, 0x1bbbc8bf

    .line 1757
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 1759
    invoke-static/range {v16 .. v16}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$105(Landroidx/compose/runtime/MutableState;)Z

    move-result v2

    const v0, 0x1bbbd99f

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5614
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    .line 5615
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 1760
    new-instance v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, v9}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5617
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1760
    :cond_11
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v1, 0x1bbbe2bf

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5620
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 5621
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_12

    .line 1761
    new-instance v1, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, v9}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5623
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1761
    :cond_12
    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v1, 0x1bbbec7e

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5626
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 5627
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v1, v6, :cond_13

    .line 1762
    new-instance v1, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda2;

    invoke-direct {v1, v3, v9}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 5629
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1762
    :cond_13
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v1, 0x1bbc0630

    .line 1766
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5632
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 5633
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_14

    .line 1767
    new-instance v1, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda3;

    move-object/from16 v3, p1

    invoke-direct {v1, v3}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$5$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5635
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1767
    :cond_14
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget v1, Lcom/hermes/android/data/ProStatus;->$stable:I

    shl-int/lit8 v1, v1, 0xf

    const v3, 0x186d80

    or-int v9, v1, v3

    const/4 v10, 0x0

    move-object v1, v4

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object/from16 v8, p2

    .line 1757
    invoke-static/range {v1 .. v10}, Lcom/hermes/android/MainActivityKt;->HomeTabContent(Lcom/hermes/android/BootstrapManager;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/hermes/android/data/ProStatus;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 5613
    :goto_5
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 5662
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 5591
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 5585
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 5578
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 5665
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_15
    :goto_6
    return-void
.end method
