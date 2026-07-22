.class public final Lcom/hermes/android/llama/LocalLlmThresholds;
.super Ljava/lang/Object;
.source "LocalLlmThresholds.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalLlmThresholds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalLlmThresholds.kt\ncom/hermes/android/llama/LocalLlmThresholds\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,69:1\n1#2:70\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005J \u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005J \u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hermes/android/llama/LocalLlmThresholds;",
        "",
        "<init>",
        "()V",
        "DEFAULT_SAFETY_FACTOR",
        "",
        "shouldWarnInsufficientRam",
        "",
        "totalRamBytes",
        "",
        "modelSizeBytes",
        "safetyFactor",
        "shouldWarnLowAvailableMemory",
        "availMemBytes",
        "hasEnoughStorageForDownload",
        "availableBytes",
        "bufferBytes",
        "DEFAULT_STORAGE_BUFFER_BYTES",
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
.field public static final $stable:I = 0x0

.field public static final DEFAULT_SAFETY_FACTOR:I = 0x2

.field public static final DEFAULT_STORAGE_BUFFER_BYTES:J = 0x6400000L

.field public static final INSTANCE:Lcom/hermes/android/llama/LocalLlmThresholds;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/llama/LocalLlmThresholds;

    invoke-direct {v0}, Lcom/hermes/android/llama/LocalLlmThresholds;-><init>()V

    sput-object v0, Lcom/hermes/android/llama/LocalLlmThresholds;->INSTANCE:Lcom/hermes/android/llama/LocalLlmThresholds;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic hasEnoughStorageForDownload$default(Lcom/hermes/android/llama/LocalLlmThresholds;JJJILjava/lang/Object;)Z
    .locals 7

    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_0

    const-wide/32 p5, 0x6400000

    :cond_0
    move-wide v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 57
    invoke-virtual/range {v0 .. v6}, Lcom/hermes/android/llama/LocalLlmThresholds;->hasEnoughStorageForDownload(JJJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic shouldWarnInsufficientRam$default(Lcom/hermes/android/llama/LocalLlmThresholds;JJIILjava/lang/Object;)Z
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x2

    :cond_0
    move v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 26
    invoke-virtual/range {v0 .. v5}, Lcom/hermes/android/llama/LocalLlmThresholds;->shouldWarnInsufficientRam(JJI)Z

    move-result p0

    return p0
.end method

.method public static synthetic shouldWarnLowAvailableMemory$default(Lcom/hermes/android/llama/LocalLlmThresholds;JJIILjava/lang/Object;)Z
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p5, 0x2

    :cond_0
    move v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/hermes/android/llama/LocalLlmThresholds;->shouldWarnLowAvailableMemory(JJI)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final hasEnoughStorageForDownload(JJJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_2

    cmp-long v0, p5, v0

    if-ltz v0, :cond_1

    add-long/2addr p3, p5

    cmp-long p1, p1, p3

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferBytes must be non-negative"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "modelSizeBytes must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final shouldWarnInsufficientRam(JJI)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    if-lez p5, :cond_1

    int-to-long v0, p5

    mul-long/2addr p3, v0

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "safetyFactor must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "modelSizeBytes must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final shouldWarnLowAvailableMemory(JJI)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    if-lez p5, :cond_1

    int-to-long v0, p5

    mul-long/2addr p3, v0

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "safetyFactor must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "modelSizeBytes must be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
