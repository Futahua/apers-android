.class public final Lcom/hermes/android/chat/TurnDetector;
.super Ljava/lang/Object;
.source "TurnDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/chat/TurnDetector$Companion;,
        Lcom/hermes/android/chat/TurnDetector$EchoMatch;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTurnDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TurnDetector.kt\ncom/hermes/android/chat/TurnDetector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,278:1\n1#2:279\n488#3,11:280\n*S KotlinDebug\n*F\n+ 1 TurnDetector.kt\ncom/hermes/android/chat/TurnDetector\n*L\n246#1:280,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 -2\u00020\u0001:\u0002-.B)\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\n\u0010\u001f\u001a\u0004\u0018\u00010\u0004H\u0002J\u0006\u0010 \u001a\u00020\rJ\u0010\u0010!\u001a\u00020\r2\u0008\u0008\u0002\u0010\"\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\rJ\n\u0010%\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010&\u001a\u00020\u001b2\u0006\u0010\'\u001a\u00020\u0004H\u0002J\u0010\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004H\u0002J\u0018\u0010*\u001a\u00020+2\u0006\u0010)\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0004H\u0002R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/hermes/android/chat/TurnDetector;",
        "",
        "transcriptProvider",
        "Lkotlin/Function0;",
        "",
        "debounceMs",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;JLkotlinx/coroutines/CoroutineScope;)V",
        "onChunk",
        "Lkotlin/Function1;",
        "",
        "getOnChunk",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnChunk",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onTurnEnd",
        "getOnTurnEnd",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnTurnEnd",
        "(Lkotlin/jvm/functions/Function0;)V",
        "lastClean",
        "turnAnchor",
        "turnHead",
        "turnBaseLen",
        "",
        "echoToSkip",
        "debounceJob",
        "Lkotlinx/coroutines/Job;",
        "cleanTranscript",
        "onTerminalChanged",
        "markTurnStart",
        "sentText",
        "currentTurnText",
        "cancel",
        "currentTurnRaw",
        "turnSliceStart",
        "clean",
        "stripEcho",
        "raw",
        "matchEcho",
        "Lcom/hermes/android/chat/TurnDetector$EchoMatch;",
        "echo",
        "Companion",
        "EchoMatch",
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

.field public static final ANCHOR_LEN:I = 0xc8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/hermes/android/chat/TurnDetector$Companion;

.field public static final ECHO_START_CAP:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private debounceJob:Lkotlinx/coroutines/Job;

.field private final debounceMs:J

.field private echoToSkip:Ljava/lang/String;

.field private lastClean:Ljava/lang/String;

.field private onChunk:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onTurnEnd:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final transcriptProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private turnAnchor:Ljava/lang/String;

.field private turnBaseLen:I

