.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->SettingsTabContent(Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1863#2:5578\n774#2:5579\n865#2,2:5580\n1864#2:5588\n1225#3,6:5582\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9\n*L\n2882#1:5578\n2884#1:5579\n2884#1:5580,2\n2882#1:5588\n2892#1:5582,6\n*E\n"
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
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $apiKeyDialogProvider$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

.field final synthetic $labsEnabled:Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $localLlmModuleError$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $localLlmModuleProgress$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Landroidx/lifecycle/LifecycleCoroutineScope;

.field final synthetic $showLocalLlmScreen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showMoaScreen$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;


# direct methods
.method public static synthetic $r8$lambda$_-e8DrJG7ktjm1JMh-67HBdd9ZE(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->invoke$lambda$3$lambda$2$lambda$1(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/compose/runtime/snapshots/SnapshotStateMap;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleCoroutineScope;",
            "Lcom/google/android/play/core/splitinstall/SplitInstallManager;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/hermes/android/data/HermesConfigRepository;",
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "Ljava/lang/String;",
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
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$labsEnabled:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$showMoaScreen$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$showLocalLlmScreen$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$localLlmModuleError$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$localLlmModuleProgress$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$apiKeyDialogProvider$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$3$lambda$2$lambda$1(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)Lkotlin/Unit;
    .locals 13

    const-string v0, "provider"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2896
    sget-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    invoke-virtual {v0}, Lcom/hermes/android/ProviderSwitchCoordinator;->onSelected()J

    move-result-wide v4

    .line 2897
    invoke-virtual/range {p10 .. p10}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "moa"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move-object v1, p1

    .line 2899
    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$199(Landroidx/compose/runtime/MutableState;Z)V

    goto :goto_0

    .line 2900
    :cond_0
    invoke-virtual/range {p10 .. p10}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "local_llm"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2915
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lkotlin/coroutines/CoroutineContext;

    new-instance v12, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1;

    const/4 v10, 0x0

    move-object v1, v12

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/appcompat/app/AppCompatActivity;JLcom/hermes/android/data/HermesConfigRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v1, v12

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p0, v0

    move-object p1, v11

    move-object p2, v4

    move-object/from16 p3, v1

    move/from16 p4, v2

    move-object/from16 p5, v3

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 2960
    :cond_1
    const-string v0, ""

    move-object/from16 v2, p8

    invoke-static {v2, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$242(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 2961
    invoke-static/range {p9 .. p10}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$239(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)V

    .line 2963
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2879
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2881
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2966
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 2881
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:2880)"

    const v5, 0x6aa0cb35

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v9, "Popular"

    aput-object v9, v1, v2

    const-string v2, "AI Platforms"

    const/4 v10, 0x1

    aput-object v2, v1, v10

    const-string v2, "China Region"

    aput-object v2, v1, v3

    const-string v2, "Advanced"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "Self-Hosted"

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2882
    check-cast v1, Ljava/lang/Iterable;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$splitInstallManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$labsEnabled:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$showMoaScreen$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v15, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$showLocalLlmScreen$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v14, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$localLlmModuleError$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$localLlmModuleProgress$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$apiKeyDialogProvider$delegate:Landroidx/compose/runtime/MutableState;

    .line 5578
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2884
    sget-object v16, Lcom/hermes/android/data/AiProvider;->Companion:Lcom/hermes/android/data/AiProvider$Companion;

    invoke-virtual/range {v16 .. v16}, Lcom/hermes/android/data/AiProvider$Companion;->getALL()Ljava/util/List;

    move-result-object v16

    check-cast v16, Ljava/lang/Iterable;

    .line 5579
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, v17

    check-cast v10, Ljava/util/Collection;

    .line 5580
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/hermes/android/data/AiProvider;

    move-object/from16 v18, v11

    .line 2885
    invoke-virtual/range {v17 .. v17}, Lcom/hermes/android/data/AiProvider;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcom/hermes/android/data/AiProvider;->isLabs()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 p2, v3

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_3
    move-object/from16 p2, v3

    const/16 v23, 0x1

    .line 5580
    :goto_3
    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object/from16 p2, v3

    const/16 v23, 0x1

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v11, v18

    goto :goto_2

    :cond_6
    move-object/from16 p2, v3

    move-object/from16 v18, v11

    const/16 v23, 0x1

    .line 5581
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    const v3, -0x4f7d966a

    .line 2884
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2887
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2891
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const v10, -0x4659ff76

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    .line 5582
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_8

    .line 5583
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v11, v10, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    move-object/from16 v24, v18

    goto :goto_6

    .line 2892
    :cond_8
    :goto_5
    new-instance v10, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;

    move-object/from16 v24, v18

    move-object v11, v10

    move-object/from16 v25, v12

    move-object v12, v7

    move-object/from16 v26, v13

    move-object v13, v2

    move-object/from16 v27, v14

    move-object v14, v6

    move-object/from16 v28, v15

    move-object v15, v5

    move-object/from16 v16, v4

    move-object/from16 v17, v28

    move-object/from16 v18, v27

    move-object/from16 v19, v26

    move-object/from16 v20, v25

    move-object/from16 v21, v24

    invoke-direct/range {v11 .. v21}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 5585
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2892
    :goto_6
    move-object v10, v11

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v2

    move-object v2, v0

    move-object/from16 v0, p2

    move-object v14, v4

    move-object v4, v10

    move-object v10, v5

    move-object/from16 v5, p1

    move-object v15, v6

    move v6, v11

    move-object v11, v7

    move v7, v12

    .line 2888
    invoke-static/range {v1 .. v7}, Lcom/hermes/android/MainActivityKt;->access$CollapsibleProviderGroup(Ljava/lang/String;Ljava/util/List;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_7

    :cond_9
    move-object/from16 v0, p2

    move-object v10, v5

    move-object v11, v7

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    move-object/from16 v24, v18

    move-object v13, v2

    move-object v14, v4

    move-object v15, v6

    :goto_7
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v3, v0

    move-object v5, v10

    move-object v7, v11

    move-object v2, v13

    move-object v4, v14

    move-object v6, v15

    move/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 5588
    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    :goto_8
    return-void
.end method
