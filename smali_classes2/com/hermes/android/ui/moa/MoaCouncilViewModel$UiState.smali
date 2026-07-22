.class public final Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;
.super Ljava/lang/Object;
.source "MoaCouncilViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/ui/moa/MoaCouncilViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UiState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bm\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003Jo\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010+\u001a\u00020\u00032\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010-\u001a\u00020.H\u00d6\u0001J\t\u0010/\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0014R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0018R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0018\u00a8\u00060"
    }
    d2 = {
        "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;",
        "",
        "loading",
        "",
        "section",
        "Lcom/hermes/android/data/MoaSection;",
        "inUsePreset",
        "",
        "staleInUse",
        "candidates",
        "",
        "Lcom/hermes/android/data/SlotCandidate;",
        "hasAnyProvider",
        "editor",
        "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;",
        "error",
        "pendingDelete",
        "<init>",
        "(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;)V",
        "getLoading",
        "()Z",
        "getSection",
        "()Lcom/hermes/android/data/MoaSection;",
        "getInUsePreset",
        "()Ljava/lang/String;",
        "getStaleInUse",
        "getCandidates",
        "()Ljava/util/List;",
        "getHasAnyProvider",
        "getEditor",
        "()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;",
        "getError",
        "getPendingDelete",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/data/SlotCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private final editor:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

.field private final error:Ljava/lang/String;

.field private final hasAnyProvider:Z

.field private final inUsePreset:Ljava/lang/String;

.field private final loading:Z

.field private final pendingDelete:Ljava/lang/String;

.field private final section:Lcom/hermes/android/data/MoaSection;

.field private final staleInUse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;-><init>(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/hermes/android/data/MoaSection;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/SlotCandidate;",
            ">;Z",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "section"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inUsePreset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidates"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->loading:Z

    .line 36
    iput-object p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->section:Lcom/hermes/android/data/MoaSection;

    .line 38
    iput-object p3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->inUsePreset:Ljava/lang/String;

    .line 40
    iput-boolean p4, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->staleInUse:Z

    .line 41
    iput-object p5, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->candidates:Ljava/util/List;

    .line 42
    iput-boolean p6, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->hasAnyProvider:Z

    .line 43
    iput-object p7, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->editor:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    .line 44
    iput-object p8, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->error:Ljava/lang/String;

    .line 46
    iput-object p9, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->pendingDelete:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 34
    const-string v4, ""

    if-eqz v3, :cond_1

    .line 36
    new-instance v3, Lcom/hermes/android/data/MoaSection;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v4, v4, v5}, Lcom/hermes/android/data/MoaSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v2, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    move-object v7, v8

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v8

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v8, p9

    :goto_8
    move-object p1, p0

    move p2, v1

    move-object p3, v3

    move-object p4, v4

    move p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v2

    move-object/from16 p8, v7

    move-object/from16 p9, v9

    move-object/from16 p10, v8

    .line 34
    invoke-direct/range {p1 .. p10}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;-><init>(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->loading:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->section:Lcom/hermes/android/data/MoaSection;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->inUsePreset:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->staleInUse:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->candidates:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->hasAnyProvider:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->editor:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->error:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->pendingDelete:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->copy(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->loading:Z

    return v0
.end method

.method public final component2()Lcom/hermes/android/data/MoaSection;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->section:Lcom/hermes/android/data/MoaSection;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->inUsePreset:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->staleInUse:Z

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/SlotCandidate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->candidates:Ljava/util/List;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->hasAnyProvider:Z

    return v0
.end method

.method public final component7()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->editor:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->pendingDelete:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/hermes/android/data/MoaSection;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/SlotCandidate;",
            ">;Z",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;"
        }
    .end annotation

    const-string v0, "section"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inUsePreset"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "candidates"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    move-object v1, v0

    move v2, p1

    move v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;-><init>(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    iget-boolean v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->loading:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->loading:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->section:Lcom/hermes/android/data/MoaSection;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->section:Lcom/hermes/android/data/MoaSection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->inUsePreset:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->inUsePreset:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->staleInUse:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->staleInUse:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->candidates:Ljava/util/List;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->candidates:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->hasAnyProvider:Z

    iget-boolean v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->hasAnyProvider:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->editor:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->editor:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->error:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->error:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->pendingDelete:Ljava/lang/String;

    iget-object p1, p1, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->pendingDelete:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/data/SlotCandidate;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->candidates:Ljava/util/List;

    return-object v0
.end method

.method public final getEditor()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->editor:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    return-object v0
.end method

.method public final getError()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->error:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasAnyProvider()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->hasAnyProvider:Z

    return v0
.end method

.method public final getInUsePreset()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->inUsePreset:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoading()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->loading:Z

    return v0
.end method

.method public final getPendingDelete()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->pendingDelete:Ljava/lang/String;

    return-object v0
.end method

.method public final getSection()Lcom/hermes/android/data/MoaSection;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->section:Lcom/hermes/android/data/MoaSection;

    return-object v0
.end method

.method public final getStaleInUse()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->staleInUse:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->loading:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->section:Lcom/hermes/android/data/MoaSection;

    invoke-virtual {v1}, Lcom/hermes/android/data/MoaSection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->inUsePreset:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->staleInUse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->candidates:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->hasAnyProvider:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->editor:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->error:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->pendingDelete:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-boolean v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->loading:Z

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->section:Lcom/hermes/android/data/MoaSection;

    iget-object v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->inUsePreset:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->staleInUse:Z

    iget-object v4, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->candidates:Ljava/util/List;

    iget-boolean v5, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->hasAnyProvider:Z

    iget-object v6, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->editor:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    iget-object v7, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->error:Ljava/lang/String;

    iget-object v8, p0, Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;->pendingDelete:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "UiState(loading="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", section="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inUsePreset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", staleInUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", candidates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasAnyProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", editor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pendingDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
