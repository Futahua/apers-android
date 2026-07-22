.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$13$6\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1225#2,6:5578\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$13$6\n*L\n3308#1:5578,6\n*E\n"
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

.field final synthetic $baseUrlInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

.field final synthetic $hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

.field final synthetic $modelIdInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $provider:Lcom/hermes/android/data/AiProvider;

.field final synthetic $scope:Landroidx/lifecycle/LifecycleCoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$qk7rh82v8JHfo5dCiE2VJvMWX2Q(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->invoke$lambda$1$lambda$0(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/AiProvider;",
            "Lcom/hermes/android/data/HermesConfigRepository;",
            "Landroidx/lifecycle/LifecycleCoroutineScope;",
            "Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$provider:Lcom/hermes/android/data/AiProvider;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$modelIdInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$baseUrlInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$apiKeyDialogProvider$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 14

    .line 3309
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getRequiresKey()Z

    move-result v0

    .line 3310
    invoke-static/range {p3 .. p3}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$241(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    .line 3316
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getAllowsCustomModel()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p4 .. p4}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$330$lambda$322(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    .line 3317
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getEnvVar()Ljava/lang/String;

    move-result-object v2

    move-object v5, p1

    invoke-virtual {p1, v2}, Lcom/hermes/android/data/HermesConfigRepository;->hasApiKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move-object v5, p1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_4

    .line 3323
    :cond_3
    sget-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    invoke-virtual {v0}, Lcom/hermes/android/ProviderSwitchCoordinator;->onSelected()J

    move-result-wide v7

    .line 3324
    move-object/from16 v0, p2

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v13, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;

    const/4 v12, 0x0

    move-object v2, v13

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v12}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;-><init>(ZLcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;JLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v2, v13

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p0, v0

    move-object p1, v1

    move-object/from16 p2, v5

    move-object/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 p5, v4

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_4
    const/4 v0, 0x0

    move-object/from16 v1, p7

    .line 3379
    invoke-static {v1, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$239(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)V

    .line 3380
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3307
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 14

    move-object v0, p0

    move-object v11, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 3308
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3380
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 3308
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous> (MainActivity.kt:3307)"

    const v4, 0x5af47f73

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v1, 0x73a9ea46

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$provider:Lcom/hermes/android/data/AiProvider;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$modelIdInput$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$baseUrlInput$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->$apiKeyDialogProvider$delegate:Landroidx/compose/runtime/MutableState;

    .line 5578
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_3

    .line 5579
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_4

    .line 3308
    :cond_3
    new-instance v1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$$ExternalSyntheticLambda0;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 5581
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 3308
    :cond_4
    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v2, Lcom/hermes/android/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/hermes/android/ComposableSingletons$MainActivityKt;

    invoke-virtual {v2}, Lcom/hermes/android/ComposableSingletons$MainActivityKt;->getLambda-32$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_1
    return-void
.end method
