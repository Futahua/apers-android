.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1225#2,6:5578\n1225#2,6:5584\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5\n*L\n2668#1:5578,6\n2682#1:5584,6\n*E\n"
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

.field final synthetic $handoffController:Lcom/hermes/android/handoff/HandoffController;

.field final synthetic $handoffError$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffScanLauncher:Landroidx/activity/compose/ManagedActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/compose/ManagedActivityResultLauncher<",
            "Lcom/journeyapps/barcodescanner/ScanOptions;",
            "Lcom/journeyapps/barcodescanner/ScanIntentResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffSyncResult$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/handoff/HandoffImporter$Stats;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffSyncing$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Landroidx/lifecycle/LifecycleCoroutineScope;


# direct methods
.method public static synthetic $r8$lambda$iOWzQtr-WBi9TG6HuVGwyZjhgbg(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/handoff/HandoffController;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->invoke$lambda$4$lambda$3(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/handoff/HandoffController;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uxqdG13ykZrx5INPBNnQ6XBSooU(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/appcompat/app/AppCompatActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->invoke$lambda$2$lambda$1(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/appcompat/app/AppCompatActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/appcompat/app/AppCompatActivity;Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/hermes/android/handoff/HandoffController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/compose/ManagedActivityResultLauncher<",
            "Lcom/journeyapps/barcodescanner/ScanOptions;",
            "Lcom/journeyapps/barcodescanner/ScanIntentResult;",
            ">;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/lifecycle/LifecycleCoroutineScope;",
            "Lcom/hermes/android/handoff/HandoffController;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/handoff/HandoffImporter$Stats;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffScanLauncher:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffController:Lcom/hermes/android/handoff/HandoffController;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffSyncing$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffSyncResult$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/appcompat/app/AppCompatActivity;)Lkotlin/Unit;
    .locals 4

    .line 2669
    new-instance v0, Lcom/journeyapps/barcodescanner/ScanOptions;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/ScanOptions;-><init>()V

    const/4 v1, 0x1

    .line 2670
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "QR_CODE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/ScanOptions;->setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 2671
    sget v1, Lcom/hermes/android/R$string;->handoff_scan_prompt:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->setPrompt(Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 2672
    invoke-virtual {v0, v3}, Lcom/journeyapps/barcodescanner/ScanOptions;->setBeepEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 2673
    invoke-virtual {v0, v3}, Lcom/journeyapps/barcodescanner/ScanOptions;->setOrientationLocked(Z)Lcom/journeyapps/barcodescanner/ScanOptions;

    .line 2669
    invoke-virtual {p0, v0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 2675
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$4$lambda$3(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/handoff/HandoffController;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 9

    .line 2683
    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$278(Landroidx/compose/runtime/MutableState;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 2684
    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$279(Landroidx/compose/runtime/MutableState;Z)V

    .line 2685
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5$2$1$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5$2$1$1;-><init>(Lcom/hermes/android/handoff/HandoffController;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object p3, v8

    check-cast p3, Lkotlin/jvm/functions/Function2;

    const/4 p4, 0x2

    const/4 p5, 0x0

    const/4 p2, 0x0

    move-object p1, v0

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2693
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2663
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2664
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2694
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 2664
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:2663)"

    const v2, 0x686c4ab2

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 2665
    :cond_2
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/QrCodeScannerKt;->getQrCodeScanner(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 2666
    sget p2, Lcom/hermes/android/R$string;->settings_handoff_receive:I

    const/4 v6, 0x0

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 2667
    sget p2, Lcom/hermes/android/R$string;->settings_handoff_receive_desc:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const p2, -0x4f8353fb

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffScanLauncher:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr p2, v3

    .line 2668
    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffScanLauncher:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 5578
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez p2, :cond_3

    .line 5579
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v5, p2, :cond_4

    .line 2668
    :cond_3
    new-instance v5, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v4}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5$$ExternalSyntheticLambda0;-><init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 5581
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2668
    :cond_4
    move-object v3, v5

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v5, 0x0

    move-object v4, p1

    .line 2664
    invoke-static/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt;->access$SettingsRow(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 2679
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/SyncKt;->getSync(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 2680
    sget p2, Lcom/hermes/android/R$string;->settings_handoff_sync_back:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 2681
    sget p2, Lcom/hermes/android/R$string;->settings_handoff_sync_back_desc:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    const p2, -0x4f82f61f

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffController:Lcom/hermes/android/handoff/HandoffController;

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr p2, v3

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr p2, v3

    .line 2682
    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$scope:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffSyncing$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffController:Lcom/hermes/android/handoff/HandoffController;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffSyncResult$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v9, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5;->$handoffError$delegate:Landroidx/compose/runtime/MutableState;

    .line 5584
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_5

    .line 5585
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v3, p2, :cond_6

    .line 2682
    :cond_5
    new-instance p2, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5$$ExternalSyntheticLambda1;

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$5$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/handoff/HandoffController;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)V

    .line 5587
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2682
    :cond_6
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v5, 0x0

    move-object v4, p1

    .line 2678
    invoke-static/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt;->access$SettingsRow(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    :goto_1
    return-void
.end method
