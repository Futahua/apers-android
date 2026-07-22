.class public final Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;
.super Ljava/lang/Object;
.source "MoaCouncilViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/ui/moa/MoaCouncilViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008!\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u0012\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u000f\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003J\t\u0010$\u001a\u00020\nH\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016Jj\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\n\u0008\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010)J\u0013\u0010*\u001a\u00020\u00032\u0008\u0010+\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010,\u001a\u00020\u0007H\u00d6\u0001J\t\u0010-\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u001f\u0010\u0016\u00a8\u0006."
    }
    d2 = {
        "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;",
        "",
        "isNew",
        "",
        "name",
        "",
        "nameError",
        "",
        "references",
        "",
        "Lcom/hermes/android/data/MoaSlot;",
        "aggregator",
        "original",
        "Lcom/hermes/android/data/MoaPreset;",
        "overwriteConfirmNeeded",
        "refsError",
        "<init>",
        "(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;)V",
        "()Z",
        "getName",
        "()Ljava/lang/String;",
        "getNameError",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getReferences",
        "()Ljava/util/List;",
        "getAggregator",
        "()Lcom/hermes/android/data/MoaSlot;",
        "getOriginal",
        "()Lcom/hermes/android/data/MoaPreset;",
        "getOverwriteConfirmNeeded",
        "getRefsError",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;",
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
.field private final aggregator:Lcom/hermes/android/data/MoaSlot;

.field private final isNew:Z

.field private final name:Ljava/lang/String;

.field private final nameError:Ljava/lang/Integer;

.field private final original:Lcom/hermes/android/data/MoaPreset;

.field private final overwriteConfirmNeeded:Z

.field private final references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/MoaSlot;",
            ">;"
        }
    .end annotation
.end field

.field private final refsError:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/MoaSlot;",
            ">;",
            "Lcom/hermes/android/data/MoaSlot;",
            "Lcom/hermes/android/data/MoaPreset;",
            "Z",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "references"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew:Z

    .line 51
    iput-object p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->name:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->nameError:Ljava/lang/Integer;

    .line 53
    iput-object p4, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->references:Ljava/util/List;

    .line 54
    iput-object p5, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->aggregator:Lcom/hermes/android/data/MoaSlot;

    .line 56
    iput-object p6, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->original:Lcom/hermes/android/data/MoaPreset;

    .line 58
    iput-boolean p7, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->overwriteConfirmNeeded:Z

    .line 59
    iput-object p8, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->refsError:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 53
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 54
    new-instance v1, Lcom/hermes/android/data/MoaSlot;

    const-string v3, ""

    invoke-direct {v1, v3, v3}, Lcom/hermes/android/data/MoaSlot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v10, v1

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    .line 49
    invoke-direct/range {v3 .. v11}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;-><init>(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->nameError:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->references:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->aggregator:Lcom/hermes/android/data/MoaSlot;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->original:Lcom/hermes/android/data/MoaPreset;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->overwriteConfirmNeeded:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->refsError:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->copy(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->nameError:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/MoaSlot;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->references:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Lcom/hermes/android/data/MoaSlot;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->aggregator:Lcom/hermes/android/data/MoaSlot;

    return-object v0
.end method

.method public final component6()Lcom/hermes/android/data/MoaPreset;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->original:Lcom/hermes/android/data/MoaPreset;

    return-object v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->overwriteConfirmNeeded:Z

    return v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->refsError:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/MoaSlot;",
            ">;",
            "Lcom/hermes/android/data/MoaSlot;",
            "Lcom/hermes/android/data/MoaPreset;",
            "Z",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;"
        }
    .end annotation

    const-string v0, "name"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "references"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregator"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    move-object v1, v0

    move v2, p1

    move-object v4, p3

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;-><init>(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    iget-boolean v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->nameError:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->nameError:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->references:Ljava/util/List;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->references:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->aggregator:Lcom/hermes/android/data/MoaSlot;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->aggregator:Lcom/hermes/android/data/MoaSlot;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->original:Lcom/hermes/android/data/MoaPreset;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->original:Lcom/hermes/android/data/MoaPreset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->overwriteConfirmNeeded:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->overwriteConfirmNeeded:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->refsError:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->refsError:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAggregator()Lcom/hermes/android/data/MoaSlot;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->aggregator:Lcom/hermes/android/data/MoaSlot;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNameError()Ljava/lang/Integer;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->nameError:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getOriginal()Lcom/hermes/android/data/MoaPreset;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->original:Lcom/hermes/android/data/MoaPreset;

    return-object v0
.end method

.method public final getOverwriteConfirmNeeded()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->overwriteConfirmNeeded:Z

    return v0
.end method

.method public final getReferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/MoaSlot;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->references:Ljava/util/List;

    return-object v0
.end method

.method public final getRefsError()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->refsError:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->nameError:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->references:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->aggregator:Lcom/hermes/android/data/MoaSlot;

    invoke-virtual {v1}, Lcom/hermes/android/data/MoaSlot;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->original:Lcom/hermes/android/data/MoaPreset;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/hermes/android/data/MoaPreset;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->overwriteConfirmNeeded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->refsError:Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final isNew()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->isNew:Z

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->nameError:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->references:Ljava/util/List;

    iget-object v4, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->aggregator:Lcom/hermes/android/data/MoaSlot;

    iget-object v5, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->original:Lcom/hermes/android/data/MoaPreset;

    iget-boolean v6, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->overwriteConfirmNeeded:Z

    iget-object v7, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->refsError:Ljava/lang/Integer;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "EditorState(isNew="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", name="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nameError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", references="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aggregator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", original="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overwriteConfirmNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refsError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
