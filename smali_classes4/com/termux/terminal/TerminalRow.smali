.class public final Lcom/termux/terminal/TerminalRow;
.super Ljava/lang/Object;
.source "TerminalRow.java"


# static fields
.field private static final MAX_COMBINING_CHARACTERS_PER_COLUMN:I = 0xf

.field private static final SPARE_CAPACITY_FACTOR:F = 1.5f


# instance fields
.field private final mColumns:I

.field mHasNonOneWidthOrSurrogateChars:Z

.field mLineWrap:Z

.field private mSpaceUsed:S

.field final mStyle:[J

.field public mText:[C


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    const/high16 v0, 0x3fc00000    # 1.5f

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 56
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 57
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    .line 58
    invoke-virtual {p0, p2, p3}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    return-void
.end method

.method private wideDisplayCharacterStartingAt(I)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 131
    :cond_0
    iget-short v3, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v1, v3, :cond_3

    .line 132
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v1, 0x1

    aget-char v3, v3, v1

    .line 133
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v1, v1, 0x2

    aget-char v4, v5, v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_0

    :cond_1
    move v1, v4

    .line 134
    :goto_0
    invoke-static {v3}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v3

    if-lez v3, :cond_0

    if-ne v2, p1, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/2addr v2, v3

    if-le v2, p1, :cond_0

    :cond_3
    return v0
.end method


# virtual methods
.method public clear(J)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 146
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 147
    iget p1, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    int-to-short p1, p1

    iput-short p1, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    return-void
.end method

.method public copyInterval(Lcom/termux/terminal/TerminalRow;III)V
    .locals 9

    .line 63
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    iget-boolean v1, p1, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    .line 64
    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v0

    .line 65
    invoke-virtual {p1, p3}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p2, :cond_0

    add-int/lit8 v3, p2, -0x1

    .line 66
    invoke-direct {p1, v3}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 67
    :goto_0
    iget-object v4, p1, Lcom/termux/terminal/TerminalRow;->mText:[C

    if-ne p0, p1, :cond_1

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v4

    :cond_1
    move v5, v1

    :goto_1
    if-ge v0, p3, :cond_5

    .line 70
    aget-char v6, v4, v0

    .line 71
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-char v7, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    :cond_2
    if-eqz v3, :cond_3

    const/16 v6, 0x20

    move v3, v1

    .line 77
    :cond_3
    invoke-static {v6}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v7

    if-lez v7, :cond_4

    add-int/2addr p4, v5

    add-int/2addr p2, v5

    move v5, v7

    .line 83
    :cond_4
    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v7

    invoke-virtual {p0, p4, v6, v7, v8}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    add-int/2addr v0, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method public findStartOfColumn(I)I
    .locals 6

    .line 93
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v0

    .line 100
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v5, v0, 0x2

    aget-char v3, v4, v3

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v3, v5

    .line 102
    :cond_1
    invoke-static {v2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v2

    if-lez v2, :cond_5

    add-int/2addr v1, v2

    if-ne v1, p1, :cond_4

    .line 106
    :goto_1
    iget-short p1, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v3, p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char p1, p1, v3

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v0, p1, v3

    add-int/lit8 v1, v3, 0x1

    aget-char p1, p1, v1

    invoke-static {v0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    invoke-static {p1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result p1

    if-gtz p1, :cond_3

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char p1, p1, v3

    invoke-static {p1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result p1

    if-gtz p1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    if-le v1, p1, :cond_5

    return v0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public getSpaceUsed()I
    .locals 1

    .line 88
    iget-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    return v0
.end method

.method public final getStyle(I)J
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method isBlank()Z
    .locals 5

    .line 274
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 275
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v3, v3, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setChar(IIJ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    if-ltz v1, :cond_16

    .line 153
    iget-object v5, v0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    array-length v6, v5

    if-ge v1, v6, :cond_16

    .line 156
    aput-wide v3, v5, v1

    .line 158
    invoke-static/range {p2 .. p2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v5

    .line 161
    iget-boolean v6, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    const/4 v7, 0x1

    if-nez v6, :cond_2

    const/high16 v6, 0x10000

    if-ge v2, v6, :cond_1

    if-eq v5, v7, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v3, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    int-to-char v2, v2

    aput-char v2, v3, v1

    return-void

    .line 163
    :cond_1
    :goto_0
    iput-boolean v7, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    :cond_2
    const/4 v6, 0x0

    if-gtz v5, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    move v8, v6

    :goto_1
    if-lez v1, :cond_4

    add-int/lit8 v9, v1, -0x1

    .line 172
    invoke-direct {v0, v9}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v7

    goto :goto_2

    :cond_4
    move v9, v6

    :goto_2
    const/16 v10, 0x20

    const/4 v11, 0x2

    if-eqz v8, :cond_5

    if-eqz v9, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_6

    add-int/lit8 v9, v1, -0x1

    .line 179
    invoke-virtual {v0, v9, v10, v3, v4}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    :cond_6
    if-ne v5, v11, :cond_7

    add-int/lit8 v9, v1, 0x1

    .line 181
    invoke-direct {v0, v9}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v9

    if-eqz v9, :cond_7

    add-int/lit8 v9, v1, 0x1

    .line 182
    invoke-virtual {v0, v9, v10, v3, v4}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    .line 185
    :cond_7
    :goto_3
    iget-object v3, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 186
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v4

    .line 187
    invoke-static {v3, v4}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v9

    add-int v12, v1, v9

    .line 191
    iget v13, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ge v12, v13, :cond_8

    .line 192
    invoke-virtual {v0, v12}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v12

    goto :goto_4

    .line 196
    :cond_8
    iget-short v12, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    :goto_4
    sub-int/2addr v12, v4

    if-eqz v8, :cond_9

    .line 201
    iget-object v13, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int v14, v4, v12

    invoke-static {v13, v4, v14}, Lcom/termux/terminal/WcWidth;->zeroWidthCharsCount([CII)I

    move-result v13

    const/16 v14, 0xf

    if-lt v13, v14, :cond_9

    return-void

    .line 207
    :cond_9
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    if-eqz v8, :cond_a

    add-int/2addr v13, v12

    :cond_a
    add-int v14, v4, v12

    add-int v15, v4, v13

    sub-int/2addr v13, v12

    if-lez v13, :cond_c

    .line 221
    iget-short v10, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int v7, v10, v14

    add-int/2addr v10, v13

    .line 222
    array-length v11, v3

    if-le v10, v11, :cond_b

    .line 224
    array-length v10, v3

    iget v11, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v10, v11

    new-array v10, v10, [C

    .line 225
    invoke-static {v3, v6, v10, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    invoke-static {v3, v14, v10, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    iput-object v10, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    move-object v3, v10

    goto :goto_5

    .line 229
    :cond_b
    invoke-static {v3, v14, v3, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    :cond_c
    if-gez v13, :cond_d

    .line 233
    iget-short v7, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v7, v14

    invoke-static {v3, v14, v3, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    :cond_d
    :goto_5
    iget-short v7, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/2addr v7, v13

    int-to-short v7, v7

    iput-short v7, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-eqz v8, :cond_e

    goto :goto_6

    :cond_e
    move v12, v6

    :goto_6
    add-int/2addr v4, v12

    .line 239
    invoke-static {v2, v3, v4}, Ljava/lang/Character;->toChars(I[CI)I

    const/4 v2, 0x2

    if-ne v9, v2, :cond_10

    const/4 v2, 0x1

    if-ne v5, v2, :cond_11

    .line 243
    iget-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/lit8 v2, v1, 0x1

    array-length v4, v3

    if-le v2, v4, :cond_f

    .line 244
    array-length v1, v3

    iget v2, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v1, v2

    new-array v1, v1, [C

    .line 245
    invoke-static {v3, v6, v1, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v15, 0x1

    .line 246
    iget-short v4, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v4, v15

    invoke-static {v3, v15, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iput-object v1, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    move-object v3, v1

    goto :goto_7

    :cond_f
    add-int/lit8 v2, v15, 0x1

    sub-int/2addr v1, v15

    .line 249
    invoke-static {v3, v15, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    const/16 v1, 0x20

    .line 251
    aput-char v1, v3, v15

    .line 253
    iget-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_9

    :cond_10
    const/4 v2, 0x1

    :cond_11
    if-ne v9, v2, :cond_15

    const/4 v4, 0x2

    if-ne v5, v4, :cond_15

    .line 255
    iget v5, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/lit8 v6, v5, -0x1

    if-eq v1, v6, :cond_14

    sub-int/2addr v5, v4

    if-ne v1, v5, :cond_12

    int-to-short v1, v15

    .line 259
    iput-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_9

    .line 263
    :cond_12
    iget-object v1, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v1, v1, v15

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_13

    move v7, v4

    goto :goto_8

    :cond_13
    move v7, v2

    :goto_8
    add-int/2addr v7, v15

    sub-int v1, v7, v15

    .line 267
    iget-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v2, v7

    invoke-static {v3, v7, v3, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v2, v1

    int-to-short v1, v2

    iput-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_9

    .line 256
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot put wide character in last column"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_9
    return-void

    .line 154
    :cond_16
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TerminalRow.setChar(): columnToSet="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", codePoint="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", style="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
