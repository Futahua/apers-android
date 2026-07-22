.class public final synthetic Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/LifecycleCoroutineScope;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    check-cast p1, Lcom/hermes/android/BootstrapManager$Progress;

    invoke-static {v0, v1, p1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$7$5$1$1$report$1;->$r8$lambda$yKwl0Ce9yN9LjHs2H6bNRLlmGjw(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
