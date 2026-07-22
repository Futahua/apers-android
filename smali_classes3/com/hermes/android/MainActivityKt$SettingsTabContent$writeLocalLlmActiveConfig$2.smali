.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->SettingsTabContent$writeLocalLlmActiveConfig(Lcom/hermes/android/data/HermesConfigRepository;Landroidx/appcompat/app/AppCompatActivity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.hermes.android.MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

.field final synthetic $p:Lcom/hermes/android/data/AiProvider;

.field label:I


# direct methods
.method constructor <init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/HermesConfigRepository;",
            "Lcom/hermes/android/data/AiProvider;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;-><init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Landroidx/appcompat/app/AppCompatActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2409
    iget v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2410
    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    .line 2411
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getDefaultModelId()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getApiMode()Ljava/lang/String;

    move-result-object v6

    .line 2410
    const-string v4, "no-key-required"

    invoke-virtual/range {v1 .. v6}, Lcom/hermes/android/data/HermesConfigRepository;->upsertCustomProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    .line 2416
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getDefaultModelId()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getApiMode()Ljava/lang/String;

    move-result-object v12

    .line 2417
    sget-object p1, Lcom/hermes/android/NpuModuleBridge;->INSTANCE:Lcom/hermes/android/NpuModuleBridge;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/hermes/android/NpuModuleBridge;->activeContextLength(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2415
    const-string v11, "no-key-required"

    invoke-virtual/range {v7 .. v13}, Lcom/hermes/android/data/HermesConfigRepository;->writeModelConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2420
    sget-object p1, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v0}, Lcom/hermes/android/data/AiProvider;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$writeLocalLlmActiveConfig$2;->$p:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v2}, Lcom/hermes/android/data/AiProvider;->getDefaultModelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/hermes/android/ModelSwitchPrompt;->offer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2409
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
