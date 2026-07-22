.class public final Lcom/hermes/android/DpkgHealPolicy;
.super Ljava/lang/Object;
.source "BootstrapManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/DpkgHealPolicy$Action;,
        Lcom/hermes/android/DpkgHealPolicy$HealOutcome;,
        Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;,
        Lcom/hermes/android/DpkgHealPolicy$RepairResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0004\"#$%B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tJ\u0016\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tJ$\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\tJ(\u0010\u001e\u001a\u00020\t2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\t0!\u00a8\u0006&"
    }
    d2 = {
        "Lcom/hermes/android/DpkgHealPolicy;",
        "",
        "<init>",
        "()V",
        "classify",
        "Lcom/hermes/android/DpkgHealPolicy$Action;",
        "statusLine",
        "",
        "isCorePkg",
        "",
        "escalateToForceDepends",
        "dpkgOutput",
        "shouldRunFixBroken",
        "markerExists",
        "didForceRemove",
        "mayClearFixBrokenMarker",
        "aptFixRc",
        "",
        "rehealOutcome",
        "Lcom/hermes/android/DpkgHealPolicy$HealOutcome;",
        "repairResult",
        "Lcom/hermes/android/DpkgHealPolicy$RepairResult;",
        "wasPending",
        "stillPending",
        "maintenanceSteps",
        "",
        "Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;",
        "repair",
        "sqliteMissing",
        "coreDepsPending",
        "runMaintenance",
        "steps",
        "exec",
        "Lkotlin/Function1;",
        "Action",
        "HealOutcome",
        "RepairResult",
        "MaintenanceStep",
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

.field public static final INSTANCE:Lcom/hermes/android/DpkgHealPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/DpkgHealPolicy;

    invoke-direct {v0}, Lcom/hermes/android/DpkgHealPolicy;-><init>()V

    sput-object v0, Lcom/hermes/android/DpkgHealPolicy;->INSTANCE:Lcom/hermes/android/DpkgHealPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final classify(Ljava/lang/String;Z)Lcom/hermes/android/DpkgHealPolicy$Action;
    .locals 4

    const-string v0, "statusLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3552
    const-string v0, "Status: install ok half-configured"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3553
    const-string v0, "Status: install ok unpacked"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3554
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "half-installed"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "reinstreq"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3556
    :cond_1
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$Action;->NONE:Lcom/hermes/android/DpkgHealPolicy$Action;

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 3555
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$Action;->KEEP_CORE:Lcom/hermes/android/DpkgHealPolicy$Action;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$Action;->REMOVE_BROKEN:Lcom/hermes/android/DpkgHealPolicy$Action;

    goto :goto_2

    .line 3553
    :cond_4
    :goto_1
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$Action;->MARK_INSTALLED:Lcom/hermes/android/DpkgHealPolicy$Action;

    :goto_2
    return-object p1
.end method

.method public final escalateToForceDepends(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "dpkgOutput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3564
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, "depend"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public final maintenanceSteps(Lcom/hermes/android/DpkgHealPolicy$RepairResult;ZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/DpkgHealPolicy$RepairResult;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;",
            ">;"
        }
    .end annotation

    const-string v0, "repair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3603
    sget-object v0, Lcom/hermes/android/DpkgHealPolicy$RepairResult;->DEFERRED:Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3604
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 3605
    sget-object p2, Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;->SQLITE_APT:Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 3606
    sget-object p2, Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;->CORE_DEPS_PIP:Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3604
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final mayClearFixBrokenMarker(ILcom/hermes/android/DpkgHealPolicy$HealOutcome;)Z
    .locals 1

    const-string v0, "rehealOutcome"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 3581
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$HealOutcome;->CLEAN:Lcom/hermes/android/DpkgHealPolicy$HealOutcome;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final repairResult(ZZ)Lcom/hermes/android/DpkgHealPolicy$RepairResult;
    .locals 0

    if-nez p1, :cond_0

    .line 3587
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$RepairResult;->NOT_PENDING:Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3588
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$RepairResult;->DEFERRED:Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    goto :goto_0

    .line 3589
    :cond_1
    sget-object p1, Lcom/hermes/android/DpkgHealPolicy$RepairResult;->REPAIRED:Lcom/hermes/android/DpkgHealPolicy$RepairResult;

    :goto_0
    return-object p1
.end method

.method public final runMaintenance(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "steps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final shouldRunFixBroken(ZZ)Z
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
