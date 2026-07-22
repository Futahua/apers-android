.class public final synthetic Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/activity/compose/ManagedActivityResultLauncher;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$1:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$3:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$4:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$5:Landroidx/compose/runtime/MutableIntState;

    iput-object p7, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$6:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$1:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$3:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$4:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$5:Landroidx/compose/runtime/MutableIntState;

    iget-object v6, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda14;->f$6:Landroidx/compose/runtime/MutableState;

    move-object v7, p1

    check-cast v7, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-static/range {v0 .. v7}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->$r8$lambda$5oiRQWYXfGHI7rJo15NUS0YoT1o(Ljava/lang/String;Landroidx/activity/compose/ManagedActivityResultLauncher;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
