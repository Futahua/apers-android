.class public final synthetic Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda5;->f$2:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda5;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$$ExternalSyntheticLambda5;->f$2:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v1, v2, p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->$r8$lambda$TuvUd1HvTiQ_ognFUfv1WZv14l0(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/Exception;)V

    return-void
.end method
