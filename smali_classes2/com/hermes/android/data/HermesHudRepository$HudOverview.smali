.class public final Lcom/hermes/android/data/HermesHudRepository$HudOverview;
.super Ljava/lang/Object;
.source "HermesHudRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/HermesHudRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HudOverview"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008*\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\u0008\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J\t\u0010-\u001a\u00020\u0008H\u00c6\u0003J\t\u0010.\u001a\u00020\u0008H\u00c6\u0003J\t\u0010/\u001a\u00020\u0008H\u00c6\u0003J\t\u00100\u001a\u00020\u0008H\u00c6\u0003J\t\u00101\u001a\u00020\u0008H\u00c6\u0003J\t\u00102\u001a\u00020\u0008H\u00c6\u0003J\t\u00103\u001a\u00020\u0008H\u00c6\u0003J\t\u00104\u001a\u00020\u0008H\u00c6\u0003J\t\u00105\u001a\u00020\u0008H\u00c6\u0003J\t\u00106\u001a\u00020\u0008H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0014H\u00c6\u0003J\u00a5\u0001\u00109\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H\u00c6\u0001J\u0013\u0010:\u001a\u00020\u00142\u0008\u0010;\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010<\u001a\u00020\u0008H\u00d6\u0001J\t\u0010=\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u001dR\u0011\u0010\u000c\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001dR\u0011\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001dR\u0011\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u001dR\u0011\u0010\u0010\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001dR\u0011\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0018R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)\u00a8\u0006>"
    }
    d2 = {
        "Lcom/hermes/android/data/HermesHudRepository$HudOverview;",
        "",
        "provider",
        "",
        "model",
        "apiKeysConfigured",
        "",
        "totalSessions",
        "",
        "totalMessages",
        "totalToolCalls",
        "memoryEntries",
        "memoryCapacityPct",
        "userEntries",
        "skillCount",
        "customSkillCount",
        "cronJobCount",
        "cronActiveCount",
        "soulSummary",
        "gatewayAlive",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIIIIIIIILjava/lang/String;Z)V",
        "getProvider",
        "()Ljava/lang/String;",
        "getModel",
        "getApiKeysConfigured",
        "()Ljava/util/List;",
        "getTotalSessions",
        "()I",
        "getTotalMessages",
        "getTotalToolCalls",
        "getMemoryEntries",
        "getMemoryCapacityPct",
        "getUserEntries",
        "getSkillCount",
        "getCustomSkillCount",
        "getCronJobCount",
        "getCronActiveCount",
        "getSoulSummary",
        "getGatewayAlive",
        "()Z",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final apiKeysConfigured:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cronActiveCount:I

.field private final cronJobCount:I

.field private final customSkillCount:I

.field private final gatewayAlive:Z

.field private final memoryCapacityPct:I

.field private final memoryEntries:I

.field private final model:Ljava/lang/String;

.field private final provider:Ljava/lang/String;

.field private final skillCount:I

.field private final soulSummary:Ljava/lang/String;

.field private final totalMessages:I

.field private final totalSessions:I

.field private final totalToolCalls:I

