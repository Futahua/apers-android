.class public final Lcom/hermes/android/chat/TranscriptCleaner;
.super Ljava/lang/Object;
.source "TurnDetector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u000eJ\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hermes/android/chat/TranscriptCleaner;",
        "",
        "<init>",
        "()V",
        "ANSI",
        "Lkotlin/text/Regex;",
        "OSC",
        "BOX_CHARS",
        "",
        "DECORATION_LINE",
        "isNoise",
        "",
        "c",
        "",
        "isNoise$app_release",
        "strip",
        "text",
        "cleanForPreview",
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

.field private static final ANSI:Lkotlin/text/Regex;

.field private static final BOX_CHARS:Ljava/lang/String; = "\u2502\u2500\u256d\u256e\u2570\u256f\u251c\u2524\u252c\u2534\u253c\u250f\u2513\u2517\u251b\u2523\u252b\u2533\u253b\u254b\u2550\u2551\u2554\u2557\u255a\u255d\u2560\u2563\u2566\u2569\u256c\u2581\u2582\u2583\u2584\u2585\u2586\u2587\u2588\u2591\u2592\u2593\u00b7\u2022"

.field private static final DECORATION_LINE:Lkotlin/text/Regex;

.field public static final INSTANCE:Lcom/hermes/android/chat/TranscriptCleaner;

.field private static final OSC:Lkotlin/text/Regex;


# direct methods
.method public static synthetic $r8$lambda$TVll65PbNGjVx2f7N2s1wPg3Mcg(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/chat/TranscriptCleaner;->cleanForPreview$lambda$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/hermes/android/chat/TranscriptCleaner;

    invoke-direct {v0}, Lcom/hermes/android/chat/TranscriptCleaner;-><init>()V

    sput-object v0, Lcom/hermes/android/chat/TranscriptCleaner;->INSTANCE:Lcom/hermes/android/chat/TranscriptCleaner;

    .line 15
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\x1B(?:[@-Z\\\\-_]|\\[[0-?]*[ -/]*[@-~])"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hermes/android/chat/TranscriptCleaner;->ANSI:Lkotlin/text/Regex;

    .line 17
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\x1B\\][^\\x07]*\\x07"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hermes/android/chat/TranscriptCleaner;->OSC:Lkotlin/text/Regex;

    .line 24
    new-instance v0, Lkotlin/text/Regex;

    sget-object v1, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    const-string/jumbo v2, "\u2502\u2500\u256d\u256e\u2570\u256f\u251c\u2524\u252c\u2534\u253c\u250f\u2513\u2517\u251b\u2523\u252b\u2533\u253b\u254b\u2550\u2551\u2554\u2557\u255a\u255d\u2560\u2563\u2566\u2569\u256c\u2581\u2582\u2583\u2584\u2585\u2586\u2587\u2588\u2591\u2592\u2593\u00b7\u2022"

    invoke-virtual {v1, v2}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "^[\\s"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]+$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hermes/android/chat/TranscriptCleaner;->DECORATION_LINE:Lkotlin/text/Regex;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/chat/TranscriptCleaner;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final cleanForPreview$lambda$0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/hermes/android/chat/TranscriptCleaner;->DECORATION_LINE:Lkotlin/text/Regex;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final cleanForPreview(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/hermes/android/chat/TranscriptCleaner;->strip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Lcom/hermes/android/chat/TranscriptCleaner$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/hermes/android/chat/TranscriptCleaner$$ExternalSyntheticLambda0;-><init>()V

    .line 40
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 41
    const-string p1, "\n"

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final isNoise$app_release(C)Z
    .locals 4

    .line 27
    invoke-static {p1}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u2502\u2500\u256d\u256e\u2570\u256f\u251c\u2524\u252c\u2534\u253c\u250f\u2513\u2517\u251b\u2523\u252b\u2533\u253b\u254b\u2550\u2551\u2554\u2557\u255a\u255d\u2560\u2563\u2566\u2569\u256c\u2581\u2582\u2583\u2584\u2585\u2586\u2587\u2588\u2591\u2592\u2593\u00b7\u2022"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public final strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/hermes/android/chat/TranscriptCleaner;->ANSI:Lkotlin/text/Regex;

    sget-object v1, Lcom/hermes/android/chat/TranscriptCleaner;->OSC:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "\r"

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
