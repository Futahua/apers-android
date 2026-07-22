.class public final Lcom/hermes/android/pairing/PairingScreenKt;
.super Ljava/lang/Object;
.source "PairingScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairingScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairingScreen.kt\ncom/hermes/android/pairing/PairingScreenKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 4 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,209:1\n1225#2,6:210\n1225#2,6:216\n1225#2,6:222\n81#3:228\n64#4,5:229\n*S KotlinDebug\n*F\n+ 1 PairingScreen.kt\ncom/hermes/android/pairing/PairingScreenKt\n*L\n30#1:210,6\n35#1:216,6\n40#1:222,6\n32#1:228\n36#1:229,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\u001a3\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0007\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008\u00b2\u0006\n\u0010\t\u001a\u00020\nX\u008a\u0084\u0002"
    }
    d2 = {
        "PairingScreen",
        "",
        "viewModel",
        "Lcom/hermes/android/pairing/PairingViewModel;",
        "onBack",
        "Lkotlin/Function0;",
        "onConfigReceived",
        "(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V",
        "app_release",
        "state",
        "Lcom/hermes/android/pairing/PairingUiState;"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$0dmEA2r_VSfmOTwDBV-sdu2FSh0(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/hermes/android/pairing/PairingScreenKt;->PairingScreen$lambda$7(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BMTQaVlJy4K6ICmilvw_jsYCAUY()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/hermes/android/pairing/PairingScreenKt;->PairingScreen$lambda$1$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ORZHT900fVhH3LDq9hgoFAgrtHU(Lcom/hermes/android/pairing/PairingViewModel;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/pairing/PairingScreenKt;->PairingScreen$lambda$5$lambda$4(Lcom/hermes/android/pairing/PairingViewModel;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static final PairingScreen(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/pairing/PairingViewModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p4

    const-string v0, "viewModel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBack"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x2f12fa74

    move-object/from16 v3, p3

    .line 31
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_0

    or-int/lit8 v5, v4, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v5, v4, 0x6

    if-nez v5, :cond_2

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v4

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    and-int/lit8 v6, p5, 0x2

    if-eqz v6, :cond_3

    or-int/lit8 v5, v5, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v4, 0x30

    if-nez v6, :cond_5

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, p5, 0x4

    const/16 v7, 0x100

    if-eqz v6, :cond_6

    or-int/lit16 v5, v5, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v4, 0x180

    if-nez v8, :cond_8

    move-object/from16 v8, p2

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v9, v7

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v5, v9

    goto :goto_6

    :cond_8
    :goto_5
    move-object/from16 v8, p2

    :goto_6
    and-int/lit16 v9, v5, 0x93

    const/16 v10, 0x92

    if-ne v9, v10, :cond_a

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_7

    .line 208
    :cond_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v20, v8

    goto/16 :goto_a

    :cond_a
    :goto_7
    if-eqz v6, :cond_c

    const v6, 0x34ecb876

    .line 30
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 210
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    .line 211
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v6, v8, :cond_b

    .line 212
    new-instance v6, Lcom/hermes/android/pairing/PairingScreenKt$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/hermes/android/pairing/PairingScreenKt$$ExternalSyntheticLambda0;-><init>()V

    .line 213
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 30
    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v15, v6

    goto :goto_8

    :cond_c
    move-object v15, v8

    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, -0x1

    const-string v8, "com.hermes.android.pairing.PairingScreen (PairingScreen.kt:30)"

    .line 31
    invoke-static {v0, v5, v6, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 32
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/hermes/android/pairing/PairingViewModel;->getState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v0, v6, v3, v8, v9}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    .line 35
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const v11, 0x34ecc848

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    .line 216
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_e

    .line 217
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v12, v11, :cond_f

    .line 35
    :cond_e
    new-instance v12, Lcom/hermes/android/pairing/PairingScreenKt$$ExternalSyntheticLambda1;

    invoke-direct {v12, v1}, Lcom/hermes/android/pairing/PairingScreenKt$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/pairing/PairingViewModel;)V

    .line 219
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 35
    :cond_f
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v11, 0x6

    invoke-static {v10, v12, v3, v11}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 40
    invoke-static {v0}, Lcom/hermes/android/pairing/PairingScreenKt;->PairingScreen$lambda$2(Landroidx/compose/runtime/State;)Lcom/hermes/android/pairing/PairingUiState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hermes/android/pairing/PairingUiState;->getConfigReceived()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const v11, 0x34ecd9b3

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    and-int/lit16 v5, v5, 0x380

    if-ne v5, v7, :cond_10

    move v5, v9

    goto :goto_9

    :cond_10
    move v5, v8

    :goto_9
    or-int/2addr v5, v11

    .line 222
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_11

    .line 223
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v7, v5, :cond_12

    .line 40
    :cond_11
    new-instance v5, Lcom/hermes/android/pairing/PairingScreenKt$PairingScreen$3$1;

    invoke-direct {v5, v15, v0, v6}, Lcom/hermes/android/pairing/PairingScreenKt$PairingScreen$3$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 225
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 40
    :cond_12
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v10, v7, v3, v8}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 48
    new-instance v5, Lcom/hermes/android/pairing/PairingScreenKt$PairingScreen$4;

    invoke-direct {v5, v2}, Lcom/hermes/android/pairing/PairingScreenKt$PairingScreen$4;-><init>(Lkotlin/jvm/functions/Function0;)V

    const v6, 0x78f80048

    const/16 v7, 0x36

    invoke-static {v6, v9, v5, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 58
    new-instance v5, Lcom/hermes/android/pairing/PairingScreenKt$PairingScreen$5;

    invoke-direct {v5, v1, v2, v0}, Lcom/hermes/android/pairing/PairingScreenKt$PairingScreen$5;-><init>(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V

    const v0, -0x536b19e3

    invoke-static {v0, v9, v5, v3, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function3;

    const v18, 0x30000030

    const/16 v19, 0x1fd

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v0, 0x0

    move-object/from16 v20, v15

    move-object v15, v0

    move-object/from16 v17, v3

    .line 47
    invoke-static/range {v5 .. v19}, Landroidx/compose/material3/ScaffoldKt;->Scaffold-TvnljyQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 208
    :cond_13
    :goto_a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v6

    if-eqz v6, :cond_14

    new-instance v7, Lcom/hermes/android/pairing/PairingScreenKt$$ExternalSyntheticLambda2;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/pairing/PairingScreenKt$$ExternalSyntheticLambda2;-><init>(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_14
    return-void
.end method

.method private static final PairingScreen$lambda$1$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 30
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final PairingScreen$lambda$2(Landroidx/compose/runtime/State;)Lcom/hermes/android/pairing/PairingUiState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/hermes/android/pairing/PairingUiState;",
            ">;)",
            "Lcom/hermes/android/pairing/PairingUiState;"
        }
    .end annotation

    .line 228
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hermes/android/pairing/PairingUiState;

    return-object p0
.end method

.method private static final PairingScreen$lambda$5$lambda$4(Lcom/hermes/android/pairing/PairingViewModel;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance p1, Lcom/hermes/android/pairing/PairingScreenKt$PairingScreen$lambda$5$lambda$4$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Lcom/hermes/android/pairing/PairingScreenKt$PairingScreen$lambda$5$lambda$4$$inlined$onDispose$1;-><init>(Lcom/hermes/android/pairing/PairingViewModel;)V

    check-cast p1, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p1
.end method

.method private static final PairingScreen$lambda$7(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 6

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/hermes/android/pairing/PairingScreenKt;->PairingScreen(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$PairingScreen$lambda$2(Landroidx/compose/runtime/State;)Lcom/hermes/android/pairing/PairingUiState;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hermes/android/pairing/PairingScreenKt;->PairingScreen$lambda$2(Landroidx/compose/runtime/State;)Lcom/hermes/android/pairing/PairingUiState;

    move-result-object p0

    return-object p0
.end method
