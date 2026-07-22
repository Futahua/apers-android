.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5577:1\n1225#2,6:5578\n1225#2,6:5585\n1225#2,6:5591\n1#3:5584\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7\n*L\n2797#1:5578,6\n2810#1:5585,6\n2838#1:5591,6\n*E\n"
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
.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $confirmReinstall$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $healthReport$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$HealthReport;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $repairError$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $repairProgress$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Landroidx/lifecycle/LifecycleCoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$-6JooYcIR1oW0b0W0w2dr8Z-Xls(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->invoke$lambda$6$lambda$5(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0J0e3PYMrMv4v88p3onQ8H83Bc4(Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->invoke$lambda$2$lambda$1(Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Rjz9GrhvXDfXxGEbsr85cbHBdHU(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->invoke$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleCoroutineScope;",
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$HealthReport;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$healthReport$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$repairProgress$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$repairError$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$confirmReinstall$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1(Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 6

    .line 2798
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$2$1$1;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$2$1$1;-><init>(Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v3, p0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2802
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$6$lambda$5(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 9

    .line 2811
    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$214(Landroidx/compose/runtime/MutableState;)Lcom/hermes/android/BootstrapManager$Progress;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2812
    invoke-static {p2, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$218(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 2813
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1;-><init>(Lcom/hermes/android/BootstrapManager;Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2832
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 2838
    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$221(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2790
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2791
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2839
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_6

    .line 2791
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:2790)"

    const v2, -0x40c60a4c

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 2792
    :cond_2
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/HealthAndSafetyKt;->getHealthAndSafety(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 2793
    sget p2, Lcom/hermes/android/R$string;->settings_check_install:I

    const/4 v6, 0x0

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 2794
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$healthReport$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$211(Landroidx/compose/runtime/MutableState;)Lcom/hermes/android/BootstrapManager$HealthReport;

    move-result-object p2

    const v2, -0x4f7fecc5

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const/4 v7, 0x0

    if-nez p2, :cond_3

    move-object p2, v7

    goto :goto_2

    .line 2795
    :cond_3
    invoke-virtual {p2}, Lcom/hermes/android/BootstrapManager$HealthReport;->isHealthy()Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, -0x465c723a

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget p2, Lcom/hermes/android/R$string;->settings_healthy:I

    goto :goto_1

    :cond_4
    const p2, -0x465c6c5b

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget p2, Lcom/hermes/android/R$string;->settings_issues:I

    :goto_1
    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 2794
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v2, -0x4f7fee3f

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez p2, :cond_5

    .line 2796
    sget p2, Lcom/hermes/android/R$string;->settings_check_install_desc:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p2

    :cond_5
    move-object v2, p2

    .line 2794
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const p2, -0x4f7fcdbe

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr p2, v3

    .line 2797
    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$healthReport$delegate:Landroidx/compose/runtime/MutableState;

    .line 5578
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez p2, :cond_6

    .line 5579
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v8, p2, :cond_7

    .line 2797
    :cond_6
    new-instance v8, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$$ExternalSyntheticLambda0;

    invoke-direct {v8, v3, v4, v5}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)V

    .line 5581
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2797
    :cond_7
    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v5, 0x0

    move-object v4, p1

    .line 2791
    invoke-static/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt;->access$SettingsRow(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 2805
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/BuildKt;->getBuild(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 2806
    sget p2, Lcom/hermes/android/R$string;->settings_repair:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 2807
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$repairProgress$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$214(Landroidx/compose/runtime/MutableState;)Lcom/hermes/android/BootstrapManager$Progress;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/hermes/android/BootstrapManager$Progress;->getStepName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/hermes/android/BootstrapManager$Progress;->getStep()I

    move-result v3

    invoke-virtual {p2}, Lcom/hermes/android/BootstrapManager$Progress;->getTotalSteps()I

    move-result p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "... ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ")"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    move-object v7, p2

    goto :goto_4

    .line 2808
    :cond_9
    :goto_3
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$repairError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$217(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_a
    :goto_4
    const p2, -0x4f7f94b2

    .line 2807
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v7, :cond_b

    .line 2809
    sget p2, Lcom/hermes/android/R$string;->settings_repair_desc:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_5

    :cond_b
    move-object v2, v7

    .line 2807
    :goto_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const p2, -0x4f7f72c3

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr p2, v3

    .line 2810
    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v9, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$repairProgress$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$repairError$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v12, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$healthReport$delegate:Landroidx/compose/runtime/MutableState;

    .line 5585
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_c

    .line 5586
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v3, p2, :cond_d

    .line 2810
    :cond_c
    new-instance v3, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$$ExternalSyntheticLambda1;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)V

    .line 5588
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2810
    :cond_d
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v5, 0x0

    move-object v4, p1

    .line 2804
    invoke-static/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt;->access$SettingsRow(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 2835
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/RestartAltKt;->getRestartAlt(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 2836
    sget p2, Lcom/hermes/android/R$string;->settings_reinstall:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 2837
    sget p2, Lcom/hermes/android/R$string;->settings_reinstall_desc:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const p2, -0x4f7ebbc7

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2838
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7;->$confirmReinstall$delegate:Landroidx/compose/runtime/MutableState;

    .line 5591
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 5592
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_e

    .line 2838
    new-instance v3, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5594
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2838
    :cond_e
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v5, 0xc00

    move-object v4, p1

    .line 2834
    invoke-static/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt;->access$SettingsRow(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_f
    :goto_6
    return-void
.end method
