.class public final synthetic Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/view/TerminalView;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/view/TerminalView;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda0;->f$0:Lcom/termux/view/TerminalView;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda0;->f$0:Lcom/termux/view/TerminalView;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda0;->f$1:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v1}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20;->$r8$lambda$Tp1CEXmGVBq1SKzrJncJeZqbuYw(Lcom/termux/view/TerminalView;Landroidx/compose/runtime/MutableState;)V

    return-void
.end method
