.class public Lorg/yaml/snakeyaml/reader/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x401


# instance fields
.field private final buffer:[C

.field private column:I

.field private dataLength:I

.field private dataWindow:[I

.field private documentIndex:I

.field private eof:Z

.field private index:I

.field private line:I

.field private name:Ljava/lang/String;

.field private pointer:I

.field private final stream:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 47
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 48
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->documentIndex:I

    .line 49
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 50
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    if-eqz p1, :cond_0

    .line 65
    const-string v1, "\'reader\'"

    iput-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    .line 66
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    .line 67
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    .line 68
    iput-object p1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    .line 69
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    const/16 p1, 0x401

    .line 70
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Reader must be provided."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 57
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    .line 58
    const-string p1, "\'string\'"

    iput-object p1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    return-void
.end method

.method private ensureEnoughData()Z
    .locals 1

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData(I)Z

    move-result v0

    return v0
.end method

.method private ensureEnoughData(I)Z
    .locals 2

    .line 172
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    if-lt v0, v1, :cond_0

    .line 173
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 175
    :cond_0
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isPrintable(I)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x9

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    const/16 v0, 0xd

    if-eq p0, v0, :cond_4

    const/16 v0, 0x85

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa0

    if-lt p0, v0, :cond_1

    const v0, 0xd7ff

    if-le p0, v0, :cond_4

    :cond_1
    const v0, 0xe000

    if-lt p0, v0, :cond_2

    const v0, 0xfffd

    if-le p0, v0, :cond_4

    :cond_2
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_3

    const v0, 0x10ffff

    if-gt p0, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPrintable(Ljava/lang/String;)Z
    .locals 5

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 76
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 78
    invoke-static {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->isPrintable(I)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 82
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private moveIndices(I)V
    .locals 1

    .line 225
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 226
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->documentIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->documentIndex:I

    return-void
.end method

.method private update()V
    .locals 9

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    const/16 v2, 0x400

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_5

    .line 182
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    iget v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    sub-int v5, v2, v4

    .line 183
    iget-object v6, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    add-int/2addr v2, v0

    invoke-static {v6, v4, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v2

    iput-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    .line 185
    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v2, v2, v4

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    invoke-virtual {v2, v4, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 187
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    const/16 v2, 0x20

    move v6, v2

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_3

    .line 195
    iget-object v7, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    invoke-static {v7, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v7

    .line 196
    iget-object v8, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    aput v7, v8, v5

    .line 197
    invoke-static {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->isPrintable(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 198
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_2

    :cond_2
    move v4, v0

    move v6, v7

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 205
    :cond_3
    iput v5, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    .line 206
    iput v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    if-ne v6, v2, :cond_4

    goto :goto_3

    .line 208
    :cond_4
    new-instance v0, Lorg/yaml/snakeyaml/reader/ReaderException;

    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    sub-int/2addr v5, v1

    const-string v1, "special characters are not allowed"

    invoke-direct {v0, v2, v5, v6, v1}, Lorg/yaml/snakeyaml/reader/ReaderException;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v0

    .line 212
    :cond_5
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public forward()V
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    return-void
.end method

.method public forward(I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 109
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 110
    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    aget v2, v2, v3

    const/4 v3, 0x1

    .line 111
    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->moveIndices(I)V

    .line 112
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0xd

    if-ne v2, v4, :cond_0

    .line 113
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v5, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    aget v4, v4, v5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const v4, 0xfeff

    if-eq v2, v4, :cond_2

    .line 117
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    goto :goto_2

    .line 114
    :cond_1
    :goto_1
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 115
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getColumn()I
    .locals 1

    .line 221
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    return v0
.end method

.method public getDocumentIndex()I
    .locals 1

    .line 235
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->documentIndex:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 249
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 253
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    return v0
.end method

.method public getMark()Lorg/yaml/snakeyaml/error/Mark;
    .locals 8

    .line 95
    new-instance v7, Lorg/yaml/snakeyaml/error/Mark;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    iget v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    iget-object v5, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v6, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/Mark;-><init>(Ljava/lang/String;III[II)V

    return-object v7
.end method

.method public peek()I
    .locals 2

    .line 123
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peek(I)I
    .locals 2

    .line 133
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public prefix(I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 144
    const-string p1, ""

    return-object p1

    .line 145
    :cond_0
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([III)V

    return-object v0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    sub-int/2addr v3, v2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([III)V

    return-object v0
.end method

.method public prefixForward(I)Ljava/lang/String;
    .locals 2

    .line 159
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 161
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->moveIndices(I)V

    .line 163
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    return-object v0
.end method

.method public resetDocumentIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->documentIndex:I

    return-void
.end method
