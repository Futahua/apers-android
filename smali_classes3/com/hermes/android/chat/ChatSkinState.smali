.class public final Lcom/hermes/android/chat/ChatSkinState;
.super Ljava/lang/Object;
.source "ChatSkinState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/chat/ChatSkinState$Phase;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatSkinState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatSkinState.kt\ncom/hermes/android/chat/ChatSkinState\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n295#2,2:112\n1557#2:114\n1628#2,3:115\n*S KotlinDebug\n*F\n+ 1 ChatSkinState.kt\ncom/hermes/android/chat/ChatSkinState\n*L\n83#1:112,2\n106#1:114\n106#1:115,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001(B1\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0014\u0010\u0015\u001a\u00020\u00002\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J\u0014\u0010\u0017\u001a\u00020\u00002\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001aJ\u0014\u0010\u001d\u001a\u00020\u00002\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003J\u0006\u0010\u001e\u001a\u00020\u0000J\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J3\u0010\"\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010#\u001a\u00020\u00122\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020&H\u00d6\u0001J\t\u0010\'\u001a\u00020\u001aH\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000bR\u0011\u0010\u0011\u001a\u00020\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006)"
    }
    d2 = {
        "Lcom/hermes/android/chat/ChatSkinState;",
        "",
        "history",
        "",
        "Lcom/hermes/android/chat/ChatBubble;",
        "live",
        "phase",
        "Lcom/hermes/android/chat/ChatSkinState$Phase;",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)V",
        "getHistory",
        "()Ljava/util/List;",
        "getLive",
        "getPhase",
        "()Lcom/hermes/android/chat/ChatSkinState$Phase;",
        "bubbles",
        "getBubbles",
        "inputEnabled",
        "",
        "getInputEnabled",
        "()Z",
        "withHistory",
        "dbBubbles",
        "withHistoryTurnInFlight",
        "onUserSend",
        "text",
        "",
        "onLivePreview",
        "previewText",
        "onTurnEnd",
        "freezeLiveIntoHistory",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Phase",
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
.field private final history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field private final live:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;"
        }
    .end annotation
.end field

