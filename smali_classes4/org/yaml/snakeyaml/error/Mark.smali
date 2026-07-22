.class public final Lorg/yaml/snakeyaml/error/Mark;
.super Ljava/lang/Object;
.source "Mark.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final buffer:[I

.field private final column:I

.field private final index:I

.field private final line:I

.field private final name:Ljava/lang/String;

.field private final pointer:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III[CI)V
    .locals 7

    .line 43
    invoke-static {p5}, Lorg/yaml/snakeyaml/error/Mark;->toCodePoints([C)[I

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/Mark;-><init>(Ljava/lang/String;III[II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[II)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    .line 49
    iput p2, p0, Lorg/yaml/snakeyaml/error/Mark;->index:I

    .line 50
    iput p3, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    .line 51
    iput p4, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    .line 52
    iput-object p5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    .line 53
    iput p6, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    return-void
.end method

.method private isLineBreak(I)Z
    .locals 1

    .line 57
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result p1

    return p1
.end method

.method private static toCodePoints([C)[I
    .locals 4

    .line 33
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    new-array v0, v0, [I

    move v2, v1

    .line 34
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 35
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v3

    .line 36
    aput v3, v0, v2

    .line 37
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBuffer()[I
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 131
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 140
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->index:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 122
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPointer()I
    .locals 1

    .line 148
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    return v0
.end method

.method public get_snippet()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x4b

    .line 101
    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/error/Mark;->get_snippet(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_snippet(II)Ljava/lang/String;
    .locals 8

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    .line 62
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 64
    :goto_0
    const-string v1, " ... "

    const-string v2, ""

    if-lez v0, :cond_1

    iget-object v3, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/error/Mark;->isLineBreak(I)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v0, -0x1

    .line 66
    iget v4, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    cmpl-float v4, v4, p2

    if-lez v4, :cond_0

    add-int/lit8 v0, v0, 0x4

    move-object v3, v1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 73
    :goto_1
    iget v4, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 74
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget v5, v5, v4

    invoke-direct {p0, v5}, Lorg/yaml/snakeyaml/error/Mark;->isLineBreak(I)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 76
    iget v6, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    cmpl-float v6, v6, p2

    if-lez v6, :cond_2

    add-int/lit8 v4, v4, -0x4

    goto :goto_3

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 83
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v5, v2

    .line 84
    :goto_4
    const-string v6, " "

    if-ge v5, p1, :cond_4

    .line 85
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 87
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v0

    :goto_5
    if-ge v5, v4, :cond_5

    .line 89
    iget-object v7, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    aget v7, v7, v5

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 91
    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_6
    iget v1, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    if-ge v2, v1, :cond_6

    .line 94
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 96
    :cond_6
    const-string p1, "^"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/error/Mark;->get_snippet()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
