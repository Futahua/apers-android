.class public final synthetic Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Lcom/termux/terminal/TerminalSession;

.field public final synthetic f$4:Lcom/hermes/android/SimpleTerminalClient;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$3:Lcom/termux/terminal/TerminalSession;

    iput-object p5, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$4:Lcom/hermes/android/SimpleTerminalClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$3:Lcom/termux/terminal/TerminalSession;

    iget-object v4, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;->f$4:Lcom/hermes/android/SimpleTerminalClient;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hermes/android/SimpleTerminalClient;->$r8$lambda$nlJK7vauwIjGZiNeypQKMOa7JHI(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;)V

    return-void
.end method
