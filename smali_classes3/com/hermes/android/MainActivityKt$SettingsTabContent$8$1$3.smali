.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1225#2,6:5578\n1225#2,6:5584\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3\n*L\n2626#1:5578,6\n2639#1:5584,6\n*E\n"
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
.field final synthetic $edgeInstalled$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showEdgeSheet$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showWebKeyDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $webKeyConfigured$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CWw-S9POotnUFk31p7QrXQ_u2Ds(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->invoke$lambda$1$lambda$0(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ENJ2ir9INEZqabfnMcRjvECAXWw(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->invoke$lambda$3$lambda$2(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$edgeInstalled$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$showEdgeSheet$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$webKeyConfigured$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$showWebKeyDialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 2626
    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$183(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$3$lambda$2(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    .line 2639
    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$189(Landroidx/compose/runtime/MutableState;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2621
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2622
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2641
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 2622
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:2621)"

    const v2, -0x39c0dbc6

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 2623
    :cond_2
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/AutoAwesomeKt;->getAutoAwesome(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 2624
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$edgeInstalled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$185(Landroidx/compose/runtime/MutableState;)Z

    move-result p2

    const/4 v6, 0x0

    if-eqz p2, :cond_3

    const p2, -0x4f845d12

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget p2, Lcom/hermes/android/R$string;->settings_edge_installed:I

    goto :goto_1

    :cond_3
    const p2, -0x4f845654

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget p2, Lcom/hermes/android/R$string;->settings_edge_install:I

    :goto_1
    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v1, p2

    .line 2625
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$edgeInstalled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$185(Landroidx/compose/runtime/MutableState;)Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, -0x4f844a14

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget p2, Lcom/hermes/android/R$string;->settings_edge_desc_on:I

    goto :goto_2

    :cond_4
    const p2, -0x4f844393

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget p2, Lcom/hermes/android/R$string;->settings_edge_desc_off:I

    :goto_2
    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v2, p2

    const p2, -0x4f8439ca

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2626
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$showEdgeSheet$delegate:Landroidx/compose/runtime/MutableState;

    .line 5578
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 5579
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 2626
    new-instance v3, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5581
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2626
    :cond_5
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v5, 0xc00

    move-object v4, p1

    .line 2622
    invoke-static/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt;->access$SettingsRow(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 2630
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$edgeInstalled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$185(Landroidx/compose/runtime/MutableState;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 2632
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/SearchKt;->getSearch(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 2633
    sget p2, Lcom/hermes/android/R$string;->web_key_row:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 2634
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$webKeyConfigured$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$191(Landroidx/compose/runtime/MutableState;)Z

    move-result p2

    if-eqz p2, :cond_6

    const p2, 0x5f039f7f

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2635
    sget p2, Lcom/hermes/android/R$string;->web_key_row_desc_set:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p2

    .line 2634
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_3

    :cond_6
    const p2, 0x5f053da3

    .line 2636
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2637
    sget p2, Lcom/hermes/android/R$string;->web_key_row_desc:I

    invoke-static {p2, p1, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object p2

    .line 2636
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_3
    move-object v2, p2

    const p2, -0x4f83e567

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 2639
    iget-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3;->$showWebKeyDialog$delegate:Landroidx/compose/runtime/MutableState;

    .line 5584
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 5585
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_7

    .line 2639
    new-instance v3, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$3$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5587
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 2639
    :cond_7
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v5, 0xc00

    move-object v4, p1

    .line 2631
    invoke-static/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt;->access$SettingsRow(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    :goto_4
    return-void
.end method
