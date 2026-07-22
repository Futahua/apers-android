.class final Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5577:1\n1#2:5578\n*E\n"
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
    c = "com.hermes.android.MainActivityKt$HermesApp$4$8$1$1$1"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $apiKey$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $apiModelId$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $apiProvider$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field label:I


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
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
            "Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v7, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 446
    iget v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->label:I

    if-nez v0, :cond_9

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 447
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/home"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 448
    new-instance v6, Lcom/hermes/android/data/HermesConfigRepository;

    sget-object v0, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    invoke-virtual {v0, p1}, Lcom/hermes/android/HermesPaths;->hermesHome(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v6, p1}, Lcom/hermes/android/data/HermesConfigRepository;-><init>(Ljava/io/File;)V

    .line 449
    sget-object p1, Lcom/hermes/android/data/AiProvider;->Companion:Lcom/hermes/android/data/AiProvider$Companion;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$14(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hermes/android/data/AiProvider$Companion;->findById(Ljava/lang/String;)Lcom/hermes/android/data/AiProvider;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/hermes/android/data/AiProvider;->Companion:Lcom/hermes/android/data/AiProvider$Companion;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider$Companion;->getALL()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/data/AiProvider;

    .line 450
    :cond_0
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$17(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "no-key-required"

    :cond_2
    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 456
    move-object v0, v7

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 457
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getEnvVar()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 458
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getEnvVar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/hermes/android/data/HermesConfigRepository;->writeApiKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_3
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$20(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getApiMode()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/hermes/android/data/HermesConfigRepository;->upsertCustomProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$20(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getApiMode()Ljava/lang/String;

    move-result-object v5

    const/16 p1, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v6

    move-object v3, v7

    move-object v4, v8

    move-object v6, v10

    move v7, p1

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lcom/hermes/android/data/HermesConfigRepository;->writeModelConfig$default(Lcom/hermes/android/data/HermesConfigRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->isOAuth()Z

    move-result v0

    if-nez v0, :cond_8

    .line 466
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getEnvVar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/hermes/android/data/HermesConfigRepository;->writeApiKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getBaseUrlEnvVar()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$17(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 470
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getBaseUrlEnvVar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$17(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/hermes/android/data/HermesConfigRepository;->writeApiKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :cond_5
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getAllowsCustomModel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 475
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1$1;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$20(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getHermesDefaultModel()Ljava/lang/String;

    move-result-object v0

    :cond_6
    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 476
    :cond_7
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getHermesDefaultModel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 477
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getHermesProvider()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 p1, 0x0

    move-object v0, v6

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Lcom/hermes/android/data/HermesConfigRepository;->writeModelConfig$default(Lcom/hermes/android/data/HermesConfigRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 479
    :cond_8
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 446
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
