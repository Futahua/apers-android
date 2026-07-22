.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.hermes.android.MainActivityKt$SettingsTabContent$20$1$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $apiKey:Ljava/lang/String;

.field final synthetic $envVar:Ljava/lang/String;

.field final synthetic $hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

.field label:I


# direct methods
.method constructor <init>(Lcom/hermes/android/data/HermesConfigRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/HermesConfigRepository;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$envVar:Ljava/lang/String;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$apiKey:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$envVar:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$apiKey:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;-><init>(Lcom/hermes/android/data/HermesConfigRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 3449
    iget v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3450
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$envVar:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$apiKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hermes/android/data/HermesConfigRepository;->writeApiKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$envVar:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x47fca929

    if-eq v0, v1, :cond_3

    const v1, 0x4c5d37cc    # 5.799096E7f

    if-eq v0, v1, :cond_1

    const v1, 0x5040eba8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "TAVILY_API_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3453
    const-string p1, "tavily"

    goto :goto_1

    .line 3452
    :cond_1
    const-string v0, "FIRECRAWL_API_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 3455
    :cond_2
    const-string p1, "firecrawl"

    goto :goto_1

    .line 3452
    :cond_3
    const-string v0, "EXA_API_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 3456
    :cond_4
    :goto_0
    const-string p1, ""

    goto :goto_1

    .line 3454
    :cond_5
    const-string p1, "exa"

    .line 3458
    :goto_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$20$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    invoke-virtual {v0, p1}, Lcom/hermes/android/data/HermesConfigRepository;->setWebBackend(Ljava/lang/String;)V

    .line 3459
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 3449
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
