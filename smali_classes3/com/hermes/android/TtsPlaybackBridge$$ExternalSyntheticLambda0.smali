.class public final synthetic Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/TtsPlaybackBridge;

.field public final synthetic f$1:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda0;->f$0:Lcom/hermes/android/TtsPlaybackBridge;

    iput-object p2, p0, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda0;->f$0:Lcom/hermes/android/TtsPlaybackBridge;

    iget-object v1, p0, Lcom/hermes/android/TtsPlaybackBridge$$ExternalSyntheticLambda0;->f$1:Landroid/media/MediaPlayer;

    invoke-static {v0, v1, p1}, Lcom/hermes/android/TtsPlaybackBridge;->$r8$lambda$eq_pxEmMZd3vB8ShsJe5PfUyehY(Lcom/hermes/android/TtsPlaybackBridge;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    return-void
.end method
