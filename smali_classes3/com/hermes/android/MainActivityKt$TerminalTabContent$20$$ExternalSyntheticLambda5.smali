.class public final synthetic Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/termux/terminal/TerminalSession;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda5;->f$1:Lcom/termux/terminal/TerminalSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda5;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda5;->f$1:Lcom/termux/terminal/TerminalSession;

    invoke-static {v0, v1}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20;->$r8$lambda$-xh715tkN966fDRAK8pLV-6dqeI(Landroid/content/Context;Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method
