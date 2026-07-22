.class final Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MoaCouncilViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "com.hermes.android.ui.moa.MoaCouncilViewModel$usePreset$1$1$1"
    f = "MoaCouncilViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;


# direct methods
.method constructor <init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iput-object p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->$name:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->$name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;-><init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 100
    iget v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->this$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    invoke-static {p1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel;->access$getRepo$p(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;)Lcom/hermes/android/data/HermesConfigRepository;

    move-result-object v0

    iget-object v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->$name:Ljava/lang/String;

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const-string v1, "moa"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/hermes/android/data/HermesConfigRepository;->writeModelConfig$default(Lcom/hermes/android/data/HermesConfigRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 103
    sget-object p1, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->$name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MoA \u00b7 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moa"

    iget-object v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$usePreset$1$1$1;->$name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/hermes/android/ModelSwitchPrompt;->offer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
