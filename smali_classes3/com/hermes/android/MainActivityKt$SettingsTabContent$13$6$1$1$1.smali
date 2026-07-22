.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6;->invoke(Landroidx/compose/runtime/Composer;I)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5577:1\n1#2:5578\n*E\n"
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
    c = "com.hermes.android.MainActivityKt$SettingsTabContent$13$6$1$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {
        0xd0f,
        0xd2a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $baseUrlInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

.field final synthetic $hasInput:Z

.field final synthetic $hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

.field final synthetic $modelIdInput$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $provider:Lcom/hermes/android/data/AiProvider;

.field final synthetic $saveToken:J

.field label:I


# direct methods
.method constructor <init>(ZLcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;JLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/hermes/android/data/AiProvider;",
            "Lcom/hermes/android/data/HermesConfigRepository;",
            "Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;",
            "J",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hasInput:Z

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

    iput-wide p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$saveToken:J

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$baseUrlInput$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$modelIdInput$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;

    iget-boolean v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hasInput:Z

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

    iget-wide v5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$saveToken:J

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$baseUrlInput$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$modelIdInput$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;-><init>(ZLcom/hermes/android/data/AiProvider;Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;JLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 3324
    iget v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3326
    iget-boolean p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hasInput:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getEnvVar()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3327
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v1}, Lcom/hermes/android/data/AiProvider;->getEnvVar()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$241(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/hermes/android/data/HermesConfigRepository;->writeApiKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    :cond_3
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->isCustom()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 3334
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$baseUrlInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$330$lambda$317(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_5

    move-object p1, v5

    :cond_5
    check-cast p1, Ljava/lang/CharSequence;

    .line 3335
    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/hermes/android/data/AiProvider;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object p1

    :cond_6
    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    .line 3336
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v2}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$apiKeyDialogInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$241(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/hermes/android/data/HermesConfigRepository;->effectiveCustomKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3337
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$modelIdInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$330$lambda$322(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;->getModelId()Ljava/lang/String;

    move-result-object v1

    :cond_7
    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    move-object v5, v1

    :goto_2
    move-object p1, v5

    :cond_9
    move-object v11, p1

    check-cast v11, Ljava/lang/String;

    .line 3341
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$customExisting:Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/hermes/android/data/HermesConfigRepository$CustomProviderConfig;->getApiMode()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    :cond_a
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getApiMode()Ljava/lang/String;

    move-result-object p1

    :cond_b
    move-object v12, p1

    .line 3342
    move-object p1, v9

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 3343
    sget-object p1, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    iget-wide v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$saveToken:J

    new-instance v4, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    const/4 v13, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$1;-><init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->label:I

    invoke-virtual {p1, v1, v2, v4, v5}, Lcom/hermes/android/ProviderSwitchCoordinator;->commitIfLatest(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_11

    return-object v0

    .line 3359
    :cond_c
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getBaseUrlEnvVar()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$baseUrlInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$330$lambda$317(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 3362
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {v3}, Lcom/hermes/android/data/AiProvider;->getBaseUrlEnvVar()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$baseUrlInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$330$lambda$317(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/hermes/android/data/HermesConfigRepository;->writeApiKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    :cond_d
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getHermesProvider()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 3367
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getAllowsCustomModel()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3368
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$modelIdInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$330$lambda$322(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Lcom/hermes/android/data/AiProvider;->getHermesDefaultModel()Ljava/lang/String;

    move-result-object p1

    :cond_e
    check-cast p1, Ljava/lang/String;

    goto :goto_3

    .line 3369
    :cond_f
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getHermesDefaultModel()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$modelIdInput$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v3}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$330$lambda$322(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    check-cast p1, Ljava/lang/String;

    .line 3370
    :goto_3
    sget-object v3, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    iget-wide v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$saveToken:J

    new-instance v6, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$2;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$hermesRepo:Lcom/hermes/android/data/HermesConfigRepository;

    iget-object v8, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->$provider:Lcom/hermes/android/data/AiProvider;

    invoke-direct {v6, v7, v8, p1, v1}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1$2;-><init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$13$6$1$1$1;->label:I

    invoke-virtual {v3, v4, v5, v6, p1}, Lcom/hermes/android/ProviderSwitchCoordinator;->commitIfLatest(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_11

    return-object v0

    .line 3377
    :cond_11
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
