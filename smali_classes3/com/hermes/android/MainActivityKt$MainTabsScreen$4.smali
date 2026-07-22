.class final Lcom/hermes/android/MainActivityKt$MainTabsScreen$4;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->MainTabsScreen(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AdManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$MainTabsScreen$4\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,5577:1\n149#2:5578\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$MainTabsScreen$4\n*L\n1718#1:5578\n*E\n"
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

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4;->$adManager:Lcom/hermes/android/data/AdManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4;->$selectedTab$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1715
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1716
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1746
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 1716
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.hermes.android.MainTabsScreen.<anonymous> (MainActivity.kt:1715)"

    const v2, 0x12f621ea

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const-wide v0, 0xff0e1220L

    .line 1717
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    move-result-wide v3

    const/4 p2, 0x0

    int-to-float p2, p2

    .line 5578
    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v7

    .line 1719
    new-instance p2, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4;->$adManager:Lcom/hermes/android/data/AdManager;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4;->$selectedTab$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p2, v0, v1, v2}, Lcom/hermes/android/MainActivityKt$MainTabsScreen$4$1;-><init>(Lcom/hermes/android/data/AdManager;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;)V

    const/16 v0, 0x36

    const v1, 0x47ce7011

    const/4 v2, 0x1

    invoke-static {v1, v2, p2, p1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Lkotlin/jvm/functions/Function3;

    const v11, 0x30c30

    const/16 v12, 0x15

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v10, p1

    .line 1716
    invoke-static/range {v2 .. v12}, Landroidx/compose/material3/NavigationBarKt;->NavigationBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
