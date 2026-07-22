.class public final Lcom/termux/terminal/TerminalEmulator;
.super Ljava/lang/Object;
.source "TerminalEmulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalEmulator$SavedScreenState;
    }
.end annotation


# static fields
.field private static final DECSET_BIT_APPLICATION_CURSOR_KEYS:I = 0x1

.field private static final DECSET_BIT_APPLICATION_KEYPAD:I = 0x20

.field private static final DECSET_BIT_AUTOWRAP:I = 0x8

.field private static final DECSET_BIT_BRACKETED_PASTE_MODE:I = 0x400

.field private static final DECSET_BIT_CURSOR_ENABLED:I = 0x10

.field private static final DECSET_BIT_LEFTRIGHT_MARGIN_MODE:I = 0x800

.field private static final DECSET_BIT_MOUSE_PROTOCOL_SGR:I = 0x200

.field private static final DECSET_BIT_MOUSE_TRACKING_BUTTON_EVENT:I = 0x80

.field private static final DECSET_BIT_MOUSE_TRACKING_PRESS_RELEASE:I = 0x40

.field private static final DECSET_BIT_ORIGIN_MODE:I = 0x4

.field private static final DECSET_BIT_RECTANGULAR_CHANGEATTRIBUTE:I = 0x1000

.field private static final DECSET_BIT_REVERSE_VIDEO:I = 0x2

.field private static final DECSET_BIT_SEND_FOCUS_EVENTS:I = 0x100

.field public static final DEFAULT_TERMINAL_CURSOR_STYLE:I = 0x0

.field public static final DEFAULT_TERMINAL_TRANSCRIPT_ROWS:I = 0x7d0

.field private static final ESC:I = 0x1

.field private static final ESC_APC:I = 0x14

.field private static final ESC_APC_ESCAPE:I = 0x15

.field private static final ESC_CSI:I = 0x6

.field private static final ESC_CSI_ARGS_ASTERIX:I = 0x10

.field private static final ESC_CSI_ARGS_SPACE:I = 0xf

.field private static final ESC_CSI_BIGGERTHAN:I = 0xc

.field private static final ESC_CSI_DOLLAR:I = 0x8

.field private static final ESC_CSI_DOUBLE_QUOTE:I = 0x11

.field private static final ESC_CSI_EXCLAMATION:I = 0x13

.field private static final ESC_CSI_QUESTIONMARK:I = 0x7

.field private static final ESC_CSI_QUESTIONMARK_ARG_DOLLAR:I = 0xe

.field private static final ESC_CSI_SINGLE_QUOTE:I = 0x12

.field private static final ESC_CSI_UNSUPPORTED_INTERMEDIATE_BYTE:I = 0x17

.field private static final ESC_CSI_UNSUPPORTED_PARAMETER_BYTE:I = 0x16

.field private static final ESC_NONE:I = 0x0

.field private static final ESC_OSC:I = 0xa

.field private static final ESC_OSC_ESC:I = 0xb

.field private static final ESC_P:I = 0xd

.field private static final ESC_PERCENT:I = 0x9

.field private static final ESC_POUND:I = 0x2

.field private static final ESC_SELECT_LEFT_PAREN:I = 0x3

.field private static final ESC_SELECT_RIGHT_PAREN:I = 0x4

.field private static final LOG_ESCAPE_SEQUENCES:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "TerminalEmulator"

.field private static final MAX_ESCAPE_PARAMETERS:I = 0x20

.field private static final MAX_OSC_STRING_LENGTH:I = 0x2000

.field public static final MOUSE_LEFT_BUTTON:I = 0x0

.field public static final MOUSE_LEFT_BUTTON_MOVED:I = 0x20

.field public static final MOUSE_WHEELDOWN_BUTTON:I = 0x41

.field public static final MOUSE_WHEELUP_BUTTON:I = 0x40

.field public static final TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

.field public static final TERMINAL_CURSOR_STYLE_BAR:I = 0x2

.field public static final TERMINAL_CURSOR_STYLE_BLOCK:I = 0x0

.field public static final TERMINAL_CURSOR_STYLE_UNDERLINE:I = 0x1

.field public static final TERMINAL_TRANSCRIPT_ROWS_MAX:I = 0xc350

.field public static final TERMINAL_TRANSCRIPT_ROWS_MIN:I = 0x64

.field public static final UNICODE_REPLACEMENT_CHAR:I = 0xfffd


# instance fields
.field private mAboutToAutoWrap:Z

.field final mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private mArgIndex:I

