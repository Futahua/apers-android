.class final Lcom/hermes/android/llama/StrictJson$Parser;
.super Ljava/lang/Object;
.source "StrictJson.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/llama/StrictJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parser"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u000c\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0003H\u0002J\u0008\u0010\u0013\u001a\u00020\u0010H\u0002J\u0008\u0010\u0014\u001a\u00020\u0010H\u0002J\u0008\u0010\u0015\u001a\u00020\u0010H\u0002J\u0008\u0010\u0016\u001a\u00020\u0010H\u0002J\u0008\u0010\u0017\u001a\u00020\u0010H\u0002J\u0008\u0010\u0018\u001a\u00020\u0010H\u0002J\u000c\u0010\u0019\u001a\u00020\u0010*\u00020\u001aH\u0002J\u000c\u0010\u001b\u001a\u00020\u0010*\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/hermes/android/llama/StrictJson$Parser;",
        "",
        "s",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "pos",
        "",
        "getPos",
        "()I",
        "setPos",
        "(I)V",
        "depth",
        "skipWs",
        "",
        "value",
        "",
        "lit",
        "word",
        "str",
        "num",
        "obj",
        "objBody",
        "arr",
        "arrBody",
        "isHex",
        "",
        "isAsciiDigit",
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
.field private depth:I

.field private pos:I

.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    return-void
.end method

.method private final arr()Z
    .locals 3

    .line 153
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->arrBody()Z

    move-result v0

    .line 155
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    return v0
.end method

.method private final arrBody()Z
    .locals 5

    .line 159
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 160
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 161
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x5d

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    return v1

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 164
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->value()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 166
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    return v2

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    return v2

    .line 169
    :cond_3
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    return v1

    .line 168
    :cond_4
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto :goto_0
.end method

.method private final isAsciiDigit(C)Z
    .locals 2

    const/16 v0, 0x30

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    const/16 v0, 0x3a

    if-ge p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final isHex(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p1, :cond_0

    const/16 v0, 0x3a

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p1, :cond_1

    const/16 v0, 0x67

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p1, :cond_2

    const/16 v0, 0x47

    if-ge p1, v0, :cond_2

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final lit(Ljava/lang/String;)Z
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final num()Z
    .locals 6

    .line 99
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 100
    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 102
    :cond_0
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lt v1, v4, :cond_1

    return v5

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x30

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto :goto_1

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x31

    if-gt v4, v1, :cond_e

    const/16 v4, 0x3a

    if-ge v1, v4, :cond_e

    :goto_0
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/hermes/android/llama/StrictJson$Parser;->isAsciiDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto :goto_0

    .line 107
    :cond_3
    :goto_1
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_6

    .line 108
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 109
    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/hermes/android/llama/StrictJson$Parser;->isAsciiDigit(C)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 110
    :cond_4
    :goto_2
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/hermes/android/llama/StrictJson$Parser;->isAsciiDigit(C)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto :goto_2

    :cond_5
    :goto_3
    return v5

    .line 112
    :cond_6
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_c

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x65

    if-eq v1, v4, :cond_7

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x45

    if-ne v1, v4, :cond_c

    .line 113
    :cond_7
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 114
    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_9

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_8

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_9

    :cond_8
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 115
    :cond_9
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/hermes/android/llama/StrictJson$Parser;->isAsciiDigit(C)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5

    .line 116
    :cond_a
    :goto_4
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_c

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/hermes/android/llama/StrictJson$Parser;->isAsciiDigit(C)Z

    move-result v1

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto :goto_4

    :cond_b
    :goto_5
    return v5

    .line 118
    :cond_c
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    if-le v1, v0, :cond_d

    goto :goto_6

    :cond_d
    move v3, v5

    :goto_6
    return v3

    :cond_e
    return v5
.end method

.method private final obj()Z
    .locals 3

    .line 125
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    const/16 v2, 0x100

    if-le v1, v2, :cond_0

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    const/4 v0, 0x0

    return v0

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->objBody()Z

    move-result v0

    .line 127
    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->depth:I

    return v0
.end method

.method private final objBody()Z
    .locals 5

    .line 131
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 132
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 133
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7d

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    return v1

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 136
    invoke-direct {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->str()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 138
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3a

    if-eq v0, v4, :cond_2

    goto :goto_1

    .line 139
    :cond_2
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 140
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 141
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->value()Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 143
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_4

    return v2

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    return v2

    .line 146
    :cond_5
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    return v1

    .line 145
    :cond_6
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto :goto_0

    :cond_7
    :goto_1
    return v2
.end method

.method private final str()Z
    .locals 6

    .line 72
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 73
    :cond_0
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 74
    :goto_0
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 75
    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    .line 77
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    return v3

    :cond_1
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_8

    .line 79
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    .line 80
    iget-object v5, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    return v2

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v5, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_7

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_7

    const/16 v4, 0x62

    if-eq v0, v4, :cond_7

    const/16 v4, 0x66

    if-eq v0, v4, :cond_7

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_7

    const/16 v4, 0x72

    if-eq v0, v4, :cond_7

    const/16 v4, 0x74

    if-eq v0, v4, :cond_7

    const/16 v4, 0x75

    if-eq v0, v4, :cond_3

    return v2

    .line 84
    :cond_3
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/lit8 v0, v0, 0x4

    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_4

    return v2

    :cond_4
    move v0, v3

    :goto_1
    const/4 v4, 0x5

    if-ge v0, v4, :cond_6

    .line 85
    iget-object v4, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v5, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/hermes/android/llama/StrictJson$Parser;->isHex(C)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_6
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto :goto_0

    .line 82
    :cond_7
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x20

    if-ge v0, v4, :cond_9

    return v2

    .line 92
    :cond_9
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto/16 :goto_0

    :cond_a
    :goto_2
    return v2
.end method


# virtual methods
.method public final getPos()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    return v0
.end method

.method public final setPos(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    return-void
.end method

.method public final skipWs()V
    .locals 5

    .line 51
    :goto_0
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const-string v0, " \t\n\r"

    check-cast v0, Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v2, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final value()Z
    .locals 2

    .line 54
    iget v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    iget-object v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/llama/StrictJson$Parser;->s:Ljava/lang/String;

    iget v1, p0, Lcom/hermes/android/llama/StrictJson$Parser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_1

    .line 62
    invoke-direct {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->num()Z

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->obj()Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "true"

    invoke-direct {p0, v0}, Lcom/hermes/android/llama/StrictJson$Parser;->lit(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "null"

    invoke-direct {p0, v0}, Lcom/hermes/android/llama/StrictJson$Parser;->lit(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 60
    :cond_4
    const-string v0, "false"

    invoke-direct {p0, v0}, Lcom/hermes/android/llama/StrictJson$Parser;->lit(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 57
    :cond_5
    invoke-direct {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->arr()Z

    move-result v0

    goto :goto_0

    .line 58
    :cond_6
    invoke-direct {p0}, Lcom/hermes/android/llama/StrictJson$Parser;->str()Z

    move-result v0

    :goto_0
    return v0
.end method
