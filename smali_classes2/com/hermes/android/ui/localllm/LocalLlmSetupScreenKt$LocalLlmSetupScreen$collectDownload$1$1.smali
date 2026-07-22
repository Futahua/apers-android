.class final Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;
.super Ljava/lang/Object;
.source "LocalLlmSetupScreen.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
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
.field final synthetic $busyLabel$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dlState$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/llama/ModelDownloadState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dlTarget$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $errorText$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onActivated:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onBack:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $retry:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $retryAction$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $strFailedChecksum:Ljava/lang/String;

.field final synthetic $strFailedFormat:Ljava/lang/String;

.field final synthetic $strFailedLoad:Ljava/lang/String;

.field final synthetic $strFailedNetwork:Ljava/lang/String;

.field final synthetic $strFailedRate:Ljava/lang/String;

.field final synthetic $strFailedStorage:Ljava/lang/String;

.field final synthetic $strFailedUnknown:Ljava/lang/String;

.field final synthetic $strStarting:Ljava/lang/String;

.field final synthetic $target:Lcom/hermes/android/ui/localllm/DlTarget;


# direct methods
.method constructor <init>(Lcom/hermes/android/ui/localllm/DlTarget;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/llama/ModelDownloadState;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$target:Lcom/hermes/android/ui/localllm/DlTarget;

    move-object v1, p2

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$retry:Lkotlin/jvm/functions/Function0;

    move-object v1, p3

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$dlState$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p4

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$dlTarget$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p5

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object v1, p6

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p7

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strStarting:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$onBack:Lkotlin/jvm/functions/Function0;

    move-object v1, p9

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedLoad:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p11

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p12

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$context:Landroid/content/Context;

    move-object v1, p13

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$onActivated:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedNetwork:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedStorage:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedChecksum:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedFormat:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedRate:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedUnknown:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$retryAction$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/hermes/android/llama/ModelDownloadState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/llama/ModelDownloadState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 404
    iget-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$dlState$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2, p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$12(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/llama/ModelDownloadState;)V

    .line 406
    instance-of p2, p1, Lcom/hermes/android/llama/ModelDownloadState$Ready;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 407
    iget-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$dlState$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$12(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/llama/ModelDownloadState;)V

    .line 408
    iget-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$dlTarget$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1, v0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$15(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/ui/localllm/DlTarget;)V

    .line 409
    iget-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    invoke-static {p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$5(Landroidx/compose/runtime/MutableIntState;)I

    move-result p1

    iget-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$6(Landroidx/compose/runtime/MutableIntState;I)V

    .line 411
    iget-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$target:Lcom/hermes/android/ui/localllm/DlTarget;

    sget-object p2, Lcom/hermes/android/ui/localllm/DlTarget;->NPU_BUNDLE:Lcom/hermes/android/ui/localllm/DlTarget;

    if-ne p1, p2, :cond_1

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strStarting:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$onBack:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedLoad:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$onActivated:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    const/16 v11, 0x400

    const/4 v12, 0x0

    const-string v9, "npu"

    const/4 v10, 0x0

    invoke-static/range {v0 .. v12}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->LocalLlmSetupScreen$activateEngine$default(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    .line 413
    :cond_0
    instance-of p2, p1, Lcom/hermes/android/llama/ModelDownloadState$Failed;

    if-eqz p2, :cond_1

    .line 414
    iget-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$dlState$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2, v0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$12(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/llama/ModelDownloadState;)V

    .line 415
    iget-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$dlTarget$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2, v0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$15(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/ui/localllm/DlTarget;)V

    .line 416
    iget-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedNetwork:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedStorage:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedChecksum:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedFormat:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedRate:Ljava/lang/String;

    iget-object v5, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$strFailedUnknown:Ljava/lang/String;

    check-cast p1, Lcom/hermes/android/llama/ModelDownloadState$Failed;

    invoke-virtual {p1}, Lcom/hermes/android/llama/ModelDownloadState$Failed;->getReason()Lcom/hermes/android/llama/ModelDownloadState$FailureReason;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$failureText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hermes/android/llama/ModelDownloadState$FailureReason;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$21(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 417
    iget-object p1, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$retryAction$delegate:Landroidx/compose/runtime/MutableState;

    iget-object p2, p0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->$retry:Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$24(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    .line 421
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 403
    check-cast p1, Lcom/hermes/android/llama/ModelDownloadState;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$collectDownload$1$1;->emit(Lcom/hermes/android/llama/ModelDownloadState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
