.class final Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;
.super Ljava/lang/Object;
.source "LocalLlmSetupScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->LocalLlmSetupScreen(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalLlmSetupScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalLlmSetupScreen.kt\ncom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1220:1\n149#2:1221\n149#2:1222\n149#2:1223\n149#2:1224\n149#2:1225\n149#2:1226\n149#2:1227\n149#2:1228\n149#2:1235\n149#2:1236\n149#2:1237\n149#2:1238\n149#2:1245\n149#2:1246\n149#2:1247\n149#2:1254\n1225#3,6:1229\n1225#3,6:1239\n1225#3,6:1248\n1225#3,6:1255\n1225#3,6:1261\n*S KotlinDebug\n*F\n+ 1 LocalLlmSetupScreen.kt\ncom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7\n*L\n873#1:1221\n882#1:1222\n891#1:1223\n902#1:1224\n916#1:1225\n921#1:1226\n922#1:1227\n923#1:1228\n933#1:1235\n937#1:1236\n938#1:1237\n939#1:1238\n949#1:1245\n950#1:1246\n957#1:1247\n959#1:1254\n919#1:1229,6\n935#1:1239,6\n947#1:1248,6\n963#1:1255,6\n972#1:1261,6\n*E\n"
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
.field final synthetic $busyLabel$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $confirmDelete$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dlJob$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dlState$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/llama/ModelDownloadState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dlTarget$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $errorText$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interactionEnabled:Z

.field final synthetic $npuActive:Z

.field final synthetic $npuModuleProgress$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $npuNeedsRestart$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onActivated:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onBack:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

.field final synthetic $retryAction$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $showPicker$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $splitManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field final synthetic $strFailedChecksum:Ljava/lang/String;

.field final synthetic $strFailedFormat:Ljava/lang/String;

.field final synthetic $strFailedLoad:Ljava/lang/String;

.field final synthetic $strFailedNetwork:Ljava/lang/String;

.field final synthetic $strFailedRate:Ljava/lang/String;

.field final synthetic $strFailedStorage:Ljava/lang/String;

.field final synthetic $strFailedUnknown:Ljava/lang/String;

