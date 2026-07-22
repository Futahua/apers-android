.class public final Lcom/hermes/android/pairing/PairingViewModel$Companion;
.super Ljava/lang/Object;
.source "PairingViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/pairing/PairingViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPairingViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PairingViewModel.kt\ncom/hermes/android/pairing/PairingViewModel$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,184:1\n1#2:185\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/hermes/android/pairing/PairingViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "applyPairedConfig",
        "configRepo",
        "Lcom/hermes/android/data/HermesConfigRepository;",
        "config",
        "Lcom/hermes/android/pairing/PairingConfig;",
        "applyPairedConfig$app_release",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$04cviieeS48bbXNew_mUxeDmZ_E(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/hermes/android/pairing/PairingViewModel$Companion;->applyPairedConfig$lambda$4(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uMMqvVMcaaecTcARDAxwjCzc4CU(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/pairing/PairingViewModel$Companion;->applyPairedConfig$lambda$6(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/pairing/PairingViewModel$Companion;-><init>()V

    return-void
.end method

.method private static final applyPairedConfig$lambda$4(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 11

    .line 73
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/hermes/android/data/HermesConfigRepository;->upsertCustomProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v10}, Lcom/hermes/android/data/HermesConfigRepository;->writeModelConfig$default(Lcom/hermes/android/data/HermesConfigRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getId()Ljava/lang/String;

    move-result-object v2

    move-object v3, p4

    invoke-virtual {v0, v1, v2, p4}, Lcom/hermes/android/ModelSwitchPrompt;->offer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final applyPairedConfig$lambda$6(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 97
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getHermesProvider()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/hermes/android/data/HermesConfigRepository;->writeModelConfig$default(Lcom/hermes/android/data/HermesConfigRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 99
    sget-object p0, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    .line 100
    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hermes/android/data/AiProvider;->getHermesProvider()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p0, v0, p1, p2}, Lcom/hermes/android/ModelSwitchPrompt;->offer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final applyPairedConfig$app_release(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/pairing/PairingConfig;)Ljava/lang/String;
    .locals 11

    const-string v0, "API key is required for "

    const-string v1, "Unknown provider: "

    const-string v2, "configRepo"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "config"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_0
    sget-object v2, Lcom/hermes/android/data/AiProvider;->Companion:Lcom/hermes/android/data/AiProvider$Companion;

    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hermes/android/data/AiProvider$Companion;->findById(Ljava/lang/String;)Lcom/hermes/android/data/AiProvider;

    move-result-object v6

    if-nez v6, :cond_0

    .line 49
    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getProviderId()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :cond_0
    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getRequiresKey()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getApiKey()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getEnvVar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/hermes/android/data/HermesConfigRepository;->writeApiKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_2
    sget-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    invoke-virtual {v0}, Lcom/hermes/android/ProviderSwitchCoordinator;->onSelected()J

    move-result-wide v0

    .line 65
    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->isCustom()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 66
    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 67
    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getModelId()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getDefaultModelId()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 68
    move-object v2, v7

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p1, "Base URL is required for custom providers"

    return-object p1

    .line 69
    :cond_5
    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getApiKey()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v2, "no-key-required"

    :cond_6
    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 70
    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getApiMode()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getApiMode()Ljava/lang/String;

    move-result-object p2

    :cond_7
    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    .line 71
    sget-object p2, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    new-instance v2, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda0;

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/hermes/android/ProviderSwitchCoordinator;->commitIfLatestBlocking(JLkotlin/jvm/functions/Function0;)Z

    goto :goto_1

    .line 84
    :cond_8
    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getBaseUrlEnvVar()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 86
    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getBaseUrlEnvVar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/hermes/android/data/HermesConfigRepository;->writeApiKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_9
    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getHermesProvider()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->isOAuth()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->isVirtual()Z

    move-result v2

    if-nez v2, :cond_c

    .line 93
    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getAllowsCustomModel()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 94
    invoke-virtual {p2}, Lcom/hermes/android/pairing/PairingConfig;->getModelId()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getHermesDefaultModel()Ljava/lang/String;

    move-result-object p2

    :cond_a
    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_b
    invoke-virtual {v6}, Lcom/hermes/android/data/AiProvider;->getHermesDefaultModel()Ljava/lang/String;

    move-result-object p2

    .line 96
    :goto_0
    sget-object v2, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    new-instance v3, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v6, p2}, Lcom/hermes/android/pairing/PairingViewModel$Companion$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/data/HermesConfigRepository;Lcom/hermes/android/data/AiProvider;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/hermes/android/ProviderSwitchCoordinator;->commitIfLatestBlocking(JLkotlin/jvm/functions/Function0;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 107
    const-string p2, "Failed to apply config"

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "PairingVM"

    invoke-static {v1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to apply: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method
