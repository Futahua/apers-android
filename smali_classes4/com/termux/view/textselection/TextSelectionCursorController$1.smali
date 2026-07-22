.class Lcom/termux/view/textselection/TextSelectionCursorController$1;
.super Ljava/lang/Object;
.source "TextSelectionCursorController.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/textselection/TextSelectionCursorController;->setActionModeCallBacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/textselection/TextSelectionCursorController;


# direct methods
.method constructor <init>(Lcom/termux/view/textselection/TextSelectionCursorController;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 135
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v0, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectedText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$102(Lcom/termux/view/textselection/TextSelectionCursorController;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 153
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->showContextMenu()Z

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 143
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->onPasteTextFromClipboard()V

    goto :goto_0

    .line 137
    :cond_3
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p2

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2, p1}, Lcom/termux/terminal/TerminalSession;->onCopyTextToClipboard(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    :goto_0
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .line 116
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 117
    sget v0, Lcom/termux/view/R$string;->copy_text:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    .line 118
    sget v4, Lcom/termux/view/R$string;->paste_text:I

    invoke-interface {p2, v1, v0, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p1, 0x3

    .line 119
    sget v0, Lcom/termux/view/R$string;->text_selection_more:I

    invoke-interface {p2, v1, p1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