.field private final userEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIIIIIIIILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIIIIIII",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p14

    const-string v5, "provider"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "model"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "apiKeysConfigured"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "soulSummary"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->provider:Ljava/lang/String;

    .line 40
    iput-object v2, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->model:Ljava/lang/String;

    .line 41
    iput-object v3, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->apiKeysConfigured:Ljava/util/List;

    move v1, p4

    .line 42
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalSessions:I

    move v1, p5

    .line 43
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalMessages:I

    move v1, p6

    .line 44
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalToolCalls:I

    move v1, p7

    .line 45
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryEntries:I

    move v1, p8

    .line 46
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryCapacityPct:I

    move v1, p9

    .line 47
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->userEntries:I

    move/from16 v1, p10

    .line 48
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->skillCount:I

    move/from16 v1, p11

    .line 49
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->customSkillCount:I

    move/from16 v1, p12

    .line 50
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronJobCount:I

    move/from16 v1, p13

    .line 51
    iput v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronActiveCount:I

    .line 52
    iput-object v4, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->soulSummary:Ljava/lang/String;

    move/from16 v1, p15

    .line 53
    iput-boolean v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->gatewayAlive:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/data/HermesHudRepository$HudOverview;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIIIIIIIILjava/lang/String;ZILjava/lang/Object;)Lcom/hermes/android/data/HermesHudRepository$HudOverview;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p16

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->provider:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->model:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->apiKeysConfigured:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalSessions:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalMessages:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalToolCalls:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryEntries:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryCapacityPct:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->userEntries:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->skillCount:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->customSkillCount:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronJobCount:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronActiveCount:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->soulSummary:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->gatewayAlive:Z

    goto :goto_e

    :cond_e
    move/from16 v1, p15

    :goto_e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p14, v15

    move/from16 p15, v1

    invoke-virtual/range {p0 .. p15}, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIIIIIIIILjava/lang/String;Z)Lcom/hermes/android/data/HermesHudRepository$HudOverview;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->skillCount:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->customSkillCount:I

    return v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronJobCount:I

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronActiveCount:I

    return v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->soulSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->gatewayAlive:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->apiKeysConfigured:Ljava/util/List;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalSessions:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalMessages:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalToolCalls:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryEntries:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryCapacityPct:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->userEntries:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIIIIIIIILjava/lang/String;Z)Lcom/hermes/android/data/HermesHudRepository$HudOverview;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIIIIIIII",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/hermes/android/data/HermesHudRepository$HudOverview;"
        }
    .end annotation

    const-string v0, "provider"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKeysConfigured"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "soulSummary"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;

    move-object v1, v0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v16, p15

    invoke-direct/range {v1 .. v16}, Lcom/hermes/android/data/HermesHudRepository$HudOverview;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIIIIIIIILjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;

    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->provider:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->provider:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->model:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->model:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->apiKeysConfigured:Ljava/util/List;

    iget-object v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->apiKeysConfigured:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalSessions:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalSessions:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalMessages:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalMessages:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalToolCalls:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalToolCalls:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryEntries:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryEntries:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryCapacityPct:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryCapacityPct:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->userEntries:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->userEntries:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->skillCount:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->skillCount:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->customSkillCount:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->customSkillCount:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronJobCount:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronJobCount:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronActiveCount:I

    iget v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronActiveCount:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->soulSummary:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->soulSummary:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->gatewayAlive:Z

    iget-boolean p1, p1, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->gatewayAlive:Z

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final getApiKeysConfigured()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->apiKeysConfigured:Ljava/util/List;

    return-object v0
.end method

.method public final getCronActiveCount()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronActiveCount:I

    return v0
.end method

.method public final getCronJobCount()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronJobCount:I

    return v0
.end method

.method public final getCustomSkillCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->customSkillCount:I

    return v0
.end method

.method public final getGatewayAlive()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->gatewayAlive:Z

    return v0
.end method

.method public final getMemoryCapacityPct()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryCapacityPct:I

    return v0
.end method

.method public final getMemoryEntries()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryEntries:I

    return v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->model:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getSkillCount()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->skillCount:I

    return v0
.end method

.method public final getSoulSummary()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->soulSummary:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalMessages()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalMessages:I

    return v0
.end method

.method public final getTotalSessions()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalSessions:I

    return v0
.end method

.method public final getTotalToolCalls()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalToolCalls:I

    return v0
.end method

.method public final getUserEntries()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->userEntries:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->provider:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->model:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->apiKeysConfigured:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalSessions:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalMessages:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalToolCalls:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryEntries:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryCapacityPct:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->userEntries:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->skillCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->customSkillCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronJobCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronActiveCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->soulSummary:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->gatewayAlive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->provider:Ljava/lang/String;

    iget-object v2, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->model:Ljava/lang/String;

    iget-object v3, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->apiKeysConfigured:Ljava/util/List;

    iget v4, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalSessions:I

    iget v5, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalMessages:I

    iget v6, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->totalToolCalls:I

    iget v7, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryEntries:I

    iget v8, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->memoryCapacityPct:I

    iget v9, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->userEntries:I

    iget v10, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->skillCount:I

    iget v11, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->customSkillCount:I

    iget v12, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronJobCount:I

    iget v13, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->cronActiveCount:I

    iget-object v14, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->soulSummary:Ljava/lang/String;

    iget-boolean v15, v0, Lcom/hermes/android/data/HermesHudRepository$HudOverview;->gatewayAlive:Z

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v16, v15

    const-string v15, "HudOverview(provider="

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiKeysConfigured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSessions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalToolCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memoryEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memoryCapacityPct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", skillCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customSkillCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cronJobCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cronActiveCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soulSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gatewayAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
