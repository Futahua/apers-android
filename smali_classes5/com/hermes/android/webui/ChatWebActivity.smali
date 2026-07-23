.class public Lcom/hermes/android/webui/ChatWebActivity;
.super Landroid/app/Activity;
.source "ChatWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;
    }
.end annotation


# static fields
.field private static final BOOT_TIMEOUT_MS:I = 0x1d4c0

.field private static final COLOR_ACCENT:I

.field private static final COLOR_CANVAS:I

.field private static final COLOR_DIM:I

.field private static final COLOR_INK:I

.field private static final COLOR_SURFACE:I

.field private static final ENDPOINT_REFRESH_INTERVAL_MS:J = 0x493e0L

.field private static final REQ_FILE_CHOOSER:I = 0x1267

.field private static final TAG:Ljava/lang/String; = "ChatWebActivity"


# instance fields
.field private volatile booting:Z

.field private volatile chatLoaded:Z

.field private final computerPollRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final endpointRefreshRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile lastEndpointRefreshAt:J

.field private volatile meshController:Ljava/lang/Object;

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

.method public static synthetic $r8$lambda$P2CGC24tXbG9CuKzOsJvG2Rc0n4(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$bootSequence$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ROf2UJ8EGw7td2A2hCwEg8N3clk(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$onBackPressed$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SSw4syM_YU7LJXrlkuKaGJgeimo(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->bootSequence()V

    return-void
.end method

.method public static synthetic $r8$lambda$_Y0AqZx99mxxoHXXTcESExFLKoA(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$refreshComputerEndpoints$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$lm7RhjgJEbcKpyFWd5eH6G5xcPI(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$postComputerEvent$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lx1sdh99rRxSBJc1oN6kQUiRJLg(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->lambda$onResume$8()V

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

.method static bridge synthetic -$$Nest$fgetcomputerPollRunning(Lcom/hermes/android/webui/ChatWebActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/hermes/android/webui/ChatWebActivity;->computerPollRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpendingFileChooser(Lcom/hermes/android/webui/ChatWebActivity;)Landroid/webkit/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/hermes/android/webui/ChatWebActivity;->pendingFileChooser:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetui(Lcom/hermes/android/webui/ChatWebActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

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

.method static bridge synthetic -$$Nest$merrorPayload(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->errorPayload(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMeshController(Lcom/hermes/android/webui/ChatWebActivity;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->getMeshController()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideSplash(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->hideSplash()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenOriginalApp(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->openOriginalApp()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostComputerEvent(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->postComputerEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshComputerEndpoints(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->refreshComputerEndpoints()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrootMessage(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->rootMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msanitizeConversationId(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->sanitizeConversationId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowSplash(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sminvokeString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->invokeString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "#0a0a18"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_CANVAS:I

    .line 55
    const-string v0, "#f3f0e8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_INK:I

    .line 56
    const-string v0, "#8a86a0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_DIM:I

    .line 57
    const-string v0, "#cf806d"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_ACCENT:I

    .line 58
    const-string v0, "#1a1a30"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_SURFACE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->chatLoaded:Z

    .line 68
    iput-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->computerPollRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->endpointRefreshRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->lastEndpointRefreshAt:J

    return-void
.end method

.method private bootSequence()V
    .locals 7

    .line 252
    const-string v0, "ChatWebActivity"

    .line 0
    const-string v1, "Could not start chat server: "

    const-string v2, "Could not install chat files: "

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 252
    :try_start_0
    invoke-static {p0}, Lcom/hermes/android/webui/WebUiServer;->ensureSeeded(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :try_start_1
    invoke-static {}, Lcom/hermes/android/webui/WebUiServer;->isHealthy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    const-string v2, "Starting chat server\u2026"

    invoke-direct {p0, v2, v4}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :try_start_2
    invoke-static {p0}, Lcom/hermes/android/webui/WebUiServer;->start(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 263
    :try_start_3
    const-string v5, "Server start failed"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
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

    .line 285
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    .line 268
    :cond_0
    :goto_0
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v5, 0x1d4c0

    add-long/2addr v0, v5

    .line 269
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v2, v5, v0

    if-gez v2, :cond_2

    .line 270
    invoke-static {}, Lcom/hermes/android/webui/WebUiServer;->isHealthy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda8;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    :cond_1
    const-wide/16 v5, 0x2bc

    .line 278
    :try_start_5
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 285
    :catch_1
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    .line 283
    :cond_2
    :try_start_6
    const-string v0, "Chat server did not come up.\nOpen the original app \u2192 terminal for details."

    invoke-direct {p0, v0, v3}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 285
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    .line 254
    :try_start_7
    const-string v5, "Seeding failed"

    invoke-static {v0, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
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

    .line 285
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    return-void

    :goto_2
    iput-boolean v4, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    .line 286
    throw v0
.end method

.method private buildUi()V
    .locals 12

    .line 93
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    sget v1, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_CANVAS:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 96
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    .line 97
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 98
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 100
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 101
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v4, 0x0

    .line 102
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 103
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;

    invoke-direct {v5, p0}, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    const-string v6, "ApersAndroid"

    invoke-virtual {v2, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/hermes/android/webui/ChatWebActivity$1;

    invoke-direct {v5, p0}, Lcom/hermes/android/webui/ChatWebActivity$1;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 136
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/hermes/android/webui/ChatWebActivity$2;

    invoke-direct {v5, p0}, Lcom/hermes/android/webui/ChatWebActivity$2;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 154
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    .line 158
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 160
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v1, 0x20

    .line 161
    invoke-direct {p0, v1}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 164
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    const-string v2, "Papers"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    sget v2, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_INK:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41e00000    # 28.0f

    const/4 v8, 0x2

    .line 167
    invoke-virtual {v1, v8, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    iget-object v7, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    const/16 v9, 0xc

    invoke-direct {p0, v9}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v10

    invoke-direct {p0, v4, v10}, Lcom/hermes/android/webui/ChatWebActivity;->wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 173
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v7, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_ACCENT:I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 176
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

    .line 178
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    .line 179
    const-string v3, "Starting chat\u2026"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    sget v3, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_DIM:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 183
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    const/16 v5, 0x18

    invoke-direct {p0, v5}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/hermes/android/webui/ChatWebActivity;->wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    sget v1, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_ACCENT:I

    const-string v3, "#201015"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const-string v5, "Retry"

    invoke-direct {p0, v5, v1, v3}, Lcom/hermes/android/webui/ChatWebActivity;->makeButton(Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    .line 186
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    new-instance v3, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda4;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    invoke-direct {p0, v9}, Lcom/hermes/android/webui/ChatWebActivity;->dp(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/hermes/android/webui/ChatWebActivity;->wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    const-string v1, "Open original app"

    sget v3, Lcom/hermes/android/webui/ChatWebActivity;->COLOR_SURFACE:I

    invoke-direct {p0, v1, v3, v2}, Lcom/hermes/android/webui/ChatWebActivity;->makeButton(Ljava/lang/String;II)Landroid/widget/Button;

    move-result-object v1

    .line 195
    new-instance v2, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda5;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v4}, Lcom/hermes/android/webui/ChatWebActivity;->wrapParams(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-virtual {p0, v0}, Lcom/hermes/android/webui/ChatWebActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private dp(I)I
    .locals 1

    int-to-float p1, p1

    .line 224
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

.method private errorPayload(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 493
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 495
    :try_start_0
    const-string v1, "ok"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 496
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    const-string p1, "error"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private declared-synchronized getMeshController()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->meshController:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 445
    const-string v0, "com.hermes.android.mesh.MeshController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 446
    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->meshController:Ljava/lang/Object;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->meshController:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private hideSplash()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda2;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static invokeString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    .line 489
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isBootstrapInstalled()Z
    .locals 4

    .line 293
    :try_start_0
    const-string v0, "com.hermes.android.BootstrapManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 294
    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 295
    const-string v2, "isInstalled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 298
    const-string v1, "ChatWebActivity"

    const-string v2, "isInstalled reflection failed; falling back to native UI"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$bootSequence$4()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    const-string v1, "Loading chat\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    const-string v1, "http://127.0.0.1:8787/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$buildUi$0(Landroid/view/View;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    const-string v0, "Starting chat\u2026"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->startBoot()V

    return-void
.end method

.method private synthetic lambda$buildUi$1(Landroid/view/View;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->openOriginalApp()V

    return-void
.end method

.method private synthetic lambda$hideSplash$3()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onBackPressed$7(Ljava/lang/String;)V
    .locals 1

    .line 541
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 542
    invoke-virtual {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$8()V
    .locals 2

    .line 553
    invoke-static {}, Lcom/hermes/android/webui/WebUiServer;->isHealthy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->chatLoaded:Z

    .line 555
    const-string v1, "Restarting chat server\u2026"

    invoke-direct {p0, v1, v0}, Lcom/hermes/android/webui/ChatWebActivity;->showSplash(Ljava/lang/String;Z)V

    .line 556
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->startBoot()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$postComputerEvent$6(Ljava/lang/String;)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 523
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$refreshComputerEndpoints$5()V
    .locals 7

    const-string v0, "Computer endpoint refresh skipped: "

    const/4 v1, 0x0

    .line 459
    :try_start_0
    const-string v2, "com.hermes.android.handoff.AutoPair"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 460
    const-string v3, "discover"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v3, 0x640

    .line 461
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 462
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 463
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->getMeshController()Ljava/lang/Object;

    move-result-object v3

    .line 465
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "pairFromQr"

    const-class v6, Ljava/lang/String;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 466
    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 469
    :try_start_1
    const-string v3, "ChatWebActivity"

    invoke-direct {p0, v2}, Lcom/hermes/android/webui/ChatWebActivity;->rootMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 471
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->lastEndpointRefreshAt:J

    .line 472
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->endpointRefreshRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1
    move-exception v0

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->lastEndpointRefreshAt:J

    .line 472
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->endpointRefreshRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 473
    throw v0
.end method

.method private synthetic lambda$showSplash$2(Ljava/lang/String;Z)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->splashStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->retryButton:Landroid/widget/Button;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->splash:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private makeButton(Ljava/lang/String;II)Landroid/widget/Button;
    .locals 2

    .line 205
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 207
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 208
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 209
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/16 p1, 0x18

    .line 210
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

.method private openOriginalApp()V
    .locals 2

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    const-string v1, "com.hermes.android.MainActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Lcom/hermes/android/webui/ChatWebActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private postComputerEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 515
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2028

    .line 516
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u2028"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2029

    .line 517
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u2029"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function(){var h=window.ApersComputerChat;if(h&&typeof h."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "===\'function\'){h."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");}})();"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 521
    iget-object p2, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

    new-instance v0, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda9;-><init>(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshComputerEndpoints()V
    .locals 4

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 453
    iget-wide v2, p0, Lcom/hermes/android/webui/ChatWebActivity;->lastEndpointRefreshAt:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->endpointRefreshRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 454
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    const-string v2, "computer-endpoint-refresh"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private rootMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 505
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 508
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private sanitizeConversationId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    .line 478
    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 479
    :goto_0
    const-string v0, "[^A-Za-z0-9._:-]"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const-string p1, "phone-main"

    .line 483
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa0

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private showSplash(Ljava/lang/String;Z)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startBoot()V
    .locals 3

    .line 242
    iget-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->booting:Z

    .line 246
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda6;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    const-string v2, "webui-boot"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startHermesService()V
    .locals 3

    .line 305
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    const-string v1, "com.hermes.android.HermesService"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Lcom/hermes/android/webui/ChatWebActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 309
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

    .line 215
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 217
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 218
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 p1, 0x1

    .line 219
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x1267

    if-ne p1, v0, :cond_1

    .line 565
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->pendingFileChooser:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_0

    .line 567
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p2

    .line 566
    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 568
    iput-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity;->pendingFileChooser:Landroid/webkit/ValueCallback;

    :cond_0
    return-void

    .line 572
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 533
    invoke-virtual {p0, v0}, Lcom/hermes/android/webui/ChatWebActivity;->moveTaskToBack(Z)Z

    return-void

    .line 536
    :cond_0
    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda7;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    const-string v2, "(function(){var c=window.ApersAndroidChrome;return !!(c&&typeof c.closeSidebarIfOpen===\'function\'&&c.closeSidebarIfOpen());})()"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->isBootstrapInstalled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    const-string p1, "ChatWebActivity"

    const-string v0, "Bootstrap not installed; forwarding to native MainActivity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->openOriginalApp()V

    .line 81
    invoke-virtual {p0}, Lcom/hermes/android/webui/ChatWebActivity;->finish()V

    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->startHermesService()V

    .line 85
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->buildUi()V

    .line 86
    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity;->startBoot()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 580
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 550
    iget-boolean v0, p0, Lcom/hermes/android/webui/ChatWebActivity;->chatLoaded:Z

    if-eqz v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$$ExternalSyntheticLambda3;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    const-string v2, "webui-resume-check"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
