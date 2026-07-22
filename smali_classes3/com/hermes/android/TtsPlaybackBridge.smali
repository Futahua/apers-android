.class public final Lcom/hermes/android/TtsPlaybackBridge;
.super Ljava/lang/Object;
.source "TtsPlaybackBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/TtsPlaybackBridge$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTtsPlaybackBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TtsPlaybackBridge.kt\ncom/hermes/android/TtsPlaybackBridge\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,237:1\n1#2:238\n13409#3,2:239\n1863#4,2:241\n*S KotlinDebug\n*F\n+ 1 TtsPlaybackBridge.kt\ncom/hermes/android/TtsPlaybackBridge\n*L\n206#1:239,2\n97#1:241,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u001dJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0006\u0010 \u001a\u00020\u0003H\u0002J\u0008\u0010!\u001a\u00020\u001dH\u0002J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u0011H\u0002J\u0008\u0010$\u001a\u00020\u001dH\u0002J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u0019H\u0002R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/hermes/android/TtsPlaybackBridge;",
        "",
        "hermesHome",
        "Ljava/io/File;",
        "<init>",
        "(Ljava/io/File;)V",
        "audioDir",
        "playRoot",
        "instanceDir",
        "lock",
        "observer",
        "Landroid/os/FileObserver;",
        "thread",
        "Landroid/os/HandlerThread;",
        "handler",
        "Landroid/os/Handler;",
        "player",
        "Landroid/media/MediaPlayer;",
        "currentSnapshot",
        "queue",
        "Lkotlin/collections/ArrayDeque;",
        "queuedBytes",
        "",
        "seq",
        "lastIdentity",
        "",
        "stopped",
        "",
        "start",
        "",
        "stop",
        "captureSnapshot",
        "src",
        "playNext",
        "onTrackEnd",
        "mp",
        "sweepStaleInstanceDirs",
        "isPlayable",
        "name",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/hermes/android/TtsPlaybackBridge$Companion;

.field private static final INSTANCE_SEQ:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final MAX_QUEUE_BYTES:J = 0x4000000L

.field private static final MAX_QUEUE_ITEMS:I = 0x20

.field private static final MAX_TTS_BYTES:J = 0x800000L

.field private static final STALE_DIR_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "TtsPlaybackBridge"


# instance fields
.field private final audioDir:Ljava/io/File;

.field private currentSnapshot:Ljava/io/File;

.field private handler:Landroid/os/Handler;

.field private final instanceDir:Ljava/io/File;

.field private lastIdentity:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private observer:Landroid/os/FileObserver;

.field private final playRoot:Ljava/io/File;

.field private player:Landroid/media/MediaPlayer;

.field private final queue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private queuedBytes:J

.field private seq:J

