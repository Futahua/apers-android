.class public final Lcom/hermes/android/handoff/HandoffImporter$Stats;
.super Ljava/lang/Object;
.source "HandoffImporter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/handoff/HandoffImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stats"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003JO\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u00a8\u0006\""
    }
    d2 = {
        "Lcom/hermes/android/handoff/HandoffImporter$Stats;",
        "",
        "sessionsAdded",
        "",
        "sessionsExisting",
        "messagesAdded",
        "messagesSkipped",
        "memAdded",
        "memMerged",
        "memUnchanged",
        "<init>",
        "(IIIIIII)V",
        "getSessionsAdded",
        "()I",
        "getSessionsExisting",
        "getMessagesAdded",
        "getMessagesSkipped",
        "getMemAdded",
        "getMemMerged",
        "getMemUnchanged",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final memAdded:I

.field private final memMerged:I

.field private final memUnchanged:I

.field private final messagesAdded:I

.field private final messagesSkipped:I

.field private final sessionsAdded:I

.field private final sessionsExisting:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsAdded:I

    .line 32
    iput p2, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsExisting:I

    .line 33
    iput p3, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesAdded:I

    .line 34
    iput p4, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesSkipped:I

    .line 35
    iput p5, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memAdded:I

    .line 36
    iput p6, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memMerged:I

    .line 37
    iput p7, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memUnchanged:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/handoff/HandoffImporter$Stats;IIIIIIIILjava/lang/Object;)Lcom/hermes/android/handoff/HandoffImporter$Stats;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsAdded:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsExisting:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesAdded:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesSkipped:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memAdded:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memMerged:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memUnchanged:I

    :cond_6
    move v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/hermes/android/handoff/HandoffImporter$Stats;->copy(IIIIIII)Lcom/hermes/android/handoff/HandoffImporter$Stats;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsAdded:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsExisting:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesAdded:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesSkipped:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memAdded:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memMerged:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memUnchanged:I

    return v0
.end method

.method public final copy(IIIIIII)Lcom/hermes/android/handoff/HandoffImporter$Stats;
    .locals 9

    new-instance v8, Lcom/hermes/android/handoff/HandoffImporter$Stats;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/hermes/android/handoff/HandoffImporter$Stats;-><init>(IIIIIII)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/handoff/HandoffImporter$Stats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/handoff/HandoffImporter$Stats;

    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsAdded:I

    iget v3, p1, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsAdded:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsExisting:I

    iget v3, p1, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsExisting:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesAdded:I

    iget v3, p1, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesAdded:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesSkipped:I

    iget v3, p1, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesSkipped:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memAdded:I

    iget v3, p1, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memAdded:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memMerged:I

    iget v3, p1, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memMerged:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memUnchanged:I

    iget p1, p1, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memUnchanged:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getMemAdded()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memAdded:I

    return v0
.end method

.method public final getMemMerged()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memMerged:I

    return v0
.end method

.method public final getMemUnchanged()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memUnchanged:I

    return v0
.end method

.method public final getMessagesAdded()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesAdded:I

    return v0
.end method

.method public final getMessagesSkipped()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesSkipped:I

    return v0
.end method

.method public final getSessionsAdded()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsAdded:I

    return v0
.end method

.method public final getSessionsExisting()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsExisting:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsAdded:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsExisting:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesAdded:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesSkipped:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memAdded:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memMerged:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memUnchanged:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsAdded:I

    iget v1, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->sessionsExisting:I

    iget v2, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesAdded:I

    iget v3, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->messagesSkipped:I

    iget v4, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memAdded:I

    iget v5, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memMerged:I

    iget v6, p0, Lcom/hermes/android/handoff/HandoffImporter$Stats;->memUnchanged:I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Stats(sessionsAdded="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", sessionsExisting="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messagesAdded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messagesSkipped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memAdded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memMerged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", memUnchanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