.field private final phase:Lcom/hermes/android/chat/ChatSkinState$Phase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/chat/ChatSkinState;-><init>(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;",
            "Lcom/hermes/android/chat/ChatSkinState$Phase;",
            ")V"
        }
    .end annotation

    const-string v0, "history"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "live"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 30
    sget-object p3, Lcom/hermes/android/chat/ChatSkinState$Phase;->IDLE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    .line 27
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/hermes/android/chat/ChatSkinState;-><init>(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/chat/ChatSkinState;Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;ILjava/lang/Object;)Lcom/hermes/android/chat/ChatSkinState;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermes/android/chat/ChatSkinState;->copy(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/hermes/android/chat/ChatSkinState$Phase;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)Lcom/hermes/android/chat/ChatSkinState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;",
            "Lcom/hermes/android/chat/ChatSkinState$Phase;",
            ")",
            "Lcom/hermes/android/chat/ChatSkinState;"
        }
    .end annotation

    const-string v0, "history"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "live"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/chat/ChatSkinState;

    invoke-direct {v0, p1, p2, p3}, Lcom/hermes/android/chat/ChatSkinState;-><init>(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/chat/ChatSkinState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/chat/ChatSkinState;

    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    iget-object v3, p1, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    iget-object v3, p1, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    iget-object p1, p1, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final freezeLiveIntoHistory()Lcom/hermes/android/chat/ChatSkinState;
    .locals 11

    .line 106
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 115
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 116
    move-object v4, v3

    check-cast v4, Lcom/hermes/android/chat/ChatBubble;

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 106
    invoke-static/range {v4 .. v10}, Lcom/hermes/android/chat/ChatBubble;->copy$default(Lcom/hermes/android/chat/ChatBubble;Lcom/hermes/android/chat/BubbleRole;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/hermes/android/chat/ChatBubble;

    move-result-object v3

    .line 116
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 114
    check-cast v2, Ljava/lang/Iterable;

    .line 106
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 108
    sget-object v2, Lcom/hermes/android/chat/ChatSkinState$Phase;->IDLE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    .line 105
    invoke-virtual {p0, v0, v1, v2}, Lcom/hermes/android/chat/ChatSkinState;->copy(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v0

    return-object v0
.end method

.method public final getBubbles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    return-object v0
.end method

.method public final getInputEnabled()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    sget-object v1, Lcom/hermes/android/chat/ChatSkinState$Phase;->IDLE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getLive()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    return-object v0
.end method

.method public final getPhase()Lcom/hermes/android/chat/ChatSkinState$Phase;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    invoke-virtual {v1}, Lcom/hermes/android/chat/ChatSkinState$Phase;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onLivePreview(Ljava/lang/String;)Lcom/hermes/android/chat/ChatSkinState;
    .locals 13

    const-string v1, "previewText"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    sget-object v2, Lcom/hermes/android/chat/ChatSkinState$Phase;->SENDING:Lcom/hermes/android/chat/ChatSkinState$Phase;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    sget-object v2, Lcom/hermes/android/chat/ChatSkinState$Phase;->WAITING_RESPONSE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    if-eq v1, v2, :cond_0

    return-object p0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 112
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hermes/android/chat/ChatBubble;

    .line 83
    invoke-virtual {v3}, Lcom/hermes/android/chat/ChatBubble;->getRole()Lcom/hermes/android/chat/BubbleRole;

    move-result-object v3

    sget-object v4, Lcom/hermes/android/chat/BubbleRole;->USER:Lcom/hermes/android/chat/BubbleRole;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/hermes/android/chat/ChatBubble;

    .line 84
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v1

    if-eqz v2, :cond_3

    .line 85
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_3
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 87
    new-instance v2, Lcom/hermes/android/chat/ChatBubble;

    sget-object v7, Lcom/hermes/android/chat/BubbleRole;->ASSISTANT:Lcom/hermes/android/chat/BubbleRole;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v6, v2

    move-object v8, p1

    invoke-direct/range {v6 .. v12}, Lcom/hermes/android/chat/ChatBubble;-><init>(Lcom/hermes/android/chat/BubbleRole;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_4
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 90
    sget-object v3, Lcom/hermes/android/chat/ChatSkinState$Phase;->WAITING_RESPONSE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/hermes/android/chat/ChatSkinState;->copy$default(Lcom/hermes/android/chat/ChatSkinState;Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;ILjava/lang/Object;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object v0

    return-object v0
.end method

.method public final onTurnEnd(Ljava/util/List;)Lcom/hermes/android/chat/ChatSkinState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;)",
            "Lcom/hermes/android/chat/ChatSkinState;"
        }
    .end annotation

    const-string v0, "dbBubbles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/chat/ChatSkinState$Phase;->IDLE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    invoke-virtual {p0, p1, v0, v1}, Lcom/hermes/android/chat/ChatSkinState;->copy(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object p1

    return-object p1
.end method

.method public final onUserSend(Ljava/lang/String;)Lcom/hermes/android/chat/ChatSkinState;
    .locals 14

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/hermes/android/chat/ChatBubble;

    sget-object v2, Lcom/hermes/android/chat/BubbleRole;->USER:Lcom/hermes/android/chat/BubbleRole;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/hermes/android/chat/ChatBubble;-><init>(Lcom/hermes/android/chat/BubbleRole;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 68
    sget-object v11, Lcom/hermes/android/chat/ChatSkinState$Phase;->SENDING:Lcom/hermes/android/chat/ChatSkinState$Phase;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object v8, p0

    .line 66
    invoke-static/range {v8 .. v13}, Lcom/hermes/android/chat/ChatSkinState;->copy$default(Lcom/hermes/android/chat/ChatSkinState;Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;ILjava/lang/Object;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/hermes/android/chat/ChatSkinState;->history:Ljava/util/List;

    iget-object v1, p0, Lcom/hermes/android/chat/ChatSkinState;->live:Ljava/util/List;

    iget-object v2, p0, Lcom/hermes/android/chat/ChatSkinState;->phase:Lcom/hermes/android/chat/ChatSkinState$Phase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ChatSkinState(history="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", live="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withHistory(Ljava/util/List;)Lcom/hermes/android/chat/ChatSkinState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;)",
            "Lcom/hermes/android/chat/ChatSkinState;"
        }
    .end annotation

    const-string v0, "dbBubbles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/chat/ChatSkinState$Phase;->IDLE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    invoke-virtual {p0, p1, v0, v1}, Lcom/hermes/android/chat/ChatSkinState;->copy(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object p1

    return-object p1
.end method

.method public final withHistoryTurnInFlight(Ljava/util/List;)Lcom/hermes/android/chat/ChatSkinState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hermes/android/chat/ChatBubble;",
            ">;)",
            "Lcom/hermes/android/chat/ChatSkinState;"
        }
    .end annotation

    const-string v0, "dbBubbles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/chat/ChatSkinState$Phase;->WAITING_RESPONSE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    invoke-virtual {p0, p1, v0, v1}, Lcom/hermes/android/chat/ChatSkinState;->copy(Ljava/util/List;Ljava/util/List;Lcom/hermes/android/chat/ChatSkinState$Phase;)Lcom/hermes/android/chat/ChatSkinState;

    move-result-object p1

    return-object p1
.end method
