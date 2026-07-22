.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.hermes.android.MainActivityKt$SettingsTabContent$13$6$1$1$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $effectiveApiMode:Ljava/lang/String;

.field final synthetic $effectiveKey:Ljava/lang/String;

.field final synthetic $effectiveModel:Ljava/lang/String;

.field final synthetic $effectiveUrl:Ljava/lang/String;

.field final synthetic $hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

.field final synthetic $provider:Lcom/hermes/android/data/AiProvider;

.field label:I


# direct methods
.method constructor <init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/HermesConfigRepository;",
            "Lcom/hermes/android/data/AiProvider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveModel:Ljava/lang/String;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveApiMode:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveModel:Ljava/lang/String;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveApiMode:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;-><init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 3343
    iget v1, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->label:I

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3344
    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    .line 3345
    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveUrl:Ljava/lang/String;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveKey:Ljava/lang/String;

    .line 3346
    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveModel:Ljava/lang/String;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveApiMode:Ljava/lang/String;

    .line 3344
    invoke-virtual/range {v2 .. v7}, Lcom/hermes/android/data/HermesConfigRepository;->upsertCustomProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    .line 3351
    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveModel:Ljava/lang/String;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveUrl:Ljava/lang/String;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveKey:Ljava/lang/String;

    iget-object v13, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveApiMode:Ljava/lang/String;

    const/16 v15, 0x20

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 3350
    invoke-static/range {v8 .. v16}, Lcom/hermes/android/data/HermesConfigRepository;->writeModelConfig$default(Lcom/hermes/android/data/HermesConfigRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 3355
    sget-object v1, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v2}, Lcom/hermes/android/data/AiProvider;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v3}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;->$effectiveModel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/hermes/android/ModelSwitchPrompt;->offer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3356
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 3343
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
