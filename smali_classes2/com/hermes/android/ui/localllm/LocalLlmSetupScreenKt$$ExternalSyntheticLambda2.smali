.class public final synthetic Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic f$7:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Ljava/lang/String;Landroidx/activity/compose/ManagedActivityResultLauncher;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iput-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$2:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$4:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$5:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/runtime/MutableIntState;

    iput-object p8, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$7:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$0:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$2:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$4:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$5:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$6:Landroidx/compose/runtime/MutableIntState;

    iget-object v7, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda2;->f$7:Landroidx/compose/runtime/MutableState;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static/range {v0 .. v8}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->$r8$lambda$jef76r4jjkrINFq-CbX64PlXTDU(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Ljava/lang/String;Landroidx/activity/compose/ManagedActivityResultLauncher;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p1

    return-object p1
.end method