.field private stopped:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$bQ02FssYptYTK6b9_TMQkUOe9sw(Lcom/hermes/android/TtsPlaybackBridge;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/hermes/android/TtsPlaybackBridge;->stop$lambda$8(Lcom/hermes/android/TtsPlaybackBridge;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eq_pxEmMZd3vB8ShsJe5PfUyehY(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/TtsPlaybackBridge;->playNext$lambda$13(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$he7xv-v-f3OxplChgP9z2n9lVjY(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;II)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hermes/android/TtsPlaybackBridge;->playNext$lambda$14(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hermes/android/TtsPlaybackBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/TtsPlaybackBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/TtsPlaybackBridge;->Companion:Lcom/hermes/android/TtsPlaybackBridge$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/TtsPlaybackBridge;->$stable:I

    .line 234
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/hermes/android/TtsPlaybackBridge;->INSTANCE_SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 6

    const-string v0, "hermesHome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "cache/audio"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hermes/android/TtsPlaybackBridge;->audioDir:Ljava/io/File;

    .line 38
    new-instance p1, Ljava/io/File;

    const-string v1, ".play"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge;->playRoot:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/hermes/android/TtsPlaybackBridge;->INSTANCE_SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hermes/android/TtsPlaybackBridge;->instanceDir:Ljava/io/File;

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    .line 49
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge;->queue:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method public static final synthetic access$captureSnapshot(Lcom/hermes/android/TtsPlaybackBridge;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/hermes/android/TtsPlaybackBridge;->captureSnapshot(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAudioDir$p(Lcom/hermes/android/TtsPlaybackBridge;)Ljava/io/File;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/hermes/android/TtsPlaybackBridge;->audioDir:Ljava/io/File;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/hermes/android/TtsPlaybackBridge;)Landroid/os/Handler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/hermes/android/TtsPlaybackBridge;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/hermes/android/TtsPlaybackBridge;)Ljava/lang/Object;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$isPlayable(Lcom/hermes/android/TtsPlaybackBridge;Ljava/lang/String;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/hermes/android/TtsPlaybackBridge;->isPlayable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$playNext(Lcom/hermes/android/TtsPlaybackBridge;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/hermes/android/TtsPlaybackBridge;->playNext()V

    return-void
.end method

.method private final captureSnapshot(Ljava/io/File;)Ljava/io/File;
    .locals 12

    const-string v0, "TTS snapshot failed for "

    const-string v1, "TTS queue full ("

    const-string v2, "TTS skip oversized "

    .line 116
    iget-object v3, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 117
    :try_start_0
    iget-boolean v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->stopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    monitor-exit v3

    return-object v5

    .line 118
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    monitor-exit v3

    return-object v5

    .line 119
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gtz v4, :cond_2

    .line 120
    monitor-exit v3

    return-object v5

    :cond_2
    const-wide/32 v8, 0x800000

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    .line 122
    :try_start_3
    const-string v0, "TtsPlaybackBridge"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    monitor-exit v3

    return-object v5

    .line 125
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    iget-object v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->lastIdentity:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_4

    monitor-exit v3

    return-object v5

    .line 127
    :cond_4
    :try_start_5
    iget-object v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v4

    const/16 v8, 0x20

    if-ge v4, v8, :cond_6

    iget-wide v8, p0, Lcom/hermes/android/TtsPlaybackBridge;->queuedBytes:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-long/2addr v8, v6

    const-wide/32 v6, 0x4000000

    cmp-long v4, v8, v6

    if-lez v4, :cond_5

    goto :goto_0

    .line 132
    :cond_5
    :try_start_6
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->instanceDir:Ljava/io/File;

    iget-wide v6, p0, Lcom/hermes/android/TtsPlaybackBridge;->seq:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/hermes/android/TtsPlaybackBridge;->seq:J

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, v1

    invoke-static/range {v6 .. v11}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    :try_start_7
    iput-object v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->lastIdentity:Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1, v1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 139
    iget-wide v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->queuedBytes:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->queuedBytes:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 140
    monitor-exit v3

    return-object v1

    :catch_0
    move-exception v1

    .line 134
    :try_start_8
    const-string v2, "TtsPlaybackBridge"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 135
    monitor-exit v3

    return-object v5

    .line 128
    :cond_6
    :goto_0
    :try_start_9
    const-string v0, "TtsPlaybackBridge"

    iget-object v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    iget-wide v6, p0, Lcom/hermes/android/TtsPlaybackBridge;->queuedBytes:J

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " B), dropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 129
    monitor-exit v3

    return-object v5

    :catchall_0
    move-exception p1

    .line 140
    monitor-exit v3

    throw p1
.end method

.method private final isPlayable(Ljava/lang/String;)Z
    .locals 4

    .line 217
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-string v0, ".mp3"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".ogg"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string v0, ".wav"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".m4a"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final onTrackEnd(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 185
    :catch_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->player:Landroid/media/MediaPlayer;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->currentSnapshot:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/hermes/android/TtsPlaybackBridge;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_3
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_1
    const/4 v1, 0x0

    .line 188
    iput-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->currentSnapshot:Ljava/io/File;

    .line 189
    iput-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->player:Landroid/media/MediaPlayer;

    .line 191
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 181
    monitor-exit v0

    if-eqz p1, :cond_3

    .line 192
    invoke-direct {p0}, Lcom/hermes/android/TtsPlaybackBridge;->playNext()V

    :cond_3
    return-void

    .line 181
    :goto_3
    monitor-exit v0

    throw p1
.end method

.method private final playNext()V
    .locals 6

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-boolean v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->stopped:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    .line 152
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->queuedBytes:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->queuedBytes:J

    .line 153
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 149
    monitor-exit v0

    .line 155
    :try_start_2
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 163
    new-instance v2, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 164
    new-instance v2, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;)V

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 165
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 166
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 167
    iget-object v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iput-object v0, p0, Lcom/hermes/android/TtsPlaybackBridge;->player:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->currentSnapshot:Ljava/io/File;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v2

    .line 168
    const-string v2, "TtsPlaybackBridge"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing TTS audio: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v3

    .line 167
    monitor-exit v2

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v2

    .line 171
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 172
    :catch_1
    :try_start_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v1

    check-cast v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :goto_1
    const-string v0, "TtsPlaybackBridge"

    move-object v3, v1

    check-cast v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TTS playback failed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 157
    :try_start_8
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, v1

    check-cast v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :goto_2
    const-string v2, "TtsPlaybackBridge"

    move-object v3, v1

    check-cast v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TTS MediaPlayer create failed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    :cond_2
    :goto_3
    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    .line 149
    monitor-exit v0

    throw v1
.end method

.method private static final playNext$lambda$13(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/hermes/android/TtsPlaybackBridge;->onTrackEnd(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private static final playNext$lambda$14(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/hermes/android/TtsPlaybackBridge;->onTrackEnd(Landroid/media/MediaPlayer;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final stop$lambda$8(Lcom/hermes/android/TtsPlaybackBridge;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->queue:Lkotlin/collections/ArrayDeque;

    check-cast v1, Ljava/lang/Iterable;

    .line 241
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 97
    :try_start_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->clear()V

    const-wide/16 v1, 0x0

    .line 99
    iput-wide v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->queuedBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    :try_start_3
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    :cond_1
    const/4 v1, 0x0

    .line 101
    :try_start_4
    iput-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->player:Landroid/media/MediaPlayer;

    .line 102
    iput-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->currentSnapshot:Ljava/io/File;

    .line 103
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 96
    monitor-exit v0

    .line 104
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/hermes/android/TtsPlaybackBridge;->instanceDir:Ljava/io/File;

    invoke-static {p0}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_1
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/os/HandlerThread;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_2
    return-void

    :catchall_2
    move-exception p0

    .line 96
    monitor-exit v0

    throw p0
.end method

.method private final sweepStaleInstanceDirs()V
    .locals 10

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->playRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 239
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 207
    iget-object v6, p0, Lcom/hermes/android/TtsPlaybackBridge;->instanceDir:Ljava/io/File;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 208
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getName(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x2d

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v6, v7, v9, v8, v9}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 209
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v6, v0

    if-gez v6, :cond_2

    .line 210
    :cond_0
    :try_start_1
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v6, p0

    check-cast v6, Lcom/hermes/android/TtsPlaybackBridge;

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    :try_start_2
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 5

    const-string v0, "TTS playback bridge watching "

    .line 56
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->observer:Landroid/os/FileObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 58
    :try_start_1
    iput-boolean v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->stopped:Z

    .line 59
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    monitor-exit v1

    .line 61
    :try_start_2
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->audioDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->audioDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->instanceDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 63
    invoke-direct {p0}, Lcom/hermes/android/TtsPlaybackBridge;->sweepStaleInstanceDirs()V

    .line 64
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "tts-playback"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 67
    iget-object v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->audioDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;

    invoke-direct {v3, p0, v2}, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;-><init>(Lcom/hermes/android/TtsPlaybackBridge;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iput-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->thread:Landroid/os/HandlerThread;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->handler:Landroid/os/Handler;

    move-object v1, v3

    check-cast v1, Landroid/os/FileObserver;

    iput-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->observer:Landroid/os/FileObserver;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2

    .line 78
    invoke-virtual {v3}, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;->startWatching()V

    .line 79
    const-string v1, "TtsPlaybackBridge"

    iget-object v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->audioDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 77
    monitor-exit v2

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 81
    const-string v1, "TtsPlaybackBridge"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTS bridge start failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 56
    monitor-exit v1

    throw v0
.end method

.method public final stop()V
    .locals 5

    .line 87
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 90
    :try_start_0
    iput-boolean v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->stopped:Z

    .line 91
    iget-object v2, p0, Lcom/hermes/android/TtsPlaybackBridge;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/hermes/android/TtsPlaybackBridge;->thread:Landroid/os/HandlerThread;

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v3, p0, Lcom/hermes/android/TtsPlaybackBridge;->observer:Landroid/os/FileObserver;

    const/4 v4, 0x0

    .line 92
    iput-object v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->handler:Landroid/os/Handler;

    iput-object v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->thread:Landroid/os/HandlerThread;

    iput-object v4, p0, Lcom/hermes/android/TtsPlaybackBridge;->observer:Landroid/os/FileObserver;

    .line 93
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v1

    if-eqz v3, :cond_0

    .line 94
    :try_start_1
    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :catch_0
    :cond_0
    new-instance v1, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda2;-><init>(Lcom/hermes/android/TtsPlaybackBridge;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 89
    monitor-exit v1

    throw v0
.end method
