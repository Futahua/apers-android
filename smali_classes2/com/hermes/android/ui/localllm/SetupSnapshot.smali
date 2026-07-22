.class final Lcom/hermes/android/ui/localllm/SetupSnapshot;
.super Ljava/lang/Object;
.source "LocalLlmSetupScreen.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u00084\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u00a1\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00101\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u0003H\u00c6\u0003J\t\u0010:\u001a\u00020\u0011H\u00c6\u0003J\t\u0010;\u001a\u00020\u0011H\u00c6\u0003J\t\u0010<\u001a\u00020\u0003H\u00c6\u0003J\t\u0010=\u001a\u00020\u0003H\u00c6\u0003J\t\u0010>\u001a\u00020\u0003H\u00c6\u0003J\t\u0010?\u001a\u00020\u0003H\u00c6\u0003J\u00c7\u0001\u0010@\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010A\u001a\u00020\u00032\u0008\u0010B\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010C\u001a\u00020\u0011H\u00d6\u0001J\t\u0010D\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001cR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001cR\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001aR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001cR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001aR\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001aR\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001aR\u0011\u0010\u000f\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001aR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010(R\u0011\u0010\u0013\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001aR\u0011\u0010\u0014\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001aR\u0011\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001aR\u0011\u0010\u0016\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\u001a\u00a8\u0006E"
    }
    d2 = {
        "Lcom/hermes/android/ui/localllm/SetupSnapshot;",
        "",
        "hasGguf",
        "",
        "modelName",
        "",
        "modelDetail",
        "engineLoaded",
        "backendInfo",
        "backendPref",
        "gpuAvailable",
        "gpuDeviceLine",
        "npuModuleInstalled",
        "npuModuleVisible",
        "npuRunnable",
        "npuBundleReady",
        "npuDownloadMb",
        "",
        "npuContextSize",
        "npuActive",
        "providerIsLocalLlm",
        "ramWarn",
        "dirtyExit",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZIIZZZZ)V",
        "getHasGguf",
        "()Z",
        "getModelName",
        "()Ljava/lang/String;",
        "getModelDetail",
        "getEngineLoaded",
        "getBackendInfo",
        "getBackendPref",
        "getGpuAvailable",
        "getGpuDeviceLine",
        "getNpuModuleInstalled",
        "getNpuModuleVisible",
        "getNpuRunnable",
        "getNpuBundleReady",
        "getNpuDownloadMb",
        "()I",
        "getNpuContextSize",
        "getNpuActive",
        "getProviderIsLocalLlm",
        "getRamWarn",
        "getDirtyExit",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final backendInfo:Ljava/lang/String;

.field private final backendPref:Ljava/lang/String;

.field private final dirtyExit:Z

.field private final engineLoaded:Z

.field private final gpuAvailable:Z

.field private final gpuDeviceLine:Ljava/lang/String;

.field private final hasGguf:Z

.field private final modelDetail:Ljava/lang/String;

.field private final modelName:Ljava/lang/String;

.field private final npuActive:Z

.field private final npuBundleReady:Z

.field private final npuContextSize:I

.field private final npuDownloadMb:I

.field private final npuModuleInstalled:Z

.field private final npuModuleVisible:Z

.field private final npuRunnable:Z

.field private final providerIsLocalLlm:Z

.field private final ramWarn:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZIIZZZZ)V
    .locals 2

    move-object v0, p0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 109
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->hasGguf:Z

    move-object v1, p2

    .line 110
    iput-object v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelName:Ljava/lang/String;

    move-object v1, p3

    .line 111
    iput-object v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelDetail:Ljava/lang/String;

    move v1, p4

    .line 112
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->engineLoaded:Z

    move-object v1, p5

    .line 113
    iput-object v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendInfo:Ljava/lang/String;

    move-object v1, p6

    .line 114
    iput-object v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendPref:Ljava/lang/String;

    move v1, p7

    .line 115
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuAvailable:Z

    move-object v1, p8

    .line 116
    iput-object v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuDeviceLine:Ljava/lang/String;

    move v1, p9

    .line 117
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleInstalled:Z

    move v1, p10

    .line 118
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleVisible:Z

    move v1, p11

    .line 119
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuRunnable:Z

    move v1, p12

    .line 120
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuBundleReady:Z

    move v1, p13

    .line 121
    iput v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuDownloadMb:I

    move/from16 v1, p14

    .line 122
    iput v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuContextSize:I

    move/from16 v1, p15

    .line 123
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuActive:Z

    move/from16 v1, p16

    .line 124
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->providerIsLocalLlm:Z

    move/from16 v1, p17

    .line 125
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->ramWarn:Z

    move/from16 v1, p18

    .line 126
    iput-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->dirtyExit:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/ui/localllm/SetupSnapshot;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZIIZZZZILjava/lang/Object;)Lcom/hermes/android/ui/localllm/SetupSnapshot;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->hasGguf:Z

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelDetail:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->engineLoaded:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendInfo:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendPref:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuAvailable:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuDeviceLine:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleInstalled:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleVisible:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-boolean v12, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuRunnable:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuBundleReady:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuDownloadMb:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuContextSize:I

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-boolean v15, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuActive:Z

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget-boolean v15, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->providerIsLocalLlm:Z

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget-boolean v15, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->ramWarn:Z

    goto :goto_10

    :cond_10
    move/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->dirtyExit:Z

    goto :goto_11

    :cond_11
    move/from16 v1, p18

    :goto_11
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move/from16 p17, v15

    move/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/hermes/android/ui/localllm/SetupSnapshot;->copy(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZIIZZZZ)Lcom/hermes/android/ui/localllm/SetupSnapshot;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->hasGguf:Z

    return v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleVisible:Z

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuRunnable:Z

    return v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuBundleReady:Z

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuDownloadMb:I

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuContextSize:I

    return v0
