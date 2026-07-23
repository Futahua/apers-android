.class public Lcom/hermes/android/webui/ChatWebActivity;
.super Landroid/app/Activity;
.source "ChatWebActivity.java"


# static fields
.field private static final BOOT_TIMEOUT_MS:I = 0x1d4c0

.field private static final COLOR_ACCENT:I

.field private static final COLOR_CANVAS:I

.field private static final COLOR_DIM:I

.field private static final COLOR_INK:I

.field private static final COLOR_SURFACE:I

.field private static final REQ_FILE_CHOOSER:I = 0x1267

.field private static final TAG:Ljava/lang/String; = "ChatWebActivity"


# instance fields
.field private volatile booting:Z

.field private volatile chatLoaded:Z

.field private pendingFileChooser:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private retryButton:Landroid/widget/Button;

.field private splash:Landroid/widget/LinearLayout;

.field private splashStatus:Landroid/widget/TextView;

.field private final ui:Landroid/os/Handler;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$9R7yxQVY4VCz8XjD6glI3Hihw9k(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$showSplash$2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$FbBUJeJm8Bs-lqSK4tghc5e0O7g(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$onResume$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$P2CGC24tXbG9CuKzOsJvG2Rc0n4(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$bootSequence$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$SSw4syM_YU7LJXrlkuKaGJgeimo(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->bootSequence()V

    return-void
.end method

.method public static synthetic $r8$lambda$kfVvWBGRe5xO85XSLnBcax7gb-M(Lcom/hermes/android/webui/ChatWebActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$onBackPressed$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ooiSfqetdzqKVvCc--y4IA8OhwU(Lcom/hermes/android/webui/ChatWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$buildUi$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$syr_jx17WEBf_vEgars1U6caLk4(Lcom/hermes/android/webui/ChatWebActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$buildUi$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uQBpThOaeMDt4YEVbC_r9__IQ-8(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$hideSplash$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetchatLoaded(Lcom/hermes/android/webui/ChatWebActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hermes/android/webui/ChatWebActivity;->chatLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingFileChooser(Lcom/hermes/android/webui/ChatWebActivity;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/hermes/android/webui/ChatWebActivity;->pendingFileChooser:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputchatLoaded(Lcom/hermes/android/webui/ChatWebActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->chatLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpendingFileChooser(Lcom/hermes/android/webui/ChatWebActivity;Landroid/webkit/ValueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->pendingFileChooser:Landroid/webkit/ValueCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideSplash(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->hideSplash()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSplash(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "#0a0a18"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_CANVAS:I

    .line 47
    const-string v0, "#f3f0e8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_INK:I

    .line 48
    const-string v0, "#8a86a0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_DIM:I

    .line 49
    const-string v0, "#cf806d"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_ACCENT:I

    .line 50
    const-string v0, "#1a1a30"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_SURFACE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->chatLoaded:Z

    .line 60
    iput-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void
.end method

.method private bootSequence()V
    .locals 7

    .line 239
    const-string v0, "ChatWebActivity"

    .line 0
    const-string v1, "Could not start chat server: "

    const-string v2, "Could not install chat files: "

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 239
    :try_start_0
    invoke-static {p0}, Lcom/hermes/android/webui/WebUiServer;->ensureSeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    invoke-static {}, Lcom/hermes/android/webui/WebUiServer;->isHealthy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    const-string v2, "Starting chat server\u2026"

    invoke-direct {p0, v2, v4}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    invoke-static {p0}, Lcom/hermes/android/webui/WebUiServer;->start(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 250
    :try_start_3
    const-string v5, "Server start failed"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    .line 255
    :cond_0
    :goto_0
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v0, v5

    .line 256
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v2, v5, v0

    if-gez v2, :cond_2

    .line 257
    invoke-static {}, Lcom/hermes/android/webui/WebUiServer;->isHealthy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda7;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 272
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    :cond_1
    const-wide/16 v5, 0x2bc

    .line 265
    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 272
    :catch_1
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    .line 270
    :cond_2
    :try_start_6
    const-string v0, "Chat server did not come up.\nCheck Diagnostics \u2192 terminal for details."

    invoke-direct {p0, v0, v3}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 272
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    .line 241
    :try_start_7
    const-string v5, "Seeding failed"

    invoke-static {v0, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 272
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    :goto_2
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    .line 273
    throw v0
.end method

.method private buildUi()V
    .locals 12

    .line 81
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    sget v1, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_CANVAS:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 84
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    .line 85
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 86
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    .line 87
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 88
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 89
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v4, 0x0

    .line 90
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 91
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/hermes/android/webui/ChatWebActivity$1;

    invoke-direct {v5, p0}, Lcom/hermes/android/webui/ChatWebActivity$1;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/hermes/android/webui/ChatWebActivity$2;

    invoke-direct {v5, p0}, Lcom/hermes/android/webui/ChatWebActivity$2;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 141
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    .line 145
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 146
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 147
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v1, 0x20

    .line 148
    invoke-direct {p0, v1}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v1

    .line 149
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 151
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 152
    const-string v2, "Papers"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    sget v2, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_INK:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41e00000    # 28.0f

    const/4 v8, 0x2

    .line 154
    invoke-virtual {v1, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    iget-object v7, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    const/16 v9, 0xc

    invoke-direct {p0, v9}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v10

    invoke-direct {p0, v4, v10}, Lcom/hermes/android/webui/ChatWebActivity;->wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 160
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v7, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_ACCENT:I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 163
    :cond_0
    iget-object v3, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v10

    const/16 v11, 0x10

    invoke-direct {p0, v11}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/hermes/android/webui/ChatWebActivity;->wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    .line 166
    const-string v3, "Starting chat\u2026"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    sget v3, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_DIM:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 169
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    const/16 v5, 0x18

    invoke-direct {p0, v5}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/hermes/android/webui/ChatWebActivity;->wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    sget v1, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_ACCENT:I

    const-string v3, "#201015"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v5, "Retry"

    invoke-direct {p0, v5, v1, v3}, Lcom/hermes/android/webui/ChatWebActivity;->makeButton(Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    .line 173
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    new-instance v3, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda3;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    invoke-direct {p0, v9}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/hermes/android/webui/ChatWebActivity;->wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const-string v1, "Diagnostics"

    sget v3, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_SURFACE:I

    invoke-direct {p0, v1, v3, v2}, Lcom/hermes/android/webui/ChatWebActivity;->makeButton(Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v1

    .line 182
    new-instance v2, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda4;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v4}, Lcom/hermes/android/webui/ChatWebActivity;->wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/hermes/android/webui/ChatWebActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 211
    invoke-virtual {p0}, Lcom/hermes/android/webui/ChatWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private hideSplash()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isBootstrapInstalled()Z
    .locals 4

    .line 280
    :try_start_0
    const-string v0, "com.hermes.android.BootstrapManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 281
    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    const-string v2, "isInstalled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 285
    const-string v1, "ChatWebActivity"

    const-string v2, "isInstalled reflection failed; falling back to native UI"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$bootSequence$4()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    const-string v1, "Loading chat\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "http://127.0.0.1:8787/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$buildUi$0(Landroid/view/View;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    const-string v0, "Starting chat\u2026"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->startBoot()V

    return-void
.end method

.method private synthetic lambda$buildUi$1(Landroid/view/View;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->openDiagnostics()V

    return-void
.end method

.method private synthetic lambda$hideSplash$3()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onBackPressed$5(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->openDiagnostics()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 320
    invoke-virtual {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->moveTaskToBack(Z)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$onResume$6()V
    .locals 2

    .line 333
    invoke-static {}, Lcom/hermes/android/webui/WebUiServer;->isHealthy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->chatLoaded:Z

    .line 335
    const-string v1, "Restarting chat server\u2026"

    invoke-direct {p0, v1, v0}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V

    .line 336
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->startBoot()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSplash$2(Ljava/lang/String;Z)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private makeButton(Ljava/lang/String;II)Landroid/widget/Button;
    .locals 2

    .line 192
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 195
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 196
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/16 p1, 0x18

    .line 197
    invoke-direct {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result p2

    const/16 p3, 0xa

    invoke-direct {p0, p3}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, p3}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result p3

    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/widget/Button;->setPadding(IIII)V

    return-object v0
.end method

.method private openDiagnostics()V
    .locals 2

    .line 301
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    const-string v1, "com.hermes.android.MainActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0, v0}, Lcom/hermes/android/webui/ChatWebActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showSplash(Ljava/lang/String;Z)V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startBoot()V
    .locals 3

    .line 229
    iget-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    .line 233
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda5;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    const-string v2, "webui-boot"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startHermesService()V
    .locals 3

    .line 292
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    const-string v1, "com.hermes.android.HermesService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0}, Lcom/hermes/android/webui/ChatWebActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HermesService start failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChatWebActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 202
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 205
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 p1, 0x1

    .line 206
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x1267

    if-ne p1, v0, :cond_1

    .line 345
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->pendingFileChooser:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_0

    .line 347
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    .line 346
    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 348
    iput-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->pendingFileChooser:Landroid/webkit/ValueCallback;

    :cond_0
    return-void

    .line 352
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 314
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Papers"

    .line 315
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Open diagnostics"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Leave chat"

    aput-object v3, v1, v2

    new-instance v2, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda6;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    .line 323
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->isBootstrapInstalled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    const-string p1, "ChatWebActivity"

    const-string v0, "Bootstrap not installed; forwarding to native MainActivity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->openDiagnostics()V

    .line 69
    invoke-virtual {p0}, Lcom/hermes/android/webui/ChatWebActivity;->finish()V

    return-void

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->startHermesService()V

    .line 73
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->buildUi()V

    .line 74
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->startBoot()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 360
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 330
    iget-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->chatLoaded:Z

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda2;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    const-string v2, "webui-resume-check"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
