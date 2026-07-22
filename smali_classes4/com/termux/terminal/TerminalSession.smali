.class public final Lcom/termux/terminal/TerminalSession;
.super Lcom/termux/terminal/TerminalOutput;
.source "TerminalSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/terminal/TerminalSession$MainThreadHandler;
    }
.end annotation


# static fields
.field private static final INPUT_WRITER_POISON:[B

.field static final INPUT_WRITE_BYTE_BUDGET:I = 0x400000

.field static final INPUT_WRITE_CHUNK_OVERHEAD:I = 0x20

.field private static final LOG_TAG:Ljava/lang/String; = "TerminalSession"

.field private static final MSG_NEW_INPUT:I = 0x1

.field private static final MSG_PROCESS_EXITED:I = 0x4


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field mClient:Lcom/termux/terminal/TerminalSessionClient;

.field private final mCwd:Ljava/lang/String;

.field mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field private final mEnv:[Ljava/lang/String;

.field public final mHandle:Ljava/lang/String;

.field private volatile mInputOverBudgetLogged:Z

.field final mInputWriteQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field final mInputWriteQueueBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field final mMainThreadHandler:Landroid/os/Handler;

.field final mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

.field public mSessionName:Ljava/lang/String;

.field mShellExitStatus:I

.field private final mShellPath:Ljava/lang/String;

.field mShellPid:I

.field private mTerminalFileDescriptor:I

.field final mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

.field private final mTranscriptRows:Ljava/lang/Integer;

.field private final mUtf8InputBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    new-array v0, v0, [B

    sput-object v0, Lcom/termux/terminal/TerminalSession;->INPUT_WRITER_POISON:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/termux/terminal/TerminalOutput;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    .line 51
    new-instance v0, Lcom/termux/terminal/ByteQueue;

    invoke-direct {v0, v1}, Lcom/termux/terminal/ByteQueue;-><init>(I)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    const/4 v0, 0x5

    .line 53
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    .line 63
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueueBytes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 97
    new-instance v0, Lcom/termux/terminal/TerminalSession$MainThreadHandler;

    invoke-direct {v0, p0}, Lcom/termux/terminal/TerminalSession$MainThreadHandler;-><init>(Lcom/termux/terminal/TerminalSession;)V

    iput-object v0, p0, Lcom/termux/terminal/TerminalSession;->mMainThreadHandler:Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lcom/termux/terminal/TerminalSession;->mTranscriptRows:Ljava/lang/Integer;

    .line 114
    iput-object p6, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    return-void
.end method

.method private static wrapFileDescriptor(ILcom/termux/terminal/TerminalSessionClient;)Ljava/io/FileDescriptor;
    .locals 4

    .line 431
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v1, 0x1

    .line 435
    :try_start_0
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "descriptor"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    .line 438
    :catch_2
    :try_start_1
    const-class v2, Ljava/io/FileDescriptor;

    const-string v3, "fd"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 440
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 441
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_3
    move-exception p0

    .line 443
    :goto_1
    const-string v2, "TerminalSession"

    const-string v3, "Error accessing FileDescriptor#descriptor private field"

    invoke-static {p1, v2, v3, p0}, Lcom/termux/terminal/Logger;->logStackTraceWithMessage(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_2
    return-object v0
.end method


# virtual methods
.method declared-synchronized accountDrainedChunk(I)Z
    .locals 3

    monitor-enter p0

    .line 356
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 357
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueueBytes:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int p1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method cleanupResources(I)V
    .locals 1

    .line 326
    monitor-enter p0

    const/4 v0, -0x1

    .line 327
    :try_start_0
    iput v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 328
    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I

    .line 329
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->shutdownInputWriter()V

    .line 333
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalToProcessIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {p1}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 334
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mProcessToTerminalIOQueue:Lcom/termux/terminal/ByteQueue;

    invoke-virtual {p1}, Lcom/termux/terminal/ByteQueue;->close()V

    .line 335
    iget p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {p1}, Lcom/termux/terminal/JNI;->close(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 329
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public finishIfRunning()V
    .locals 4

    .line 315
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    sget v1, Landroid/system/OsConstants;->SIGKILL:I

    invoke-static {v0, v1}, Landroid/system/Os;->kill(II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 319
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed sending SIGKILL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TerminalSession"

    invoke-static {v1, v2, v0}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCwd()Ljava/lang/String;
    .locals 5

    .line 411
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 415
    :cond_0
    :try_start_0
    const-string v1, "/proc/%s/cwd/"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 418
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 421
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 425
    :goto_1
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    const-string v3, "TerminalSession"

    const-string v4, "Error getting current directory"

    invoke-static {v1, v3, v4, v0}, Lcom/termux/terminal/Logger;->logStackTraceWithMessage(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v2
.end method

.method public getEmulator()Lcom/termux/terminal/TerminalEmulator;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    return-object v0
.end method

.method public declared-synchronized getExitStatus()I
    .locals 1

    monitor-enter p0

    .line 382
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPid()I
    .locals 1

    .line 406
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public initializeEmulator(IIII)V
    .locals 10

    .line 150
    new-instance v8, Lcom/termux/terminal/TerminalEmulator;

    iget-object v6, p0, Lcom/termux/terminal/TerminalSession;->mTranscriptRows:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/termux/terminal/TerminalEmulator;-><init>(Lcom/termux/terminal/TerminalOutput;IIIILjava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V

    iput-object v8, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v0, 0x1

    .line 152
    new-array v0, v0, [I

    .line 153
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mShellPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mCwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/termux/terminal/TerminalSession;->mArgs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/termux/terminal/TerminalSession;->mEnv:[Ljava/lang/String;

    move-object v5, v0

    move v6, p2

    move v7, p1

    move v8, p3

    move v9, p4

    invoke-static/range {v1 .. v9}, Lcom/termux/terminal/JNI;->createSubprocess(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IIIII)I

    move-result p1

    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    const/4 p1, 0x0

    .line 154
    aget p1, v0, p1

    iput p1, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    .line 155
    iget-object p2, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {p2, p0, p1}, Lcom/termux/terminal/TerminalSessionClient;->setTerminalShellPid(Lcom/termux/terminal/TerminalSession;I)V

    .line 157
    iget p1, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    iget-object p2, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-static {p1, p2}, Lcom/termux/terminal/TerminalSession;->wrapFileDescriptor(ILcom/termux/terminal/TerminalSessionClient;)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 159
    new-instance p2, Lcom/termux/terminal/TerminalSession$1;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "TermSessionInputReader[pid="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "]"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lcom/termux/terminal/TerminalSession$1;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 174
    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession$1;->start()V

    .line 176
    new-instance p2, Lcom/termux/terminal/TerminalSession$2;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "TermSessionOutputWriter[pid="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lcom/termux/terminal/TerminalSession$2;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 190
    invoke-virtual {p2}, Lcom/termux/terminal/TerminalSession$2;->start()V

    .line 192
    new-instance p1, Lcom/termux/terminal/TerminalSession$3;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "TermSessionInputWriter[pid="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/termux/terminal/TerminalSession$3;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession$3;->start()V

    .line 211
    new-instance p1, Lcom/termux/terminal/TerminalSession$4;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "TermSessionWaiter[pid="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/termux/terminal/TerminalSession$4;-><init>(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession$4;->start()V

    return-void
.end method

.method public declared-synchronized isRunning()Z
    .locals 2

    monitor-enter p0

    .line 377
    :try_start_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected notifyScreenUpdate()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onBell()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onBell(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onColorsChanged()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onColorsChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public onCopyTextToClipboard(Ljava/lang/String;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0, p1}, Lcom/termux/terminal/TerminalSessionClient;->onCopyTextToClipboard(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V

    return-void
.end method

.method public onPasteTextFromClipboard()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {v0, p0}, Lcom/termux/terminal/TerminalSessionClient;->onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->reset()V

    .line 310
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalSession;->notifyScreenUpdate()V

    return-void
.end method

.method shutdownInputWriter()V
    .locals 3

    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 366
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueueBytes:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 367
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/termux/terminal/TerminalSession;->INPUT_WRITER_POISON:[B

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 368
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public titleChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 373
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    invoke-interface {p1, p0}, Lcom/termux/terminal/TerminalSessionClient;->onTitleChanged(Lcom/termux/terminal/TerminalSession;)V

    return-void
.end method

.method public updateSize(IIII)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalSession;->initializeEmulator(IIII)V

    goto :goto_0

    .line 133
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mTerminalFileDescriptor:I

    invoke-static {v0, p2, p1, p3, p4}, Lcom/termux/terminal/JNI;->setPtyWindowSize(IIIII)V

    .line 134
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/termux/terminal/TerminalEmulator;->resize(IIII)V

    :goto_0
    return-void
.end method

.method public updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 1

    .line 122
    iput-object p1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    .line 124
    iget-object v0, p0, Lcom/termux/terminal/TerminalSession;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalEmulator;->updateTerminalSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 6

    .line 230
    iget v0, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    if-lez v0, :cond_4

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0x20

    add-long/2addr v0, v2

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget v2, p0, Lcom/termux/terminal/TerminalSession;->mShellPid:I

    if-gtz v2, :cond_1

    monitor-exit p0

    return-void

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueueBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v2, v0

    const-wide/32 v4, 0x400000

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 247
    iget-boolean p1, p0, Lcom/termux/terminal/TerminalSession;->mInputOverBudgetLogged:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalSession;->mInputOverBudgetLogged:Z

    .line 249
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mClient:Lcom/termux/terminal/TerminalSessionClient;

    const-string p2, "TerminalSession"

    const-string p3, "Input backlog over budget (4194304 bytes), dropping input until it drains"

    invoke-static {p1, p2, p3}, Lcom/termux/terminal/Logger;->logWarn(Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_2
    monitor-exit p0

    return-void

    .line 254
    :cond_3
    iget-object v2, p0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueueBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 255
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 256
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mInputWriteQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 258
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public writeCodePoint(ZI)V
    .locals 5

    const v0, 0x10ffff

    if-gt p2, v0, :cond_5

    const v0, 0xd800

    if-lt p2, v0, :cond_0

    const v0, 0xdfff

    if-le p2, v0, :cond_5

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 269
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    const/16 v1, 0x1b

    aput-byte v1, p1, v0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    const/16 v1, 0x7f

    if-gt p2, v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    goto :goto_2

    :cond_2
    const/16 v1, 0x7ff

    if-gt p2, v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 277
    aput-byte p2, v1, v2

    :goto_1
    move v2, p1

    goto :goto_2

    :cond_3
    const v1, 0xffff

    if-gt p2, v1, :cond_4

    .line 280
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 v3, p1, 0x2

    shr-int/lit8 v4, p2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 282
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x3

    and-int/lit8 p1, p2, 0x3f

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    .line 284
    aput-byte p1, v1, v3

    goto :goto_2

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p2, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, p1

    add-int/lit8 v3, p1, 0x2

    shr-int/lit8 v4, p2, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 289
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x3

    shr-int/lit8 v4, p2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 291
    aput-byte v4, v1, v3

    add-int/lit8 p1, p1, 0x4

    and-int/lit8 p2, p2, 0x3f

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    .line 293
    aput-byte p2, v1, v2

    goto :goto_1

    .line 295
    :goto_2
    iget-object p1, p0, Lcom/termux/terminal/TerminalSession;->mUtf8InputBuffer:[B

    invoke-virtual {p0, p1, v0, v2}, Lcom/termux/terminal/TerminalSession;->write([BII)V

    return-void

    .line 265
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid code point: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
