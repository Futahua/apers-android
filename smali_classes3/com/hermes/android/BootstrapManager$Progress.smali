.class public final Lcom/hermes/android/BootstrapManager$Progress;
.super Ljava/lang/Object;
.source "BootstrapManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/BootstrapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Progress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/hermes/android/BootstrapManager$Progress;",
        "",
        "step",
        "",
        "totalSteps",
        "stepName",
        "",
        "detail",
        "<init>",
        "(IILjava/lang/String;Ljava/lang/String;)V",
        "getStep",
        "()I",
        "getTotalSteps",
        "getStepName",
        "()Ljava/lang/String;",
        "getDetail",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
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
.field public static final $stable:I


# instance fields
.field private final detail:Ljava/lang/String;

.field private final step:I

.field private final stepName:Ljava/lang/String;

.field private final totalSteps:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "stepName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput p1, p0, Lcom/hermes/android/BootstrapManager$Progress;->step:I

    .line 472
    iput p2, p0, Lcom/hermes/android/BootstrapManager$Progress;->totalSteps:I

    .line 473
    iput-object p3, p0, Lcom/hermes/android/BootstrapManager$Progress;->stepName:Ljava/lang/String;

    .line 474
    iput-object p4, p0, Lcom/hermes/android/BootstrapManager$Progress;->detail:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 474
    const-string p4, ""

    .line 470
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/BootstrapManager$Progress;IILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/BootstrapManager$Progress;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/hermes/android/BootstrapManager$Progress;->step:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/hermes/android/BootstrapManager$Progress;->totalSteps:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/hermes/android/BootstrapManager$Progress;->stepName:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/hermes/android/BootstrapManager$Progress;->detail:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager$Progress;->copy(IILjava/lang/String;Ljava/lang/String;)Lcom/hermes/android/BootstrapManager$Progress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->step:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->totalSteps:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->stepName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IILjava/lang/String;Ljava/lang/String;)Lcom/hermes/android/BootstrapManager$Progress;
    .locals 1

    const-string v0, "stepName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/BootstrapManager$Progress;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/hermes/android/BootstrapManager$Progress;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/BootstrapManager$Progress;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/BootstrapManager$Progress;

    iget v1, p0, Lcom/hermes/android/BootstrapManager$Progress;->step:I

    iget v3, p1, Lcom/hermes/android/BootstrapManager$Progress;->step:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/hermes/android/BootstrapManager$Progress;->totalSteps:I

    iget v3, p1, Lcom/hermes/android/BootstrapManager$Progress;->totalSteps:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$Progress;->stepName:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/BootstrapManager$Progress;->stepName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$Progress;->detail:Ljava/lang/String;

    iget-object p1, p1, Lcom/hermes/android/BootstrapManager$Progress;->detail:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDetail()Ljava/lang/String;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public final getStep()I
    .locals 1

    .line 471
    iget v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->step:I

    return v0
.end method

.method public final getStepName()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->stepName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalSteps()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->totalSteps:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->step:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/BootstrapManager$Progress;->totalSteps:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$Progress;->stepName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$Progress;->detail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/hermes/android/BootstrapManager$Progress;->step:I

    iget v1, p0, Lcom/hermes/android/BootstrapManager$Progress;->totalSteps:I

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager$Progress;->stepName:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermes/android/BootstrapManager$Progress;->detail:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Progress(step="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", totalSteps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stepName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
