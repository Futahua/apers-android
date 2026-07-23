.class Lcom/hermes/android/webui/ChatWebActivity$1;
.super Landroid/webkit/WebViewClient;
.source "ChatWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/webui/ChatWebActivity;->buildUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hermes/android/webui/ChatWebActivity;


# direct methods
.method constructor <init>(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$1;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$1;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {p1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fgetchatLoaded(Lcom/hermes/android/webui/ChatWebActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const/16 v0, 0x15

    const-string v1, "http://127.0.0.1:8787/"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$1;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fputchatLoaded(Lcom/hermes/android/webui/ChatWebActivity;Z)V

    .line 124
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$1;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {p1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mhideSplash(Lcom/hermes/android/webui/ChatWebActivity;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 130
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$1;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fputchatLoaded(Lcom/hermes/android/webui/ChatWebActivity;Z)V

    .line 132
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$1;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    const-string p2, "Chat server connection lost."

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mshowSplash(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 107
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 109
    const-string v0, "127.0.0.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "localhost"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 113
    :cond_1
    :try_start_0
    iget-object p2, p0, Lcom/hermes/android/webui/ChatWebActivity$1;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Lcom/hermes/android/webui/ChatWebActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No handler for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChatWebActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
