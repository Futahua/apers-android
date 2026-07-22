.class public final Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;
.super Landroid/os/FileObserver;
.source "TtsPlaybackBridge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/TtsPlaybackBridge;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTtsPlaybackBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TtsPlaybackBridge.kt\ncom/hermes/android/TtsPlaybackBridge$start$obs$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,237:1\n1#2:238\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/hermes/android/TtsPlaybackBridge$start$obs$1",
        "Landroid/os/FileObserver;",
        "onEvent",
        "",
        "event",
        "",
        "path",
        "",
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


# instance fields
.field final synthetic this$0:Lcom/hermes/android/TtsPlaybackBridge;


# direct methods
.method public static synthetic $r8$lambda$AuMHeZ9gvYOYf8CuSOMR0hy1tLo(Lcom/hermes/android/TtsPlaybackBridge;)V
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;->onEvent$lambda$1(Lcom/hermes/android/TtsPlaybackBridge;)V

    return-void
.end method

.method constructor <init>(Lcom/hermes/android/TtsPlaybackBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;->this$0:Lcom/hermes/android/TtsPlaybackBridge;

    const/16 p1, 0x88

    .line 67
    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final onEvent$lambda$1(Lcom/hermes/android/TtsPlaybackBridge;)V
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/hermes/android/TtsPlaybackBridge;->access$playNext(Lcom/hermes/android/TtsPlaybackBridge;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;->this$0:Lcom/hermes/android/TtsPlaybackBridge;

    invoke-static {p1, p2}, Lcom/hermes/android/TtsPlaybackBridge;->access$isPlayable(Lcom/hermes/android/TtsPlaybackBridge;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;->this$0:Lcom/hermes/android/TtsPlaybackBridge;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;->this$0:Lcom/hermes/android/TtsPlaybackBridge;

    invoke-static {v1}, Lcom/hermes/android/TtsPlaybackBridge;->access$getAudioDir$p(Lcom/hermes/android/TtsPlaybackBridge;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/hermes/android/TtsPlaybackBridge;->access$captureSnapshot(Lcom/hermes/android/TtsPlaybackBridge;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;->this$0:Lcom/hermes/android/TtsPlaybackBridge;

    invoke-static {p1}, Lcom/hermes/android/TtsPlaybackBridge;->access$getLock$p(Lcom/hermes/android/TtsPlaybackBridge;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;->this$0:Lcom/hermes/android/TtsPlaybackBridge;

    monitor-enter p1

    :try_start_0
    invoke-static {p2}, Lcom/hermes/android/TtsPlaybackBridge;->access$getHandler$p(Lcom/hermes/android/TtsPlaybackBridge;)Landroid/os/Handler;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1;->this$0:Lcom/hermes/android/TtsPlaybackBridge;

    new-instance v0, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/hermes/android/TtsPlaybackBridge$start$obs$1$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/TtsPlaybackBridge;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method
