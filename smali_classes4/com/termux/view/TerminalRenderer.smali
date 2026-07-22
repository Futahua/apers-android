.class public final Lcom/termux/view/TerminalRenderer;
.super Ljava/lang/Object;
.source "TerminalRenderer.java"


# instance fields
.field private final asciiMeasures:[F

.field private final mFontAscent:I

.field final mFontLineSpacing:I

.field final mFontLineSpacingAndAscent:I

.field final mFontWidth:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field final mTextSize:I

.field final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(ILandroid/graphics/Typeface;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    .line 34
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    .line 37
    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    .line 38
    iput-object p2, p0, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    .line 40
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p2, 0x1

    .line 41
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float p1, p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    add-int/2addr p1, v1

    .line 46
    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    .line 47
    const-string p1, "X"

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 50
    :goto_0
    iget-object v2, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    int-to-char v2, v1

    .line 51
    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 52
    iget-object v2, p0, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    iget-object v3, p0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v7, p10

    move/from16 v8, p11

    .line 176
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeForeColor(J)I

    move-result v1

    .line 177
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v9

    .line 178
    invoke-static/range {p12 .. p13}, Lcom/termux/terminal/TextStyle;->decodeBackColor(J)I

    move-result v2

    and-int/lit8 v3, v9, 0x9

    if-eqz v3, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    and-int/lit8 v3, v9, 0x4

    if-eqz v3, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    and-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    and-int/lit8 v3, v9, 0x40

    if-eqz v3, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    and-int/lit16 v3, v9, 0x100

    if-eqz v3, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    const/high16 v6, -0x1000000

    and-int v3, v1, v6

    const/16 v5, 0x8

    if-eq v3, v6, :cond_6

    if-eqz v11, :cond_5

    if-ltz v1, :cond_5

    if-ge v1, v5, :cond_5

    add-int/lit8 v1, v1, 0x8

    .line 188
    :cond_5
    aget v1, p3, v1

    :cond_6
    and-int v3, v2, v6

    if-eq v3, v6, :cond_7

    .line 192
    aget v2, p3, v2

    :cond_7
    and-int/lit8 v3, v9, 0x10

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    xor-int v3, p14, v3

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_6

    :cond_9
    move v3, v1

    move v1, v2

    :goto_6
    move/from16 v2, p5

    int-to-float v2, v2

    .line 203
    iget v4, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr v2, v4

    move/from16 v5, p6

    int-to-float v5, v5

    mul-float v16, v5, v4

    add-float v16, v2, v16

    div-float v4, p9, v4

    sub-float v17, v4, v5

    .line 208
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move/from16 v19, v11

    float-to-double v10, v6

    const-wide v20, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v6, v10, v20

    if-lez v6, :cond_a

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v6, v5, v4

    const/high16 v10, 0x3f800000    # 1.0f

    move-object/from16 v11, p1

    .line 210
    invoke-virtual {v11, v6, v10}, Landroid/graphics/Canvas;->scale(FF)V

    div-float/2addr v4, v5

    mul-float/2addr v2, v4

    mul-float v16, v16, v4

    move/from16 v26, v2

    move/from16 v6, v16

    const/4 v10, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v11, p1

    move/from16 v26, v2

    move/from16 v6, v16

    const/4 v10, 0x0

    :goto_7
    const/16 v2, 0x101

    .line 216
    aget v2, p3, v2

    if-eq v1, v2, :cond_b

    .line 218
    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget v1, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v1, v1

    sub-float v1, p4, v1

    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    int-to-float v2, v2

    add-float v4, v1, v2

    iget-object v5, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v26

    move v11, v3

    move v3, v4

    move v4, v6

    move-object/from16 v16, v5

    const/16 v20, 0x8

    move/from16 v5, p4

    move/from16 p5, v10

    const/high16 v18, -0x1000000

    move v10, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_b
    move v11, v3

    move/from16 p5, v10

    const/high16 v18, -0x1000000

    const/16 v20, 0x8

    move v10, v6

    :goto_8
    const/4 v1, 0x2

    if-eqz v7, :cond_e

    .line 223
    iget-object v2, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget v2, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    iget v3, v0, Lcom/termux/view/TerminalRenderer;->mFontAscent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    const/4 v5, 0x1

    if-ne v8, v5, :cond_c

    float-to-double v5, v2

    div-double/2addr v5, v3

    double-to-float v2, v5

    goto :goto_9

    :cond_c
    if-ne v8, v1, :cond_d

    float-to-double v5, v10

    sub-float v7, v10, v26

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v7, v8

    float-to-double v7, v7

    div-double/2addr v7, v3

    sub-double/2addr v5, v7

    double-to-float v3, v5

    move v10, v3

    :cond_d
    :goto_9
    sub-float v2, p4, v2

    .line 227
    iget-object v3, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 p9, p1

    move/from16 p10, v26

    move/from16 p11, v2

    move/from16 p12, v10

    move/from16 p13, p4

    move-object/from16 p14, v3

    invoke-virtual/range {p9 .. p14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_e
    and-int/lit8 v2, v9, 0x20

    if-nez v2, :cond_11

    if-eqz v15, :cond_f

    shr-int/lit8 v2, v11, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v11, 0xff

    mul-int/2addr v2, v1

    .line 237
    div-int/lit8 v2, v2, 0x3

    mul-int/2addr v3, v1

    .line 238
    div-int/lit8 v3, v3, 0x3

    mul-int/2addr v4, v1

    .line 239
    div-int/lit8 v4, v4, 0x3

    shl-int/lit8 v1, v2, 0x10

    add-int v1, v1, v18

    shl-int/lit8 v2, v3, 0x8

    add-int/2addr v1, v2

    add-int v3, v1, v4

    goto :goto_a

    :cond_f
    move v3, v11

    .line 243
    :goto_a
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v4, v19

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 244
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 245
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v13, :cond_10

    const v2, -0x414ccccd    # -0.35f

    goto :goto_b

    :cond_10
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 246
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 247
    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget v1, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v1, v1

    sub-float v27, p4, v1

    const/16 v28, 0x0

    iget-object v1, v0, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v22, p7

    move/from16 v23, p8

    move/from16 v24, p7

    move/from16 v25, p8

    move-object/from16 v29, v1

    invoke-virtual/range {v20 .. v29}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    :cond_11
    if-eqz p5, :cond_12

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    return-void
.end method


# virtual methods
.method public getFontLineSpacing()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    return v0
.end method

.method public getFontWidth()F
    .locals 1

    .line 257
    iget v0, p0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    return v0
.end method

.method public final render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V
    .locals 49

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v12, p4

    move/from16 v13, p5

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->isReverseVideo()Z

    move-result v16

    .line 60
    iget v11, v14, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorCol()I

    move-result v17

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorRow()I

    move-result v10

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->shouldCursorBeVisible()Z

    move-result v18

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v9

    .line 65
    iget-object v0, v14, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v8, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/termux/terminal/TerminalEmulator;->getCursorStyle()I

    move-result v19

    .line 76
    invoke-virtual {v9}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    .line 77
    invoke-virtual {v9}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v1

    sub-int/2addr v1, v0

    neg-int v0, v0

    move/from16 v2, p3

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v20, 0x0

    if-lez v0, :cond_1

    move/from16 v0, v20

    .line 80
    :cond_1
    iget v2, v14, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_2

    move v7, v1

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    if-eqz v16, :cond_3

    const/16 v1, 0x100

    .line 84
    aget v1, v8, v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v6, p2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_3
    move-object/from16 v6, p2

    .line 86
    :goto_2
    iget v1, v15, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v1, v1

    move v5, v0

    :goto_3
    if-ge v5, v7, :cond_1d

    .line 88
    iget v0, v15, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v0, v0

    add-float v21, v1, v0

    const/4 v0, -0x1

    if-ne v5, v10, :cond_4

    if-eqz v18, :cond_4

    move/from16 v4, v17

    goto :goto_4

    :cond_4
    move v4, v0

    :goto_4
    if-lt v5, v12, :cond_7

    if-gt v5, v13, :cond_7

    if-ne v5, v12, :cond_5

    move/from16 v1, p6

    goto :goto_5

    :cond_5
    move v1, v0

    :goto_5
    if-ne v5, v13, :cond_6

    move/from16 v2, p7

    goto :goto_6

    .line 94
    :cond_6
    iget v2, v14, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    :goto_6
    move v3, v1

    goto :goto_7

    :cond_7
    move v2, v0

    move v3, v2

    .line 97
    :goto_7
    invoke-virtual {v9, v5}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v1

    .line 98
    iget-object v12, v1, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 99
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v13

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    move/from16 v28, v5

    move/from16 p3, v13

    move/from16 v5, v20

    move v6, v5

    move v13, v6

    move/from16 v29, v13

    move/from16 v25, v22

    move-wide/from16 v26, v23

    move/from16 v23, v0

    move/from16 v0, v29

    move/from16 v24, v0

    :goto_8
    const/16 v30, 0x102

    const/16 v31, 0x1

    if-ge v0, v11, :cond_18

    move/from16 v32, v7

    .line 111
    aget-char v7, v12, v13

    .line 112
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v33

    move/from16 v34, v11

    if-eqz v33, :cond_8

    const/16 v35, 0x2

    goto :goto_9

    :cond_8
    move/from16 v35, v31

    :goto_9
    if-eqz v33, :cond_9

    add-int/lit8 v33, v13, 0x1

    .line 114
    aget-char v11, v12, v33

    invoke-static {v7, v11}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    .line 115
    :cond_9
    invoke-static {v7}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v11

    move/from16 v33, v10

    if-eq v4, v0, :cond_b

    const/4 v10, 0x2

    if-ne v11, v10, :cond_a

    add-int/lit8 v10, v0, 0x1

    if-ne v4, v10, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v10, v20

    goto :goto_b

    :cond_b
    :goto_a
    move/from16 v10, v31

    :goto_b
    if-lt v0, v3, :cond_c

    if-gt v0, v2, :cond_c

    move-object/from16 v37, v9

    move/from16 v9, v31

    goto :goto_c

    :cond_c
    move-object/from16 v37, v9

    move/from16 v9, v20

    .line 118
    :goto_c
    invoke-virtual {v1, v0}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v38

    move-object/from16 v40, v1

    .line 124
    iget-object v1, v15, Lcom/termux/view/TerminalRenderer;->asciiMeasures:[F

    move/from16 v41, v2

    array-length v2, v1

    if-ge v7, v2, :cond_d

    aget v1, v1, v7

    move/from16 v7, v35

    goto :goto_d

    :cond_d
    iget-object v1, v15, Lcom/termux/view/TerminalRenderer;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v7, v35

    invoke-virtual {v1, v12, v13, v7}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    :goto_d
    move/from16 v35, v1

    .line 126
    iget v1, v15, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float v1, v35, v1

    int-to-float v2, v11

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v42, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v1, v42

    if-lez v1, :cond_e

    move/from16 v42, v31

    goto :goto_e

    :cond_e
    move/from16 v42, v20

    :goto_e
    cmp-long v1, v38, v26

    if-nez v1, :cond_10

    if-ne v10, v5, :cond_10

    if-ne v9, v6, :cond_10

    if-nez v42, :cond_10

    if-eqz v29, :cond_f

    goto :goto_f

    :cond_f
    move/from16 v15, p3

    move/from16 v45, v0

    move/from16 v46, v3

    move/from16 v47, v4

    move/from16 v36, v11

    move-object/from16 v43, v12

    move/from16 v48, v13

    move/from16 v0, v23

    move/from16 v42, v29

    move/from16 v29, v32

    const/16 v30, 0x2

    move/from16 v23, v7

    move-object/from16 v32, v8

    goto/16 :goto_15

    :cond_10
    :goto_f
    if-nez v0, :cond_11

    move/from16 v15, p3

    move/from16 v45, v0

    move/from16 v46, v3

    move/from16 v47, v4

    move/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v36, v11

    move-object/from16 v43, v12

    move/from16 v48, v13

    move/from16 v29, v32

    const/16 v30, 0x2

    move-object/from16 v32, v8

    goto/16 :goto_14

    :cond_11
    sub-int v29, v0, v23

    sub-int v43, v13, v24

    if-eqz v5, :cond_12

    .line 134
    iget-object v1, v14, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v1, v1, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v1, v1, v30

    move/from16 v30, v1

    goto :goto_10

    :cond_12
    move/from16 v30, v20

    :goto_10
    if-eqz v5, :cond_13

    if-nez v19, :cond_13

    move/from16 v1, v31

    goto :goto_11

    :cond_13
    move/from16 v1, v20

    :goto_11
    if-nez v16, :cond_15

    if-nez v1, :cond_15

    if-eqz v6, :cond_14

    goto :goto_12

    :cond_14
    move/from16 v45, v0

    move/from16 v44, v20

    goto :goto_13

    :cond_15
    :goto_12
    move/from16 v45, v0

    move/from16 v44, v31

    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move/from16 v46, v3

    move-object v3, v8

    move/from16 v47, v4

    move/from16 v4, v21

    move/from16 v5, v23

    move/from16 v6, v29

    move/from16 v23, v7

    move/from16 v29, v32

    move/from16 v7, v24

    move-object/from16 v32, v8

    move/from16 v8, v43

    move/from16 v24, v9

    move/from16 v9, v25

    move/from16 v25, v10

    const/16 v36, 0x2

    move/from16 v10, v30

    move/from16 v30, v36

    move/from16 v36, v11

    move/from16 v11, v19

    move/from16 v15, p3

    move-object/from16 v43, v12

    move/from16 v48, v13

    move-wide/from16 v12, v26

    move/from16 v14, v44

    .line 139
    invoke-direct/range {v0 .. v14}, Lcom/termux/view/TerminalRenderer;->drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V

    :goto_14
    move/from16 v6, v24

    move/from16 v5, v25

    move-wide/from16 v26, v38

    move/from16 v0, v45

    move/from16 v24, v48

    move/from16 v25, v22

    :goto_15
    add-float v25, v25, v35

    add-int v1, v45, v36

    add-int v13, v48, v23

    :goto_16
    move-object/from16 v2, v43

    if-ge v13, v15, :cond_17

    .line 154
    invoke-static {v2, v13}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v3

    if-gtz v3, :cond_17

    .line 157
    aget-char v3, v2, v13

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_16

    move/from16 v11, v30

    goto :goto_17

    :cond_16
    move/from16 v11, v31

    :goto_17
    add-int/2addr v13, v11

    move-object/from16 v43, v2

    goto :goto_16

    :cond_17
    move-object/from16 v14, p1

    move/from16 v23, v0

    move v0, v1

    move-object v12, v2

    move/from16 p3, v15

    move/from16 v7, v29

    move-object/from16 v8, v32

    move/from16 v10, v33

    move/from16 v11, v34

    move-object/from16 v9, v37

    move-object/from16 v1, v40

    move/from16 v2, v41

    move/from16 v29, v42

    move/from16 v3, v46

    move/from16 v4, v47

    move-object/from16 v15, p0

    goto/16 :goto_8

    :cond_18
    move/from16 v29, v7

    move-object/from16 v32, v8

    move-object/from16 v37, v9

    move/from16 v33, v10

    move/from16 v34, v11

    move-object v2, v12

    move/from16 v48, v13

    sub-int v7, v34, v23

    sub-int v8, v48, v24

    move-object/from16 v15, p1

    if-eqz v5, :cond_19

    .line 163
    iget-object v0, v15, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v0, v0, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v0, v0, v30

    move v10, v0

    goto :goto_18

    :cond_19
    move/from16 v10, v20

    :goto_18
    if-eqz v5, :cond_1a

    if-nez v19, :cond_1a

    move/from16 v0, v31

    goto :goto_19

    :cond_1a
    move/from16 v0, v20

    :goto_19
    if-nez v16, :cond_1c

    if-nez v0, :cond_1c

    if-eqz v6, :cond_1b

    goto :goto_1a

    :cond_1b
    move/from16 v14, v20

    goto :goto_1b

    :cond_1c
    :goto_1a
    move/from16 v14, v31

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, v32

    move/from16 v4, v21

    move/from16 v5, v23

    move v6, v7

    move/from16 v7, v24

    move/from16 v9, v25

    move/from16 v11, v19

    move-wide/from16 v12, v26

    .line 168
    invoke-direct/range {v0 .. v14}, Lcom/termux/view/TerminalRenderer;->drawTextRun(Landroid/graphics/Canvas;[C[IFIIIIFIIJZ)V

    add-int/lit8 v5, v28, 0x1

    move-object/from16 v6, p2

    move/from16 v12, p4

    move/from16 v13, p5

    move-object v14, v15

    move/from16 v1, v21

    move/from16 v7, v29

    move-object/from16 v8, v32

    move/from16 v10, v33

    move/from16 v11, v34

    move-object/from16 v9, v37

    move-object/from16 v15, p0

    goto/16 :goto_3

    :cond_1d
    return-void
.end method
