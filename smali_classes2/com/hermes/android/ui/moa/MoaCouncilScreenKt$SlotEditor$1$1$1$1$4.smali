.class final Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4;
.super Ljava/lang/Object;
.source "MoaCouncilScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nMoaCouncilScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoaCouncilScreen.kt\ncom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,523:1\n1863#2:524\n1864#2:531\n1225#3,6:525\n*S KotlinDebug\n*F\n+ 1 MoaCouncilScreen.kt\ncom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4\n*L\n441#1:524\n441#1:531\n453#1:525,6\n*E\n"
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
.field final synthetic $candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/SlotCandidate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $expanded$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/hermes/android/data/MoaSlot;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UGFeMLsEUwnuESsHCQODcAgrOkU(Lkotlin/jvm/functions/Function1;Lcom/hermes/android/data/SlotCandidate;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4;->invoke$lambda$2$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/hermes/android/data/SlotCandidate;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/SlotCandidate;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hermes/android/data/MoaSlot;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4;->$candidates:Ljava/util/List;

    iput-object p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4;->$onChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$2$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Lcom/hermes/android/data/SlotCandidate;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x0

    .line 454
    invoke-static {p2, v0}, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1;->access$invoke$lambda$11$lambda$8$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    .line 456
    new-instance p2, Lcom/hermes/android/data/MoaSlot;

    invoke-virtual {p1}, Lcom/hermes/android/data/SlotCandidate;->getProviderSlug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hermes/android/data/SlotCandidate;->getDefaultModel()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/hermes/android/data/MoaSlot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 440
    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4;->invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move/from16 v1, p3

    const-string v2, "$this$DropdownMenu"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x11

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 441
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_2

    .line 441
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.hermes.android.ui.moa.SlotEditor.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MoaCouncilScreen.kt:440)"

    const v4, 0x77371f3b

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4;->$candidates:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget-object v14, v0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4;->$onChange:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4;->$expanded$delegate:Landroidx/compose/runtime/MutableState;

    .line 524
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hermes/android/data/SlotCandidate;

    .line 443
    new-instance v2, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4$1$1;

    invoke-direct {v2, v1}, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4$1$1;-><init>(Lcom/hermes/android/data/SlotCandidate;)V

    const/16 v3, 0x36

    const v4, -0x22a41667

    const/4 v5, 0x1

    invoke-static {v4, v5, v2, v13, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const v3, 0x73bef6cd

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 525
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    .line 526
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_4

    .line 453
    :cond_3
    new-instance v4, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v14, v1, v15}, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$SlotEditor$1$1$1$1$4$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/hermes/android/data/SlotCandidate;Landroidx/compose/runtime/MutableState;)V

    .line 528
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 453
    :cond_4
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v11, 0x6

    const/16 v12, 0x1fc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, p2

    .line 442
    invoke-static/range {v1 .. v12}, Landroidx/compose/material3/AndroidMenu_androidKt;->DropdownMenuItem(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    .line 531
    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    :goto_2
    return-void
.end method
