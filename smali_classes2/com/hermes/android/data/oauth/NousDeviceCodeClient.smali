.class public final Lcom/hermes/android/data/oauth/NousDeviceCodeClient;
.super Ljava/lang/Object;
.source "NousDeviceCodeClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/oauth/NousDeviceCodeClient$Companion;,
        Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;,
        Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNousDeviceCodeClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NousDeviceCodeClient.kt\ncom/hermes/android/data/oauth/NousDeviceCodeClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,151:1\n1#2:152\n774#3:153\n865#3,2:154\n*S KotlinDebug\n*F\n+ 1 NousDeviceCodeClient.kt\ncom/hermes/android/data/oauth/NousDeviceCodeClient\n*L\n78#1:153\n78#1:154,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0003\u0011\u0012\u0013B\u001b\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0013\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0086@\u00a2\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/NousDeviceCodeClient;",
        "",
        "portalBaseUrl",
        "",
        "http",
        "Lokhttp3/OkHttpClient;",
        "<init>",
        "(Ljava/lang/String;Lokhttp3/OkHttpClient;)V",
        "requestDeviceCode",
        "Lkotlin/Result;",
        "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;",
        "requestDeviceCode-d1pmJ48",
        "()Ljava/lang/Object;",
        "pollForToken",
        "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;",
        "dc",
        "(Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "DeviceCode",
        "PollResult",
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

.field public static final CLIENT_ID:Ljava/lang/String; = "hermes-cli"

.field public static final Companion:Lcom/hermes/android/data/oauth/NousDeviceCodeClient$Companion;

.field public static final INFERENCE_BASE_URL:Ljava/lang/String; = "https://inference-api.nousresearch.com/v1"

.field private static final POLL_INTERVAL_CAP_SECONDS:I = 0x1

.field public static final PORTAL_BASE_URL:Ljava/lang/String; = "https://portal.nousresearch.com"

.field public static final SCOPE:Ljava/lang/String; = "inference:invoke"

.field private static final SLOW_DOWN_MAX_SECONDS:I = 0x1e


# instance fields
.field private final http:Lokhttp3/OkHttpClient;

