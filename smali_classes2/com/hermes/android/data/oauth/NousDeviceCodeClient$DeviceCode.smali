.class public final Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;
.super Ljava/lang/Object;
.source "NousDeviceCodeClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/oauth/NousDeviceCodeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceCode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003JE\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012\u00a8\u0006 "
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;",
        "",
        "deviceCode",
        "",
        "userCode",
        "verificationUri",
        "verificationUriComplete",
        "expiresIn",
        "",
        "interval",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V",
        "getDeviceCode",
        "()Ljava/lang/String;",
        "getUserCode",
        "getVerificationUri",
        "getVerificationUriComplete",
        "getExpiresIn",
        "()I",
        "getInterval",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private final deviceCode:Ljava/lang/String;

.field private final expiresIn:I

.field private final interval:I

.field private final userCode:Ljava/lang/String;

.field private final verificationUri:Ljava/lang/String;

.field private final verificationUriComplete:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "deviceCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationUriComplete"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->deviceCode:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->userCode:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUri:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUriComplete:Ljava/lang/String;

    .line 49
    iput p5, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->expiresIn:I

    .line 50
    iput p6, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->interval:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->deviceCode:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->userCode:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUri:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUriComplete:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->expiresIn:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->interval:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->deviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->userCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUri:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUriComplete:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->expiresIn:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->interval:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;
    .locals 8

    const-string v0, "deviceCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationUri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationUriComplete"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->deviceCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->deviceCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->userCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->userCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUri:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUri:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUriComplete:Ljava/lang/String;

    iget-object v3, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUriComplete:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->expiresIn:I

    iget v3, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->expiresIn:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->interval:I

    iget p1, p1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->interval:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDeviceCode()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->deviceCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiresIn()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->expiresIn:I

    return v0
.end method

.method public final getInterval()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->interval:I

    return v0
.end method

.method public final getUserCode()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->userCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerificationUri()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUri:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerificationUriComplete()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUriComplete:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->deviceCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->userCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUriComplete:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->expiresIn:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->interval:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->deviceCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->userCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->verificationUriComplete:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->expiresIn:I

    iget v5, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->interval:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DeviceCode(deviceCode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", userCode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verificationUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", verificationUriComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
