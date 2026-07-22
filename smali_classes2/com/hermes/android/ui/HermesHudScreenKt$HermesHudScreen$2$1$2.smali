.class final Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2;
.super Ljava/lang/Object;
.source "HermesHudScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/HermesHudScreenKt;->HermesHudScreen(Lcom/hermes/android/data/HermesHudRepository;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nHermesHudScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HermesHudScreen.kt\ncom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,623:1\n1872#2,2:624\n1874#2:633\n1225#3,6:626\n149#4:632\n*S KotlinDebug\n*F\n+ 1 HermesHudScreen.kt\ncom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2\n*L\n140#1:624,2\n140#1:633\n143#1:626,6\n144#1:632\n*E\n"
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
.field final synthetic $selectedTab$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$nMXqEb_JnjaYe9ENrWe9G5De_Wo(ILandroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2;->invoke$lambda$2$lambda$1$lambda$0(ILandroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2;->$tabs:Ljava/util/List;

    iput-object p2, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2;->$selectedTab$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1$lambda$0(ILandroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 0

    .line 143
    invoke-static {p1, p0}, Lcom/hermes/android/ui/HermesHudScreenKt;->access$HermesHudScreen$lambda$20(Landroidx/compose/runtime/MutableIntState;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v15, 0x2

    if-ne v2, v15, :cond_1

    .line 140
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 140
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.hermes.android.ui.HermesHudScreen.<anonymous>.<anonymous>.<anonymous> (HermesHudScreen.kt:139)"

    const v4, -0x26b24d03

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2;->$tabs:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v13, v0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2;->$selectedTab$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 625
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v1, v17

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v18, v1, 0x1

    if-gez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v2, Ljava/lang/String;

    .line 142
    invoke-static {v13}, Lcom/hermes/android/ui/HermesHudScreenKt;->access$HermesHudScreen$lambda$19(Landroidx/compose/runtime/MutableIntState;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move/from16 v3, v17

    :goto_2
    const v5, -0x43649fd4

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    .line 626
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_5

    .line 627
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_6

    .line 143
    :cond_5
    new-instance v6, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v13}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2$$ExternalSyntheticLambda0;-><init>(ILandroidx/compose/runtime/MutableIntState;)V

    .line 629
    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 143
    :cond_6
    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 144
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v6, Landroidx/compose/ui/Modifier;

    int-to-float v7, v15

    .line 632
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 144
    invoke-static {v6, v7, v8, v15, v9}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    .line 145
    new-instance v7, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2$1$2;

    invoke-direct {v7, v1, v13, v2}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$2$1$2$1$2;-><init>(ILandroidx/compose/runtime/MutableIntState;Ljava/lang/String;)V

    const/16 v1, 0x36

    const v2, -0x370163c

    invoke-static {v2, v4, v7, v14, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function3;

    const v12, 0xc00180

    const/16 v19, 0x78

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v20, 0x0

    move v1, v3

    move-object v2, v5

    move-object v3, v6

    move-wide v5, v7

    move-wide/from16 v7, v20

    move-object/from16 v11, p1

    move-object/from16 v20, v13

    move/from16 v13, v19

    .line 141
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/TabKt;->Tab-bogVsAg(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZJJLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move/from16 v1, v18

    move-object/from16 v13, v20

    goto/16 :goto_1

    .line 633
    :cond_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    :goto_3
    return-void
.end method