.field private final mArgs:[I

.field private mArgsSubParamsBitSet:I

.field private mAutoScrollDisabled:Z

.field mBackColor:I

.field private mBottomMargin:I

.field private mCellHeightPixels:I

.field private mCellWidthPixels:I

.field mClient:Lcom/termux/terminal/TerminalSessionClient;

.field public final mColors:Lcom/termux/terminal/TerminalColors;

.field public mColumns:I

.field private mContinueSequence:Z

.field private mCurrentDecSetFlags:I

.field private mCursorBlinkState:Z

.field private mCursorBlinkingEnabled:Z

.field private mCursorCol:I

.field private mCursorRow:I

.field private mCursorStyle:I

.field mEffect:I

.field private mEscapeState:I

.field mForeColor:I

.field private mInsertMode:Z

.field private mLastEmittedCodePoint:I

.field private mLeftMargin:I

.field private final mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

.field private final mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

.field private mRightMargin:I

.field public mRows:I

.field private mSavedDecSetFlags:I

.field private final mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private final mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

.field private mScreen:Lcom/termux/terminal/TerminalBuffer;

.field private mScrollCounter:I

.field private final mSession:Lcom/termux/terminal/TerminalOutput;

.field private mTabStop:[Z

.field private mTitle:Ljava/lang/String;

.field private final mTitleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTopMargin:I

.field mUnderlineColor:I

.field private mUseLineDrawingG0:Z

.field private mUseLineDrawingG1:Z

.field private mUseLineDrawingUsesG0:Z

.field private mUtf8Index:B

.field private final mUtf8InputBuffer:[B

.field private mUtf8ToFollow:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 158
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/termux/terminal/TerminalEmulator;->TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/termux/terminal/TerminalOutput;IIIILjava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 2

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    const/16 v1, 0x20

    .line 184
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    .line 186
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    .line 200
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 201
    new-instance v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    invoke-direct {v1}, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;-><init>()V

    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/4 v1, 0x1

    .line 204
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 263
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    const/4 v0, 0x4

    .line 269
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    const/4 v0, -0x1

    .line 270
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    .line 272
    new-instance v0, Lcom/termux/terminal/TerminalColors;

    invoke-direct {v0}, Lcom/termux/terminal/TerminalColors;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    .line 329
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    .line 330
    new-instance p1, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {p0, p6}, Lcom/termux/terminal/TerminalEmulator;->getTerminalTranscriptRows(Ljava/lang/Integer;)I

    move-result p6

    invoke-direct {p1, p2, p6, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    .line 331
    new-instance p1, Lcom/termux/terminal/TerminalBuffer;

    invoke-direct {p1, p2, p3, p3}, Lcom/termux/terminal/TerminalBuffer;-><init>(III)V

    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    .line 332
    iput-object p7, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 333
    iput p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 334
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 335
    iput p4, p0, Lcom/termux/terminal/TerminalEmulator;->mCellWidthPixels:I

    .line 336
    iput p5, p0, Lcom/termux/terminal/TerminalEmulator;->mCellHeightPixels:I

    .line 337
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 338
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    return-void
.end method

.method private blockClear(III)V
    .locals 1

    const/4 v0, 0x1

    .line 2159
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    return-void
.end method

.method private blockClear(IIII)V
    .locals 8

    .line 2163
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/16 v5, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    return-void
.end method

.method private collectOSCArgs(I)V
    .locals 2

    .line 2286
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2288
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 2290
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    :goto_0
    return-void
.end method

.method private continueSequence(I)V
    .locals 0

    .line 1391
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/4 p1, 0x1

    .line 1392
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    return-void
.end method

.method private doApc(I)V
    .locals 1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    const/16 p1, 0x15

    .line 1045
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    :cond_0
    return-void
.end method

.method private doApcEscape(I)V
    .locals 1

    const/16 v0, 0x5c

    if-ne p1, v0, :cond_0

    .line 1056
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    .line 1060
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    :goto_0
    return-void
.end method

.method private doCsi(I)V
    .locals 9

    const/16 v0, 0x24

    if-eq p1, v0, :cond_17

    const/16 v0, 0x27

    if-eq p1, v0, :cond_16

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_15

    const/16 v0, 0x50

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_14

    const/16 v0, 0x58

    if-eq p1, v0, :cond_13

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_10

    const/16 v0, 0x53

    if-eq p1, v0, :cond_f

    const/16 v0, 0x54

    if-eq p1, v0, :cond_d

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x3

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    .line 1850
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_7

    .line 1844
    :pswitch_0
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_7

    .line 1799
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    packed-switch p1, :pswitch_data_5

    :pswitch_2
    goto/16 :goto_7

    .line 1836
    :pswitch_3
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1829
    :pswitch_4
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_18

    .line 1832
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitleStack:Ljava/util/Stack;

    invoke-virtual {p1, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1823
    :pswitch_5
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b]l\u001b\\"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1820
    :pswitch_6
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b]LIconLabel\u001b\\"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1817
    :pswitch_7
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[9;%d;%dt"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1813
    :pswitch_8
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[8;%d;%dt"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1810
    :pswitch_9
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCellHeightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCellWidthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[6;%d;%dt"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1807
    :pswitch_a
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCellHeightPixels:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCellWidthPixels:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[4;%d;%dt"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1804
    :pswitch_b
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[3;0;0t"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1801
    :pswitch_c
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[1t"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_d
    const/16 p1, 0x800

    .line 1787
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1789
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/2addr p1, v2

    .line 1790
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 1792
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_7

    .line 1795
    :cond_0
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_7

    .line 1779
    :pswitch_e
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/2addr p1, v3

    .line 1780
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1783
    invoke-direct {p0, v1, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_7

    .line 1755
    :pswitch_f
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    goto/16 :goto_7

    .line 1764
    :cond_1
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[%d;%dR"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    const/4 p1, 0x4

    .line 1758
    new-array v0, p1, [B

    fill-array-data v0, :array_0

    .line 1759
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2, v0, v1, p1}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    goto/16 :goto_7

    .line 1751
    :pswitch_10
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->selectGraphicRendition()V

    goto/16 :goto_7

    .line 1748
    :pswitch_11
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_7

    .line 1745
    :pswitch_12
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->doSetMode(Z)V

    goto/16 :goto_7

    .line 1730
    :pswitch_13
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    goto/16 :goto_7

    :cond_3
    move p1, v1

    .line 1735
    :goto_0
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge p1, v0, :cond_18

    .line 1736
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aput-boolean v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1732
    :cond_4
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v1, p1, v0

    goto/16 :goto_7

    .line 1726
    :pswitch_14
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_7

    .line 1723
    :pswitch_15
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_7

    .line 1720
    :pswitch_16
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    if-nez p1, :cond_18

    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[?64;1;2;6;9;15;18;21;22c"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1712
    :pswitch_17
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    goto/16 :goto_7

    .line 1713
    :cond_5
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_18

    .line 1714
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1709
    :pswitch_18
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorColRespectingOriginMode(I)V

    goto/16 :goto_7

    .line 1637
    :pswitch_19
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1638
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr p1, v0

    .line 1639
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1641
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v8, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int v4, v8, v0

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v7, 0x0

    const/4 v3, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1642
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v2, p1

    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_7

    .line 1628
    :pswitch_1a
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr p1, v0

    .line 1629
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v6, p1, v0

    .line 1631
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    const/4 v7, 0x0

    add-int v8, v4, v0

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1632
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_7

    .line 1610
    :pswitch_1b
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_6

    .line 1621
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    .line 1618
    :cond_6
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {p0, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_2

    .line 1615
    :cond_7
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v2

    invoke-direct {p0, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_2

    .line 1612
    :cond_8
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v2, p1

    invoke-direct {p0, p1, v0, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1624
    :goto_2
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    goto/16 :goto_7

    .line 1587
    :pswitch_1c
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v4

    if-eqz v4, :cond_c

    if-eq v4, v2, :cond_b

    if-eq v4, v3, :cond_a

    if-eq v4, v0, :cond_9

    .line 1604
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    .line 1601
    :cond_9
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalBuffer;->clearTranscript()V

    goto :goto_3

    .line 1598
    :cond_a
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto :goto_3

    .line 1593
    :cond_b
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1594
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v0, v2

    invoke-direct {p0, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_3

    .line 1589
    :cond_c
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int/2addr v3, p1

    invoke-direct {p0, p1, v0, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    .line 1590
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v0, p1, 0x1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr p1, v2

    sub-int/2addr v4, p1

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1607
    :goto_3
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    goto/16 :goto_7

    .line 1583
    :pswitch_1d
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_7

    .line 1580
    :pswitch_1e
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_7

    .line 1576
    :pswitch_1f
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_7

    .line 1573
    :pswitch_20
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_7

    .line 1570
    :pswitch_21
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_7

    .line 1567
    :pswitch_22
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_7

    .line 1564
    :pswitch_23
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto/16 :goto_7

    .line 1560
    :pswitch_24
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_7

    .line 1557
    :pswitch_25
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto/16 :goto_7

    .line 1548
    :pswitch_26
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1549
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr p1, v0

    .line 1550
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v4, p1, v0

    .line 1552
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v5, 0x1

    add-int v6, v2, v0

    move v3, v7

    invoke-virtual/range {v1 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1553
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto/16 :goto_7

    :pswitch_27
    const/4 p1, 0x7

    .line 1699
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_7

    :pswitch_28
    const/16 p1, 0xc

    .line 1702
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_7

    :pswitch_29
    const/16 p1, 0x16

    .line 1706
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_7

    :pswitch_2a
    const/16 p1, 0x11

    .line 1535
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_7

    :pswitch_2b
    const/16 p1, 0x13

    .line 1532
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_7

    :pswitch_2c
    const/16 p1, 0xf

    .line 1847
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_7

    .line 1667
    :cond_d
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-nez v0, :cond_e

    .line 1672
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    .line 1673
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int/2addr v0, v1

    .line 1674
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1675
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v4, v2, v6

    sub-int v5, v0, p1

    add-int v7, v3, p1

    move v2, v6

    invoke-virtual/range {v1 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1676
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_7

    .line 1679
    :cond_e
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unimplementedSequence(I)V

    goto/16 :goto_7

    .line 1661
    :cond_f
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    :goto_4
    if-ge v1, p1, :cond_18

    .line 1663
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1687
    :cond_10
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    .line 1688
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1689
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v1, v2

    :goto_5
    if-ltz v1, :cond_12

    .line 1690
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_11

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_11

    .line 1692
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6

    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 1696
    :cond_12
    :goto_6
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_7

    .line 1683
    :cond_13
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1684
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v6, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v7

    const/4 v5, 0x1

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto :goto_7

    .line 1652
    :cond_14
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 1653
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr p1, v0

    .line 1654
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1656
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v2, v6, v0

    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 v5, 0x1

    move v3, v7

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1657
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, p1

    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, v1, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_7

    :cond_15
    const/16 p1, 0x10

    .line 1544
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_7

    :cond_16
    const/16 p1, 0x12

    .line 1538
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_7

    :cond_17
    const/16 p1, 0x8

    .line 1541
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    :cond_18
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_18
        :pswitch_23
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_1e
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6c
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x72
        :pswitch_e
        :pswitch_d
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xb
        :pswitch_c
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_9
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 1
        0x1bt
        0x5bt
        0x30t
        0x6et
    .end array-data
.end method

.method private doCsiBiggerThan(I)V
    .locals 3

    const/16 v0, 0x63

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    .line 1361
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto :goto_0

    .line 1358
    :cond_0
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(ignored) CSI > MODIFY RESOURCE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg1(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TerminalEmulator"

    invoke-static {p1, v1, v0}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1299
    :cond_1
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[>41;320;0c"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doCsiQuestionMark(I)V
    .locals 12

    const/16 v0, 0x24

    if-eq p1, v0, :cond_16

    const/16 v0, 0x68

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_12

    const/16 v3, 0x6c

    if-eq p1, v3, :cond_12

    const/16 v0, 0x6e

    const/4 v3, -0x1

    if-eq p1, v0, :cond_10

    const/16 v0, 0x4a

    const/16 v4, 0x4b

    if-eq p1, v0, :cond_5

    if-eq p1, v4, :cond_5

    const/16 v0, 0x72

    const/16 v4, 0x73

    if-eq p1, v0, :cond_0

    if-eq p1, v4, :cond_0

    .line 1182
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->parseArg(I)V

    goto/16 :goto_c

    .line 1163
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v6, v5

    if-lt v0, v6, :cond_1

    array-length v0, v5

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_1
    move v0, v1

    .line 1164
    :goto_0
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v0, v5, :cond_15

    .line 1165
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v5, v5, v0

    .line 1166
    invoke-static {v5}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 1168
    iget-object v6, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Ignoring request to save/recall decset bit="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "TerminalEmulator"

    invoke-static {v6, v7, v5}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne p1, v4, :cond_3

    .line 1171
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    goto :goto_2

    .line 1173
    :cond_3
    iget v7, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    invoke-virtual {p0, v6, v5}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    :cond_5
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-ne p1, v4, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    .line 1113
    :goto_3
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v4

    if-eqz v4, :cond_c

    if-eq v4, v2, :cond_a

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 1133
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    move p1, v3

    move v0, p1

    move v1, v0

    goto :goto_7

    :cond_7
    if-eqz v0, :cond_8

    .line 1128
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    move v3, p1

    goto :goto_4

    :cond_8
    move v3, v1

    .line 1129
    :goto_4
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eqz v0, :cond_9

    .line 1130
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_6

    :cond_9
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    goto :goto_7

    :cond_a
    if-eqz v0, :cond_b

    .line 1122
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    move v3, p1

    goto :goto_5

    :cond_b
    move v3, v1

    .line 1123
    :goto_5
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr p1, v2

    .line 1124
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :goto_6
    add-int/2addr v0, v2

    goto :goto_7

    .line 1115
    :cond_c
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1116
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 1117
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eqz v0, :cond_d

    add-int/lit8 v0, v3, 0x1

    goto :goto_7

    .line 1118
    :cond_d
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 1136
    :goto_7
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v10

    :goto_8
    if-ge v3, v0, :cond_15

    move v2, v1

    :goto_9
    if-ge v2, p1, :cond_f

    .line 1139
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v4, v3, v2}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_e

    .line 1140
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/16 v7, 0x20

    move v5, v2

    move v6, v3

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1151
    :cond_10
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_11

    .line 1157
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void

    .line 1154
    :cond_11
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u001b[?%d;%d;1R"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_c

    .line 1146
    :cond_12
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v5, v4

    if-lt v3, v5, :cond_13

    array-length v3, v4

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_13
    move v3, v1

    .line 1147
    :goto_a
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v3, v4, :cond_15

    if-ne p1, v0, :cond_14

    move v4, v2

    goto :goto_b

    :cond_14
    move v4, v1

    .line 1148
    :goto_b
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v5, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/termux/terminal/TerminalEmulator;->doDecSetOrReset(ZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_15
    :goto_c
    return-void

    :cond_16
    const/16 p1, 0xe

    .line 1179
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    return-void
.end method

.method private doCsiUnsupportedParameterOrIntermediateByte(I)V
    .locals 2

    .line 1085
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    .line 1088
    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    if-lt p1, v0, :cond_1

    const/16 v0, 0x2f

    if-gt p1, v0, :cond_1

    const/16 p1, 0x17

    .line 1091
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x40

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_2

    .line 1095
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto :goto_0

    .line 1097
    :cond_2
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    :goto_0
    return-void
.end method

.method private doDeviceControl(I)V
    .locals 13

    const/16 v0, 0x5c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v2, 0x2000

    if-le v0, v2, :cond_0

    .line 1031
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1032
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    goto/16 :goto_8

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1035
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto/16 :goto_8

    .line 922
    :cond_1
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 924
    const-string v0, "$q"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "\'"

    if-eqz v0, :cond_3

    .line 925
    const-string v0, "$q\"p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001bP1$r64;1\"p\u001b\\"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 930
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized DECRQSS string: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 932
    :cond_3
    const-string v0, "+q"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    .line 970
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_d

    aget-object v5, p1, v4

    .line 971
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/2addr v6, v0

    const-string v7, "TerminalEmulator"

    if-nez v6, :cond_c

    .line 972
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v8, v1

    .line 974
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 976
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v9, v9

    int-to-char v9, v9

    .line 981
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v9

    .line 978
    iget-object v10, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Invalid device termcap/terminfo encoded name \""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v7, v11, v9}, Lcom/termux/terminal/Logger;->logStackTraceWithMessage(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 984
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 986
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v8, "name"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x3

    goto :goto_3

    :sswitch_1
    const-string v8, "TN"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    move v10, v0

    goto :goto_3

    :sswitch_2
    const-string v8, "Co"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    move v10, v9

    goto :goto_3

    :sswitch_3
    const-string v8, "colors"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    move v10, v1

    :goto_3
    packed-switch v10, :pswitch_data_0

    .line 996
    invoke-direct {p0, v9}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v8

    const/16 v9, 0x20

    .line 997
    invoke-direct {p0, v9}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v9

    .line 996
    invoke-static {v6, v8, v9}, Lcom/termux/terminal/KeyHandler;->getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 994
    :pswitch_0
    const-string v8, "xterm"

    goto :goto_4

    .line 990
    :pswitch_1
    const-string v8, "256"

    .line 1000
    :goto_4
    const-string v9, "\u001b\\"

    if-nez v8, :cond_a

    .line 1001
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v8, "%1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "&8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1006
    iget-object v8, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unhandled termcap/terminfo name: \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v7, v6}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :cond_9
    iget-object v6, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u001bP0+r"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_6

    .line 1011
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v1

    .line 1012
    :goto_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_b

    .line 1013
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%02X"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1015
    :cond_b
    iget-object v7, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "\u001bP1+r"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_6

    .line 1018
    :cond_c
    iget-object v6, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid device termcap/terminfo name of odd length: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1025
    :cond_d
    :goto_7
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c14290 -> :sswitch_3
        0x88c -> :sswitch_2
        0xa7a -> :sswitch_1
        0x337a8b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doEsc(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_f

    const/16 v2, 0x30

    if-eq v1, v2, :cond_10

    const/16 v2, 0x48

    const/4 v3, 0x1

    if-eq v1, v2, :cond_e

    const/16 v2, 0x50

    const/4 v4, 0x0

    if-eq v1, v2, :cond_d

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_c

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_b

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_a

    const/16 v2, 0x63

    if-eq v1, v2, :cond_9

    const/16 v2, 0x28

    if-eq v1, v2, :cond_8

    const/16 v2, 0x29

    const/4 v5, 0x4

    if-eq v1, v2, :cond_7

    const/16 v2, 0x3d

    const/16 v6, 0x20

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_5

    const/16 v2, 0x4d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_10

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 1495
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_0

    .line 1456
    :pswitch_0
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v3

    invoke-direct {v0, v4, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto/16 :goto_0

    .line 1452
    :pswitch_1
    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :cond_0
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    .line 1453
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_0

    .line 1449
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto/16 :goto_0

    .line 1434
    :pswitch_3
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_1

    add-int/2addr v1, v3

    .line 1435
    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_0

    .line 1437
    :cond_1
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int v16, v1, v11

    .line 1438
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    add-int/lit8 v6, v10, 0x1

    sub-int/2addr v2, v10

    add-int/lit8 v8, v2, -0x1

    move v7, v11

    move/from16 v9, v16

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1439
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 v13, v1, -0x1

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v1, v2, v4}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v18

    const/4 v15, 0x1

    const/16 v17, 0x20

    invoke-virtual/range {v12 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto/16 :goto_0

    .line 1431
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_0

    .line 1428
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_0

    .line 1419
    :pswitch_6
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-le v1, v6, :cond_2

    sub-int/2addr v1, v3

    .line 1420
    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto/16 :goto_0

    .line 1422
    :cond_2
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    sub-int v16, v1, v11

    .line 1423
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v1, v6

    add-int/lit8 v8, v1, -0x1

    add-int/lit8 v10, v6, 0x1

    move v7, v11

    move/from16 v9, v16

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1424
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v13, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v14, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    invoke-static {v1, v2, v4}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v18

    const/4 v15, 0x1

    const/16 v17, 0x20

    invoke-virtual/range {v12 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto/16 :goto_0

    .line 1464
    :cond_3
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    if-gt v1, v6, :cond_4

    .line 1465
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v7, v1, v9

    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v2, v6, 0x1

    sub-int v8, v1, v2

    add-int/lit8 v10, v6, 0x1

    move v5, v9

    invoke-virtual/range {v4 .. v10}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 1466
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v3, v1

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(III)V

    goto :goto_0

    :cond_4
    sub-int/2addr v1, v3

    .line 1468
    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_0

    .line 1489
    :cond_5
    invoke-direct {v0, v6, v4}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_0

    .line 1482
    :cond_6
    invoke-direct {v0, v6, v3}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_0

    .line 1416
    :cond_7
    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    .line 1413
    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1443
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 1444
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalBuffer;->clearTranscript()V

    .line 1445
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v4, v4, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1446
    invoke-direct {v0, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto :goto_0

    :cond_a
    const/16 v1, 0x14

    .line 1492
    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1485
    :cond_b
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v1, 0xa

    .line 1486
    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    :cond_c
    const/4 v1, 0x6

    .line 1479
    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1475
    :cond_d
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v1, 0xd

    .line 1476
    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1459
    :cond_e
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    aput-boolean v3, v1, v2

    goto :goto_0

    :cond_f
    const/4 v1, 0x2

    .line 1410
    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    :cond_10
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doEscPound(I)V
    .locals 9

    const/16 v0, 0x38

    if-eq p1, v0, :cond_0

    .line 1401
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_0

    .line 1398
    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v6, 0x45

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    :goto_0
    return-void
.end method

.method private doLinefeed()V
    .locals 5

    .line 1374
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, 0x1

    if-eqz v3, :cond_1

    .line 1378
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_3

    .line 1379
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    goto :goto_1

    :cond_1
    if-ne v4, v1, :cond_2

    .line 1383
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    .line 1384
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v4, v0, -0x1

    .line 1386
    :cond_2
    invoke-direct {p0, v4}, Lcom/termux/terminal/TerminalEmulator;->setCursorRow(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private doOsc(I)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    .line 1993
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 1990
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 1987
    :cond_1
    const-string p1, "\u0007"

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doOscEsc(I)V
    .locals 1

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1b

    .line 2006
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    .line 2007
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->collectOSCArgs(I)V

    const/16 p1, 0xa

    .line 2008
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_0

    .line 2001
    :cond_0
    const-string p1, "\u001b\\"

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->doOscSetTextParameters(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doOscSetTextParameters(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2015
    const-string v1, "/"

    const-string v2, "%04x"

    const/4 v3, -0x1

    move v6, v3

    const/4 v5, 0x0

    .line 2018
    :goto_0
    iget-object v7, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0x39

    const/16 v9, 0x30

    const/16 v10, 0x3b

    const/4 v11, 0x1

    const-string v12, ""

    if-ge v5, v7, :cond_3

    .line 2019
    iget-object v7, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_0

    .line 2021
    iget-object v7, v0, Lcom/termux/terminal/TerminalEmulator;->mOSCOrDeviceControlArgs:Ljava/lang/StringBuilder;

    add-int/2addr v5, v11

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_0
    if-lt v7, v9, :cond_2

    if-gt v7, v8, :cond_2

    if-gez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    mul-int/lit8 v6, v6, 0xa

    :goto_1
    add-int/lit8 v7, v7, -0x30

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2026
    :cond_2
    invoke-direct {v0, v7}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    :cond_3
    move-object v5, v12

    :goto_2
    if-eqz v6, :cond_1b

    if-eq v6, v11, :cond_1b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1b

    const/4 v7, 0x4

    const/16 v13, 0xff

    if-eq v6, v7, :cond_10

    const/16 v3, 0x34

    if-eq v6, v3, :cond_f

    const/16 v3, 0x68

    if-eq v6, v3, :cond_9

    const/16 v3, 0x77

    if-eq v6, v3, :cond_1c

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    .line 2152
    invoke-direct {v0, v6}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_10

    .line 2146
    :pswitch_0
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    add-int/lit16 v6, v6, 0x92

    invoke-virtual {v1, v6}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 2147
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    goto/16 :goto_10

    :pswitch_1
    add-int/lit16 v3, v6, 0xf6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2081
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v7, v9, :cond_4

    move v9, v11

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_6

    .line 2082
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_5

    goto :goto_5

    :catch_0
    :cond_5
    move-object/from16 v10, p1

    goto/16 :goto_7

    .line 2084
    :cond_6
    :goto_5
    :try_start_0
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 2085
    const-string v14, "?"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 2087
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    iget-object v12, v12, Lcom/termux/terminal/TerminalColors;->mCurrentColors:[I

    aget v12, v12, v3

    const/high16 v14, 0xff0000

    and-int/2addr v14, v12

    shr-int/lit8 v14, v14, 0x10

    const v15, 0xffff

    mul-int/2addr v14, v15

    .line 2088
    div-int/2addr v14, v13

    const v16, 0xff00

    and-int v16, v12, v16

    shr-int/lit8 v16, v16, 0x8

    mul-int v4, v16, v15

    .line 2089
    div-int/2addr v4, v13

    and-int/lit16 v12, v12, 0xff

    mul-int/2addr v12, v15

    .line 2090
    div-int/2addr v12, v13

    .line 2091
    iget-object v15, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u001b]"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ";rgb:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v2, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2092
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v2, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v10, p1

    :try_start_1
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2091
    invoke-virtual {v15, v4}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v10, p1

    .line 2094
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v4, v3, v12}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 2095
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    :goto_6
    add-int/lit8 v3, v3, 0x1

    if-nez v9, :cond_1c

    const/16 v4, 0x102

    if-gt v3, v4, :cond_1c

    add-int/lit8 v7, v7, 0x1

    .line 2098
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v7, v4, :cond_8

    goto/16 :goto_10

    :cond_8
    move v8, v7

    :catch_1
    :goto_7
    add-int/2addr v7, v11

    const/16 v10, 0x3b

    const/16 v13, 0xff

    goto/16 :goto_3

    .line 2121
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2122
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 2123
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    goto/16 :goto_10

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2127
    :goto_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_b

    move v3, v11

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_c

    .line 2128
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_e

    .line 2130
    :cond_c
    :try_start_2
    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2131
    iget-object v6, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v6, v4}, Lcom/termux/terminal/TerminalColors;->reset(I)V

    .line 2132
    iget-object v4, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_d

    goto/16 :goto_10

    :cond_d
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    :catch_2
    :cond_e
    add-int/2addr v1, v11

    goto :goto_8

    .line 2108
    :cond_f
    const-string v1, ";"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v11

    .line 2110
    :try_start_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 2111
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->onCopyTextToClipboard(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_10

    .line 2113
    :catch_3
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OSC Manipulate selection, invalid string \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TerminalEmulator"

    invoke-static {v1, v3, v2}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_10
    const/4 v4, 0x0

    move v2, v3

    move v6, v2

    move v1, v4

    .line 2048
    :goto_a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_11

    move v7, v11

    goto :goto_b

    :cond_11
    move v7, v4

    :goto_b
    if-eqz v7, :cond_12

    const/16 v10, 0x3b

    goto :goto_c

    .line 2049
    :cond_12
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    :goto_c
    const/16 v12, 0x3b

    if-ne v10, v12, :cond_16

    if-gez v2, :cond_13

    add-int/lit8 v2, v1, 0x1

    const/16 v13, 0xff

    goto :goto_f

    :cond_13
    if-ltz v6, :cond_15

    const/16 v13, 0xff

    if-le v6, v13, :cond_14

    goto :goto_d

    .line 2058
    :cond_14
    iget-object v10, v0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v6, v2}, Lcom/termux/terminal/TerminalColors;->tryParseColor(ILjava/lang/String;)V

    .line 2059
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    move v2, v3

    move v6, v2

    goto :goto_f

    .line 2055
    :cond_15
    :goto_d
    invoke-direct {v0, v10}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    :cond_16
    const/16 v13, 0xff

    if-ltz v2, :cond_17

    goto :goto_f

    :cond_17
    if-gez v2, :cond_1a

    if-lt v10, v9, :cond_1a

    if-gt v10, v8, :cond_1a

    if-gez v6, :cond_18

    move v6, v4

    goto :goto_e

    :cond_18
    mul-int/lit8 v6, v6, 0xa

    :goto_e
    add-int/lit8 v10, v10, -0x30

    add-int/2addr v6, v10

    :goto_f
    if-eqz v7, :cond_19

    goto :goto_10

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2069
    :cond_1a
    invoke-direct {v0, v10}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    return-void

    .line 2035
    :cond_1b
    invoke-direct {v0, v5}, Lcom/termux/terminal/TerminalEmulator;->setTitle(Ljava/lang/String;)V

    .line 2155
    :cond_1c
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private doSetMode(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 2172
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 p1, 0x14

    if-eq v0, p1, :cond_0

    const/16 p1, 0x22

    if-eq v0, p1, :cond_2

    .line 2186
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto :goto_0

    .line 2178
    :cond_0
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto :goto_0

    .line 2175
    :cond_1
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private emitCodePoint(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2349
    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLastEmittedCodePoint:I

    .line 2350
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    if-eqz v2, :cond_2

    :goto_0
    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/16 v1, 0xb7

    goto/16 :goto_1

    :pswitch_1
    const/16 v1, 0xa3

    goto/16 :goto_1

    :pswitch_2
    const/16 v1, 0x2260

    goto/16 :goto_1

    :pswitch_3
    const/16 v1, 0x3c0

    goto/16 :goto_1

    :pswitch_4
    const/16 v1, 0x2265

    goto/16 :goto_1

    :pswitch_5
    const/16 v1, 0x2264

    goto/16 :goto_1

    :pswitch_6
    const/16 v1, 0x2502

    goto/16 :goto_1

    :pswitch_7
    const/16 v1, 0x252c

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x2534

    goto :goto_1

    :pswitch_9
    const/16 v1, 0x2524

    goto :goto_1

    :pswitch_a
    const/16 v1, 0x251c

    goto :goto_1

    :pswitch_b
    const/16 v1, 0x23bd

    goto :goto_1

    :pswitch_c
    const/16 v1, 0x23bc

    goto :goto_1

    :pswitch_d
    const/16 v1, 0x2500

    goto :goto_1

    :pswitch_e
    const/16 v1, 0x23bb

    goto :goto_1

    :pswitch_f
    const/16 v1, 0x23ba

    goto :goto_1

    :pswitch_10
    const/16 v1, 0x253c

    goto :goto_1

    :pswitch_11
    const/16 v1, 0x2514

    goto :goto_1

    :pswitch_12
    const/16 v1, 0x250c

    goto :goto_1

    :pswitch_13
    const/16 v1, 0x2510

    goto :goto_1

    :pswitch_14
    const/16 v1, 0x2518

    goto :goto_1

    :pswitch_15
    const/16 v1, 0x240b

    goto :goto_1

    :pswitch_16
    const/16 v1, 0xa

    goto :goto_1

    :pswitch_17
    const/16 v1, 0xb1

    goto :goto_1

    :pswitch_18
    const/16 v1, 0xb0

    goto :goto_1

    :pswitch_19
    const/16 v1, 0x240a

    goto :goto_1

    :pswitch_1a
    const/16 v1, 0xd

    goto :goto_1

    :pswitch_1b
    const/16 v1, 0x240c

    goto :goto_1

    :pswitch_1c
    const/16 v1, 0x2409

    goto :goto_1

    :pswitch_1d
    const/16 v1, 0x2592

    goto :goto_1

    :pswitch_1e
    const/16 v1, 0x25c6

    goto :goto_1

    :pswitch_1f
    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x2588

    :cond_2
    :goto_1
    move v5, v1

    const/16 v1, 0x8

    .line 2455
    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v1

    .line 2456
    invoke-static {v5}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v8

    .line 2457
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    const/4 v10, 0x0

    if-ne v2, v3, :cond_3

    move v2, v9

    goto :goto_2

    :cond_3
    move v2, v10

    :goto_2
    const/4 v3, 0x2

    if-eqz v1, :cond_7

    if-eqz v2, :cond_8

    .line 2460
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-eqz v2, :cond_4

    if-eq v8, v9, :cond_5

    :cond_4
    if-ne v8, v3, :cond_8

    .line 2461
    :cond_5
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-virtual {v2, v3}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 2462
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2463
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    add-int/lit8 v3, v2, 0x1

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    if-ge v3, v4, :cond_6

    add-int/2addr v2, v9

    .line 2464
    iput v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    goto :goto_3

    .line 2466
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->scrollDownOneLine()V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    if-ne v8, v3, :cond_8

    return-void

    .line 2475
    :cond_8
    :goto_3
    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    if-eqz v2, :cond_9

    if-lez v8, :cond_9

    .line 2477
    iget v12, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v2, v12, v8

    .line 2478
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    if-ge v2, v3, :cond_9

    .line 2479
    iget-object v11, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int v14, v3, v2

    const/4 v15, 0x1

    move v13, v4

    move/from16 v16, v2

    move/from16 v17, v4

    invoke-virtual/range {v11 .. v17}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    :cond_9
    if-gtz v8, :cond_a

    .line 2482
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-lez v2, :cond_a

    iget-boolean v2, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    if-nez v2, :cond_a

    move v2, v9

    goto :goto_4

    :cond_a
    move v2, v10

    .line 2483
    :goto_4
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v3, v2

    if-gez v3, :cond_b

    move v3, v10

    .line 2490
    :cond_b
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    if-eqz v1, :cond_d

    if-lez v8, :cond_d

    .line 2493
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v8

    if-ne v1, v2, :cond_c

    move v10, v9

    :cond_c
    iput-boolean v10, v0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2495
    :cond_d
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int/2addr v1, v8

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private finishSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 2340
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    return-void
.end method

.method private finishSequenceAndLogError(Ljava/lang/String;)V
    .locals 0

    .line 2336
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private getArg(IIZ)I
    .locals 1

    .line 2278
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget p1, v0, p1

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    :cond_1
    :goto_0
    return p2
.end method

.method private getArg0(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2270
    invoke-direct {p0, v0, p1, v1}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result p1

    return p1
.end method

.method private getArg1(I)I
    .locals 1

    const/4 v0, 0x1

    .line 2274
    invoke-direct {p0, v0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result p1

    return p1
.end method

.method private getStyle()J
    .locals 3

    .line 2167
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    invoke-static {v0, v1, v2}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTerminalTranscriptRows(Ljava/lang/Integer;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xc350

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/16 p1, 0x7d0

    return p1
.end method

.method private isDecsetInternalBitSet(I)Z
    .locals 1

    .line 277
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private logError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static mapDecSetBitToInternalBit(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/16 v0, 0x19

    if-eq p0, v0, :cond_a

    const/16 v0, 0x42

    if-eq p0, v0, :cond_9

    const/16 v0, 0x45

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_7

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_6

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3ee

    if-eq p0, v0, :cond_4

    const/16 v0, 0x7d4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/16 p0, 0x400

    return p0

    :cond_4
    const/16 p0, 0x200

    return p0

    :cond_5
    const/16 p0, 0x100

    return p0

    :cond_6
    const/16 p0, 0x80

    return p0

    :cond_7
    const/16 p0, 0x40

    return p0

    :cond_8
    const/16 p0, 0x800

    return p0

    :cond_9
    const/16 p0, 0x20

    return p0

    :cond_a
    const/16 p0, 0x10

    return p0

    :cond_b
    return v0
.end method

.method private nextTabStop(I)I
    .locals 2

    .line 1065
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v0, v1, :cond_1

    .line 1066
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 1067
    :cond_1
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private parseArg(I)V
    .locals 4

    const/16 v0, 0x30

    if-lt p1, v0, :cond_3

    const/16 v1, 0x39

    if-gt p1, v1, :cond_3

    .line 2240
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 2241
    aget v3, v2, v1

    sub-int/2addr p1, v0

    if-ltz v3, :cond_0

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr p1, v3

    :cond_0
    const/16 v0, 0x270f

    if-le p1, v0, :cond_1

    move p1, v0

    .line 2251
    :cond_1
    aput p1, v2, v1

    .line 2253
    :cond_2
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x3b

    const/16 v1, 0x3a

    if-eq p1, v0, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_0

    .line 2265
    :cond_4
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto :goto_2

    .line 2255
    :cond_5
    :goto_0
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v3, v3

    if-ge v2, v3, :cond_6

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 2256
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-ne p1, v1, :cond_7

    .line 2258
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    shl-int v0, v2, v0

    or-int/2addr p1, v0

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    goto :goto_1

    .line 2261
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Too many parameters when in state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2263
    :cond_7
    :goto_1
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->continueSequence(I)V

    :goto_2
    return-void
.end method

.method private processByte(B)V
    .locals 10

    .line 506
    iget-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    const/4 v1, 0x3

    const/4 v2, 0x2

    const v3, 0xfffd

    const/4 v4, 0x1

    if-lez v0, :cond_a

    and-int/lit16 v5, p1, 0xc0

    const/4 v6, 0x0

    const/16 v7, 0x80

    if-ne v5, v7, :cond_9

    .line 509
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v8, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v9, v8, 0x1

    int-to-byte v9, v9

    iput-byte v9, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v5, v8

    sub-int/2addr v0, v4

    int-to-byte p1, v0

    .line 510
    iput-byte p1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    if-nez p1, :cond_e

    if-ne v9, v2, :cond_0

    const/16 p1, 0x1f

    goto :goto_0

    :cond_0
    if-ne v9, v1, :cond_1

    const/16 p1, 0xf

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    :goto_0
    int-to-byte p1, p1

    .line 512
    aget-byte v0, v5, v6

    and-int/2addr p1, v0

    move v0, v4

    .line 513
    :goto_1
    iget-byte v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-ge v0, v5, :cond_2

    shl-int/lit8 p1, p1, 0x6

    .line 514
    iget-object v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    aget-byte v5, v5, v0

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_3

    if-gt v5, v4, :cond_5

    :cond_3
    const/16 v0, 0x7ff

    if-ge p1, v0, :cond_4

    if-gt v5, v2, :cond_5

    :cond_4
    const v0, 0xffff

    if-ge p1, v0, :cond_6

    if-le v5, v1, :cond_6

    :cond_5
    move p1, v3

    .line 521
    :cond_6
    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    if-lt p1, v7, :cond_7

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_7

    goto :goto_3

    .line 530
    :cond_7
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x13

    if-eq v0, v1, :cond_8

    move v3, p1

    .line 535
    :cond_8
    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    goto :goto_3

    .line 540
    :cond_9
    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v6, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 541
    invoke-direct {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 549
    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    goto :goto_3

    :cond_a
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_b

    .line 553
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    return-void

    :cond_b
    and-int/lit16 v0, p1, 0xe0

    const/16 v5, 0xc0

    if-ne v0, v5, :cond_c

    .line 556
    iput-byte v4, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_2

    :cond_c
    and-int/lit16 v0, p1, 0xf0

    const/16 v4, 0xe0

    if-ne v0, v4, :cond_d

    .line 558
    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    goto :goto_2

    :cond_d
    and-int/lit16 v0, p1, 0xf8

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_f

    .line 560
    iput-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    .line 566
    :goto_2
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8InputBuffer:[B

    iget-byte v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    aput-byte p1, v0, v1

    :cond_e
    :goto_3
    return-void

    .line 563
    :cond_f
    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalEmulator;->processCodePoint(I)V

    return-void
.end method

.method private resizeScreen()V
    .locals 10

    .line 417
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    :goto_0
    move v5, v1

    .line 419
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v9

    move-object v6, v0

    invoke-virtual/range {v2 .. v9}, Lcom/termux/terminal/TerminalBuffer;->resize(III[IJZ)V

    const/4 v1, 0x0

    .line 420
    aget v1, v0, v1

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 v1, 0x1

    .line 421
    aget v0, v0, v1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    return-void
.end method

.method private restoreCursor()V
    .locals 3

    .line 1516
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1517
    :goto_0
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    invoke-direct {p0, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    .line 1518
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    .line 1519
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1520
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1522
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    and-int/lit8 v1, v1, -0xd

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    and-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    .line 1523
    iget-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    .line 1524
    iget-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    .line 1525
    iget-boolean v0, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    return-void
.end method

.method private saveCursor()V
    .locals 2

    .line 1502
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    .line 1503
    :goto_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1504
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1505
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    .line 1506
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    .line 1507
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    .line 1508
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    .line 1509
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG0:Z

    .line 1510
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingG1:Z

    .line 1511
    iget-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    iput-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mUseLineDrawingUsesG0:Z

    return-void
.end method

.method private scrollDownOneLine()V
    .locals 9

    .line 2207
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    .line 2208
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v7

    .line 2209
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    if-nez v5, :cond_1

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2215
    :cond_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_1

    .line 2211
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    add-int/lit8 v2, v6, 0x1

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v3, v1, v5

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    sub-int/2addr v1, v6

    add-int/lit8 v4, v1, -0x1

    move v1, v5

    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 2213
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    add-int/lit8 v3, v0, -0x1

    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int v4, v0, v2

    const/4 v5, 0x1

    const/16 v6, 0x20

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    :goto_1
    return-void
.end method

.method private selectGraphicRendition()V
    .locals 13

    .line 1857
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1858
    :goto_0
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v1, v2, :cond_2e

    .line 1860
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    shl-int v4, v3, v1

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    goto/16 :goto_6

    .line 1864
    :cond_1
    invoke-direct {p0, v1, v0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    if-gez v2, :cond_3

    .line 1866
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-lez v2, :cond_2

    goto/16 :goto_6

    :cond_2
    move v2, v0

    :cond_3
    const/16 v4, 0x101

    const/16 v5, 0x100

    if-nez v2, :cond_4

    .line 1873
    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 1874
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 1875
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_4
    if-ne v2, v3, :cond_5

    .line 1877
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_6

    .line 1879
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_6
    const/4 v7, 0x3

    if-ne v2, v7, :cond_7

    .line 1881
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_7
    const/4 v7, 0x4

    if-ne v2, v7, :cond_a

    add-int/lit8 v2, v1, 0x1

    .line 1883
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v2, v4, :cond_9

    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    shl-int v5, v3, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_9

    .line 1886
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    aget v1, v1, v2

    if-nez v1, :cond_8

    .line 1888
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto :goto_1

    .line 1891
    :cond_8
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v1, v7

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    :goto_1
    move v1, v2

    goto/16 :goto_6

    .line 1894
    :cond_9
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v7

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_a
    const/4 v7, 0x5

    const/16 v8, 0x8

    if-ne v2, v7, :cond_b

    .line 1897
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/2addr v2, v8

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_b
    const/4 v9, 0x7

    if-ne v2, v9, :cond_c

    .line 1899
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_c
    if-ne v2, v8, :cond_d

    .line 1901
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_d
    const/16 v8, 0x9

    if-ne v2, v8, :cond_e

    .line 1903
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_e
    const/16 v8, 0xa

    if-ne v2, v8, :cond_f

    goto/16 :goto_6

    :cond_f
    const/16 v8, 0xb

    if-ne v2, v8, :cond_10

    goto/16 :goto_6

    :cond_10
    const/16 v8, 0x16

    if-ne v2, v8, :cond_11

    .line 1909
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v2, v2, -0x102

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_11
    const/16 v8, 0x17

    if-ne v2, v8, :cond_12

    .line 1911
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_12
    const/16 v8, 0x18

    if-ne v2, v8, :cond_13

    .line 1913
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_13
    const/16 v8, 0x19

    if-ne v2, v8, :cond_14

    .line 1915
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_14
    const/16 v8, 0x1b

    if-ne v2, v8, :cond_15

    .line 1917
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_15
    const/16 v8, 0x1c

    if-ne v2, v8, :cond_16

    .line 1919
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_16
    const/16 v8, 0x1d

    if-ne v2, v8, :cond_17

    .line 1921
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_6

    :cond_17
    const/16 v8, 0x1e

    if-lt v2, v8, :cond_18

    const/16 v8, 0x25

    if-gt v2, v8, :cond_18

    add-int/lit8 v2, v2, -0x1e

    .line 1923
    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    :cond_18
    const/16 v8, 0x3a

    const/16 v9, 0x30

    const/16 v10, 0x26

    if-eq v2, v10, :cond_1f

    if-eq v2, v9, :cond_1f

    if-ne v2, v8, :cond_19

    goto :goto_2

    :cond_19
    const/16 v6, 0x27

    if-ne v2, v6, :cond_1a

    .line 1966
    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    :cond_1a
    const/16 v6, 0x28

    if-lt v2, v6, :cond_1b

    const/16 v6, 0x2f

    if-gt v2, v6, :cond_1b

    add-int/lit8 v2, v2, -0x28

    .line 1968
    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    :cond_1b
    const/16 v6, 0x31

    if-ne v2, v6, :cond_1c

    .line 1970
    iput v4, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    :cond_1c
    const/16 v4, 0x3b

    if-ne v2, v4, :cond_1d

    .line 1972
    iput v5, p0, Lcom/termux/terminal/TerminalEmulator;->mUnderlineColor:I

    goto/16 :goto_6

    :cond_1d
    const/16 v4, 0x5a

    if-lt v2, v4, :cond_1e

    const/16 v4, 0x61

    if-gt v2, v4, :cond_1e

    add-int/lit8 v2, v2, -0x52

    .line 1974
    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto/16 :goto_6

    :cond_1e
    const/16 v4, 0x64

    if-lt v2, v4, :cond_2d

    const/16 v4, 0x6b

    if-gt v2, v4, :cond_2d

    add-int/lit8 v2, v2, -0x5c

    .line 1976
    iput v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto/16 :goto_6

    :cond_1f
    :goto_2
    add-int/lit8 v4, v1, 0x2

    .line 1928
    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-le v4, v5, :cond_20

    goto/16 :goto_6

    .line 1929
    :cond_20
    iget-object v11, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    add-int/lit8 v12, v1, 0x1

    aget v11, v11, v12

    if-ne v11, v6, :cond_27

    add-int/lit8 v6, v1, 0x4

    if-le v6, v5, :cond_21

    .line 1932
    iget-object v4, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Too few CSI"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";2 RGB arguments"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TerminalEmulator"

    invoke-static {v4, v5, v2}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1934
    :cond_21
    invoke-direct {p0, v4, v0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v4

    add-int/lit8 v1, v1, 0x3

    .line 1935
    invoke-direct {p0, v1, v0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    .line 1936
    invoke-direct {p0, v6, v0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    if-ltz v4, :cond_26

    if-ltz v1, :cond_26

    if-ltz v5, :cond_26

    const/16 v7, 0xff

    if-gt v4, v7, :cond_26

    if-gt v1, v7, :cond_26

    if-le v5, v7, :cond_22

    goto :goto_3

    :cond_22
    shl-int/lit8 v4, v4, 0x10

    const/high16 v7, -0x1000000

    or-int/2addr v4, v7

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v4

    or-int/2addr v1, v5

    if-eq v2, v10, :cond_25

    if-eq v2, v9, :cond_24

    if-eq v2, v8, :cond_23

    goto :goto_4

    .line 1945
    :cond_23
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUnderlineColor:I

    goto :goto_4

    .line 1944
    :cond_24
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_4

    .line 1943
    :cond_25
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    goto :goto_4

    .line 1939
    :cond_26
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Invalid RGB: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    :goto_4
    move v1, v6

    goto :goto_6

    :cond_27
    if-ne v11, v7, :cond_2c

    .line 1951
    invoke-direct {p0, v4, v0, v0}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    if-ltz v1, :cond_2b

    const/16 v5, 0x103

    if-ge v1, v5, :cond_2b

    if-eq v2, v10, :cond_2a

    if-eq v2, v9, :cond_29

    if-eq v2, v8, :cond_28

    goto :goto_5

    .line 1957
    :cond_28
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUnderlineColor:I

    goto :goto_5

    .line 1956
    :cond_29
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    goto :goto_5

    .line 1955
    :cond_2a
    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    :cond_2b
    :goto_5
    move v1, v4

    goto :goto_6

    .line 1963
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid ISO-8613-3 SGR first argument: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->finishSequenceAndLogError(Ljava/lang/String;)V

    :cond_2d
    :goto_6
    add-int/2addr v1, v3

    goto/16 :goto_0

    :cond_2e
    return-void
.end method

.method private setCursorCol(I)V
    .locals 0

    .line 2504
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    const/4 p1, 0x0

    .line 2505
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorColRespectingOriginMode(I)V
    .locals 1

    .line 2510
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    return-void
.end method

.method private setCursorPosition(II)V
    .locals 4

    const/4 v0, 0x4

    .line 2196
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2197
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2198
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_1
    if-eqz v0, :cond_2

    .line 2199
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    :cond_2
    if-eqz v0, :cond_3

    .line 2200
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    :goto_2
    add-int/2addr p2, v2

    add-int/lit8 v3, v3, -0x1

    .line 2201
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, -0x1

    .line 2202
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2203
    invoke-direct {p0, p2, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    return-void
.end method

.method private setCursorRow(I)V
    .locals 0

    .line 2499
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    const/4 p1, 0x0

    .line 2500
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setCursorRowCol(II)V
    .locals 1

    .line 2515
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    .line 2516
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 2517
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    return-void
.end method

.method private setDecsetinternalBit(IZ)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x40

    if-ne p1, v2, :cond_0

    .line 284
    invoke-direct {p0, v1, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 286
    invoke-direct {p0, v2, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 290
    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    goto :goto_1

    .line 292
    :cond_2
    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    :goto_1
    return-void
.end method

.method private setDefaultTabStops()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 490
    :goto_0
    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ge v1, v2, :cond_1

    .line 491
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    and-int/lit8 v3, v1, 0x7

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2

    .line 2581
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2582
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    .line 2583
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2584
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, v0, p1}, Lcom/termux/terminal/TerminalOutput;->titleChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startEscapeSequence()V
    .locals 3

    const/4 v0, 0x1

    .line 1367
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/4 v0, 0x0

    .line 1368
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 1369
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1370
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgsSubParamsBitSet:I

    return-void
.end method

.method private unimplementedSequence(I)V
    .locals 2

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unimplemented sequence char \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (U+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%04x"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2296
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private unknownParameter(I)V
    .locals 2

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown parameter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2306
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method

.method private unknownSequence(I)V
    .locals 2

    .line 2300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown sequence char \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (numeric value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->logError(Ljava/lang/String;)V

    .line 2301
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->finishSequence()V

    return-void
.end method


# virtual methods
.method public append([BI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 502
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lcom/termux/terminal/TerminalEmulator;->processByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearScrollCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 2525
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return-void
.end method

.method public doDecSetOrReset(ZI)V
    .locals 9

    .line 1187
    invoke-static {p2}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1189
    invoke-direct {p0, v0, p1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    :cond_0
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    .line 1281
    invoke-direct {p0, p2}, Lcom/termux/terminal/TerminalEmulator;->unknownParameter(I)V

    goto/16 :goto_1

    :pswitch_0
    if-eqz p1, :cond_1

    .line 1245
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    goto/16 :goto_1

    .line 1247
    :cond_1
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    goto/16 :goto_1

    :pswitch_1
    if-eqz p1, :cond_8

    .line 1213
    invoke-direct {p0, v0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorPosition(II)V

    goto/16 :goto_1

    .line 1199
    :pswitch_2
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1200
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 1201
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    const/16 p1, 0x800

    .line 1203
    invoke-direct {p0, p1, v0}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 1205
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    .line 1206
    invoke-direct {p0, v0, v0}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_1

    :sswitch_0
    if-nez p1, :cond_8

    .line 1229
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 1230
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_1

    :pswitch_3
    :sswitch_1
    if-eqz p1, :cond_2

    .line 1254
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mMainBuffer:Lcom/termux/terminal/TerminalBuffer;

    :goto_0
    move-object v1, p2

    .line 1255
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eq v1, p2, :cond_8

    .line 1256
    iget p2, v1, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne p2, v2, :cond_3

    iget p2, v1, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq p2, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    if-eqz p1, :cond_5

    .line 1257
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->saveCursor()V

    .line 1258
    :cond_5
    iput-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-nez p1, :cond_6

    .line 1260
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget p1, p1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    .line 1261
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget p2, p2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 1262
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->restoreCursor()V

    if-eqz v0, :cond_6

    .line 1265
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    .line 1266
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    :cond_6
    if-eqz v0, :cond_7

    .line 1270
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    .line 1272
    :cond_7
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v1, p1, :cond_8

    .line 1273
    iget v4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/16 v6, 0x20

    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    goto :goto_1

    .line 1220
    :pswitch_4
    :sswitch_2
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    if-eqz p2, :cond_8

    .line 1221
    invoke-interface {p2, p1}, Lcom/termux/terminal/TerminalSessionClient;->onTerminalCursorStateChange(Z)V

    :cond_8
    :goto_1
    :pswitch_5
    :sswitch_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0xc -> :sswitch_2
        0x19 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2d -> :sswitch_3
        0x2f -> :sswitch_1
        0x42 -> :sswitch_3
        0x45 -> :sswitch_0
        0x3f7 -> :sswitch_3
        0x40a -> :sswitch_3
        0x7d4 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x417
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getCursorCol()I
    .locals 1

    .line 429
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    return v0
.end method

.method public getCursorRow()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    return v0
.end method

.method public getCursorStyle()I
    .locals 1

    .line 434
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    return v0
.end method

.method public getScreen()Lcom/termux/terminal/TerminalBuffer;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    return-object v0
.end method

.method public getScrollCounter()I
    .locals 1

    .line 2521
    iget v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScrollCounter:I

    return v0
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 1

    .line 2571
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 2576
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAlternateBufferActive()Z
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAutoScrollDisabled()Z
    .locals 1

    .line 2529
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAutoScrollDisabled:Z

    return v0
.end method

.method public isCursorEnabled()Z
    .locals 1

    const/16 v0, 0x10

    .line 457
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isCursorKeysApplicationMode()Z
    .locals 1

    const/4 v0, 0x1

    .line 481
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isKeypadApplicationMode()Z
    .locals 1

    const/16 v0, 0x20

    .line 477
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public isMouseTrackingActive()Z
    .locals 1

    const/16 v0, 0x40

    .line 486
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReverseVideo()Z
    .locals 1

    const/4 v0, 0x2

    .line 451
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    return v0
.end method

.method public paste(Ljava/lang/String;)V
    .locals 3

    .line 2591
    const-string v0, "(\u001b|[\u0080-\u009f])"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2593
    const-string v0, "\r?\n"

    const-string v1, "\r"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x400

    .line 2596
    invoke-direct {p0, v0}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2597
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v2, "\u001b[200~"

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    .line 2598
    :cond_0
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 2599
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    const-string v0, "\u001b[201~"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public processCodePoint(I)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 572
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    .line 573
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doApc(I)V

    return-void

    :cond_0
    const/16 v3, 0x15

    if-ne v2, v3, :cond_1

    .line 576
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doApcEscape(I)V

    return-void

    :cond_1
    if-eqz v1, :cond_38

    const/16 v3, 0x18

    const/4 v4, 0x0

    if-eq v1, v3, :cond_37

    const/16 v5, 0x1a

    if-eq v1, v5, :cond_37

    const/16 v5, 0xa

    const/16 v6, 0x1b

    if-eq v1, v6, :cond_34

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    .line 645
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    const/4 v5, -0x1

    const/16 v8, 0x1000

    const/16 v9, 0x7e

    const/16 v10, 0x71

    const/16 v11, 0x70

    const/16 v13, 0x78

    const/16 v14, 0x74

    const/16 v15, 0x20

    const/4 v12, 0x2

    packed-switch v2, :pswitch_data_1

    .line 909
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    .line 667
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiUnsupportedParameterOrIntermediateByte(I)V

    goto/16 :goto_19

    :pswitch_2
    if-ne v1, v11, :cond_2

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    goto/16 :goto_19

    .line 673
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    :pswitch_3
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 824
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v1, v2

    .line 825
    invoke-direct {v0, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v8, v1, v2

    .line 827
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int v10, v6, v2

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    .line 828
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->blockClear(IIII)V

    goto/16 :goto_19

    :cond_3
    if-ne v1, v9, :cond_4

    .line 830
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    sub-int/2addr v1, v2

    .line 831
    invoke-direct {v0, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v8, v1, v2

    .line 833
    iget-object v5, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    add-int v6, v10, v2

    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    goto/16 :goto_19

    .line 835
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    :pswitch_4
    if-ne v1, v10, :cond_8

    .line 808
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-eqz v2, :cond_7

    if-ne v2, v12, :cond_5

    goto :goto_0

    :cond_5
    if-ne v2, v7, :cond_6

    .line 814
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_19

    .line 816
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    .line 811
    :cond_7
    :goto_0
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mEffect:I

    goto/16 :goto_19

    .line 819
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    .line 900
    :pswitch_5
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-ne v1, v13, :cond_a

    if-ltz v2, :cond_a

    if-gt v2, v12, :cond_a

    if-ne v2, v12, :cond_9

    goto :goto_1

    :cond_9
    move v7, v4

    .line 903
    :goto_1
    invoke-direct {v0, v8, v7}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    goto/16 :goto_19

    .line 905
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    .line 872
    :pswitch_6
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v2

    if-eq v1, v10, :cond_b

    if-eq v1, v14, :cond_31

    const/16 v2, 0x75

    if-eq v1, v2, :cond_31

    .line 896
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    :cond_b
    packed-switch v2, :pswitch_data_2

    goto/16 :goto_19

    .line 887
    :pswitch_7
    iput v12, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_19

    .line 883
    :pswitch_8
    iput v7, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_19

    .line 879
    :pswitch_9
    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto/16 :goto_19

    :pswitch_a
    if-ne v1, v11, :cond_10

    .line 852
    invoke-direct {v0, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg0(I)I

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_f

    const/16 v2, 0x417

    if-eq v1, v2, :cond_f

    const/16 v2, 0x419

    if-ne v1, v2, :cond_c

    goto :goto_2

    .line 858
    :cond_c
    invoke-static {v1}, Lcom/termux/terminal/TerminalEmulator;->mapDecSetBitToInternalBit(I)I

    move-result v2

    if-eq v2, v5, :cond_e

    .line 860
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_3

    :cond_d
    move v7, v12

    goto :goto_3

    .line 862
    :cond_e
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Got DECRQM for unrecognized private DEC mode="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "TerminalEmulator"

    invoke-static {v2, v5, v3}, Lcom/termux/terminal/Logger;->logError(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    goto :goto_3

    .line 856
    :cond_f
    :goto_2
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget-object v3, v0, Lcom/termux/terminal/TerminalEmulator;->mAltBuffer:Lcom/termux/terminal/TerminalBuffer;

    if-ne v2, v3, :cond_d

    .line 866
    :goto_3
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "\u001b[?%d;%d$y"

    invoke-static {v3, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 868
    :cond_10
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    .line 847
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doDeviceControl(I)V

    goto/16 :goto_19

    .line 680
    :pswitch_c
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiBiggerThan(I)V

    goto/16 :goto_19

    .line 844
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOscEsc(I)V

    goto/16 :goto_19

    .line 841
    :pswitch_e
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto/16 :goto_19

    :pswitch_f
    const/4 v2, 0x4

    .line 683
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 684
    iget v11, v0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    goto :goto_4

    :cond_11
    move v11, v4

    :goto_4
    if-eqz v10, :cond_12

    .line 685
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    goto :goto_5

    :cond_12
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_5
    if-eqz v10, :cond_13

    .line 686
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    goto :goto_6

    :cond_13
    move v3, v4

    :goto_6
    if-eqz v10, :cond_14

    .line 687
    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    goto :goto_7

    :cond_14
    iget v10, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    :goto_7
    const/16 v6, 0x72

    const/4 v2, 0x3

    if-eq v1, v6, :cond_21

    if-eq v1, v14, :cond_21

    const/16 v6, 0x76

    if-eq v1, v6, :cond_20

    const/16 v6, 0x7b

    if-eq v1, v13, :cond_15

    const/16 v12, 0x7a

    if-eq v1, v12, :cond_15

    if-eq v1, v6, :cond_15

    .line 802
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->unknownSequence(I)V

    goto/16 :goto_19

    :cond_15
    if-eq v1, v13, :cond_16

    move v12, v7

    goto :goto_8

    :cond_16
    move v12, v4

    :goto_8
    if-ne v1, v6, :cond_17

    move v1, v7

    goto :goto_9

    :cond_17
    move v1, v4

    :goto_9
    if-eqz v12, :cond_18

    if-eqz v1, :cond_18

    move v6, v7

    goto :goto_a

    :cond_18
    move v6, v4

    :goto_a
    if-eqz v12, :cond_19

    move v12, v4

    move v5, v15

    goto :goto_b

    .line 723
    :cond_19
    invoke-direct {v0, v4, v5, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    move v12, v7

    :goto_b
    if-lt v5, v15, :cond_1a

    if-le v5, v9, :cond_1b

    :cond_1a
    const/16 v9, 0xa0

    if-lt v5, v9, :cond_31

    const/16 v9, 0xff

    if-gt v5, v9, :cond_31

    :cond_1b
    add-int/lit8 v9, v12, 0x1

    .line 729
    invoke-direct {v0, v12, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v13

    add-int/2addr v13, v11

    add-int/lit8 v14, v8, 0x1

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v14, v12, 0x2

    .line 730
    invoke-direct {v0, v9, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v9

    add-int/2addr v9, v3

    add-int/lit8 v15, v10, 0x1

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v12, v2

    .line 731
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v14, v2, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/2addr v2, v11

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 732
    iget v8, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v12, v8, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->getStyle()J

    move-result-wide v10

    sub-int/2addr v13, v7

    :goto_c
    if-ge v13, v2, :cond_31

    add-int/lit8 v8, v9, -0x1

    :goto_d
    if-ge v8, v3, :cond_1f

    if-eqz v1, :cond_1c

    .line 736
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v12, v13, v8}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_1e

    .line 737
    :cond_1c
    iget-object v12, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    if-eqz v6, :cond_1d

    invoke-virtual {v12, v13, v8}, Lcom/termux/terminal/TerminalBuffer;->getStyleAt(II)J

    move-result-wide v14

    move-wide/from16 v20, v14

    goto :goto_e

    :cond_1d
    move-wide/from16 v20, v10

    :goto_e
    move-object/from16 v16, v12

    move/from16 v17, v8

    move/from16 v18, v13

    move/from16 v19, v5

    invoke-virtual/range {v16 .. v21}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    :cond_1e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_1f
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 699
    :cond_20
    invoke-direct {v0, v4, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    sub-int/2addr v1, v7

    add-int/2addr v1, v11

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 700
    invoke-direct {v0, v7, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    sub-int/2addr v1, v7

    add-int/2addr v1, v3

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 702
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v1, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v1

    add-int/2addr v1, v11

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 703
    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v2, v5, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v5, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v5, 0x5

    .line 705
    invoke-direct {v0, v5, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    sub-int/2addr v5, v7

    add-int/2addr v5, v11

    iget v6, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    const/4 v5, 0x6

    .line 706
    invoke-direct {v0, v5, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    sub-int/2addr v5, v7

    add-int/2addr v5, v3

    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 708
    iget v3, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int v3, v3, v19

    sub-int/2addr v1, v15

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 709
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    sub-int v1, v1, v18

    sub-int/2addr v2, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 710
    iget-object v13, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual/range {v13 .. v19}, Lcom/termux/terminal/TerminalBuffer;->blockCopy(IIIIII)V

    goto/16 :goto_19

    :cond_21
    if-ne v1, v14, :cond_22

    move v1, v7

    goto :goto_f

    :cond_22
    move v1, v4

    .line 746
    :goto_f
    invoke-direct {v0, v4, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v5

    sub-int/2addr v5, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v11

    .line 747
    invoke-direct {v0, v7, v7, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v6

    sub-int/2addr v6, v7

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v3

    .line 748
    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    invoke-direct {v0, v12, v9, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v9

    add-int/2addr v9, v7

    sub-int/2addr v8, v7

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v11

    .line 749
    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    invoke-direct {v0, v2, v9, v7}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v2

    add-int/2addr v2, v7

    add-int/lit8 v9, v10, -0x1

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 750
    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    const/4 v11, 0x4

    if-lt v9, v11, :cond_31

    .line 751
    iget-object v11, v0, Lcom/termux/terminal/TerminalEmulator;->mArgs:[I

    array-length v12, v11

    if-lt v9, v12, :cond_23

    array-length v9, v11

    sub-int/2addr v9, v7

    iput v9, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    :cond_23
    const/4 v11, 0x4

    .line 752
    :goto_10
    iget v9, v0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    if-gt v11, v9, :cond_31

    .line 755
    invoke-direct {v0, v11, v4, v4}, Lcom/termux/terminal/TerminalEmulator;->getArg(IIZ)I

    move-result v9

    if-eqz v9, :cond_2c

    if-eq v9, v7, :cond_2b

    const/4 v12, 0x4

    if-eq v9, v12, :cond_2a

    const/16 v13, 0x8

    const/4 v14, 0x5

    if-eq v9, v14, :cond_29

    const/4 v15, 0x7

    const/16 v18, 0x10

    if-eq v9, v15, :cond_28

    const/16 v15, 0x16

    if-eq v9, v15, :cond_27

    const/16 v15, 0x1b

    if-eq v9, v15, :cond_26

    const/16 v12, 0x18

    if-eq v9, v12, :cond_25

    const/16 v12, 0x19

    if-eq v9, v12, :cond_24

    move/from16 v19, v4

    move/from16 v20, v7

    goto :goto_15

    :cond_24
    move/from16 v20, v4

    goto :goto_12

    :cond_25
    move/from16 v20, v4

    goto :goto_13

    :cond_26
    move/from16 v20, v4

    goto :goto_11

    :cond_27
    const/16 v15, 0x1b

    move/from16 v20, v4

    move/from16 v19, v7

    goto :goto_15

    :cond_28
    const/16 v15, 0x1b

    move/from16 v20, v7

    :goto_11
    move/from16 v19, v18

    goto :goto_15

    :cond_29
    const/16 v15, 0x1b

    move/from16 v20, v7

    :goto_12
    move/from16 v19, v13

    goto :goto_15

    :cond_2a
    const/4 v14, 0x5

    const/16 v15, 0x1b

    move/from16 v20, v7

    :goto_13
    const/16 v19, 0x4

    goto :goto_15

    :cond_2b
    const/4 v14, 0x5

    const/16 v15, 0x1b

    move/from16 v19, v7

    move/from16 v20, v19

    goto :goto_15

    :cond_2c
    const/4 v14, 0x5

    const/16 v15, 0x1b

    const/16 v9, 0x1d

    if-nez v1, :cond_2d

    move/from16 v20, v4

    goto :goto_14

    :cond_2d
    move/from16 v20, v7

    :goto_14
    move/from16 v19, v9

    :goto_15
    if-eqz v1, :cond_2e

    if-nez v20, :cond_2e

    const/16 v12, 0x1000

    goto :goto_16

    .line 793
    :cond_2e
    iget-object v9, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    const/16 v12, 0x1000

    invoke-direct {v0, v12}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v22

    move-object/from16 v18, v9

    move/from16 v21, v1

    move/from16 v23, v3

    move/from16 v24, v10

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v8

    move/from16 v28, v2

    invoke-virtual/range {v18 .. v28}, Lcom/termux/terminal/TerminalBuffer;->setOrClearEffect(IZZZIIIIII)V

    :goto_16
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_10

    .line 677
    :pswitch_10
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsiQuestionMark(I)V

    goto :goto_19

    .line 663
    :pswitch_11
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doCsi(I)V

    goto :goto_19

    :pswitch_12
    const/16 v2, 0x30

    if-ne v1, v2, :cond_2f

    goto :goto_17

    :cond_2f
    move v7, v4

    .line 660
    :goto_17
    iput-boolean v7, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    goto :goto_19

    :pswitch_13
    const/16 v2, 0x30

    if-ne v1, v2, :cond_30

    goto :goto_18

    :cond_30
    move v7, v4

    .line 657
    :goto_18
    iput-boolean v7, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    goto :goto_19

    .line 654
    :pswitch_14
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEscPound(I)V

    goto :goto_19

    .line 651
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doEsc(I)V

    goto :goto_19

    :pswitch_16
    if-lt v1, v15, :cond_31

    .line 648
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    .line 912
    :cond_31
    :goto_19
    :pswitch_17
    iget-boolean v1, v0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    if-nez v1, :cond_38

    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    goto :goto_1a

    .line 623
    :pswitch_18
    iput-boolean v7, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto :goto_1a

    .line 620
    :pswitch_19
    iput-boolean v4, v0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    goto :goto_1a

    .line 617
    :pswitch_1a
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto :goto_1a

    .line 614
    :pswitch_1b
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->doLinefeed()V

    goto :goto_1a

    .line 609
    :pswitch_1c
    invoke-direct {v0, v7}, Lcom/termux/terminal/TerminalEmulator;->nextTabStop(I)I

    move-result v1

    iput v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    goto :goto_1a

    .line 590
    :pswitch_1d
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorCol:I

    if-ne v1, v2, :cond_32

    .line 592
    iget v1, v0, Lcom/termux/terminal/TerminalEmulator;->mCursorRow:I

    sub-int/2addr v1, v7

    if-ltz v1, :cond_38

    .line 593
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v2, v1}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 594
    iget-object v2, v0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    invoke-virtual {v2, v1}, Lcom/termux/terminal/TerminalBuffer;->clearLineWrap(I)V

    .line 595
    iget v2, v0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    sub-int/2addr v2, v7

    invoke-direct {v0, v1, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorRowCol(II)V

    goto :goto_1a

    :cond_32
    sub-int/2addr v2, v7

    .line 598
    invoke-direct {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorCol(I)V

    goto :goto_1a

    :pswitch_1e
    if-ne v2, v5, :cond_33

    .line 585
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto :goto_1a

    .line 587
    :cond_33
    iget-object v1, v0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalOutput;->onBell()V

    goto :goto_1a

    :cond_34
    const/16 v3, 0xd

    if-ne v2, v3, :cond_35

    return-void

    :cond_35
    if-eq v2, v5, :cond_36

    .line 639
    invoke-direct/range {p0 .. p0}, Lcom/termux/terminal/TerminalEmulator;->startEscapeSequence()V

    goto :goto_1a

    .line 641
    :cond_36
    invoke-direct/range {p0 .. p1}, Lcom/termux/terminal/TerminalEmulator;->doOsc(I)V

    goto :goto_1a

    :cond_37
    if-eqz v2, :cond_38

    .line 629
    iput v4, v0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    const/16 v1, 0x7f

    .line 630
    invoke-direct {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->emitCodePoint(I)V

    :cond_38
    :goto_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_17
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .line 2539
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->setCursorStyle()V

    const/4 v0, 0x0

    .line 2540
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mArgIndex:I

    .line 2541
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mContinueSequence:Z

    .line 2542
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mEscapeState:I

    .line 2543
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mInsertMode:Z

    .line 2544
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 2545
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 2546
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 2547
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAboutToAutoWrap:Z

    .line 2548
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x100

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedForeColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mForeColor:I

    .line 2549
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    const/16 v3, 0x101

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedBackColor:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mBackColor:I

    .line 2550
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 2552
    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG1:Z

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingG0:Z

    const/4 v1, 0x1

    .line 2553
    iput-boolean v1, p0, Lcom/termux/terminal/TerminalEmulator;->mUseLineDrawingUsesG0:Z

    .line 2555
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2556
    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedEffect:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorCol:I

    iput v0, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedCursorRow:I

    .line 2557
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    const/16 v2, 0x8

    .line 2559
    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    const/16 v2, 0x10

    .line 2560
    invoke-direct {p0, v2, v1}, Lcom/termux/terminal/TerminalEmulator;->setDecsetinternalBit(IZ)V

    .line 2561
    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateMain:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget-object v2, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedStateAlt:Lcom/termux/terminal/TerminalEmulator$SavedScreenState;

    iget v3, p0, Lcom/termux/terminal/TerminalEmulator;->mCurrentDecSetFlags:I

    iput v3, v2, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, v1, Lcom/termux/terminal/TerminalEmulator$SavedScreenState;->mSavedDecFlags:I

    iput v3, p0, Lcom/termux/terminal/TerminalEmulator;->mSavedDecSetFlags:I

    .line 2564
    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8ToFollow:B

    iput-byte v0, p0, Lcom/termux/terminal/TerminalEmulator;->mUtf8Index:B

    .line 2566
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mColors:Lcom/termux/terminal/TerminalColors;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalColors;->reset()V

    .line 2567
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalOutput;->onColorsChanged()V

    return-void
.end method

.method public resize(IIII)V
    .locals 1

    .line 387
    iput p3, p0, Lcom/termux/terminal/TerminalEmulator;->mCellWidthPixels:I

    .line 388
    iput p4, p0, Lcom/termux/terminal/TerminalEmulator;->mCellHeightPixels:I

    .line 390
    iget p3, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-ne p3, p2, :cond_0

    iget p4, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne p4, p1, :cond_0

    return-void

    :cond_0
    const/4 p4, 0x2

    if-lt p1, p4, :cond_3

    if-lt p2, p4, :cond_3

    const/4 p4, 0x0

    if-eq p3, p2, :cond_1

    .line 397
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    .line 398
    iput p4, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    .line 399
    iput p2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    .line 401
    :cond_1
    iget p2, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-eq p2, p1, :cond_2

    .line 403
    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    .line 404
    iget-object p3, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 405
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    .line 406
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->setDefaultTabStops()V

    .line 407
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 408
    iget-object p2, p0, Lcom/termux/terminal/TerminalEmulator;->mTabStop:[Z

    invoke-static {p3, p4, p2, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iput p4, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    .line 410
    iget p1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iput p1, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    .line 413
    :cond_2
    invoke-direct {p0}, Lcom/termux/terminal/TerminalEmulator;->resizeScreen()V

    return-void

    .line 393
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "rows="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ", columns="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public sendMouseEvent(IIIZ)V
    .locals 6

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    move p2, v0

    .line 367
    :cond_0
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p2, v1, :cond_1

    move p2, v1

    :cond_1
    if-ge p3, v0, :cond_2

    move p3, v0

    .line 369
    :cond_2
    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-le p3, v1, :cond_3

    move p3, v1

    :cond_3
    const/16 v1, 0x20

    if-ne p1, v1, :cond_4

    const/16 v2, 0x80

    .line 371
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x200

    .line 373
    invoke-direct {p0, v2}, Lcom/termux/terminal/TerminalEmulator;->isDecsetInternalBitSet(I)Z

    move-result v2

    const/16 v3, 0x4d

    if-eqz v2, :cond_6

    .line 374
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u001b[<%d;%d;%d"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x6d

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    if-eqz p4, :cond_7

    goto :goto_1

    :cond_7
    move p1, v2

    :goto_1
    const/16 p4, 0xdf

    if-gt p2, p4, :cond_9

    if-le p3, p4, :cond_8

    goto :goto_2

    :cond_8
    add-int/2addr p1, v1

    int-to-byte p1, p1

    add-int/2addr p2, v1

    int-to-byte p2, p2

    add-int/2addr p3, v1

    int-to-byte p3, p3

    const/4 p4, 0x6

    .line 380
    new-array v1, p4, [B

    const/16 v4, 0x1b

    const/4 v5, 0x0

    aput-byte v4, v1, v5

    const/16 v4, 0x5b

    aput-byte v4, v1, v0

    const/4 v0, 0x2

    aput-byte v3, v1, v0

    aput-byte p1, v1, v2

    const/4 p1, 0x4

    aput-byte p2, v1, p1

    const/4 p1, 0x5

    aput-byte p3, v1, p1

    .line 381
    iget-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mSession:Lcom/termux/terminal/TerminalOutput;

    invoke-virtual {p1, v1, v5, p4}, Lcom/termux/terminal/TerminalOutput;->write([BII)V

    :cond_9
    :goto_2
    return-void
.end method

.method public setCursorBlinkState(Z)V
    .locals 0

    .line 471
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkState:Z

    return-void
.end method

.method public setCursorBlinkingEnabled(Z)V
    .locals 0

    .line 467
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkingEnabled:Z

    return-void
.end method

.method public setCursorStyle()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Lcom/termux/terminal/TerminalSessionClient;->getTerminalCursorStyle()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 444
    sget-object v1, Lcom/termux/terminal/TerminalEmulator;->TERMINAL_CURSOR_STYLES_LIST:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 447
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 445
    iput v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorStyle:I

    :goto_2
    return-void
.end method

.method public shouldCursorBeVisible()Z
    .locals 1

    .line 460
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->isCursorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 463
    :cond_0
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkingEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mCursorBlinkState:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TerminalEmulator[size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/terminal/TerminalEmulator;->mScreen:Lcom/termux/terminal/TerminalBuffer;

    iget v1, v1, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margins={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mTopMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mRightMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/termux/terminal/TerminalEmulator;->mBottomMargin:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/termux/terminal/TerminalEmulator;->mLeftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleAutoScrollDisabled()V
    .locals 1

    .line 2533
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAutoScrollDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalEmulator;->mAutoScrollDisabled:Z

    return-void
.end method

.method public updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/termux/terminal/TerminalEmulator;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 343
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalEmulator;->setCursorStyle()V

    const/4 p1, 0x1

    .line 344
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    return-void
.end method
