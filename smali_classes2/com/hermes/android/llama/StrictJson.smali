.class public final Lcom/hermes/android/llama/StrictJson;
.super Ljava/lang/Object;
.source "StrictJson.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/llama/StrictJson$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrictJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StrictJson.kt\ncom/hermes/android/llama/StrictJson\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/hermes/android/llama/StrictJson;",
        "",
        "<init>",
        "()V",
        "parseObject",
        "Lorg/json/JSONObject;",
        "text",
        "",
        "parseArray",
        "Lorg/json/JSONArray;",
        "isStrictTopLevel",
        "",
        "topOpen",
        "",
        "MAX_DEPTH",
        "",
        "JSON_WS",
        "Parser",
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
.field public static final $stable:I = 0x0

.field public static final INSTANCE:Lcom/hermes/android/llama/StrictJson;

.field private static final JSON_WS:Ljava/lang/String; = " \t\n\r"

.field private static final MAX_DEPTH:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/llama/StrictJson;

    invoke-direct {v0}, Lcom/hermes/android/llama/StrictJson;-><init>()V

    sput-object v0, Lcom/hermes/android/llama/StrictJson;->INSTANCE:Lcom/hermes/android/llama/StrictJson;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isStrictTopLevel(Ljava/lang/String;C)Z
    .locals 4

    .line 34
    new-instance v0, Lcom/hermes/android/llama/StrictJson$Parser;

    invoke-direct {v0, p1}, Lcom/hermes/android/llama/StrictJson$Parser;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 36
    invoke-virtual {v0}, Lcom/hermes/android/llama/StrictJson$Parser;->getPos()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/hermes/android/llama/StrictJson$Parser;->getPos()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/hermes/android/llama/StrictJson$Parser;->value()Z

    move-result p2

    if-nez p2, :cond_1

    return v3

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/hermes/android/llama/StrictJson$Parser;->skipWs()V

    .line 39
    invoke-virtual {v0}, Lcom/hermes/android/llama/StrictJson$Parser;->getPos()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p2, p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_0
    return v3
.end method


# virtual methods
.method public final parseArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/hermes/android/llama/StrictJson;

    const/16 v1, 0x5b

    invoke-direct {p0, p1, v1}, Lcom/hermes/android/llama/StrictJson;->isStrictTopLevel(Ljava/lang/String;C)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p1

    :goto_2
    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public final parseObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/hermes/android/llama/StrictJson;

    const/16 v1, 0x7b

    invoke-direct {p0, p1, v1}, Lcom/hermes/android/llama/StrictJson;->isStrictTopLevel(Ljava/lang/String;C)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, p1

    :goto_2
    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method
