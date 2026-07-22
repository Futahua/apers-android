.class public final synthetic Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/TtsPlaybackBridge;

.field public final synthetic f$1:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda1;->f$0:Lcom/hermes/android/TtsPlaybackBridge;

    iput-object p2, p0, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda1;->f$0:Lcom/hermes/android/TtsPlaybackBridge;

    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaPlayer;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/hermes/android/TtsPlaybackBridge;->$r8$lambda$he7xv-v-f3OxplChgP9z2n9lVjY(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
