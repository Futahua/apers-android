.class final Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->XaiAuthDialog(Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/data/HermesConfigRepository;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$XaiAuthDialog$4\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1225#2,6:5578\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$XaiAuthDialog$4\n*L\n5520#1:5578,6\n*E\n"
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
.field final synthetic $flow:Lcom/hermes/android/data/XaiAuthFlow;

.field final synthetic $onDismiss:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/hermes/android/data/XaiAuthFlow$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9hPzJ87be4JEnRt6UEC2lSrEDJU(Lcom/hermes/android/data/XaiAuthFlow;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->invoke$lambda$1$lambda$0(Lcom/hermes/android/data/XaiAuthFlow;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/data/XaiAuthFlow;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/XaiAuthFlow;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/hermes/android/data/XaiAuthFlow$State;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->$flow:Lcom/hermes/android/data/XaiAuthFlow;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->$onDismiss:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->$state$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/hermes/android/data/XaiAuthFlow;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 5520
    invoke-virtual {p0}, Lcom/hermes/android/data/XaiAuthFlow;->cancel()V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5518
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v11, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 5519
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5522
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 5519
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.hermes.android.XaiAuthDialog.<anonymous> (MainActivity.kt:5518)"

    const v4, -0x3f146a5c

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->$state$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/hermes/android/MainActivityKt;->access$XaiAuthDialog$lambda$525(Landroidx/compose/runtime/State;)Lcom/hermes/android/data/XaiAuthFlow$State;

    move-result-object v1

    instance-of v1, v1, Lcom/hermes/android/data/XaiAuthFlow$State$Success;

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->$state$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/hermes/android/MainActivityKt;->access$XaiAuthDialog$lambda$525(Landroidx/compose/runtime/State;)Lcom/hermes/android/data/XaiAuthFlow$State;

    move-result-object v1

    instance-of v1, v1, Lcom/hermes/android/data/XaiAuthFlow$State$Failed;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v2

    :goto_2
    const v3, 0x1162a8f3

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->$flow:Lcom/hermes/android/data/XaiAuthFlow;

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->$onDismiss:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 5520
    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->$flow:Lcom/hermes/android/data/XaiAuthFlow;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4;->$onDismiss:Lkotlin/jvm/functions/Function0;

    .line 5578
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_5

    .line 5579
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v6, v3, :cond_6

    .line 5520
    :cond_5
    new-instance v6, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v5}, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/data/XaiAuthFlow;Lkotlin/jvm/functions/Function0;)V

    .line 5581
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 5520
    :cond_6
    move-object v3, v6

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v4, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4$2;

    invoke-direct {v4, v1}, Lcom/hermes/android/MainActivityKt$XaiAuthDialog$4$2;-><init>(Z)V

    const/16 v1, 0x36

    const v5, 0x242eace1

    invoke-static {v5, v2, v4, v11, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function3;

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fe

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v1, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v14

    move-object/from16 v11, p1

    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    :goto_3
    return-void
.end method
