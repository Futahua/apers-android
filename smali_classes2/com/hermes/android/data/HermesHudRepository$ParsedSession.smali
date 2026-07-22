.class final Lcom/hermes/android/data/HermesHudRepository$ParsedSession;
.super Ljava/lang/Object;
.source "HermesHudRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/HermesHudRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParsedSession"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0082\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0003J)\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0006H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/hermes/android/data/HermesHudRepository$ParsedSession;",
        "",
        "info",
        "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
        "toolCounts",
        "",
        "",
        "",
        "<init>",
        "(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Ljava/util/Map;)V",
        "getInfo",
        "()Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
        "getToolCounts",
        "()Ljava/util/Map;",
        "component1",
        "component2",
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


# instance fields
.field private final info:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

.field private final toolCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolCounts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->info:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    .line 96
    iput-object p2, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->toolCounts:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/data/HermesHudRepository$ParsedSession;Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Ljava/util/Map;ILjava/lang/Object;)Lcom/hermes/android/data/HermesHudRepository$ParsedSession;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->info:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->toolCounts:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->copy(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Ljava/util/Map;)Lcom/hermes/android/data/HermesHudRepository$ParsedSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/hermes/android/data/HermesHudRepository$SessionInfo;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->info:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    return-object v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->toolCounts:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Ljava/util/Map;)Lcom/hermes/android/data/HermesHudRepository$ParsedSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/hermes/android/data/HermesHudRepository$ParsedSession;"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolCounts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;

    invoke-direct {v0, p1, p2}, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;-><init>(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;

    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->info:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    iget-object v3, p1, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->info:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->toolCounts:Ljava/util/Map;

    iget-object p1, p1, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->toolCounts:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getInfo()Lcom/hermes/android/data/HermesHudRepository$SessionInfo;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->info:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    return-object v0
.end method

.method public final getToolCounts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->toolCounts:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->info:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    invoke-virtual {v0}, Lcom/hermes/android/data/HermesHudRepository$SessionInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->toolCounts:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->info:Lcom/hermes/android/data/HermesHudRepository$SessionInfo;

    iget-object v1, p0, Lcom/hermes/android/data/HermesHudRepository$ParsedSession;->toolCounts:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ParsedSession(info="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", toolCounts="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
