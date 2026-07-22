.class public final Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;
.super Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;
.source "NousDeviceCodeClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;",
        "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;",
        "tokenJson",
        "Lorg/json/JSONObject;",
        "<init>",
        "(Lorg/json/JSONObject;)V",
        "getTokenJson",
        "()Lorg/json/JSONObject;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final tokenJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "tokenJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->tokenJson:Lorg/json/JSONObject;

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;Lorg/json/JSONObject;ILjava/lang/Object;)Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->tokenJson:Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->copy(Lorg/json/JSONObject;)Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->tokenJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final copy(Lorg/json/JSONObject;)Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;
    .locals 1

    const-string v0, "tokenJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;

    invoke-direct {v0, p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;

    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->tokenJson:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->tokenJson:Lorg/json/JSONObject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTokenJson()Lorg/json/JSONObject;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->tokenJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->tokenJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;->tokenJson:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Success(tokenJson="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
