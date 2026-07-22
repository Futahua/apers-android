.class final Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$MainTabsScreen$4;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/RowScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$MainTabsScreen$4$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1863#2:5578\n1864#2:5585\n1225#3,6:5579\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$MainTabsScreen$4$1\n*L\n1720#1:5578\n1720#1:5585\n1723#1:5579,6\n*E\n"
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
.field final synthetic $adManager:Lcom/hermes/android/data/AdManager;

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $selectedTab$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BottomTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FknVZSyr4iW82zRx1ci5k-dPqiQ(Lcom/hermes/android/BottomTab;Lcom/hermes/android/data/AdManager;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;->invoke$lambda$3$lambda$2$lambda$1(Lcom/hermes/android/BottomTab;Lcom/hermes/android/data/AdManager;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wTS5FK8ksWm4uNPDFHHW69QcZq4(Lcom/hermes/android/BottomTab;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;->invoke$lambda$3$lambda$2$lambda$1$lambda$0(Lcom/hermes/android/BottomTab;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/data/AdManager;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/AdManager;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BottomTab;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;->$adManager:Lcom/hermes/android/data/AdManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;->$selectedTab$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$3$lambda$2$lambda$1(Lcom/hermes/android/BottomTab;Lcom/hermes/android/data/AdManager;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 2

    .line 1724
    sget-object v0, Lcom/hermes/android/BottomTab;->Terminal:Lcom/hermes/android/BottomTab;

    if-ne p0, v0, :cond_2

    invoke-static {p3}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$85(Landroidx/compose/runtime/MutableState;)Lcom/hermes/android/BottomTab;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/BottomTab;->Terminal:Lcom/hermes/android/BottomTab;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/hermes/android/data/AdManager;->shouldShowAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1725
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 1727
    new-instance v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/BottomTab;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {p1, p2, v0}, Lcom/hermes/android/data/AdManager;->showInterstitial(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 1729
    :cond_1
    invoke-static {p3, p0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$86(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BottomTab;)V

    goto :goto_1

    .line 1732
    :cond_2
    invoke-static {p3, p0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$86(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BottomTab;)V

    .line 1734
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$3$lambda$2$lambda$1$lambda$0(Lcom/hermes/android/BottomTab;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    .line 1727
    invoke-static {p1, p0}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$86(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BottomTab;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1719
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;->invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    const-string v1, "$this$NavigationBar"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_1

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p3, v1

    move v12, v1

    goto :goto_1

    :cond_1
    move/from16 v12, p3

    :goto_1
    and-int/lit8 v1, v12, 0x13

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 1720
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 1745
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 1720
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "com.hermes.android.MainTabsScreen.<anonymous>.<anonymous> (MainActivity.kt:1719)"

    const v3, 0x47ce7011

    invoke-static {v3, v12, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/hermes/android/BottomTab;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;->$adManager:Lcom/hermes/android/data/AdManager;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;->$selectedTab$delegate:Landroidx/compose/runtime/MutableState;

    .line 5578
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hermes/android/BottomTab;

    .line 1722
    invoke-static {v9}, Lcom/hermes/android/MainActivityKt;->access$MainTabsScreen$lambda$85(Landroidx/compose/runtime/MutableState;)Lcom/hermes/android/BottomTab;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v2, v1, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    const v4, -0x75173a7c

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    .line 5579
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_6

    .line 5580
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_7

    .line 1723
    :cond_6
    new-instance v5, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v11, v10, v9}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/BottomTab;Lcom/hermes/android/data/AdManager;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)V

    .line 5582
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1723
    :cond_7
    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 1735
    new-instance v5, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1$1$2;

    invoke-direct {v5, v1}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1$1$2;-><init>(Lcom/hermes/android/BottomTab;)V

    const v6, 0x7b0e6f49

    const/16 v7, 0x36

    invoke-static {v6, v3, v5, v13, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 1736
    new-instance v6, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1$1$3;

    invoke-direct {v6, v1}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1$1$3;-><init>(Lcom/hermes/android/BottomTab;)V

    const v1, -0x7e04ff1a

    invoke-static {v1, v3, v6, v13, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 1737
    sget-object v15, Landroidx/compose/material3/NavigationBarItemDefaults;->INSTANCE:Landroidx/compose/material3/NavigationBarItemDefaults;

    .line 1738
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v16

    .line 1739
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v18

    const-wide v20, 0xff3b82cfL

    .line 1740
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v20

    .line 1741
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v22

    const/16 v28, 0xe

    const/16 v29, 0x0

    const v24, 0x3f0ccccd    # 0.55f

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v29}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v22

    .line 1742
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v24

    const/16 v30, 0xe

    const/16 v31, 0x0

    const v26, 0x3f0ccccd    # 0.55f

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-static/range {v24 .. v31}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v24

    sget v1, Landroidx/compose/material3/NavigationBarItemDefaults;->$stable:I

    shl-int/lit8 v1, v1, 0x15

    or-int/lit16 v1, v1, 0x6db6

    move/from16 v31, v1

    const/16 v32, 0x60

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    move-object/from16 v30, p2

    .line 1737
    invoke-virtual/range {v15 .. v32}, Landroidx/compose/material3/NavigationBarItemDefaults;->colors-69fazGs(JJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/NavigationBarItemColors;

    move-result-object v15

    and-int/lit8 v1, v12, 0xe

    const v3, 0x180c00

    or-int v16, v1, v3

    const/16 v17, 0x158

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move-object v9, v15

    move-object v15, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v11

    move-object/from16 v11, p2

    move/from16 v20, v12

    move/from16 v12, v16

    move/from16 v13, v17

    .line 1721
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/NavigationBarKt;->NavigationBarItem(Landroidx/compose/foundation/layout/RowScope;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationBarItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v13, p2

    move-object v10, v15

    move-object/from16 v9, v18

    move-object/from16 v11, v19

    move/from16 v12, v20

    goto/16 :goto_3

    .line 5585
    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    :goto_5
    return-void
.end method