.field private turnHead:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/chat/TurnDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/chat/TurnDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/chat/TurnDetector;->Companion:Lcom/hermes/android/chat/TurnDetector$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/chat/TurnDetector;->$stable:I

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;JLkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;J",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    const-string v0, "transcriptProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->transcriptProvider:Lkotlin/jvm/functions/Function0;

    .line 71
    iput-wide p2, p0, Lcom/hermes/android/chat/TurnDetector;->debounceMs:J

    .line 72
    iput-object p4, p0, Lcom/hermes/android/chat/TurnDetector;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 80
    const-string p1, ""

    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->lastClean:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->turnAnchor:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->turnHead:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->echoToSkip:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;JLkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p2, 0x1f4

    .line 69
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hermes/android/chat/TurnDetector;-><init>(Lkotlin/jvm/functions/Function0;JLkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final synthetic access$currentTurnRaw(Lcom/hermes/android/chat/TurnDetector;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/hermes/android/chat/TurnDetector;->currentTurnRaw()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDebounceMs$p(Lcom/hermes/android/chat/TurnDetector;)J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/hermes/android/chat/TurnDetector;->debounceMs:J

    return-wide v0
.end method

.method private final cleanTranscript()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->transcriptProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hermes/android/chat/TranscriptCleaner;->INSTANCE:Lcom/hermes/android/chat/TranscriptCleaner;

    invoke-virtual {v1, v0}, Lcom/hermes/android/chat/TranscriptCleaner;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final currentTurnRaw()Ljava/lang/String;
    .locals 2

    .line 161
    invoke-direct {p0}, Lcom/hermes/android/chat/TurnDetector;->cleanTranscript()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 162
    :cond_0
    invoke-direct {p0, v0}, Lcom/hermes/android/chat/TurnDetector;->turnSliceStart(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/hermes/android/chat/TurnDetector;->stripEcho(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic markTurnStart$default(Lcom/hermes/android/chat/TurnDetector;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 139
    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hermes/android/chat/TurnDetector;->markTurnStart(Ljava/lang/String;)V

    return-void
.end method

.method private final matchEcho(Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/chat/TurnDetector$EchoMatch;
    .locals 10

    .line 280
    check-cast p2, Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Appendable;

    const/4 v1, 0x0

    move v2, v1

    .line 289
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 246
    invoke-static {v3}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 289
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    :cond_1
    check-cast v0, Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;->INSTANCE:Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;

    check-cast p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch;

    return-object p1

    .line 249
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_4

    sget-object v5, Lcom/hermes/android/chat/TranscriptCleaner;->INSTANCE:Lcom/hermes/android/chat/TranscriptCleaner;

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/hermes/android/chat/TranscriptCleaner;->isNoise$app_release(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 251
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;->INSTANCE:Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;

    check-cast p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch;

    return-object p1

    .line 253
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v9, "get(...)"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v4, 0xa

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_6
    const/16 v3, 0x200

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_d

    .line 257
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ge v5, v2, :cond_d

    move v6, v1

    move v5, v4

    .line 260
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 263
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_b

    add-int/lit8 v5, v5, -0x1

    .line 265
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge p2, v0, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_8

    sget-object v0, Lcom/hermes/android/chat/TranscriptCleaner;->INSTANCE:Lcom/hermes/android/chat/TranscriptCleaner;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hermes/android/chat/TranscriptCleaner;->isNoise$app_release(C)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 268
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_9

    new-instance p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch$Complete;

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Lcom/hermes/android/chat/TurnDetector$EchoMatch$Complete;-><init>(I)V

    check-cast p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch;

    goto :goto_5

    .line 269
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lt p2, p1, :cond_a

    sget-object p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch$Partial;->INSTANCE:Lcom/hermes/android/chat/TurnDetector$EchoMatch$Partial;

    check-cast p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch;

    goto :goto_5

    .line 270
    :cond_a
    sget-object p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;->INSTANCE:Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;

    check-cast p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch;

    :goto_5
    return-object p1

    .line 273
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v5, v7, :cond_c

    if-lez v6, :cond_c

    sget-object p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch$Partial;->INSTANCE:Lcom/hermes/android/chat/TurnDetector$EchoMatch$Partial;

    check-cast p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch;

    return-object p1

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 275
    :cond_d
    sget-object p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;->INSTANCE:Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;

    check-cast p1, Lcom/hermes/android/chat/TurnDetector$EchoMatch;

    return-object p1
.end method

.method private final stripEcho(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->echoToSkip:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->echoToSkip:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/hermes/android/chat/TurnDetector;->matchEcho(Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/chat/TurnDetector$EchoMatch;

    move-result-object v0

    .line 226
    instance-of v1, v0, Lcom/hermes/android/chat/TurnDetector$EchoMatch$Complete;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/hermes/android/chat/TurnDetector$EchoMatch$Complete;

    invoke-virtual {v0}, Lcom/hermes/android/chat/TurnDetector$EchoMatch$Complete;->getEndIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    sget-object v1, Lcom/hermes/android/chat/TurnDetector$EchoMatch$Partial;->INSTANCE:Lcom/hermes/android/chat/TurnDetector$EchoMatch$Partial;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, ""

    goto :goto_0

    .line 228
    :cond_2
    sget-object v1, Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;->INSTANCE:Lcom/hermes/android/chat/TurnDetector$EchoMatch$None;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-object p1

    .line 225
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final turnSliceStart(Ljava/lang/String;)I
    .locals 9

    .line 182
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->turnAnchor:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    iget v0, p0, Lcom/hermes/android/chat/TurnDetector;->turnBaseLen:I

    iget-object v2, p0, Lcom/hermes/android/chat/TurnDetector;->turnAnchor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v5, v0, v2

    .line 184
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/hermes/android/chat/TurnDetector;->turnAnchor:Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 185
    iget-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->turnAnchor:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->turnHead:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->turnHead:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/16 v2, 0xc8

    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/hermes/android/chat/TurnDetector;->turnBaseLen:I

    if-lt v3, v4, :cond_3

    sub-int/2addr v4, v2

    .line 190
    invoke-static {v4, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    iget v1, p0, Lcom/hermes/android/chat/TurnDetector;->turnBaseLen:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->turnAnchor:Ljava/lang/String;

    .line 191
    iget v1, p0, Lcom/hermes/android/chat/TurnDetector;->turnBaseLen:I

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/hermes/android/chat/TurnDetector;->turnBaseLen:I

    .line 195
    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->turnAnchor:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 199
    :cond_4
    const-string p1, ""

    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->turnAnchor:Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->turnHead:Ljava/lang/String;

    .line 201
    iput v1, p0, Lcom/hermes/android/chat/TurnDetector;->turnBaseLen:I

    :goto_1
    return v1
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->debounceJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final currentTurnText()Ljava/lang/String;
    .locals 2

    .line 151
    sget-object v0, Lcom/hermes/android/chat/TranscriptCleaner;->INSTANCE:Lcom/hermes/android/chat/TranscriptCleaner;

    invoke-direct {p0}, Lcom/hermes/android/chat/TurnDetector;->currentTurnRaw()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/hermes/android/chat/TranscriptCleaner;->cleanForPreview(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOnChunk()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->onChunk:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnTurnEnd()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->onTurnEnd:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final markTurnStart(Ljava/lang/String;)V
    .locals 3

    const-string v0, "sentText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/hermes/android/chat/TurnDetector;->cleanTranscript()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/hermes/android/chat/TurnDetector;->turnBaseLen:I

    const/16 v1, 0xc8

    .line 142
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/hermes/android/chat/TurnDetector;->turnAnchor:Ljava/lang/String;

    .line 143
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hermes/android/chat/TurnDetector;->turnHead:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->lastClean:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->echoToSkip:Ljava/lang/String;

    .line 146
    iget-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->debounceJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onTerminalChanged()V
    .locals 9

    .line 108
    invoke-direct {p0}, Lcom/hermes/android/chat/TurnDetector;->cleanTranscript()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/hermes/android/chat/TurnDetector;->lastClean:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v3, p0, Lcom/hermes/android/chat/TurnDetector;->lastClean:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/hermes/android/chat/TurnDetector;->lastClean:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/hermes/android/chat/TurnDetector;->lastClean:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "substring(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->lastClean:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->onChunk:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_1
    iput-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->lastClean:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->onChunk:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->debounceJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 125
    :cond_3
    iget-object v3, p0, Lcom/hermes/android/chat/TurnDetector;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/hermes/android/chat/TurnDetector$onTerminalChanged$1;

    invoke-direct {v0, p0, v2}, Lcom/hermes/android/chat/TurnDetector$onTerminalChanged$1;-><init>(Lcom/hermes/android/chat/TurnDetector;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/chat/TurnDetector;->debounceJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setOnChunk(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->onChunk:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnTurnEnd(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/hermes/android/chat/TurnDetector;->onTurnEnd:Lkotlin/jvm/functions/Function0;

    return-void
.end method
