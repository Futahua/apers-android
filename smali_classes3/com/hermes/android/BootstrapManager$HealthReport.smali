.class public final Lcom/hermes/android/BootstrapManager$HealthReport;
.super Ljava/lang/Object;
.source "BootstrapManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/BootstrapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HealthReport"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001a\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0006\u0010\u001d\u001a\u00020\u001eJ\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003Jw\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010+\u001a\u00020\u00032\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010-\u001a\u00020.H\u00d6\u0001J\t\u0010/\u001a\u00020\u001eH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u0011\u0010\u001c\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0011\u00a8\u00060"
    }
    d2 = {
        "Lcom/hermes/android/BootstrapManager$HealthReport;",
        "",
        "bashExists",
        "",
        "pythonExists",
        "gitExists",
        "pipExists",
        "libsqliteExists",
        "hermesAgentCloned",
        "hermesLauncherExists",
        "hermesLauncherShebangOk",
        "networkReachable",
        "openaiInstalled",
        "anthropicInstalled",
        "<init>",
        "(ZZZZZZZZZZZ)V",
        "getBashExists",
        "()Z",
        "getPythonExists",
        "getGitExists",
        "getPipExists",
        "getLibsqliteExists",
        "getHermesAgentCloned",
        "getHermesLauncherExists",
        "getHermesLauncherShebangOk",
        "getNetworkReachable",
        "getOpenaiInstalled",
        "getAnthropicInstalled",
        "isHealthy",
        "summary",
        "",
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
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field public static final $stable:I


# instance fields
.field private final anthropicInstalled:Z

.field private final bashExists:Z

.field private final gitExists:Z

.field private final hermesAgentCloned:Z

.field private final hermesLauncherExists:Z

.field private final hermesLauncherShebangOk:Z

.field private final libsqliteExists:Z

.field private final networkReachable:Z

.field private final openaiInstalled:Z

.field private final pipExists:Z

.field private final pythonExists:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZZ)V
    .locals 0

    .line 2724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2725
    iput-boolean p1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    .line 2726
    iput-boolean p2, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    .line 2727
    iput-boolean p3, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->gitExists:Z

    .line 2728
    iput-boolean p4, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    .line 2729
    iput-boolean p5, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    .line 2730
    iput-boolean p6, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    .line 2731
    iput-boolean p7, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    .line 2732
    iput-boolean p8, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    .line 2733
    iput-boolean p9, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->networkReachable:Z

    .line 2734
    iput-boolean p10, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    .line 2735
    iput-boolean p11, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/BootstrapManager$HealthReport;ZZZZZZZZZZZILjava/lang/Object;)Lcom/hermes/android/BootstrapManager$HealthReport;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->gitExists:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->networkReachable:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-boolean v1, v0, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    goto :goto_a

    :cond_a
    move/from16 v1, p11

    :goto_a
    move p1, v2

    move p2, v3

    move p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/hermes/android/BootstrapManager$HealthReport;->copy(ZZZZZZZZZZZ)Lcom/hermes/android/BootstrapManager$HealthReport;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    return v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    return v0
.end method

.method public final component11()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->gitExists:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->networkReachable:Z

    return v0
.end method

.method public final copy(ZZZZZZZZZZZ)Lcom/hermes/android/BootstrapManager$HealthReport;
    .locals 13

    new-instance v12, Lcom/hermes/android/BootstrapManager$HealthReport;

    move-object v0, v12

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/hermes/android/BootstrapManager$HealthReport;-><init>(ZZZZZZZZZZZ)V

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/BootstrapManager$HealthReport;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/BootstrapManager$HealthReport;

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->gitExists:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->gitExists:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->networkReachable:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->networkReachable:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    iget-boolean p1, p1, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    if-eq v1, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAnthropicInstalled()Z
    .locals 1

    .line 2735
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    return v0
.end method

.method public final getBashExists()Z
    .locals 1

    .line 2725
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    return v0
.end method

.method public final getGitExists()Z
    .locals 1

    .line 2727
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->gitExists:Z

    return v0
.end method

.method public final getHermesAgentCloned()Z
    .locals 1

    .line 2730
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    return v0
.end method

.method public final getHermesLauncherExists()Z
    .locals 1

    .line 2731
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    return v0
.end method

.method public final getHermesLauncherShebangOk()Z
    .locals 1

    .line 2732
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    return v0
.end method

.method public final getLibsqliteExists()Z
    .locals 1

    .line 2729
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    return v0
.end method

.method public final getNetworkReachable()Z
    .locals 1

    .line 2733
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->networkReachable:Z

    return v0
.end method

.method public final getOpenaiInstalled()Z
    .locals 1

    .line 2734
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    return v0
.end method

.method public final getPipExists()Z
    .locals 1

    .line 2728
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    return v0
.end method

.method public final getPythonExists()Z
    .locals 1

    .line 2726
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->gitExists:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->networkReachable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isHealthy()Z
    .locals 1

    .line 2738
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    if-eqz v0, :cond_0

    .line 2739
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    if-eqz v0, :cond_0

    .line 2740
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final summary()Ljava/lang/String;
    .locals 7

    .line 2742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2743
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    const-string v2, "MISSING"

    const-string v3, "OK"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v4, "bash: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "append(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2744
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v6, "python: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2745
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->gitExists:Z

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v6, "git: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2746
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    if-eqz v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    const-string v6, "pip: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2747
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    if-eqz v1, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    const-string v6, "libsqlite: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2748
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    if-eqz v1, :cond_5

    move-object v1, v3

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    const-string v6, "hermes-agent: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2749
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    if-eqz v1, :cond_6

    move-object v1, v3

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    const-string v6, "launcher: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2750
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    if-eqz v1, :cond_7

    move-object v1, v3

    goto :goto_7

    :cond_7
    const-string v1, "INVALID"

    :goto_7
    const-string v6, "launcher shebang: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2751
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    if-eqz v1, :cond_8

    move-object v1, v3

    goto :goto_8

    :cond_8
    move-object v1, v2

    :goto_8
    const-string v6, "openai: "

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2752
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    if-eqz v1, :cond_9

    move-object v2, v3

    :cond_9
    const-string v1, "anthropic: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2753
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->networkReachable:Z

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    const-string v3, "UNREACHABLE"

    :goto_9
    const-string v1, "network: "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->bashExists:Z

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pythonExists:Z

    iget-boolean v2, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->gitExists:Z

    iget-boolean v3, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->pipExists:Z

    iget-boolean v4, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->libsqliteExists:Z

    iget-boolean v5, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesAgentCloned:Z

    iget-boolean v6, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherExists:Z

    iget-boolean v7, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->hermesLauncherShebangOk:Z

    iget-boolean v8, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->networkReachable:Z

    iget-boolean v9, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->openaiInstalled:Z

    iget-boolean v10, p0, Lcom/hermes/android/BootstrapManager$HealthReport;->anthropicInstalled:Z

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "HealthReport(bashExists="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", pythonExists="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gitExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pipExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", libsqliteExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hermesAgentCloned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hermesLauncherExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hermesLauncherShebangOk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkReachable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openaiInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", anthropicInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
