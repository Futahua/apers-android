.class public final synthetic Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/termux/terminal/TerminalSession;

.field public final synthetic f$2:Lcom/hermes/android/SimpleTerminalClient;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;->f$1:Lcom/termux/terminal/TerminalSession;

    iput-object p3, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;->f$2:Lcom/hermes/android/SimpleTerminalClient;

    iput-object p4, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;->f$1:Lcom/termux/terminal/TerminalSession;

    iget-object v2, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;->f$2:Lcom/hermes/android/SimpleTerminalClient;

    iget-object v3, p0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcom/hermes/android/SimpleTerminalClient;->$r8$lambda$ytMQxJAhgYPZVXLkWeT6pJWjPUw(Ljava/lang/String;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;Landroid/content/Context;)V

    return-void
.end method
