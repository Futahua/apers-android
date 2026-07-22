.class public final Lcom/termux/view/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;
    }
.end annotation


# static fields
.field public static final KEY_EVENT_SOURCE_SOFT_KEYBOARD:I = 0x0

.field public static final KEY_EVENT_SOURCE_VIRTUAL_KEYBOARD:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TerminalView"

.field public static final TERMINAL_CURSOR_BLINK_RATE_MAX:I = 0x7d0

.field public static final TERMINAL_CURSOR_BLINK_RATE_MIN:I = 0x64

.field private static TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z = false


# instance fields
.field private final mAccessibilityEnabled:Z

.field private mAutoFillHints:[Ljava/lang/String;

.field private mAutoFillImportance:I

.field private mAutoFillType:I

.field public mClient:Lcom/termux/view/TerminalViewClient;

.field mCombiningAccent:I

.field private mCursorInvisibleIgnoreOnce:Z

.field mDefaultSelectors:[I

.field public mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field final mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

.field private mMouseScrollStartX:I

.field private mMouseScrollStartY:I

.field private mMouseStartDownTime:J

.field public mRenderer:Lcom/termux/view/TerminalRenderer;

.field mScaleFactor:F

.field mScrollRemainder:F

.field final mScroller:Landroid/widget/Scroller;

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field public mTermSession:Lcom/termux/terminal/TerminalSession;

.field private mTerminalCursorBlinkerHandler:Landroid/os/Handler;

.field private mTerminalCursorBlinkerRate:I

.field private mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

.field private mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

.field mTopRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 71
    filled-new-array {p2, p2, p2, p2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    .line 77
    iput p2, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    const-wide/16 v0, -0x1

    .line 79
    iput-wide v0, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    const/4 p2, 0x0

    .line 100
    iput p2, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I

    const/4 v0, 0x2

    .line 114
    iput v0, p0, Lcom/termux/view/TerminalView;->mAutoFillImportance:I

    .line 124
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mAutoFillHints:[Ljava/lang/String;

    .line 1576
    new-instance p2, Lcom/termux/view/TerminalView$3;

    invoke-direct {p2, p0}, Lcom/termux/view/TerminalView$3;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 138
    new-instance p2, Lcom/termux/view/GestureAndScaleRecognizer;

    new-instance v0, Lcom/termux/view/TerminalView$1;

    invoke-direct {v0, p0}, Lcom/termux/view/TerminalView$1;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-direct {p2, p1, v0}, Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    .line 259
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    .line 260
    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 261
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return v0
.end method

.method static synthetic access$100(Lcom/termux/view/TerminalView;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method private decrementYTextSelectionCursors(I)V
    .locals 1

    .line 1543
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1544
    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->decrementYTextSelectionCursors(I)V

    :cond_0
    return-void
.end method

.method private getText()Ljava/lang/CharSequence;
    .locals 5

    .line 1145
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v4, v4, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTextSelectionActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 1517
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1518
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideTextSelectionCursors()Z
    .locals 1

    .line 1481
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->hide()Z

    move-result v0

    return v0
.end method

.method private renderTextSelection()V
    .locals 1

    .line 1485
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1486
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->render()V

    :cond_0
    return-void
.end method

.method private declared-synchronized resetAutoFill()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1218
    :try_start_0
    iput v0, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I

    const/4 v1, 0x2

    .line 1219
    iput v1, p0, Lcom/termux/view/TerminalView;->mAutoFillImportance:I

    .line 1220
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mAutoFillHints:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private showFloatingToolbar()V
    .locals 4

    .line 1588
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1589
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 1590
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/termux/view/TerminalView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private showTextSelectionCursors(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1477
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->show(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private stopTerminalCursorBlinker()V
    .locals 3

    .line 1415
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    if-eqz v0, :cond_1

    .line 1416
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "Stopping cursor blinker"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public attachSession(Lcom/termux/terminal/TerminalSession;)Z
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 292
    :cond_0
    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 294
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 p1, 0x0

    .line 295
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 296
    iput v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 298
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    const/4 p1, 0x1

    .line 301
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->setVerticalScrollBarEnabled(Z)V

    return p1
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 1

    .line 1183
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p1}, Lcom/termux/view/TerminalViewClient;->consumeStickyModifiers()V

    .line 1188
    :cond_0
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->resetAutoFill()V

    return-void
.end method

.method public declared-synchronized cancelRequestAutoFill()V
    .locals 4

    monitor-enter p0

    .line 1283
    :try_start_0
    iget v0, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 1286
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getAutoFillManagerService()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1287
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1288
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->resetAutoFill()V

    .line 1289
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1292
    :try_start_2
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v2, "TerminalView"

    const-string v3, "Failed to cancel Autofill request"

    invoke-interface {v1, v2, v3, v0}, Lcom/termux/view/TerminalViewClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1294
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v1, v1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    :goto_0
    return v0
.end method

.method doScroll(Landroid/view/MotionEvent;I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 641
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_7

    .line 643
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_1

    const/16 v4, 0x40

    goto :goto_2

    :cond_1
    const/16 v4, 0x41

    .line 644
    :goto_2
    invoke-virtual {p0, p1, v4, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_5

    .line 645
    :cond_2
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    const/16 v4, 0x13

    goto :goto_3

    :cond_3
    const/16 v4, 0x14

    .line 648
    :goto_3
    invoke-virtual {p0, v4, v1}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    goto :goto_5

    .line 650
    :cond_4
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_5

    const/4 v6, -0x1

    goto :goto_4

    :cond_5
    move v6, v0

    :goto_4
    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 651
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public getAutoFillManagerService()Landroid/view/autofill/AutofillManager;
    .locals 5

    const/4 v0, 0x0

    .line 1227
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1229
    :cond_0
    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 1231
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v3, "TerminalView"

    const-string v4, "Failed to get AutofillManager service"

    invoke-interface {v2, v3, v4, v1}, Lcom/termux/view/TerminalViewClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mAutoFillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    .line 1194
    iget v0, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    .line 1206
    const-string v0, ""

    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public getColumnAndRow(Landroid/view/MotionEvent;Z)[I
    .locals 2

    .line 612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    if-eqz p2, :cond_0

    .line 615
    iget p2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr p1, p2

    .line 617
    :cond_0
    filled-new-array {v0, p1}, [I

    move-result-object p1

    return-object p1
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 1141
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public getCursorX(F)I
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getCursorY(F)I
    .locals 1

    const/high16 v0, 0x42200000    # 40.0f

    sub-float/2addr p1, v0

    .line 1153
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getImportantForAutofill()I
    .locals 1

    .line 1212
    iget v0, p0, Lcom/termux/view/TerminalView;->mAutoFillImportance:I

    return v0
.end method

.method public getPointX(I)I
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p1, v0, :cond_0

    .line 1158
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p1, p1, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    :cond_0
    int-to-float p1, p1

    .line 1160
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getPointY(I)I
    .locals 1

    .line 1164
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getSelectedText()Ljava/lang/String;
    .locals 1

    .line 1499
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStoredSelectedText()Ljava/lang/String;
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getStoredSelectedText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;
    .locals 2

    .line 1464
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-nez v0, :cond_0

    .line 1465
    new-instance v0, Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-direct {v0, p0}, Lcom/termux/view/textselection/TextSelectionCursorController;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 1467
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1469
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1473
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    return-object v0
.end method

.method public getTopRow()I
    .locals 1

    .line 1168
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    return v0
.end method

.method public handleKeyCode(II)Z
    .locals 4

    .line 1002
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1006
    invoke-virtual {v0, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    .line 1008
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->handleKeyCodeAction(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1011
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v3

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v0

    invoke-static {p1, p2, v3, v0}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v1

    .line 1014
    :cond_3
    iget-object p2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2, p1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 1015
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p1}, Lcom/termux/view/TerminalViewClient;->consumeStickyModifiers()V

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public handleKeyCodeAction(II)Z
    .locals 12

    .line 1023
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x20000000

    and-int/2addr p2, v0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    const/16 v2, 0x5c

    if-eq p1, v2, :cond_2

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    .line 1033
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v6

    .line 1034
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    if-ne p1, v2, :cond_3

    .line 1035
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p1, p1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    neg-int p1, p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p1, p1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    .line 1036
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method hideFloatingToolbar()V
    .locals 3

    .line 1596
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1598
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    :cond_0
    return-void
.end method

.method public inputCodePoint(IIZZ)V
    .locals 3

    .line 921
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inputCodePoint(eventSource="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", codePoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", controlDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", leftAltDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v0, :cond_1

    return-void

    .line 932
    :cond_1
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 935
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 936
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkState(Z)V

    :cond_3
    const/4 v0, 0x0

    if-nez p3, :cond_5

    .line 941
    iget-object p3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p3}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    move p3, v0

    goto :goto_1

    :cond_5
    :goto_0
    move p3, v1

    :goto_1
    if-nez p4, :cond_7

    .line 942
    iget-object p4, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p4}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result p4

    if-eqz p4, :cond_6

    goto :goto_2

    :cond_6
    move v1, v0

    .line 944
    :cond_7
    :goto_2
    iget-object p4, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {p4, p2, p3, v2}, Lcom/termux/view/TerminalViewClient;->onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z

    move-result p4

    if-eqz p4, :cond_8

    return-void

    :cond_8
    const/16 p4, 0x5e

    if-eqz p3, :cond_17

    const/16 p3, 0x61

    if-lt p2, p3, :cond_9

    const/16 p3, 0x7a

    if-gt p2, p3, :cond_9

    add-int/lit8 p2, p2, -0x60

    goto/16 :goto_9

    :cond_9
    const/16 p3, 0x41

    if-lt p2, p3, :cond_a

    const/16 p3, 0x5a

    if-gt p2, p3, :cond_a

    add-int/lit8 p2, p2, -0x40

    goto :goto_9

    :cond_a
    const/16 p3, 0x20

    if-eq p2, p3, :cond_16

    const/16 p3, 0x32

    if-ne p2, p3, :cond_b

    goto :goto_8

    :cond_b
    const/16 p3, 0x5b

    if-eq p2, p3, :cond_15

    const/16 p3, 0x33

    if-ne p2, p3, :cond_c

    goto :goto_7

    :cond_c
    const/16 p3, 0x5c

    if-eq p2, p3, :cond_14

    const/16 p3, 0x34

    if-ne p2, p3, :cond_d

    goto :goto_6

    :cond_d
    const/16 p3, 0x5d

    if-eq p2, p3, :cond_13

    const/16 p3, 0x35

    if-ne p2, p3, :cond_e

    goto :goto_5

    :cond_e
    if-eq p2, p4, :cond_12

    const/16 p3, 0x36

    if-ne p2, p3, :cond_f

    goto :goto_4

    :cond_f
    const/16 p3, 0x5f

    if-eq p2, p3, :cond_11

    const/16 p3, 0x37

    if-eq p2, p3, :cond_11

    const/16 p3, 0x2f

    if-ne p2, p3, :cond_10

    goto :goto_3

    :cond_10
    const/16 p3, 0x38

    if-ne p2, p3, :cond_17

    const/16 p2, 0x7f

    goto :goto_9

    :cond_11
    :goto_3
    const/16 p2, 0x1f

    goto :goto_9

    :cond_12
    :goto_4
    const/16 p2, 0x1e

    goto :goto_9

    :cond_13
    :goto_5
    const/16 p2, 0x1d

    goto :goto_9

    :cond_14
    :goto_6
    const/16 p2, 0x1c

    goto :goto_9

    :cond_15
    :goto_7
    const/16 p2, 0x1b

    goto :goto_9

    :cond_16
    :goto_8
    move p2, v0

    :cond_17
    :goto_9
    const/4 p3, -0x1

    if-le p2, p3, :cond_1c

    if-lez p1, :cond_1a

    const/16 p1, 0x2c6

    if-eq p2, p1, :cond_1b

    const/16 p1, 0x2cb

    if-eq p2, p1, :cond_19

    const/16 p1, 0x2dc

    if-eq p2, p1, :cond_18

    goto :goto_a

    :cond_18
    const/16 p4, 0x7e

    goto :goto_b

    :cond_19
    const/16 p4, 0x60

    goto :goto_b

    :cond_1a
    :goto_a
    move p4, p2

    .line 990
    :cond_1b
    :goto_b
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1, v1, p4}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    .line 991
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p1}, Lcom/termux/view/TerminalViewClient;->consumeStickyModifiers()V

    :cond_1c
    return-void
.end method

.method public isAutoFillEnabled()Z
    .locals 5

    const/4 v0, 0x0

    .line 1240
    :try_start_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getAutoFillManagerService()Landroid/view/autofill/AutofillManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1241
    invoke-virtual {v1}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 1243
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v3, "TerminalView"

    const-string v4, "Failed to check if Autofill is enabled"

    invoke-interface {v2, v3, v4, v1}, Lcom/termux/view/TerminalViewClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .line 1490
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1491
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1550
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1552
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1553
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .line 571
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->unsetStoredSelectedText()V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->isTerminalViewSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->getInputMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const v0, 0xa0001

    .line 336
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :cond_0
    const v0, 0x80091

    .line 328
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 322
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 343
    :cond_2
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :goto_0
    const/high16 v0, 0x2000000

    .line 348
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 350
    new-instance p1, Lcom/termux/view/TerminalView$2;

    invoke-direct {p1, p0, p0, v1}, Lcom/termux/view/TerminalView$2;-><init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1559
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1561
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 1564
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 1566
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1567
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->onDetached()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1107
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    .line 1108
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    .line 1112
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v1, :cond_1

    .line 1113
    invoke-virtual {v1, v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectors([I)V

    .line 1120
    :cond_1
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v1

    .line 1121
    iget v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v1, v1

    if-ge v2, v1, :cond_2

    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1122
    :cond_2
    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v2, 0x0

    if-lez v1, :cond_3

    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1128
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v6, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    aget v7, v0, v2

    const/4 v1, 0x1

    aget v8, v0, v1

    const/4 v1, 0x2

    aget v9, v0, v1

    const/4 v1, 0x3

    aget v10, v0, v1

    move-object v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/termux/view/TerminalRenderer;->render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V

    .line 1131
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->renderTextSelection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1133
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    if-eqz v0, :cond_4

    .line 1134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipped a terminal frame due to render exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TerminalView"

    invoke-interface {v0, v1, p1}, Lcom/termux/view/TerminalViewClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_1

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/16 v0, 0x9

    .line 661
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 662
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    .line 838
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    const-string v1, "TerminalView"

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onKeyDown(keyCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSystem()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v0, p1, p2, v3}, Lcom/termux/view/TerminalViewClient;->onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 846
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return v2

    .line 848
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    .line 849
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 850
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    if-nez p1, :cond_6

    .line 853
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 854
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p1}, Lcom/termux/view/TerminalViewClient;->consumeStickyModifiers()V

    return v2

    .line 858
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 862
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v3}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v3

    .line 863
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v4}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v4

    .line 864
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_8

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    move v3, v6

    goto :goto_1

    :cond_8
    :goto_0
    move v3, v2

    :goto_1
    and-int/lit8 v5, v0, 0x10

    if-nez v5, :cond_a

    if-eqz v4, :cond_9

    goto :goto_2

    :cond_9
    move v4, v6

    goto :goto_3

    :cond_a
    :goto_2
    move v4, v2

    .line 866
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v5}, Lcom/termux/view/TerminalViewClient;->readShiftKey()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_4

    :cond_b
    move v5, v6

    goto :goto_5

    :cond_c
    :goto_4
    move v5, v2

    :goto_5
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v6

    :goto_6
    if-eqz v3, :cond_e

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_7

    :cond_e
    move v7, v6

    .line 871
    :goto_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v8

    const/high16 v9, -0x80000000

    if-nez v8, :cond_f

    if-eqz v4, :cond_10

    :cond_f
    or-int/2addr v7, v9

    :cond_10
    if-eqz v5, :cond_11

    const/high16 v8, 0x20000000

    or-int/2addr v7, v8

    .line 873
    :cond_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v8

    if-eqz v8, :cond_12

    const/high16 v8, 0x10000000

    or-int/2addr v7, v8

    .line 875
    :cond_12
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v8

    if-nez v8, :cond_14

    invoke-virtual {p0, p1, v7}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 876
    sget-boolean p1, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string p2, "handleKeyCode() took key event"

    invoke-interface {p1, v1, p2}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return v2

    :cond_14
    if-eqz v0, :cond_15

    const/16 p1, 0x7000

    goto :goto_8

    :cond_15
    const/16 p1, 0x7012

    .line 888
    :goto_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    if-eqz v5, :cond_16

    or-int/lit8 p1, p1, 0x41

    .line 891
    :cond_16
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->readFnKey()Z

    move-result v0

    if-eqz v0, :cond_17

    or-int/lit8 p1, p1, 0x8

    .line 893
    :cond_17
    invoke-virtual {p2, p1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    .line 894
    sget-boolean v5, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v5, :cond_18

    .line 895
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "KeyEvent#getUnicodeChar("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v7, ") returned: "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, v1, p1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    if-nez v0, :cond_19

    return v6

    .line 900
    :cond_19
    iget p1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    and-int v1, v0, v9

    if-eqz v1, :cond_1b

    if-eqz p1, :cond_1a

    .line 904
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    iget v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    invoke-virtual {p0, p2, v1, v3, v4}, Lcom/termux/view/TerminalView;->inputCodePoint(IIZZ)V

    :cond_1a
    const p2, 0x7fffffff

    and-int/2addr p2, v0

    .line 905
    iput p2, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    goto :goto_9

    :cond_1b
    if-eqz p1, :cond_1d

    .line 908
    invoke-static {p1, v0}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v1

    if-lez v1, :cond_1c

    move v0, v1

    .line 910
    :cond_1c
    iput v6, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 912
    :cond_1d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    invoke-virtual {p0, p2, v0, v3, v4}, Lcom/termux/view/TerminalView;->inputCodePoint(IIZZ)V

    .line 915
    :goto_9
    iget p2, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eq p2, p1, :cond_1e

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_1e
    return v2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 715
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyPreIme(keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 718
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->cancelRequestAutoFill()V

    .line 719
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    return v1

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 724
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 728
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 726
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 731
    :cond_4
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldUseCtrlSpaceWorkaround()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_5

    .line 732
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 735
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 737
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1053
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyUp(keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v1

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1, p2}, Lcom/termux/view/TerminalViewClient;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return v1

    .line 1063
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1065
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public onScreenUpdated()V
    .locals 1

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->onScreenUpdated(Z)V

    return-void
.end method

.method public onScreenUpdated(Z)V
    .locals 6

    .line 523
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    return-void

    .line 525
    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    .line 526
    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v2, v0

    if-ge v1, v2, :cond_1

    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 528
    :cond_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->isAutoScrollDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 531
    :cond_2
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->getScrollCounter()I

    move-result v1

    .line 532
    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v4, v3

    add-int/2addr v4, v1

    const/4 v5, 0x1

    if-le v4, v0, :cond_4

    .line 535
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 536
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 538
    :cond_3
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isAutoScrollDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 539
    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    goto :goto_0

    :cond_4
    sub-int/2addr v3, v1

    .line 544
    iput v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 545
    invoke-direct {p0, v1}, Lcom/termux/view/TerminalView;->decrementYTextSelectionCursors(I)V

    :goto_0
    move p1, v5

    :cond_5
    if-nez p1, :cond_7

    .line 549
    iget p1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz p1, :cond_7

    const/4 v0, -0x3

    if-ge p1, v0, :cond_6

    .line 555
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->awakenScrollBars()Z

    :cond_6
    const/4 p1, 0x0

    .line 557
    iput p1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 560
    :cond_7
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->clearScrollCounter()V

    .line 562
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    .line 563
    iget-boolean p1, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1077
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 672
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 673
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 675
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 676
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 677
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1

    :cond_1
    const/16 v2, 0x2002

    .line 679
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    .line 680
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x4

    .line 683
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 684
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 685
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 687
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 689
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 690
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 691
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->consumeStickyModifiers()V

    goto :goto_1

    .line 696
    :cond_4
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x20

    .line 703
    invoke-virtual {p0, p1, v0, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_1

    .line 700
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v3

    :goto_0
    invoke-virtual {p0, p1, v3, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    .line 709
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method public declared-synchronized requestAutoFill([Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 1262
    :try_start_0
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 1265
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getAutoFillManagerService()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1266
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1268
    iput v1, p0, Lcom/termux/view/TerminalView;->mAutoFillType:I

    .line 1271
    iput v1, p0, Lcom/termux/view/TerminalView;->mAutoFillImportance:I

    .line 1273
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mAutoFillHints:[Ljava/lang/String;

    .line 1274
    invoke-virtual {v0, p0}, Landroid/view/autofill/AutofillManager;->requestAutofill(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1277
    :try_start_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "Failed to request Autofill"

    invoke-interface {v0, v1, v2, p1}, Lcom/termux/view/TerminalViewClient;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1279
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1262
    :cond_2
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized requestAutoFillPassword()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 1256
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1255
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->requestAutoFill([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized requestAutoFillUsername()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 1250
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "username"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1249
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView;->requestAutoFill([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method sendMouseEventCode(Landroid/view/MotionEvent;IZ)V
    .locals 6

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p0, p1, v0}, Lcom/termux/view/TerminalView;->getColumnAndRow(Landroid/view/MotionEvent;Z)[I

    move-result-object v1

    .line 623
    aget v0, v1, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 624
    aget v1, v1, v2

    add-int/2addr v1, v2

    if-eqz p3, :cond_2

    const/16 v2, 0x41

    if-eq p2, v2, :cond_0

    const/16 v2, 0x40

    if-ne p2, v2, :cond_2

    .line 626
    :cond_0
    iget-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 627
    iget v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 628
    iget v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    goto :goto_0

    .line 630
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 631
    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 632
    iput v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 635
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/termux/terminal/TerminalEmulator;->sendMouseEvent(IIIZ)V

    return-void
.end method

.method public setIsTerminalViewKeyLoggingEnabled(Z)V
    .locals 0

    .line 280
    sput-boolean p1, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return-void
.end method

.method public declared-synchronized setTerminalCursorBlinkerRate(I)Z
    .locals 4

    const-string v0, "The cursor blink rate must be in between 100-2000: "

    const-string v1, "Setting cursor blinker rate to "

    monitor-enter p0

    if-eqz p1, :cond_1

    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    const/16 v2, 0x7d0

    if-le p1, v2, :cond_1

    .line 1315
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v2, "TerminalView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/termux/view/TerminalViewClient;->logError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1316
    iput p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    goto :goto_0

    .line 1319
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v2, "TerminalView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iput p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    const/4 p1, 0x1

    .line 1324
    :goto_0
    iget v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    if-nez v0, :cond_2

    .line 1325
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "Cursor blinker disabled"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTerminalCursorBlinker()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setTerminalCursorBlinkerState(ZZ)V
    .locals 3

    const-string v0, "Starting cursor blinker with the blink rate "

    monitor-enter p0

    .line 1383
    :try_start_0
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->stopTerminalCursorBlinker()V

    .line 1385
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 1387
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkingEnabled(Z)V

    if-eqz p1, :cond_7

    .line 1391
    iget p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    const/16 v1, 0x64

    if-lt p1, v1, :cond_6

    const/16 v1, 0x7d0

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 1394
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isCursorEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1395
    sget-boolean p1, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz p1, :cond_2

    .line 1396
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string p2, "TerminalView"

    const-string v0, "Ignoring call to start cursor blinker since cursor is not enabled"

    invoke-interface {p1, p2, v0}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1397
    :cond_2
    monitor-exit p0

    return-void

    .line 1401
    :cond_3
    :try_start_2
    sget-boolean p1, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz p1, :cond_4

    .line 1402
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string p2, "TerminalView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/termux/view/TerminalViewClient;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    :cond_4
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    if-nez p1, :cond_5

    .line 1404
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerHandler:Landroid/os/Handler;

    .line 1405
    :cond_5
    new-instance p1, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    iget-object p2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRate:I

    invoke-direct {p1, p0, p2, v0}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/terminal/TerminalEmulator;I)V

    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    .line 1406
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalEmulator;->setCursorBlinkingEnabled(Z)V

    .line 1407
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1392
    :cond_6
    :goto_0
    monitor-exit p0

    return-void

    .line 1409
    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setTerminalViewClient(Lcom/termux/view/TerminalViewClient;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 580
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 581
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void
.end method

.method public setTopRow(I)V
    .locals 0

    .line 1172
    iput p1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 585
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    invoke-direct {v0, v1, p1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 586
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 587
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return-void
.end method

.method public startTextSelectionMode(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1525
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1529
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->showTextSelectionCursors(Landroid/view/MotionEvent;)V

    .line 1530
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1532
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    return-void
.end method

.method public stopTextSelectionMode()V
    .locals 2

    .line 1536
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->hideTextSelectionCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 1538
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_0
    return-void
.end method

.method public unsetStoredSelectedText()V
    .locals 1

    .line 1513
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->unsetStoredSelectedText()V

    :cond_0
    return-void
.end method

.method public updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1603
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1606
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->hideFloatingToolbar()V

    goto :goto_0

    .line 1610
    :cond_1
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->showFloatingToolbar()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateSize()V
    .locals 5

    .line 1082
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getWidth()I

    move-result v0

    .line 1083
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getHeight()I

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1084
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 1087
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1088
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1090
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v1, v2, :cond_3

    .line 1091
    :cond_1
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v3}, Lcom/termux/view/TerminalRenderer;->getFontWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v4}, Lcom/termux/view/TerminalRenderer;->getFontLineSpacing()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/termux/terminal/TerminalSession;->updateSize(IIII)V

    .line 1092
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 1093
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->onEmulatorSet()V

    .line 1096
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTerminalCursorBlinkerRunnable:Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;

    if-eqz v0, :cond_2

    .line 1097
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0, v1}, Lcom/termux/view/TerminalView$TerminalCursorBlinkerRunnable;->setEmulator(Lcom/termux/terminal/TerminalEmulator;)V

    :cond_2
    const/4 v0, 0x0

    .line 1099
    iput v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 1100
    invoke-virtual {p0, v0, v0}, Lcom/termux/view/TerminalView;->scrollTo(II)V

    .line 1101
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method