.field private final portalBaseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->Companion:Lcom/hermes/android/data/oauth/NousDeviceCodeClient$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/OkHttpClient;)V
    .locals 1

    const-string v0, "portalBaseUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->portalBaseUrl:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->http:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lokhttp3/OkHttpClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 21
    const-string p1, "https://portal.nousresearch.com"

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 22
    sget-object p2, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->Companion:Lcom/hermes/android/data/oauth/NousDeviceCodeClient$Companion;

    invoke-static {p2}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$Companion;->access$defaultClient(Lcom/hermes/android/data/oauth/NousDeviceCodeClient$Companion;)Lokhttp3/OkHttpClient;

    move-result-object p2

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public static final synthetic access$getHttp$p(Lcom/hermes/android/data/oauth/NousDeviceCodeClient;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->http:Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method public final pollForToken(Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;

    iget v2, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;-><init>(Lcom/hermes/android/data/oauth/NousDeviceCodeClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 98
    iget v4, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->label:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_8

    if-eq v4, v11, :cond_7

    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_3

    if-ne v4, v5, :cond_2

    iget v4, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->I$0:I

    iget-wide v12, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->J$0:J

    iget-object v14, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    iget-object v15, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v5

    :cond_1
    move-object v0, v14

    move-object v14, v15

    move/from16 v18, v4

    move-object v4, v1

    move/from16 v1, v18

    goto/16 :goto_8

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v4, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->I$0:I

    iget-wide v12, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->J$0:J

    iget-object v14, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    iget-object v15, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v6

    :cond_4
    move-object v0, v14

    move-object v14, v15

    move/from16 v18, v4

    move-object v4, v1

    move/from16 v1, v18

    goto/16 :goto_6

    :cond_5
    iget v4, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->I$0:I

    iget-wide v12, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->J$0:J

    iget-object v14, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    iget-object v15, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_6
    move-object v0, v14

    move-object v14, v15

    move/from16 v18, v4

    move-object v4, v1

    move/from16 v1, v18

    goto/16 :goto_a

    :cond_7
    iget v4, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->I$0:I

    iget-wide v12, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->J$0:J

    iget-object v14, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    iget-object v15, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move v7, v5

    goto/16 :goto_9

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_8
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->getExpiresIn()I

    move-result v0

    invoke-static {v0, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    int-to-long v14, v0

    const-wide/32 v16, 0x3b9aca00

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->getInterval()I

    move-result v0

    invoke-static {v0, v11, v11}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    move-object v4, v1

    move-object v14, v2

    move v1, v0

    move-object/from16 v0, p1

    .line 101
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    cmp-long v15, v15, v12

    if-gez v15, :cond_14

    .line 102
    new-instance v15, Lokhttp3/FormBody$Builder;

    invoke-direct {v15, v10, v11, v10}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    const-string v7, "grant_type"

    const-string v5, "urn:ietf:params:oauth:grant-type:device_code"

    invoke-virtual {v15, v7, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 104
    const-string v7, "client_id"

    const-string v15, "hermes-cli"

    invoke-virtual {v5, v7, v15}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 105
    const-string v7, "device_code"

    invoke-virtual {v0}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;->getDeviceCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v7, v15}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v5

    .line 106
    invoke-virtual {v5}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v5

    .line 107
    new-instance v7, Lokhttp3/Request$Builder;

    invoke-direct {v7}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v15, v14, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->portalBaseUrl:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "/api/oauth/token"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    check-cast v5, Lokhttp3/RequestBody;

    invoke-virtual {v6, v5}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 109
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$2;

    invoke-direct {v7, v14, v5, v10}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$2;-><init>(Lcom/hermes/android/data/oauth/NousDeviceCodeClient;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iput-object v14, v4, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$0:Ljava/lang/Object;

    iput-object v0, v4, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$1:Ljava/lang/Object;

    iput-wide v12, v4, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->J$0:J

    iput v1, v4, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->I$0:I

    iput v11, v4, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->label:I

    invoke-static {v6, v7, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-ne v5, v3, :cond_9

    return-object v3

    :cond_9
    move-object v15, v14

    move-object v14, v0

    move-object v0, v5

    move-object/from16 v18, v4

    move v4, v1

    move-object/from16 v1, v18

    :goto_2
    :try_start_2
    check-cast v0, Lkotlin/Pair;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_d

    .line 124
    :try_start_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v15, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v10, v0

    :goto_4
    check-cast v10, Lorg/json/JSONObject;

    const-string v0, "invalid_response"

    if-nez v10, :cond_b

    .line 125
    new-instance v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;

    const-string v3, "Token response was not JSON"

    invoke-direct {v1, v0, v3}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 126
    :cond_b
    const-string v1, "access_token"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 127
    new-instance v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;

    .line 128
    const-string v3, "Token response did not include access_token"

    .line 127
    invoke-direct {v1, v0, v3}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 130
    :cond_c
    new-instance v0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;

    invoke-direct {v0, v10}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 133
    :cond_d
    :try_start_4
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v6, v15

    check-cast v6, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move-object v0, v10

    :cond_e
    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_f

    .line 134
    new-instance v0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Token endpoint returned a non-JSON error response"

    .line 134
    invoke-direct {v0, v1, v3}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 136
    :cond_f
    const-string v5, "error"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    const-string v6, "authorization_pending"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    int-to-long v5, v4

    mul-long/2addr v5, v8

    iput-object v15, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$0:Ljava/lang/Object;

    iput-object v14, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$1:Ljava/lang/Object;

    iput-wide v12, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->J$0:J

    iput v4, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->I$0:I

    const/4 v7, 0x3

    iput v7, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->label:I

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :goto_6
    move v6, v7

    const/4 v5, 0x4

    :goto_7
    const/4 v7, 0x2

    goto/16 :goto_1

    :cond_10
    const/4 v7, 0x3

    .line 138
    const-string v6, "slow_down"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    add-int/lit8 v4, v4, 0x1

    const/16 v0, 0x1e

    .line 139
    invoke-static {v4, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v4

    int-to-long v5, v4

    mul-long/2addr v5, v8

    .line 140
    iput-object v15, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$0:Ljava/lang/Object;

    iput-object v14, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$1:Ljava/lang/Object;

    iput-wide v12, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->J$0:J

    iput v4, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->I$0:I

    const/4 v7, 0x4

    iput v7, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->label:I

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_1

    return-object v3

    :goto_8
    move v5, v7

    const/4 v6, 0x3

    goto :goto_7

    .line 143
    :cond_11
    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v5, "unknown_error"

    :cond_12
    const-string v1, "ifBlank(...)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    .line 144
    const-string v3, "error_description"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v0, "Unknown authentication error"

    :cond_13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    .line 142
    new-instance v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;

    invoke-direct {v1, v5, v0}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_2
    const/4 v7, 0x4

    goto :goto_9

    :catch_3
    const/4 v7, 0x4

    move-object v15, v14

    move-object v14, v0

    move-object/from16 v18, v4

    move v4, v1

    move-object/from16 v1, v18

    :goto_9
    int-to-long v5, v4

    mul-long/2addr v5, v8

    .line 119
    iput-object v15, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$0:Ljava/lang/Object;

    iput-object v14, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->L$1:Ljava/lang/Object;

    iput-wide v12, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->J$0:J

    iput v4, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->I$0:I

    const/4 v7, 0x2

    iput v7, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$pollForToken$1;->label:I

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    return-object v3

    :goto_a
    const/4 v5, 0x4

    const/4 v6, 0x3

    goto/16 :goto_1

    .line 113
    :goto_b
    throw v0

    .line 148
    :cond_14
    sget-object v0, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Expired;->INSTANCE:Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Expired;

    return-object v0
.end method

.method public final requestDeviceCode-d1pmJ48()Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    .line 64
    const-string v0, "interval"

    const-string v2, "expires_in"

    const-string v3, "verification_uri_complete"

    const-string v4, "verification_uri"

    const-string v5, "user_code"

    const-string v6, "device_code"

    const-string v7, "getString(...)"

    .line 0
    const-string v8, "Device code request failed: HTTP "

    .line 64
    :try_start_0
    sget-object v9, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v9, v1

    check-cast v9, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;

    .line 65
    new-instance v9, Lokhttp3/FormBody$Builder;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v9, v11, v10, v11}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    const-string v12, "client_id"

    const-string v13, "hermes-cli"

    invoke-virtual {v9, v12, v13}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v9

    .line 67
    const-string v12, "scope"

    const-string v13, "inference:invoke"

    invoke-virtual {v9, v12, v13}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v9

    .line 68
    invoke-virtual {v9}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v9

    .line 69
    new-instance v12, Lokhttp3/Request$Builder;

    invoke-direct {v12}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v13, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->portalBaseUrl:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/api/oauth/device/code"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v12

    check-cast v9, Lokhttp3/RequestBody;

    invoke-virtual {v12, v9}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    .line 70
    iget-object v12, v1, Lcom/hermes/android/data/oauth/NousDeviceCodeClient;->http:Lokhttp3/OkHttpClient;

    invoke-virtual {v12, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v9

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v12, v9

    check-cast v12, Lokhttp3/Response;

    .line 71
    invoke-virtual {v12}, Lokhttp3/Response;->isSuccessful()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 72
    invoke-virtual {v12}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v11

    :goto_0
    move-object v12, v8

    check-cast v12, Ljava/lang/CharSequence;

    if-eqz v12, :cond_1

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    move-object v8, v11

    :cond_2
    if-eqz v8, :cond_6

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x6

    .line 75
    new-array v8, v8, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v8, v13

    aput-object v5, v8, v10

    const/4 v10, 0x2

    aput-object v4, v8, v10

    const/4 v10, 0x3

    .line 76
    aput-object v3, v8, v10

    const/4 v10, 0x4

    aput-object v2, v8, v10

    const/4 v10, 0x5

    aput-object v0, v8, v10

    .line 74
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 78
    check-cast v8, Ljava/lang/Iterable;

    .line 153
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .line 154
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ljava/lang/String;

    .line 78
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 154
    invoke-interface {v10, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_4
    check-cast v10, Ljava/util/List;

    .line 79
    move-object v8, v10

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 82
    new-instance v8, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;

    .line 83
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 88
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    move-object v13, v8

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    .line 82
    invoke-direct/range {v13 .. v19}, Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    :try_start_2
    invoke-static {v9, v11}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 64
    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 79
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    const/16 v18, 0x3f

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device code response missing fields: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 73
    const-string v2, "Empty device code response"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v12}, Lokhttp3/Response;->code()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 70
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 64
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0
.end method
