.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


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
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/ColumnScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$18\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1225#2,6:5578\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$18\n*L\n3435#1:5578,6\n*E\n"
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

.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

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


# direct methods
.method public static synthetic $r8$lambda$lbFUf1Dxiat8pUhktdszlrc2riA(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->invoke$lambda$1$lambda$0(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->$showEdgeSheet$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->$edgeInstalled$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Z)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 3436
    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$183(Landroidx/compose/runtime/MutableState;Z)V

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 3437
    invoke-static {p1, p0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$186(Landroidx/compose/runtime/MutableState;Z)V

    .line 3438
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3431
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const-string v0, "$this$ModalBottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 3432
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3439
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 3432
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "com.hermes.android.SettingsTabContent.<anonymous> (MainActivity.kt:3431)"

    const v1, -0x4097b85

    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 3433
    :cond_2
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    .line 3434
    iget-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast p3, Landroidx/activity/ComponentActivity;

    const v0, 0x65b3efa2

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 3435
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->$showEdgeSheet$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18;->$edgeInstalled$delegate:Landroidx/compose/runtime/MutableState;

    .line 5578
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 5579
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 3435
    new-instance v2, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$18$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 5581
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 3435
    :cond_3
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v0, 0x180

    .line 3432
    invoke-static {p1, p3, v2, p2, v0}, Lcom/hermes/android/ui/EdgeFeaturesSheetKt;->EdgeFeaturesSheet(Lcom/hermes/android/BootstrapManager;Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_1
    return-void
.end method
