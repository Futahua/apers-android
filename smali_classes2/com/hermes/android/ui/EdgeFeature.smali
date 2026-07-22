.class final Lcom/hermes/android/ui/EdgeFeature;
.super Ljava/lang/Object;
.source "EdgeFeaturesSheet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/hermes/android/ui/EdgeFeature;",
        "",
        "icon",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "titleRes",
        "",
        "descRes",
        "<init>",
        "(Landroidx/compose/ui/graphics/vector/ImageVector;II)V",
        "getIcon",
        "()Landroidx/compose/ui/graphics/vector/ImageVector;",
        "getTitleRes",
        "()I",
        "getDescRes",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final descRes:I

.field private final icon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field private final titleRes:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;II)V
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/hermes/android/ui/EdgeFeature;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 185
    iput p2, p0, Lcom/hermes/android/ui/EdgeFeature;->titleRes:I

    .line 186
    iput p3, p0, Lcom/hermes/android/ui/EdgeFeature;->descRes:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/ui/EdgeFeature;Landroidx/compose/ui/graphics/vector/ImageVector;IIILjava/lang/Object;)Lcom/hermes/android/ui/EdgeFeature;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/hermes/android/ui/EdgeFeature;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/hermes/android/ui/EdgeFeature;->titleRes:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/hermes/android/ui/EdgeFeature;->descRes:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermes/android/ui/EdgeFeature;->copy(Landroidx/compose/ui/graphics/vector/ImageVector;II)Lcom/hermes/android/ui/EdgeFeature;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/EdgeFeature;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/ui/EdgeFeature;->titleRes:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/ui/EdgeFeature;->descRes:I

    return v0
.end method

.method public final copy(Landroidx/compose/ui/graphics/vector/ImageVector;II)Lcom/hermes/android/ui/EdgeFeature;
    .locals 1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/ui/EdgeFeature;

    invoke-direct {v0, p1, p2, p3}, Lcom/hermes/android/ui/EdgeFeature;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/ui/EdgeFeature;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/ui/EdgeFeature;

    iget-object v1, p0, Lcom/hermes/android/ui/EdgeFeature;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p1, Lcom/hermes/android/ui/EdgeFeature;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/hermes/android/ui/EdgeFeature;->titleRes:I

    iget v3, p1, Lcom/hermes/android/ui/EdgeFeature;->titleRes:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/hermes/android/ui/EdgeFeature;->descRes:I

    iget p1, p1, Lcom/hermes/android/ui/EdgeFeature;->descRes:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDescRes()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/hermes/android/ui/EdgeFeature;->descRes:I

    return v0
.end method

.method public final getIcon()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/hermes/android/ui/EdgeFeature;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    return-object v0
.end method

.method public final getTitleRes()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/hermes/android/ui/EdgeFeature;->titleRes:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hermes/android/ui/EdgeFeature;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/ui/EdgeFeature;->titleRes:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/ui/EdgeFeature;->descRes:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/hermes/android/ui/EdgeFeature;->icon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget v1, p0, Lcom/hermes/android/ui/EdgeFeature;->titleRes:I

    iget v2, p0, Lcom/hermes/android/ui/EdgeFeature;->descRes:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EdgeFeature(icon="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", titleRes="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
