.class Lcom/hermes/android/webui/ChatWebActivity$2;
.super Landroid/webkit/WebChromeClient;
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

    .line 123
    iput-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$2;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$2;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {p1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fgetpendingFileChooser(Lcom/hermes/android/webui/ChatWebActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$2;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {p1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fgetpendingFileChooser(Lcom/hermes/android/webui/ChatWebActivity;)Landroid/webkit/ValueCallback;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$2;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fputpendingFileChooser(Lcom/hermes/android/webui/ChatWebActivity;Landroid/webkit/ValueCallback;)V

    .line 132
    :try_start_0
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/hermes/android/webui/ChatWebActivity$2;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    const/16 p3, 0x1267

    invoke-virtual {p2, p1, p3}, Lcom/hermes/android/webui/ChatWebActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    .line 136
    :catch_0
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$2;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {p1, v0}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fputpendingFileChooser(Lcom/hermes/android/webui/ChatWebActivity;Landroid/webkit/ValueCallback;)V

    const/4 p1, 0x0

    return p1
.end method
