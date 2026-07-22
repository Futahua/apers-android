.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.hermes.android.MainActivityKt$SettingsTabContent$13$4$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

.field final synthetic $modelSuggestions$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $provider:Lcom/hermes/android/data/AiProvider;

.field label:I


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/hermes/android/data/AiProvider;",
            "Lcom/hermes/android/data/HermesConfigRepository;",
            "Lcom/hermes/android/BootstrapManager;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$modelSuggestions$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$modelSuggestions$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 3217
    iget v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3218
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$modelSuggestions$delegate:Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/hermes/android/data/ModelCatalogCache;->INSTANCE:Lcom/hermes/android/data/ModelCatalogCache;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v2}, Lcom/hermes/android/data/AiProvider;->getHermesProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hermes/android/data/ModelCatalogCache;->cached(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$330$lambda$326(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    .line 3219
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getRequiresKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v0}, Lcom/hermes/android/data/AiProvider;->getEnvVar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hermes/android/data/HermesConfigRepository;->hasApiKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3220
    :cond_0
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {p1}, Lcom/hermes/android/BootstrapManager;->isInstalled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {p1}, Lcom/hermes/android/BootstrapManager;->isHermesInstalled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3221
    sget-object v0, Lcom/hermes/android/data/ModelCatalogCache;->INSTANCE:Lcom/hermes/android/data/ModelCatalogCache;

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getHermesProvider()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/data/ModelCatalogCache;->needsRefresh$default(Lcom/hermes/android/data/ModelCatalogCache;Landroid/content/Context;Ljava/lang/String;JILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3223
    sget-object p1, Lcom/hermes/android/data/ModelCatalogCache;->INSTANCE:Lcom/hermes/android/data/ModelCatalogCache;

    .line 3224
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v1}, Lcom/hermes/android/data/AiProvider;->getHermesProvider()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1$fresh$1;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-direct {v2, v3}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1$fresh$1;-><init>(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 3223
    invoke-virtual {p1, v0, v1, v2}, Lcom/hermes/android/data/ModelCatalogCache;->fetchAndCache(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p1

    .line 3226
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$4$1$1;->$modelSuggestions$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, p1}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$330$lambda$326(Landroidx/compose/runtime/MutableState;Ljava/util/List;)V

    .line 3228
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 3217
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