.end method

.method public final component15()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuActive:Z

    return v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->providerIsLocalLlm:Z

    return v0
.end method

.method public final component17()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->ramWarn:Z

    return v0
.end method

.method public final component18()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->dirtyExit:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->engineLoaded:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendPref:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuAvailable:Z

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuDeviceLine:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleInstalled:Z

    return v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZIIZZZZ)Lcom/hermes/android/ui/localllm/SetupSnapshot;
    .locals 20

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    new-instance v19, Lcom/hermes/android/ui/localllm/SetupSnapshot;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/hermes/android/ui/localllm/SetupSnapshot;-><init>(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZIIZZZZ)V

    return-object v19
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->hasGguf:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->hasGguf:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelName:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelDetail:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelDetail:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->engineLoaded:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->engineLoaded:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendPref:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendPref:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuAvailable:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuAvailable:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuDeviceLine:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuDeviceLine:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleInstalled:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleInstalled:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleVisible:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleVisible:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuRunnable:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuRunnable:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuBundleReady:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuBundleReady:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuDownloadMb:I

    iget v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuDownloadMb:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuContextSize:I

    iget v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuContextSize:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuActive:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuActive:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->providerIsLocalLlm:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->providerIsLocalLlm:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->ramWarn:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->ramWarn:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->dirtyExit:Z

    iget-boolean p1, p1, Lcom/hermes/android/ui/localllm/SetupSnapshot;->dirtyExit:Z

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getBackendInfo()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackendPref()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendPref:Ljava/lang/String;

    return-object v0
.end method

.method public final getDirtyExit()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->dirtyExit:Z

    return v0
.end method

.method public final getEngineLoaded()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->engineLoaded:Z

    return v0
.end method

.method public final getGpuAvailable()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuAvailable:Z

    return v0
.end method

.method public final getGpuDeviceLine()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuDeviceLine:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasGguf()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->hasGguf:Z

    return v0
.end method

.method public final getModelDetail()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final getModelName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNpuActive()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuActive:Z

    return v0
.end method

.method public final getNpuBundleReady()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuBundleReady:Z

    return v0
.end method

.method public final getNpuContextSize()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuContextSize:I

    return v0
.end method

.method public final getNpuDownloadMb()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuDownloadMb:I

    return v0
.end method

.method public final getNpuModuleInstalled()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleInstalled:Z

    return v0
.end method

.method public final getNpuModuleVisible()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleVisible:Z

    return v0
.end method

.method public final getNpuRunnable()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuRunnable:Z

    return v0
.end method

.method public final getProviderIsLocalLlm()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->providerIsLocalLlm:Z

    return v0
.end method

.method public final getRamWarn()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->ramWarn:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->hasGguf:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelDetail:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->engineLoaded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendInfo:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendPref:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuAvailable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuDeviceLine:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleInstalled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuRunnable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuBundleReady:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuDownloadMb:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuContextSize:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->providerIsLocalLlm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->ramWarn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->dirtyExit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->hasGguf:Z

    iget-object v2, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelName:Ljava/lang/String;

    iget-object v3, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->modelDetail:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->engineLoaded:Z

    iget-object v5, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendInfo:Ljava/lang/String;

    iget-object v6, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->backendPref:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuAvailable:Z

    iget-object v8, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->gpuDeviceLine:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleInstalled:Z

    iget-boolean v10, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuModuleVisible:Z

    iget-boolean v11, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuRunnable:Z

    iget-boolean v12, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuBundleReady:Z

    iget v13, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuDownloadMb:I

    iget v14, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuContextSize:I

    iget-boolean v15, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->npuActive:Z

    move/from16 v16, v15

    iget-boolean v15, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->providerIsLocalLlm:Z

    move/from16 v17, v15

    iget-boolean v15, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->ramWarn:Z

    move/from16 v18, v15

    iget-boolean v15, v0, Lcom/hermes/android/ui/localllm/SetupSnapshot;->dirtyExit:Z

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v19, v15

    const-string v15, "SetupSnapshot(hasGguf="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modelDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", engineLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backendInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backendPref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gpuAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gpuDeviceLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", npuModuleInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", npuModuleVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", npuRunnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", npuBundleReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", npuDownloadMb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", npuContextSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", npuActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", providerIsLocalLlm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ramWarn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dirtyExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
