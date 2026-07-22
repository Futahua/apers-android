.class Lcom/termux/view/TerminalView$2;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/TerminalView;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3

    .line 364
    invoke-static {}, Lcom/termux/view/TerminalView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IME: commitText(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 369
    iget-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 p2, 0x1

    if-nez p1, :cond_1

    return p2

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object p1

    .line 372
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView$2;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 373
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    return p2
.end method

.method public deleteSurroundingText(II)Z
    .locals 3

    .line 392
    invoke-static {}, Lcom/termux/view/TerminalView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IME: deleteSurroundingText("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TerminalView"

    invoke-interface {v0, v1, p2}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    iget-object p2, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-eqz p2, :cond_6

    if-lez p1, :cond_6

    .line 405
    iget-object p2, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p2}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result p2

    .line 406
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_3

    if-eqz v0, :cond_1

    goto :goto_1

    .line 411
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge v1, p1, :cond_2

    const/16 v0, 0x7f

    .line 412
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_2
    iget-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    if-eqz v0, :cond_5

    const/high16 v1, -0x80000000

    :cond_5
    or-int/2addr p1, v1

    .line 409
    iget-object p2, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    const/16 v0, 0x43

    invoke-virtual {p2, v0, p1}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    :cond_6
    :goto_3
    const/4 p1, 0x1

    return p1
.end method

.method public finishComposingText()Z
    .locals 3

    .line 354
    invoke-static {}, Lcom/termux/view/TerminalView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "IME: finishComposingText()"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 357
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$2;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 3

    .line 379
    invoke-static {}, Lcom/termux/view/TerminalView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IME: getTextBeforeCursor("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 386
    const-string p1, " "

    return-object p1

    .line 387
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public performEditorAction(I)Z
    .locals 3

    .line 423
    invoke-static {}, Lcom/termux/view/TerminalView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IME: performEditorAction("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TerminalView"

    invoke-interface {v0, v1, p1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    iget-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-eqz p1, :cond_5

    .line 432
    iget-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p1}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result p1

    .line 433
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 438
    :cond_1
    iget-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    if-eqz v0, :cond_4

    const/high16 v1, -0x80000000

    :cond_4
    or-int/2addr p1, v1

    .line 436
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p1}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method sendTextToTerminal(Ljava/lang/CharSequence;)V
    .locals 7

    .line 445
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 446
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 448
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 450
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_0

    .line 452
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_1

    :cond_0
    const v3, 0xfffd

    .line 462
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v4}, Lcom/termux/view/TerminalViewClient;->readShiftKey()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v3

    :cond_2
    const/16 v4, 0x1f

    const/4 v5, 0x1

    if-gt v3, v4, :cond_4

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    const/16 v3, 0xd

    :cond_3
    packed-switch v3, :pswitch_data_0

    add-int/lit8 v3, v3, 0x60

    goto :goto_2

    :pswitch_0
    const/16 v3, 0x5f

    goto :goto_2

    :pswitch_1
    const/16 v3, 0x5e

    goto :goto_2

    :pswitch_2
    const/16 v3, 0x5d

    goto :goto_2

    :pswitch_3
    const/16 v3, 0x5c

    :goto_2
    move v4, v5

    goto :goto_3

    :cond_4
    move v4, v1

    .line 496
    :goto_3
    iget-object v6, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v6, v1, v3, v4, v1}, Lcom/termux/view/TerminalView;->inputCodePoint(IIZZ)V

    add-int/2addr v2, v5

    goto :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
