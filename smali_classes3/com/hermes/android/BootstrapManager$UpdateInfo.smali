.class public final Lcom/hermes/android/BootstrapManager$UpdateInfo;
.super Ljava/lang/Object;
.source "BootstrapManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/BootstrapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J;\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/hermes/android/BootstrapManager$UpdateInfo;",
        "",
        "localVersion",
        "",
        "remoteVersion",
        "hasUpdate",
        "",
        "fetchOk",
        "error",
        "Lcom/hermes/android/BootstrapManager$UpdateError;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;)V",
        "getLocalVersion",
        "()Ljava/lang/String;",
        "getRemoteVersion",
        "getHasUpdate",
        "()Z",
        "getFetchOk",
        "getError",
        "()Lcom/hermes/android/BootstrapManager$UpdateError;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
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
.field private final error:Lcom/hermes/android/BootstrapManager$UpdateError;

.field private final fetchOk:Z

.field private final hasUpdate:Z

.field private final localVersion:Ljava/lang/String;

.field private final remoteVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;)V
    .locals 1

    const-string v0, "localVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2270
    iput-object p1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->localVersion:Ljava/lang/String;

    .line 2271
    iput-object p2, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->remoteVersion:Ljava/lang/String;

    .line 2272
    iput-boolean p3, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->hasUpdate:Z

    .line 2275
    iput-boolean p4, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->fetchOk:Z

    .line 2277
    iput-object p5, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->error:Lcom/hermes/android/BootstrapManager$UpdateError;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    .line 2277
    sget-object p5, Lcom/hermes/android/BootstrapManager$UpdateError;->NONE:Lcom/hermes/android/BootstrapManager$UpdateError;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2269
    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/BootstrapManager$UpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/BootstrapManager$UpdateInfo;Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;ILjava/lang/Object;)Lcom/hermes/android/BootstrapManager$UpdateInfo;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->localVersion:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->remoteVersion:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->hasUpdate:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->fetchOk:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->error:Lcom/hermes/android/BootstrapManager$UpdateError;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/hermes/android/BootstrapManager$UpdateInfo;->copy(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;)Lcom/hermes/android/BootstrapManager$UpdateInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->localVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->remoteVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->hasUpdate:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->fetchOk:Z

    return v0
.end method

.method public final component5()Lcom/hermes/android/BootstrapManager$UpdateError;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->error:Lcom/hermes/android/BootstrapManager$UpdateError;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;)Lcom/hermes/android/BootstrapManager$UpdateInfo;
    .locals 7

    const-string v0, "localVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/BootstrapManager$UpdateInfo;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/hermes/android/BootstrapManager$UpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/hermes/android/BootstrapManager$UpdateError;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/BootstrapManager$UpdateInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/BootstrapManager$UpdateInfo;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->localVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/BootstrapManager$UpdateInfo;->localVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->remoteVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/BootstrapManager$UpdateInfo;->remoteVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->hasUpdate:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$UpdateInfo;->hasUpdate:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->fetchOk:Z

    iget-boolean v3, p1, Lcom/hermes/android/BootstrapManager$UpdateInfo;->fetchOk:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->error:Lcom/hermes/android/BootstrapManager$UpdateError;

    iget-object p1, p1, Lcom/hermes/android/BootstrapManager$UpdateInfo;->error:Lcom/hermes/android/BootstrapManager$UpdateError;

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getError()Lcom/hermes/android/BootstrapManager$UpdateError;
    .locals 1

    .line 2277
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->error:Lcom/hermes/android/BootstrapManager$UpdateError;

    return-object v0
.end method

.method public final getFetchOk()Z
    .locals 1

    .line 2275
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->fetchOk:Z

    return v0
.end method

.method public final getHasUpdate()Z
    .locals 1

    .line 2272
    iget-boolean v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->hasUpdate:Z

    return v0
.end method

.method public final getLocalVersion()Ljava/lang/String;
    .locals 1

    .line 2270
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->localVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemoteVersion()Ljava/lang/String;
    .locals 1

    .line 2271
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->remoteVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->localVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->remoteVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->hasUpdate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->fetchOk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->error:Lcom/hermes/android/BootstrapManager$UpdateError;

    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager$UpdateError;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->localVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->remoteVersion:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->hasUpdate:Z

    iget-boolean v3, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->fetchOk:Z

    iget-object v4, p0, Lcom/hermes/android/BootstrapManager$UpdateInfo;->error:Lcom/hermes/android/BootstrapManager$UpdateError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UpdateInfo(localVersion="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", remoteVersion="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fetchOk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
