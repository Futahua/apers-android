.class public final Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;
.super Ljava/lang/Object;
.source "ActiveModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/llama/ActiveModelStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveModelMeta"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;",
        "",
        "displayName",
        "",
        "sourceDescription",
        "sizeBytes",
        "",
        "savedAtMillis",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JJ)V",
        "getDisplayName",
        "()Ljava/lang/String;",
        "getSourceDescription",
        "getSizeBytes",
        "()J",
        "getSavedAtMillis",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
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
.field private final displayName:Ljava/lang/String;

.field private final savedAtMillis:J

.field private final sizeBytes:J

.field private final sourceDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "displayName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceDescription"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->displayName:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sourceDescription:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sizeBytes:J

    .line 26
    iput-wide p5, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->savedAtMillis:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/Object;)Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->displayName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sourceDescription:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sizeBytes:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-wide p5, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->savedAtMillis:J

    :cond_3
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-wide p5, v0

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->copy(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sourceDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sizeBytes:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->savedAtMillis:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;
    .locals 8

    const-string v0, "displayName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceDescription"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;

    iget-object v1, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->displayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sourceDescription:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sourceDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sizeBytes:J

    iget-wide v5, p1, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sizeBytes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->savedAtMillis:J

    iget-wide v5, p1, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->savedAtMillis:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSavedAtMillis()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->savedAtMillis:J

    return-wide v0
.end method

.method public final getSizeBytes()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sizeBytes:J

    return-wide v0
.end method

.method public final getSourceDescription()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sourceDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sourceDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sizeBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->savedAtMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->displayName:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sourceDescription:Ljava/lang/String;

    iget-wide v2, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->sizeBytes:J

    iget-wide v4, p0, Lcom/hermes/android/llama/ActiveModelStore$ActiveModelMeta;->savedAtMillis:J

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ActiveModelMeta(displayName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", sourceDescription="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", savedAtMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
