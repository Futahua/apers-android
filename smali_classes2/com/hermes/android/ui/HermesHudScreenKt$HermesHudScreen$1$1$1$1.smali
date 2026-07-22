.class final Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HermesHudScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.hermes.android.ui.HermesHudScreenKt$HermesHudScreen$1$1$1$1"
    f = "HermesHudScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$CronJob;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $cronJobs$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$CronJob;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $isLoading$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$MemoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $memories$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$MemoryEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $o:Lcom/hermes/android/data/HermesHudRepository$HudOverview;

.field final synthetic $overview$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/HermesHudRepository$HudOverview;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sessions$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$ToolUsage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tools$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$ToolUsage;",
            ">;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lcom/hermes/android/data/HermesHudRepository$HudOverview;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/HermesHudRepository$HudOverview;",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$ToolUsage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$MemoryEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$CronJob;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/HermesHudRepository$HudOverview;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$ToolUsage;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$MemoryEntry;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/HermesHudRepository$CronJob;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$o:Lcom/hermes/android/data/HermesHudRepository$HudOverview;

    iput-object p2, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$s:Ljava/util/List;

    iput-object p3, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$t:Ljava/util/List;

    iput-object p4, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$m:Ljava/util/List;

    iput-object p5, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$c:Ljava/util/List;

    iput-object p6, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$overview$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$sessions$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$tools$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$memories$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$cronJobs$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p11, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$isLoading$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;

    iget-object v1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$o:Lcom/hermes/android/data/HermesHudRepository$HudOverview;

    iget-object v2, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$s:Ljava/util/List;

    iget-object v3, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$t:Ljava/util/List;

    iget-object v4, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$m:Ljava/util/List;

    iget-object v5, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$c:Ljava/util/List;

    iget-object v6, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$overview$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$sessions$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$tools$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$memories$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$cronJobs$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$isLoading$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;-><init>(Lcom/hermes/android/data/HermesHudRepository$HudOverview;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 84
    iget v0, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$overview$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$o:Lcom/hermes/android/data/HermesHudRepository$HudOverview;

    invoke-static {p1, v0}, Lcom/hermes/android/ui/HermesHudScreenKt;->access$HermesHudScreen$lambda$2(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/HermesHudRepository$HudOverview;)V

    .line 86
    iget-object p1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$sessions$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$s:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/hermes/android/ui/HermesHudScreenKt;->access$HermesHudScreen$lambda$5(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    .line 87
    iget-object p1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$tools$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$t:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/hermes/android/ui/HermesHudScreenKt;->access$HermesHudScreen$lambda$8(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    .line 88
    iget-object p1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$memories$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$m:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/hermes/android/ui/HermesHudScreenKt;->access$HermesHudScreen$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    .line 89
    iget-object p1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$cronJobs$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v0, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/hermes/android/ui/HermesHudScreenKt;->access$HermesHudScreen$lambda$14(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    .line 90
    iget-object p1, p0, Lcom/hermes/android/ui/HermesHudScreenKt$HermesHudScreen$1$1$1$1;->$isLoading$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hermes/android/ui/HermesHudScreenKt;->access$HermesHudScreen$lambda$17(Landroidx/compose/runtime/MutableState;Z)V

    .line 91
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
