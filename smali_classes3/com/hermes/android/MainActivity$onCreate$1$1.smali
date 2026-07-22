.class final Lcom/hermes/android/MainActivity$onCreate$1$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivity$onCreate$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivity$onCreate$1$1\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5577:1\n1225#2,6:5578\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivity$onCreate$1$1\n*L\n195#1:5578,6\n*E\n"
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
.field final synthetic this$0:Lcom/hermes/android/MainActivity;


# direct methods
.method public static synthetic $r8$lambda$ovIYgz8KMqsomYOuTTnNJUHsSY8(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/TerminalSessionManager;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivity$onCreate$1$1;->invoke$lambda$1$lambda$0(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/TerminalSessionManager;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hermes/android/MainActivity$onCreate$1$1;->this$0:Lcom/hermes/android/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/TerminalSessionManager;
    .locals 0

    .line 195
    invoke-static {p0}, Lcom/hermes/android/MainActivity;->access$getSessionManager(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/TerminalSessionManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 191
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivity$onCreate$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 192
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 192
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.hermes.android.MainActivity.onCreate.<anonymous>.<anonymous> (MainActivity.kt:191)"

    const v2, -0x18ed577a

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 193
    :cond_2
    iget-object p2, p0, Lcom/hermes/android/MainActivity$onCreate$1$1;->this$0:Lcom/hermes/android/MainActivity;

    invoke-static {p2}, Lcom/hermes/android/MainActivity;->access$getBootstrapManager$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/BootstrapManager;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    const-string p2, "bootstrapManager"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v1, p2

    .line 194
    :goto_1
    iget-object p2, p0, Lcom/hermes/android/MainActivity$onCreate$1$1;->this$0:Lcom/hermes/android/MainActivity;

    invoke-static {p2}, Lcom/hermes/android/MainActivity;->access$getSessionManagerReady$p(Lcom/hermes/android/MainActivity;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroidx/compose/runtime/State;

    const p2, 0x271c6877

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object p2, p0, Lcom/hermes/android/MainActivity$onCreate$1$1;->this$0:Lcom/hermes/android/MainActivity;

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result p2

    .line 195
    iget-object v3, p0, Lcom/hermes/android/MainActivity$onCreate$1$1;->this$0:Lcom/hermes/android/MainActivity;

    .line 5578
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_4

    .line 5579
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v4, p2, :cond_5

    .line 195
    :cond_4
    new-instance v4, Lcom/hermes/android/MainActivity$onCreate$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/hermes/android/MainActivity$onCreate$1$1$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/MainActivity;)V

    .line 5581
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 195
    :cond_5
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 196
    iget-object p2, p0, Lcom/hermes/android/MainActivity$onCreate$1$1;->this$0:Lcom/hermes/android/MainActivity;

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 197
    iget-object p2, p0, Lcom/hermes/android/MainActivity$onCreate$1$1;->this$0:Lcom/hermes/android/MainActivity;

    move-object v5, p2

    check-cast v5, Landroidx/appcompat/app/AppCompatActivity;

    .line 198
    invoke-static {p2}, Lcom/hermes/android/MainActivity;->access$getAdManager$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/data/AdManager;

    move-result-object p2

    if-nez p2, :cond_6

    const-string p2, "adManager"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_2

    :cond_6
    move-object v6, p2

    .line 199
    :goto_2
    iget-object p2, p0, Lcom/hermes/android/MainActivity$onCreate$1$1;->this$0:Lcom/hermes/android/MainActivity;

    invoke-static {p2}, Lcom/hermes/android/MainActivity;->access$getBillingRepository$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/data/BillingRepository;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p2, "billingRepository"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v0

    goto :goto_3

    :cond_7
    move-object v7, p2

    .line 200
    :goto_3
    iget-object p2, p0, Lcom/hermes/android/MainActivity$onCreate$1$1;->this$0:Lcom/hermes/android/MainActivity;

    invoke-static {p2}, Lcom/hermes/android/MainActivity;->access$getProStatus$p(Lcom/hermes/android/MainActivity;)Lcom/hermes/android/data/ProStatus;

    move-result-object p2

    if-nez p2, :cond_8

    const-string p2, "proStatus"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_4

    :cond_8
    move-object v8, p2

    :goto_4
    sget p2, Lcom/hermes/android/data/AdManager;->$stable:I

    shl-int/lit8 p2, p2, 0xf

    sget v0, Lcom/hermes/android/data/BillingRepository;->$stable:I

    shl-int/lit8 v0, v0, 0x12

    or-int/2addr p2, v0

    sget v0, Lcom/hermes/android/data/ProStatus;->$stable:I

    shl-int/lit8 v0, v0, 0x15

    or-int v10, p2, v0

    move-object v9, p1

    .line 192
    invoke-static/range {v1 .. v10}, Lcom/hermes/android/MainActivityKt;->HermesApp(Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AdManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    :goto_5
    return-void
.end method
