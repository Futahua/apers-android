.class final Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;
.super Ljava/lang/Object;
.source "LocalLlmSetupScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->LocalLlmSetupScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nLocalLlmSetupScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalLlmSetupScreen.kt\ncom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1220:1\n1225#2,6:1221\n*S KotlinDebug\n*F\n+ 1 LocalLlmSetupScreen.kt\ncom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2\n*L\n1005#1:1221,6\n*E\n"
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
.field final synthetic $busyLabel$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $confirmDelete$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $errorText$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $strDeleteFailed:Ljava/lang/String;

.field final synthetic $strDeleting:Ljava/lang/String;

.field final synthetic $strEngineBusy:Ljava/lang/String;

.field final synthetic $target:Lcom/hermes/android/ui/localllm/DlTarget;


# direct methods
.method public static synthetic $r8$lambda$QYeIO0OUvSEg0jtQYShqJb15XQ0(Lcom/hermes/android/ui/localllm/DlTarget;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->invoke$lambda$1$lambda$0(Lcom/hermes/android/ui/localllm/DlTarget;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/ui/localllm/DlTarget;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$target:Lcom/hermes/android/ui/localllm/DlTarget;

    iput-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$strDeleting:Ljava/lang/String;

    iput-object p4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$strDeleteFailed:Ljava/lang/String;

    iput-object p6, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$strEngineBusy:Ljava/lang/String;

    iput-object p7, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$confirmDelete$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/hermes/android/ui/localllm/DlTarget;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 1007
    invoke-static {p1, v0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$39(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/ui/localllm/DlTarget;)V

    .line 1008
    sget-object p1, Lcom/hermes/android/ui/localllm/DlTarget;->NPU_BUNDLE:Lcom/hermes/android/ui/localllm/DlTarget;

    if-ne p0, p1, :cond_0

    invoke-static/range {p2 .. p9}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$deleteNpuBundle(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)V

    goto :goto_0

    :cond_0
    invoke-static/range {p2 .. p9}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$deleteGgufModel(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)V

    .line 1009
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1004
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1005
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1009
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 1005
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:1004)"

    const v4, -0x224f25dc

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const v1, 0xda7d293

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$target:Lcom/hermes/android/ui/localllm/DlTarget;

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$strDeleting:Ljava/lang/String;

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$context:Landroid/content/Context;

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$strDeleteFailed:Ljava/lang/String;

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$strEngineBusy:Ljava/lang/String;

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v13, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$target:Lcom/hermes/android/ui/localllm/DlTarget;

    iget-object v14, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$confirmDelete$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v15, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$strDeleting:Ljava/lang/String;

    iget-object v3, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$strDeleteFailed:Ljava/lang/String;

    iget-object v4, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$strEngineBusy:Ljava/lang/String;

    iget-object v5, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$context:Landroid/content/Context;

    iget-object v8, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 1221
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_3

    .line 1222
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v9, v1, :cond_4

    .line 1005
    :cond_3
    new-instance v9, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2$$ExternalSyntheticLambda0;

    move-object v12, v9

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    invoke-direct/range {v12 .. v22}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/ui/localllm/DlTarget;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableIntState;)V

    .line 1224
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1005
    :cond_4
    move-object v1, v9

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v2, Lcom/hermes/android/ui/localllm/ComposableSingletons$LocalLlmSetupScreenKt;->INSTANCE:Lcom/hermes/android/ui/localllm/ComposableSingletons$LocalLlmSetupScreenKt;

    invoke-virtual {v2}, Lcom/hermes/android/ui/localllm/ComposableSingletons$LocalLlmSetupScreenKt;->getLambda-14$app_release()Lkotlin/jvm/functions/Function3;

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

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_1
    return-void
.end method
