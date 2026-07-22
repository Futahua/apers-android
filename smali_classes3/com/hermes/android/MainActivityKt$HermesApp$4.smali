.class final Lcom/hermes/android/MainActivityKt$HermesApp$4;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt;->HermesApp(Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AdManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/MainActivityKt$HermesApp$4$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "Lcom/hermes/android/AppPhase;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$HermesApp$4\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,5577:1\n1225#2,6:5578\n1225#2,6:5584\n1225#2,6:5590\n1225#2,6:5596\n1225#2,6:5602\n1225#2,6:5608\n1225#2,6:5614\n1225#2,6:5620\n1225#2,6:5626\n1225#2,6:5632\n1225#2,6:5638\n1225#2,6:5645\n1225#2,6:5651\n77#3:5644\n1#4:5657\n64#5,5:5658\n81#6:5663\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$HermesApp$4\n*L\n416#1:5578,6\n417#1:5584,6\n422#1:5590,6\n424#1:5596,6\n432#1:5602,6\n434#1:5608,6\n435#1:5614,6\n436#1:5620,6\n510#1:5626,6\n517#1:5632,6\n571#1:5638,6\n593#1:5645,6\n596#1:5651,6\n590#1:5644\n578#1:5658,5\n580#1:5663\n*E\n"
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
.field final synthetic $adManager:Lcom/hermes/android/data/AdManager;

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

.field final synthetic $billingRepository:Lcom/hermes/android/data/BillingRepository;

.field final synthetic $bootstrapManager:Lcom/hermes/android/BootstrapManager;

.field final synthetic $context:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $installError$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $installProgress$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $onboardingOAuth$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pairingVm:Lcom/hermes/android/pairing/PairingViewModel;

.field final synthetic $phase$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/AppPhase;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $proStatus:Lcom/hermes/android/data/ProStatus;

.field final synthetic $sessionManagerProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/hermes/android/TerminalSessionManager;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sessionManagerReady:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0zT9__tB4TIqEBjGiJAiFYmpeuw(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$10$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2HDpGJk2cNNdsM2Z6Q29G5qvVPE(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$20$lambda$19(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2UWOd3zwIMQ2bSpLLIMsmCQroCI(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$14$lambda$13(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5GvubKcJRqsIRV1JWQjZX_EtIXA(Lcom/hermes/android/TerminalSessionManager;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$24$lambda$23$lambda$21(Lcom/hermes/android/TerminalSessionManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5O5DWxvTxi3e_-wQ46fa9P9AvIY(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KC7P9yrYyxRq9ZbxeLq3DBbDfQQ(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$1$lambda$0(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZgtaVdcA3U54hcEIL2dZU-7q9Cs(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$18$lambda$17(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gmGmLEp1Dj4gIjeIn1s8o36ktDU(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$16$lambda$15(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iOQSAT6C3JGf7kxHLVqAQaQt1U4(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$3$lambda$2(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oU5p5u0mhpRJeG-K4tDnFPgL6X0()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$29$lambda$28$lambda$27()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$psqeZNQCWutmTqBJGTAckoN3E8g(Lcom/hermes/android/TerminalSessionManager;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$24$lambda$23(Lcom/hermes/android/TerminalSessionManager;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wBiUjT9LP7hDGO44tJgjP_85Ce0(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$5$lambda$4(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wnq0jb7tKzVnhQS42I4ix1IVF3I(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$12$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/pairing/PairingViewModel;Lkotlinx/coroutines/CoroutineScope;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Lcom/hermes/android/data/AdManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/pairing/PairingViewModel;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lcom/hermes/android/BootstrapManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/hermes/android/TerminalSessionManager;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/hermes/android/data/AdManager;",
            "Lcom/hermes/android/data/BillingRepository;",
            "Lcom/hermes/android/data/ProStatus;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/AppPhase;",
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
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/BootstrapManager$Progress;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/data/AiProvider;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$pairingVm:Lcom/hermes/android/pairing/PairingViewModel;

    move-object v1, p2

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p3

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$context:Landroidx/appcompat/app/AppCompatActivity;

    move-object v1, p4

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    move-object v1, p5

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$sessionManagerProvider:Lkotlin/jvm/functions/Function0;

    move-object v1, p6

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$sessionManagerReady:Landroidx/compose/runtime/State;

    move-object v1, p7

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$adManager:Lcom/hermes/android/data/AdManager;

    move-object v1, p8

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$billingRepository:Lcom/hermes/android/data/BillingRepository;

    move-object v1, p9

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$proStatus:Lcom/hermes/android/data/ProStatus;

    move-object v1, p10

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p11

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p12

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, p13

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$onboardingOAuth$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$1$lambda$0(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    .line 416
    sget-object v0, Lcom/hermes/android/AppPhase;->ONBOARDING:Lcom/hermes/android/AppPhase;

    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$10$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$18(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$12$lambda$11(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$21(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$14$lambda$13(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    .line 435
    sget-object v0, Lcom/hermes/android/AppPhase;->PAIRING:Lcom/hermes/android/AppPhase;

    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$16$lambda$15(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 15

    .line 437
    const-string v0, "HermesApp"

    const-string v1, "Install button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    sget-object v0, Lcom/hermes/android/AppPhase;->INSTALLING:Lcom/hermes/android/AppPhase;

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V

    const/4 v0, 0x0

    move-object/from16 v13, p2

    .line 439
    invoke-static {v13, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 443
    sget-object v0, Lcom/hermes/android/ProviderSwitchCoordinator;->INSTANCE:Lcom/hermes/android/ProviderSwitchCoordinator;

    invoke-virtual {v0}, Lcom/hermes/android/ProviderSwitchCoordinator;->onSelected()J

    move-result-wide v2

    .line 444
    new-instance v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;

    const/4 v14, 0x0

    move-object v1, v0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object v10, p0

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v14}, Lcom/hermes/android/MainActivityKt$HermesApp$4$8$1$1;-><init>(JLandroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v0

    move/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 509
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$18$lambda$17(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$24(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/data/AiProvider;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$20$lambda$19(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 9

    const/4 v0, 0x0

    .line 518
    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$9(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 519
    invoke-static {p2, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$6(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager$Progress;)V

    .line 520
    new-instance v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p2

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/hermes/android/MainActivityKt$HermesApp$4$10$1$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object p3, v0

    check-cast p3, Lkotlin/jvm/functions/Function2;

    const/4 p4, 0x3

    const/4 p5, 0x0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 549
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$24$lambda$23(Lcom/hermes/android/TerminalSessionManager;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    sget-object p1, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    new-instance v0, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/TerminalSessionManager;)V

    invoke-virtual {p1, v0}, Lcom/hermes/android/ModelSwitchPrompt;->setActiveSessionHandleProvider(Lkotlin/jvm/functions/Function0;)V

    .line 5658
    new-instance p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$invoke$lambda$24$lambda$23$$inlined$onDispose$1;

    invoke-direct {p0}, Lcom/hermes/android/MainActivityKt$HermesApp$4$invoke$lambda$24$lambda$23$$inlined$onDispose$1;-><init>()V

    check-cast p0, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p0
.end method

.method private static final invoke$lambda$24$lambda$23$lambda$21(Lcom/hermes/android/TerminalSessionManager;)Ljava/lang/String;
    .locals 0

    .line 577
    invoke-virtual {p0}, Lcom/hermes/android/TerminalSessionManager;->getActiveSessionHandleSnapshot()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda$25(Landroidx/compose/runtime/State;)Lcom/hermes/android/ModelSwitchPrompt$Offer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/hermes/android/ModelSwitchPrompt$Offer;",
            ">;)",
            "Lcom/hermes/android/ModelSwitchPrompt$Offer;"
        }
    .end annotation

    .line 5663
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hermes/android/ModelSwitchPrompt$Offer;

    return-object p0
.end method

.method private static final invoke$lambda$29$lambda$28$lambda$27()Lkotlin/Unit;
    .locals 1

    .line 596
    sget-object v0, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    invoke-virtual {v0}, Lcom/hermes/android/ModelSwitchPrompt;->dismiss()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$3$lambda$2(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    .line 417
    sget-object v0, Lcom/hermes/android/AppPhase;->ONBOARDING:Lcom/hermes/android/AppPhase;

    invoke-static {p0, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$3(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/AppPhase;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$5$lambda$4(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-static {p0, p1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$12(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-static {p0, p3}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$15(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 426
    sget-object p0, Lcom/hermes/android/data/AiProvider;->Companion:Lcom/hermes/android/data/AiProvider$Companion;

    invoke-virtual {p0, p3}, Lcom/hermes/android/data/AiProvider$Companion;->findById(Ljava/lang/String;)Lcom/hermes/android/data/AiProvider;

    move-result-object p0

    .line 427
    const-string p3, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p3

    :cond_1
    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$18(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    .line 429
    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getDefaultModelId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getAllowsCustomModel()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/hermes/android/data/AiProvider;->getHermesDefaultModel()Ljava/lang/String;

    move-result-object p0

    move-object p1, p0

    goto :goto_0

    :cond_2
    move-object p1, p3

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object p3, p1

    :cond_5
    :goto_1
    invoke-static {p2, p3}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$21(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 430
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 410
    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Lcom/hermes/android/AppPhase;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke(Landroidx/compose/animation/AnimatedContentScope;Lcom/hermes/android/AppPhase;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/animation/AnimatedContentScope;Lcom/hermes/android/AppPhase;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    const-string v1, "$this$AnimatedContent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "currentPhase"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v3, "com.hermes.android.HermesApp.<anonymous> (MainActivity.kt:410)"

    const v4, 0x30e8576

    move/from16 v5, p4

    .line 411
    invoke-static {v4, v5, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p2 .. p2}, Lcom/hermes/android/AppPhase;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v1, v10, :cond_1a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e

    const/4 v2, 0x4

    const/4 v11, 0x0

    if-eq v1, v2, :cond_a

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    const v1, 0x6adc3637

    .line 552
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 553
    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$sessionManagerProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/hermes/android/TerminalSessionManager;

    .line 554
    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$sessionManagerReady:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v12, :cond_8

    if-eqz v1, :cond_8

    const v1, 0x6ade4e8a

    .line 555
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 558
    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    .line 559
    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$context:Landroidx/appcompat/app/AppCompatActivity;

    .line 560
    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$adManager:Lcom/hermes/android/data/AdManager;

    .line 561
    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$billingRepository:Lcom/hermes/android/data/BillingRepository;

    .line 562
    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$proStatus:Lcom/hermes/android/data/ProStatus;

    sget v1, Lcom/hermes/android/TerminalSessionManager;->$stable:I

    sget v7, Lcom/hermes/android/data/AdManager;->$stable:I

    shl-int/lit8 v7, v7, 0x9

    or-int/2addr v1, v7

    sget v7, Lcom/hermes/android/data/BillingRepository;->$stable:I

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v1, v7

    sget v7, Lcom/hermes/android/data/ProStatus;->$stable:I

    shl-int/lit8 v7, v7, 0xf

    or-int v8, v1, v7

    move-object v1, v12

    move-object/from16 v7, p3

    .line 556
    invoke-static/range {v1 .. v8}, Lcom/hermes/android/MainActivityKt;->MainTabsScreen(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AdManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Landroidx/compose/runtime/Composer;I)V

    const v1, -0x5fa5eb65

    .line 571
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface {v15, v12}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 5638
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    .line 5639
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_2

    .line 571
    :cond_1
    new-instance v2, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda5;

    invoke-direct {v2, v12}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda5;-><init>(Lcom/hermes/android/TerminalSessionManager;)V

    .line 5641
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 571
    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget v1, Lcom/hermes/android/TerminalSessionManager;->$stable:I

    invoke-static {v12, v2, v15, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 580
    sget-object v1, Lcom/hermes/android/ModelSwitchPrompt;->INSTANCE:Lcom/hermes/android/ModelSwitchPrompt;

    invoke-virtual {v1}, Lcom/hermes/android/ModelSwitchPrompt;->getPending()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v11, v15, v9, v10}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 581
    invoke-static {v1}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->invoke$lambda$25(Landroidx/compose/runtime/State;)Lcom/hermes/android/ModelSwitchPrompt$Offer;

    move-result-object v3

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 584
    :cond_3
    invoke-virtual {v12}, Lcom/hermes/android/TerminalSessionManager;->getActiveSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 585
    invoke-virtual {v12, v1}, Lcom/hermes/android/TerminalSessionManager;->hermesBinding(Lcom/termux/terminal/TerminalSession;)Lcom/hermes/android/TerminalSessionManager$HermesBinding;

    move-result-object v1

    if-eqz v1, :cond_4

    move v1, v10

    goto :goto_0

    :cond_4
    move v1, v9

    .line 590
    :goto_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    const v4, 0x789c5f52

    const-string v5, "CC:CompositionLocal.kt#9igjgp"

    .line 5644
    invoke-static {v15, v4, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 590
    check-cast v2, Landroid/content/Context;

    if-nez v1, :cond_6

    const v1, -0x5f6ba639

    .line 591
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v1, 0x6846e95e

    .line 593
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5645
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 5646
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 593
    new-instance v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$1$1;

    invoke-direct {v1, v11}, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 5648
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 593
    :cond_5
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    invoke-static {v3, v1, v15, v9}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 591
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_1

    :cond_6
    const v1, -0x5f667e8b

    .line 594
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    const v1, 0x6846fcfe

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 5651
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 5652
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_7

    .line 5653
    new-instance v1, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda6;-><init>()V

    .line 5654
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 596
    :cond_7
    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 599
    new-instance v4, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;

    invoke-direct {v4, v12, v3, v2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$3;-><init>(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/ModelSwitchPrompt$Offer;Landroid/content/Context;)V

    const v2, -0x7803a976

    const/16 v5, 0x36

    invoke-static {v2, v10, v4, v15, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    sget-object v4, Lcom/hermes/android/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/hermes/android/ComposableSingletons$MainActivityKt;

    invoke-virtual {v4}, Lcom/hermes/android/ComposableSingletons$MainActivityKt;->getLambda-3$app_release()Lkotlin/jvm/functions/Function2;

    move-result-object v4

    sget-object v6, Lcom/hermes/android/ComposableSingletons$MainActivityKt;->INSTANCE:Lcom/hermes/android/ComposableSingletons$MainActivityKt;

    invoke-virtual {v6}, Lcom/hermes/android/ComposableSingletons$MainActivityKt;->getLambda-4$app_release()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    .line 598
    new-instance v7, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$4;

    invoke-direct {v7, v3}, Lcom/hermes/android/MainActivityKt$HermesApp$4$12$4;-><init>(Lcom/hermes/android/ModelSwitchPrompt$Offer;)V

    const v3, -0x1bb19db1

    invoke-static {v3, v10, v7, v15, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/16 v21, 0x0

    const/16 v22, 0x3f94

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v20, 0x1b0c36

    move-object/from16 v19, p3

    .line 595
    invoke-static/range {v1 .. v22}, Landroidx/compose/material3/AndroidAlertDialog_androidKt;->AlertDialog-Oix01E0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;JJJJFLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;III)V

    .line 594
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 659
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 581
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 555
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v15, p3

    goto :goto_3

    :cond_8
    const v1, 0x6b4d8a76

    move-object/from16 v15, p3

    .line 660
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 662
    invoke-static {v15, v9}, Lcom/hermes/android/MainActivityKt;->LoadingScreen(Landroidx/compose/runtime/Composer;I)V

    .line 660
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 552
    :goto_3
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_5

    :cond_9
    const v1, -0x5faa6860

    .line 411
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :cond_a
    const v1, -0x5fa76dae

    .line 513
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 514
    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$5(Landroidx/compose/runtime/MutableState;)Lcom/hermes/android/BootstrapManager$Progress;

    move-result-object v1

    .line 515
    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$8(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v2

    .line 516
    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    const v4, -0x5fa75810

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 517
    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v4}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$8(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    const v4, -0x5fa754d6

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$context:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    .line 5632
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_b

    .line 5633
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_c

    .line 517
    :cond_b
    new-instance v4, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda3;

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda3;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)V

    .line 5635
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 517
    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object v4, v5

    goto :goto_4

    :cond_d
    move-object v4, v11

    :goto_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p3

    .line 513
    invoke-static/range {v1 .. v7}, Lcom/hermes/android/MainActivityKt;->InstallingScreen(Lcom/hermes/android/BootstrapManager$Progress;Ljava/lang/String;Lcom/hermes/android/BootstrapManager;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5

    :cond_e
    const v1, -0x5faa6719

    .line 420
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 421
    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$11(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v1

    const v2, -0x5faa74b1

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 422
    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    .line 5590
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 5591
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_f

    .line 422
    new-instance v3, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda8;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5593
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 422
    :cond_f
    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 423
    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v3}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$14(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v3

    const v4, -0x5faa6751

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 424
    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    .line 5596
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 5597
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_10

    .line 424
    new-instance v7, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda9;

    invoke-direct {v7, v4, v5, v6}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda9;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 5599
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 424
    :cond_10
    move-object v4, v7

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 431
    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v5}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$17(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v5

    const v6, -0x5faa2d4d

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 432
    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    .line 5602
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    .line 5603
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_11

    .line 432
    new-instance v7, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda10;

    invoke-direct {v7, v6}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda10;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5605
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 432
    :cond_11
    move-object v6, v7

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 433
    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v7}, Lcom/hermes/android/MainActivityKt;->access$HermesApp$lambda$20(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v7

    const v8, -0x5faa214d

    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 434
    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    .line 5608
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    .line 5609
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_12

    .line 434
    new-instance v9, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda11;

    invoke-direct {v9, v8}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda11;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5611
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 434
    :cond_12
    move-object v8, v9

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v9, -0x5faa1aa4

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 435
    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    .line 5614
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    .line 5615
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_13

    .line 435
    new-instance v10, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda12;

    invoke-direct {v10, v9}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda12;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5617
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 435
    :cond_13
    move-object v9, v10

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v10, -0x5fa9fe67

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v10, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$context:Landroidx/appcompat/app/AppCompatActivity;

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    .line 436
    iget-object v11, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$lifecycleScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v12, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v13, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$installError$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v14, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$context:Landroidx/appcompat/app/AppCompatActivity;

    move-object/from16 p1, v9

    iget-object v9, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiProvider$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 p2, v8

    iget-object v8, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiBaseUrl$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 p4, v7

    iget-object v7, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiKey$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v27, v6

    iget-object v6, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$apiModelId$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v28, v5

    iget-object v5, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$bootstrapManager:Lcom/hermes/android/BootstrapManager;

    move-object/from16 v29, v4

    iget-object v4, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$installProgress$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v30, v3

    .line 5620
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v10, :cond_14

    .line 5621
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v3, v10, :cond_15

    .line 436
    :cond_14
    new-instance v3, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda1;

    move-object/from16 v16, v3

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v9

    move-object/from16 v22, v8

    move-object/from16 v23, v7

    move-object/from16 v24, v6

    move-object/from16 v25, v5

    move-object/from16 v26, v4

    invoke-direct/range {v16 .. v26}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/BootstrapManager;Landroidx/compose/runtime/MutableState;)V

    .line 5623
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 436
    :cond_15
    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v3, -0x5fa77f28

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 510
    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$onboardingOAuth$delegate:Landroidx/compose/runtime/MutableState;

    .line 5626
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 5627
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_16

    .line 510
    new-instance v4, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5629
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 510
    :cond_16
    move-object v11, v4

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/4 v14, 0x6

    const/16 v16, 0x0

    const v13, 0x6c30c30

    move-object/from16 v3, v30

    move-object/from16 v4, v29

    move-object/from16 v5, v28

    move-object/from16 v6, v27

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move-object/from16 v12, p3

    move-object v0, v15

    move/from16 v15, v16

    .line 420
    invoke-static/range {v1 .. v15}, Lcom/hermes/android/MainActivityKt;->OnboardingScreen(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v0, p0

    goto :goto_5

    :cond_17
    move-object v0, v15

    const v1, -0x5faa9b3f

    .line 414
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    move-object v7, v0

    move-object/from16 v0, p0

    .line 415
    iget-object v1, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$pairingVm:Lcom/hermes/android/pairing/PairingViewModel;

    const v2, -0x5faa9201

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 416
    iget-object v2, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    .line 5578
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 5579
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_18

    .line 416
    new-instance v3, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5581
    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 416
    :cond_18
    move-object v2, v3

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v3, -0x5faa8981

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 417
    iget-object v3, v0, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$phase$delegate:Landroidx/compose/runtime/MutableState;

    .line 5584
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 5585
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_19

    .line 417
    new-instance v4, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda7;

    invoke-direct {v4, v3}, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 5587
    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 417
    :cond_19
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget v4, Lcom/hermes/android/pairing/PairingViewModel;->$stable:I

    or-int/lit16 v5, v4, 0x1b0

    const/4 v6, 0x0

    move-object/from16 v4, p3

    .line 414
    invoke-static/range {v1 .. v6}, Lcom/hermes/android/pairing/PairingScreenKt;->PairingScreen(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    :cond_1a
    move-object v7, v15

    const v1, -0x5faaa211

    .line 412
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    invoke-static {v7, v9}, Lcom/hermes/android/MainActivityKt;->LoadingScreen(Landroidx/compose/runtime/Composer;I)V

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 411
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1b
    return-void
.end method
