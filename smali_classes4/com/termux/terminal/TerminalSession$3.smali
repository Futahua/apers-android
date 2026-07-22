.class Lcom/termux/terminal/TerminalSession$3;
.super Ljava/lang/Thread;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/terminal/TerminalSession;->initializeEmulator(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/terminal/TerminalSession;


# direct methods
.method constructor <init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 197
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 198
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v2}, Lcom/termux/terminal/TerminalSession;->accountDrainedChunk(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession$3;->this$0:Lcom/termux/terminal/TerminalSession;

    iget-object v1, v1, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/termux/terminal/ByteQueue;->write([BII)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :catch_0
    return-void
.end method