.field final synthetic $strStarting:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0qM6Y_pfKSh5Ak1jsZRZ6z1-W_4(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->invoke$lambda$6$lambda$5(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NWpXKq6WB5DY17TMrVGoMlJzsmg(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    invoke-static/range {p0 .. p19}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->invoke$lambda$4$lambda$3(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Oc-5UtyMcinhLExdhWsSY0inKUI(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->invoke$lambda$2$lambda$1(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RFYtPBHR9ppDLm6GEFZRloGeTA0(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->invoke$lambda$10$lambda$9(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sO-ZNCRouprtHraiNkP1LTK_Bf0(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->invoke$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/hermes/android/ui/localllm/SetupSnapshot;ZLcom/google/android/play/core/splitinstall/SplitInstallManager;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/ui/localllm/SetupSnapshot;",
            "Z",
            "Lcom/google/android/play/core/splitinstall/SplitInstallManager;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlinx/coroutines/Job;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/llama/ModelDownloadState;",
            ">;",
            "Landroidx/compose/runtime/MutableIntState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/ui/localllm/DlTarget;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    move v1, p2

    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$interactionEnabled:Z

    move-object v1, p3

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$splitManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-object v1, p4

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedUnknown:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p6

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strStarting:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$context:Landroid/content/Context;

    move-object v1, p8

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onActivated:Lkotlin/jvm/functions/Function1;

    move-object v1, p9

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onBack:Lkotlin/jvm/functions/Function0;

    move-object v1, p10

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedLoad:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedNetwork:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedStorage:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedChecksum:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedFormat:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedRate:Ljava/lang/String;

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$npuActive:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$npuNeedsRestart$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$npuModuleProgress$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$showPicker$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$dlTarget$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$dlJob$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$dlState$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$retryAction$delegate:Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$confirmDelete$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$10$lambda$9(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    .line 972
    sget-object v0, Lcom/hermes/android/ui/localllm/DlTarget;->NPU_BUNDLE:Lcom/hermes/android/ui/localllm/DlTarget;

    invoke-static {p0, v0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$39(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/ui/localllm/DlTarget;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$2$lambda$1(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 919
    invoke-static {p0, p1, p2, p3}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$startNpuModuleInstall(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$4$lambda$3(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    .line 935
    invoke-static/range {p0 .. p19}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$startNpuBundleDownload(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$6$lambda$5(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;)Lkotlin/Unit;
    .locals 11

    .line 947
    const-string v9, "npu"

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$activateEngine(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;Ljava/lang/String;Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final invoke$lambda$8$lambda$7(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    .line 963
    sget-object v0, Lcom/hermes/android/ui/localllm/DlTarget;->NPU_BUNDLE:Lcom/hermes/android/ui/localllm/DlTarget;

    invoke-static {p0, v0}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$39(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/ui/localllm/DlTarget;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 859
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0x3

    const/4 v12, 0x2

    if-ne v2, v12, :cond_1

    .line 860
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 975
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_8

    .line 860
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:859)"

    const v4, 0x767f5a94

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 861
    :cond_2
    sget v1, Lcom/hermes/android/R$string;->local_llm_npu_model_desc:I

    const/4 v10, 0x0

    invoke-static {v1, v13, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const/16 v26, 0xd

    .line 862
    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getTextSecondary$p()J

    move-result-wide v3

    const/16 v27, 0x12

    invoke-static/range {v27 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    const/16 v24, 0x6

    const v25, 0x1fbf2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v10, v16

    const/16 v16, 0x0

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xd80

    move-object/from16 v22, p1

    .line 860
    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 865
    sget v1, Lcom/hermes/android/R$string;->local_llm_backend_npu_desc:I

    move-object/from16 v13, p1

    const/4 v12, 0x0

    invoke-static {v1, v13, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xc

    .line 866
    invoke-static {v10}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getTextMuted$p()J

    move-result-wide v3

    const/16 v28, 0x11

    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    move/from16 p2, v10

    move-wide/from16 v10, v16

    const/16 v16, 0x0

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 864
    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const v1, 0x1040f35d

    move-object/from16 v13, p1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 872
    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v1}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuBundleReady()Z

    move-result v1

    const/4 v12, 0x1

    const/4 v10, 0x6

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v1}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuContextSize()I

    move-result v1

    if-gt v12, v1, :cond_3

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_3

    .line 873
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    int-to-float v2, v10

    .line 1221
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 873
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v13, v10}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 875
    sget v1, Lcom/hermes/android/R$string;->local_llm_npu_context_warn:I

    const/4 v11, 0x0

    invoke-static {v1, v13, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 876
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getWarnAmber$p()J

    move-result-wide v3

    invoke-static/range {v28 .. v28}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v14

    const/16 v24, 0x6

    const v25, 0x1fbf2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v10, v16

    const/16 v16, 0x0

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xd80

    move-object/from16 v22, p1

    .line 874
    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const v1, 0x1041347c

    move-object/from16 v14, p1

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 881
    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v1}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuBundleReady()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 882
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v15, 0x6

    int-to-float v2, v15

    .line 1222
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 882
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v14, v15}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 884
    sget v1, Lcom/hermes/android/R$string;->local_llm_npu_bundle_ready:I

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v2}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuDownloadMb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v13, 0x0

    invoke-static {v1, v2, v14, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getTextSecondary$p()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0x1fff2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xd80

    move-object/from16 v22, p1

    .line 883
    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 890
    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v1}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuContextSize()I

    move-result v1

    if-lez v1, :cond_5

    .line 891
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x2

    int-to-float v2, v2

    .line 1223
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 891
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v14, p1

    const/4 v15, 0x6

    invoke-static {v1, v14, v15}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 894
    sget v1, Lcom/hermes/android/R$string;->local_llm_npu_context_info:I

    .line 895
    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v2}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuContextSize()I

    move-result v2

    rem-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v2}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuContextSize()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 896
    :cond_4
    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v2}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuContextSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v13, 0x0

    .line 893
    invoke-static {v1, v2, v14, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getTextSecondary$p()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0x1fff2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xd80

    move-object/from16 v22, p1

    .line 892
    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 902
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    move/from16 v14, p2

    int-to-float v2, v14

    .line 1224
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 902
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v15, p1

    const/4 v13, 0x6

    invoke-static {v1, v15, v13}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 906
    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$npuNeedsRestart$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$35(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v1}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuModuleInstalled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v1}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuModuleVisible()Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_6

    .line 913
    :cond_6
    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v1}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuModuleInstalled()Z

    move-result v1

    const/16 v12, 0x2c

    const/16 v10, 0x30

    const/16 v11, 0xe

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x8

    if-nez v1, :cond_b

    const v1, -0x800544a

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 914
    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$npuModuleProgress$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$32(Landroidx/compose/runtime/MutableState;)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x1042111b

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    if-nez v1, :cond_7

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v6, 0x0

    .line 915
    invoke-static {v1, v15, v6}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$ProgressBarLine(ILandroidx/compose/runtime/Composer;I)V

    .line 916
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    int-to-float v2, v7

    .line 1225
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 916
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v15, v13}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 917
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 914
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 920
    iget-boolean v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$interactionEnabled:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$npuModuleProgress$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$LocalLlmSetupScreen$lambda$32(Landroidx/compose/runtime/MutableState;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_8

    const/4 v13, 0x1

    goto :goto_3

    :cond_8
    move v13, v6

    .line 921
    :goto_3
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x1

    invoke-static {v1, v8, v2, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    int-to-float v3, v12

    .line 1226
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 921
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    int-to-float v1, v11

    .line 1227
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 922
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v17

    int-to-float v1, v2

    .line 1228
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 923
    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getGlassBorder$p()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v18

    .line 924
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getTextPrimary$p()J

    move-result-wide v4

    sget v2, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/2addr v2, v14

    or-int/lit8 v11, v2, 0x30

    const/16 v12, 0xd

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/ButtonDefaults;->outlinedButtonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v5

    const v1, 0x10422fd3

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$splitManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedUnknown:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 919
    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$splitManager:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v3, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$npuModuleProgress$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedUnknown:Ljava/lang/String;

    .line 1229
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_9

    .line 1230
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v7, v1, :cond_a

    .line 919
    :cond_9
    new-instance v7, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2, v3, v4, v6}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 1232
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 919
    :cond_a
    move-object v1, v7

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 922
    move-object/from16 v4, v17

    check-cast v4, Landroidx/compose/ui/graphics/Shape;

    .line 923
    sget-object v2, Lcom/hermes/android/ui/localllm/ComposableSingletons$LocalLlmSetupScreenKt;->INSTANCE:Lcom/hermes/android/ui/localllm/ComposableSingletons$LocalLlmSetupScreenKt;

    invoke-virtual {v2}, Lcom/hermes/android/ui/localllm/ComposableSingletons$LocalLlmSetupScreenKt;->getLambda-11$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v10

    const v12, 0x30180030

    const/16 v14, 0x1a0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, v16

    move v3, v13

    move-object/from16 v7, v18

    move-object/from16 v11, p1

    move v13, v14

    .line 918
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 913
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_7

    :cond_b
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 928
    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-virtual {v1}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->getNpuBundleReady()Z

    move-result v1

    if-nez v1, :cond_e

    const v1, -0x7f17aea

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 930
    sget v1, Lcom/hermes/android/R$string;->local_llm_backend_npu_missing_bundle:I

    invoke-static {v1, v15, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 931
    invoke-static {v14}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getTextMuted$p()J

    move-result-wide v3

    const/16 v24, 0x0

    const v25, 0x1fff2

    const/16 v16, 0x0

    move-object/from16 v2, v16

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const-wide/16 v16, 0x0

    move-wide/from16 v10, v16

    const/16 v16, 0x0

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-wide/16 v16, 0x0

    move/from16 v26, v14

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xd80

    move-object/from16 v22, p1

    .line 929
    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 933
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v14, 0x8

    int-to-float v2, v14

    .line 1235
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 933
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object/from16 v15, p1

    const/4 v13, 0x6

    invoke-static {v1, v15, v13}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 937
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x1

    invoke-static {v1, v3, v13, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v2, 0x2c

    int-to-float v2, v2

    .line 1236
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 937
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const/16 v1, 0xe

    int-to-float v1, v1

    .line 1237
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 938
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v16

    int-to-float v1, v13

    .line 1238
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 939
    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getGlassBorder$p()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v17

    .line 940
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getTextPrimary$p()J

    move-result-wide v4

    sget v2, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v2, v2, 0xc

    const/16 v7, 0x30

    or-int/lit8 v11, v2, 0x30

    const/16 v12, 0xd

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/ButtonDefaults;->outlinedButtonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v5

    const v1, 0x1042b394

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedUnknown:Ljava/lang/String;

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strStarting:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$context:Landroid/content/Context;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onActivated:Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onBack:Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedLoad:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedNetwork:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedStorage:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedChecksum:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedFormat:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedRate:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 935
    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$context:Landroid/content/Context;

    iget-object v3, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedUnknown:Ljava/lang/String;

    iget-object v4, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v7, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$showPicker$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$dlTarget$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$dlJob$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$dlState$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v11, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    iget-object v12, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strStarting:Ljava/lang/String;

    iget-object v13, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onBack:Lkotlin/jvm/functions/Function0;

    move-object/from16 p2, v5

    iget-object v5, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedLoad:Ljava/lang/String;

    move-object/from16 v39, v14

    iget-object v14, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v15, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onActivated:Lkotlin/jvm/functions/Function1;

    move-object/from16 v32, v15

    iget-object v15, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedNetwork:Ljava/lang/String;

    move-object/from16 v33, v15

    iget-object v15, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedStorage:Ljava/lang/String;

    move-object/from16 v34, v15

    iget-object v15, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedChecksum:Ljava/lang/String;

    move-object/from16 v35, v15

    iget-object v15, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedFormat:Ljava/lang/String;

    move-object/from16 v36, v15

    iget-object v15, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedRate:Ljava/lang/String;

    move-object/from16 v37, v15

    iget-object v15, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$retryAction$delegate:Landroidx/compose/runtime/MutableState;

    .line 1239
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_d

    .line 1240
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_c

    goto :goto_4

    :cond_c
    move-object/from16 v15, p1

    goto :goto_5

    .line 935
    :cond_d
    :goto_4
    new-instance v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda1;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move-object/from16 v30, v5

    move-object/from16 v31, v14

    move-object/from16 v38, v15

    invoke-direct/range {v18 .. v38}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableIntState;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v15, p1

    .line 1242
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 935
    :goto_5
    move-object v1, v0

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    move-object/from16 v0, p0

    .line 936
    iget-boolean v3, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$interactionEnabled:Z

    .line 938
    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/ui/graphics/Shape;

    .line 941
    new-instance v2, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$4;

    iget-object v5, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$s:Lcom/hermes/android/ui/localllm/SetupSnapshot;

    invoke-direct {v2, v5}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$4;-><init>(Lcom/hermes/android/ui/localllm/SetupSnapshot;)V

    const/16 v5, 0x36

    const v6, -0x3e46d5de

    const/4 v7, 0x1

    invoke-static {v6, v7, v2, v15, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->rememberComposableLambda(IZLjava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function3;

    const v12, 0x30180030

    const/16 v13, 0x1a0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, v39

    move-object/from16 v5, p2

    move-object/from16 v7, v17

    move-object/from16 v11, p1

    .line 934
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->OutlinedButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 928
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_7

    :cond_e
    move v4, v2

    move v3, v8

    move-object v2, v9

    move v1, v11

    move/from16 v26, v14

    move v14, v7

    move v7, v10

    .line 945
    iget-boolean v5, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$npuActive:Z

    const/16 v12, 0x180

    if-nez v5, :cond_12

    const v5, -0x7dfc948

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 949
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v5, Landroidx/compose/ui/Modifier;

    invoke-static {v5, v3, v4, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    int-to-float v3, v7

    .line 1245
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 949
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    int-to-float v1, v1

    .line 1246
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    .line 950
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v17

    .line 951
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    .line 952
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v2

    .line 953
    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getButtonBlueText$p()J

    move-result-wide v4

    .line 954
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v18

    const/16 v24, 0xe

    const/16 v25, 0x0

    const v20, 0x3d8f5c29    # 0.07f

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v25}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v7

    .line 955
    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getTextMuted$p()J

    move-result-wide v9

    sget v11, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v11, v11, 0xc

    or-int/lit16 v11, v11, 0xdb6

    const/16 v18, 0x0

    move v14, v6

    move-wide v6, v7

    move-wide v8, v9

    move-object/from16 v10, p1

    move/from16 v12, v18

    .line 951
    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/ButtonDefaults;->buttonColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonColors;

    move-result-object v10

    .line 957
    sget-object v1, Landroidx/compose/material3/ButtonDefaults;->INSTANCE:Landroidx/compose/material3/ButtonDefaults;

    int-to-float v2, v14

    .line 1247
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    sget v3, Landroidx/compose/material3/ButtonDefaults;->$stable:I

    shl-int/lit8 v3, v3, 0xf

    or-int/lit8 v8, v3, 0x6

    const/16 v9, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    .line 957
    invoke-virtual/range {v1 .. v9}, Landroidx/compose/material3/ButtonDefaults;->buttonElevation-R_JCAzs(FFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ButtonElevation;

    move-result-object v6

    const v1, 0x10431f5e

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    iget-object v1, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strStarting:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$context:Landroid/content/Context;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onActivated:Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onBack:Lkotlin/jvm/functions/Function0;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedLoad:Ljava/lang/String;

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 947
    iget-object v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strStarting:Ljava/lang/String;

    iget-object v4, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onBack:Lkotlin/jvm/functions/Function0;

    iget-object v5, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$strFailedLoad:Ljava/lang/String;

    iget-object v7, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$busyLabel$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$errorText$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v9, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$context:Landroid/content/Context;

    iget-object v11, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$onActivated:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$refreshKey$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 1248
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v1, :cond_f

    .line 1249
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v13, v1, :cond_10

    .line 947
    :cond_f
    new-instance v13, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda2;

    move-object/from16 v18, v13

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    invoke-direct/range {v18 .. v27}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda2;-><init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;)V

    .line 1251
    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 947
    :cond_10
    move-object v1, v13

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 948
    iget-boolean v3, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$interactionEnabled:Z

    .line 950
    move-object/from16 v4, v17

    check-cast v4, Landroidx/compose/ui/graphics/Shape;

    .line 957
    sget-object v2, Lcom/hermes/android/ui/localllm/ComposableSingletons$LocalLlmSetupScreenKt;->INSTANCE:Lcom/hermes/android/ui/localllm/ComposableSingletons$LocalLlmSetupScreenKt;

    invoke-virtual {v2}, Lcom/hermes/android/ui/localllm/ComposableSingletons$LocalLlmSetupScreenKt;->getLambda-12$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v11

    const v12, 0x30000030

    const/16 v13, 0x1c0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, v16

    move-object v5, v10

    move-object v10, v11

    move-object/from16 v11, p1

    const/4 v14, 0x6

    .line 946
    invoke-static/range {v1 .. v13}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 959
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x8

    int-to-float v2, v2

    .line 1254
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 959
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1, v15, v14}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 961
    sget v1, Lcom/hermes/android/R$string;->local_llm_npu_delete:I

    const/4 v2, 0x0

    invoke-static {v1, v15, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 962
    iget-boolean v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$interactionEnabled:Z

    const v3, 0x1043b77f

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 963
    iget-object v3, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$confirmDelete$delegate:Landroidx/compose/runtime/MutableState;

    .line 1255
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 1256
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_11

    .line 963
    new-instance v4, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda3;

    invoke-direct {v4, v3}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda3;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1258
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 963
    :cond_11
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    const/16 v3, 0x180

    .line 960
    invoke-static {v1, v2, v4, v15, v3}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$DeleteTextButton(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 945
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto/16 :goto_7

    :cond_12
    move v3, v12

    const v1, -0x7c88da4

    .line 968
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 970
    sget v1, Lcom/hermes/android/R$string;->local_llm_npu_delete:I

    const/4 v2, 0x0

    invoke-static {v1, v15, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 971
    iget-boolean v2, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$interactionEnabled:Z

    const v4, 0x1043f6ff

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 972
    iget-object v4, v0, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7;->$confirmDelete$delegate:Landroidx/compose/runtime/MutableState;

    .line 1261
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 1262
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_13

    .line 972
    new-instance v5, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda4;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 1264
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 972
    :cond_13
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 969
    invoke-static {v1, v2, v5, v15, v3}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$DeleteTextButton(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 968
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_7

    :cond_14
    :goto_6
    const v1, -0x80615c2

    .line 906
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 908
    sget v1, Lcom/hermes/android/R$string;->local_llm_backend_npu_restart:I

    const/4 v2, 0x0

    invoke-static {v1, v15, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v5

    invoke-static {}, Lcom/hermes/android/ui/localllm/LocalLlmSetupScreenKt;->access$getWarnAmber$p()J

    move-result-wide v3

    invoke-static/range {v27 .. v27}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    move-result-wide v7

    move-wide v14, v7

    const/16 v24, 0x6

    const v25, 0x1fbf2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xd80

    move-object/from16 v22, p1

    .line 907
    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 906
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 968
    :goto_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_15
    :goto_8
    return-void
.end method
