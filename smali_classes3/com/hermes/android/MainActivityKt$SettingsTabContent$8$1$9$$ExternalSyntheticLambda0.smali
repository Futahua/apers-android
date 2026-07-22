.class public final synthetic Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/LifecycleCoroutineScope;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field public final synthetic f$3:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$4:Lcom/hermes/android/data/HermesConfigRepository;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$7:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$8:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$9:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$3:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$4:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$7:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$8:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$9:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$3:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$4:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$5:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$6:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$7:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$8:Landroidx/compose/runtime/MutableState;

    iget-object v9, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9$$ExternalSyntheticLambda0;->f$9:Landroidx/compose/runtime/MutableState;

    move-object v10, p1

    check-cast v10, Lcom/hermes/android/data/AiProvider;

    invoke-static/range {v0 .. v10}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$8$1$9;->$r8$lambda$_-e8DrJG7ktjm1JMh-67HBdd9ZE(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/compose/runtime/MutableState;Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/HermesConfigRepository;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
