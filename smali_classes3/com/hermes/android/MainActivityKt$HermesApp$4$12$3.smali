.class final Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke(Landroidx/compose/animation/AnimatedContentScope;Lcom/hermes/android/AppPhase;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$HermesApp$4$12$3\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1225#2,6:5578\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$HermesApp$4$12$3\n*L\n600#1:5578,6\n*E\n"
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
.field final synthetic $offer:Lcom/hermes/android/ModelSwitchPrompt$Offer;

.field final synthetic $sm:Lcom/hermes/android/TerminalSessionManager;

.field final synthetic $switchCtx:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$E9C9x2hwUtbibp0J0Tc3lEHYIrY(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/ModelSwitchPrompt$Offer;Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->invoke$lambda$1$lambda$0(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/ModelSwitchPrompt$Offer;Landroid/content/Context;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/ModelSwitchPrompt$Offer;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->$sm:Lcom/hermes/android/TerminalSessionManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->$offer:Lcom/hermes/android/ModelSwitchPrompt$Offer;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->$switchCtx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/ModelSwitchPrompt$Offer;Landroid/content/Context;)Lkotlin/Unit;
    .locals 4

    .line 630
    invoke-virtual {p0}, Lcom/hermes/android/TerminalSessionManager;->getActiveSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p1}, Lcom/hermes/android/ModelSwitchPrompt$Offer;->getOriginSessionHandle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 632
    iget-object v2, v0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hermes/android/ModelSwitchPrompt$Offer;->getOriginSessionHandle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/hermes/android/TerminalSessionManager;->hermesBinding(Lcom/termux/terminal/TerminalSession;)Lcom/hermes/android/TerminalSessionManager$HermesBinding;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 634
    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$terminalSafeToType(Lcom/termux/terminal/TerminalSession;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 636
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p0, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    invoke-virtual {p0, p1}, Lcom/hermes/android/ModelSwitchPrompt;->command(Lcom/hermes/android/ModelSwitchPrompt$Offer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 639
    sget p0, Lcom/hermes/android/R$string;->model_switch_typed_hint:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 637
    invoke-static {p2, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 641
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 645
    :cond_0
    sget p0, Lcom/hermes/android/R$string;->model_switch_busy_hint:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 643
    invoke-static {p2, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 647
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 649
    :goto_0
    sget-object p0, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    invoke-virtual {p0}, Lcom/hermes/android/ModelSwitchPrompt;->dismiss()V

    .line 650
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 599
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->invoke(Landroidx/compose/runtime/Composer;I)V

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

    .line 600
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 600
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.hermes.android.HermesApp.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:599)"

    const v4, -0x7803a976

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v1, -0x3a42cccf

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->$sm:Lcom/hermes/android/TerminalSessionManager;

    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->$offer:Lcom/hermes/android/ModelSwitchPrompt$Offer;

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->$switchCtx:Landroid/content/Context;

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->$sm:Lcom/hermes/android/TerminalSessionManager;

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->$offer:Lcom/hermes/android/ModelSwitchPrompt$Offer;

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;->$switchCtx:Landroid/content/Context;

    .line 5578
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_3

    .line 5579
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_4

    .line 600
    :cond_3
    new-instance v5, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, v3, v4}, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/ModelSwitchPrompt$Offer;Landroid/content/Context;)V

    .line 5581
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 600
    :cond_4
    move-object v1, v5

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v2, Lcom/hermes/android/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/hermes/android/ComposableSingletons$MainActivityKt;

    invoke-virtual {v2}, Lcom/hermes/android/ComposableSingletons$MainActivityKt;->getLambda-1$app_release()Lkotlin/jvm/functions/Function3;

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
