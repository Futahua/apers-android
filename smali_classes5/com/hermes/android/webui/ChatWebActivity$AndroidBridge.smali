.class public final Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;
.super Ljava/lang/Object;
.source "ChatWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/webui/ChatWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AndroidBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hermes/android/webui/ChatWebActivity;


# direct methods
.method public static synthetic $r8$lambda$WVHwQFp3mgf2E2P5iWcv5Cy_-JM(Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->lambda$pollComputer$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ifCByT_dodXNK1VHz7W_QQiXhgM(Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->lambda$sendToComputer$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s6pcLLbD8CmQsMJYaT9B39UzvW0(Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->lambda$ackComputerResults$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xkxw7IO-PBXYA-lGy1De3W1Rqd8(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mopenOriginalApp(Lcom/hermes/android/webui/ChatWebActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/webui/ChatWebActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$ackComputerResults$2(Ljava/lang/String;)V
    .locals 4

    .line 423
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    if-nez p1, :cond_0

    const-string p1, "[]"

    :cond_0
    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 424
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 425
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 426
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 428
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v0}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mgetMeshController(Lcom/hermes/android/webui/ChatWebActivity;)Ljava/lang/Object;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "ack"

    const-class v3, Ljava/util/List;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 434
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 437
    const-string v0, "ChatWebActivity"

    const-string v1, "Computer result acknowledgement failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$pollComputer$1()V
    .locals 10

    const/4 v0, 0x0

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mgetMeshController(Lcom/hermes/android/webui/ChatWebActivity;)Ljava/lang/Object;

    move-result-object v1

    .line 387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "poll"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 388
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 389
    instance-of v3, v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "ok"

    if-eqz v3, :cond_0

    .line 390
    :try_start_1
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 392
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 393
    const-string v8, "id"

    const-string v9, "getId"

    invoke-static {v6, v3, v9}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$sminvokeString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v8, "ref"

    const-string v9, "getRef"

    invoke-static {v6, v3, v9}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$sminvokeString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v9, "getOk"

    .line 396
    invoke-virtual {v6, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 395
    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 397
    const-string v8, "text"

    const-string v9, "getText"

    invoke-static {v6, v3, v9}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$sminvokeString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v8, "getCreated"

    invoke-virtual {v6, v8, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 399
    const-string v6, "created"

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 404
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 405
    const-string v3, "results"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    const-string v3, "onResults"

    invoke-static {v2, v3, v1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mpostComputerEvent(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 408
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x1

    .line 409
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 410
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    const-string v3, "onPollStatus"

    invoke-static {v2, v3, v1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mpostComputerEvent(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 412
    :try_start_2
    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    const-string v3, "onPollError"

    const-string v4, ""

    invoke-static {v2, v1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mrootMessage(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$merrorPayload(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mpostComputerEvent(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 414
    :goto_1
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fgetcomputerPollRunning(Lcom/hermes/android/webui/ChatWebActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v2}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fgetcomputerPollRunning(Lcom/hermes/android/webui/ChatWebActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 415
    throw v1
.end method

.method private synthetic lambda$sendToComputer$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "__APERS_CHAT_V1__:"

    .line 361
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 363
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 365
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v0}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mgetMeshController(Lcom/hermes/android/webui/ChatWebActivity;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "dispatch"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    .line 367
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 368
    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 369
    const-string v0, "ok"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 370
    const-string v0, "conversation_id"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v0, "id"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 373
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v0, p2}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mrootMessage(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$merrorPayload(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 375
    :goto_0
    iget-object p1, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    const-string p2, "onDispatch"

    invoke-static {p1, p2, v1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mpostComputerEvent(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public ackComputerResults(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 421
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge$$ExternalSyntheticLambda1;-><init>(Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;Ljava/lang/String;)V

    const-string p1, "computer-chat-ack"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getHostKind()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 327
    const-string v0, "android"

    return-object v0
.end method

.method public isComputerLinked()Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v0}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mgetMeshController(Lcom/hermes/android/webui/ChatWebActivity;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isPaired"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 340
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mrefreshComputerEndpoints(Lcom/hermes/android/webui/ChatWebActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v0

    :catchall_0
    move-exception v0

    .line 346
    const-string v1, "ChatWebActivity"

    const-string v2, "Computer link status failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public openOriginalApp()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v0}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fgetui(Lcom/hermes/android/webui/ChatWebActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    new-instance v2, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge$$ExternalSyntheticLambda3;-><init>(Lcom/hermes/android/webui/ChatWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pollComputer()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v0}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$fgetcomputerPollRunning(Lcom/hermes/android/webui/ChatWebActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge$$ExternalSyntheticLambda2;-><init>(Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;)V

    const-string v2, "computer-chat-poll"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendToComputer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    invoke-static {v0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$msanitizeConversationId(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    .line 354
    const-string p2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 355
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object p2, p0, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;->this$0:Lcom/hermes/android/webui/ChatWebActivity;

    const-string v0, "Message is empty."

    invoke-static {p2, p1, v0}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$merrorPayload(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "onDispatch"

    invoke-static {p2, v0, p1}, Lcom/hermes/android/webui/ChatWebActivity;->-$$Nest$mpostComputerEvent(Lcom/hermes/android/webui/ChatWebActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 360
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge$$ExternalSyntheticLambda0;-><init>(Lcom/hermes/android/webui/ChatWebActivity$AndroidBridge;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "computer-chat-send"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
