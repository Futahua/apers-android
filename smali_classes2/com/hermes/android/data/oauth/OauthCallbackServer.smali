.class public final Lcom/hermes/android/data/oauth/OauthCallbackServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "OauthCallbackServer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/oauth/OauthCallbackServer$Companion;,
        Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0014\u0010\u000f\u001a\u00020\u0010*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u000bH\u0002J\u0008\u0010\u001a\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/OauthCallbackServer;",
        "Lfi/iki/elonen/NanoHTTPD;",
        "expectedState",
        "",
        "callbackPath",
        "port",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;I)V",
        "deferred",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;",
        "allowedOrigin",
        "session",
        "Lfi/iki/elonen/NanoHTTPD$IHTTPSession;",
        "withCors",
        "Lfi/iki/elonen/NanoHTTPD$Response;",
        "allowOrigin",
        "serve",
        "awaitCode",
        "timeoutMs",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "successHtml",
        "errorHtml",
        "r",
        "notReceivedHtml",
        "Companion",
        "Result",
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

.field private static final CORS_ALLOWLIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/hermes/android/data/oauth/OauthCallbackServer$Companion;

.field private static final TAG:Ljava/lang/String; = "OauthCallbackServer"


# instance fields
.field private final callbackPath:Ljava/lang/String;

.field private final deferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final expectedState:Ljava/lang/String;

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->Companion:Lcom/hermes/android/data/oauth/OauthCallbackServer$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->$stable:I

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://accounts.x.ai"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://auth.x.ai"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->CORS_ALLOWLIST:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "expectedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v0, "127.0.0.1"

    invoke-direct {p0, v0, p3}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p1, p0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->expectedState:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->callbackPath:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->port:I

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 45
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->deferred:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 29
    const-string p2, "/auth/callback"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x5af

    .line 27
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/hermes/android/data/oauth/OauthCallbackServer;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getDeferred$p(Lcom/hermes/android/data/oauth/OauthCallbackServer;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->deferred:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method private final allowedOrigin(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Ljava/lang/String;
    .locals 1

    .line 49
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "origin"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 50
    sget-object v0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->CORS_ALLOWLIST:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private final errorHtml(Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;)Ljava/lang/String;
    .locals 12

    .line 126
    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "<"

    const-string v2, "&lt;"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, ">"

    const-string v8, "&gt;"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n        <!DOCTYPE html><html><head><meta charset=\"utf-8\"><title>Sign-in failed</title>\n        <style>body{font-family:-apple-system,system-ui,sans-serif;max-width:480px;margin:80px auto;padding:24px;text-align:center;background:#0E1B2C;color:#E8F0F7}h1{color:#FF6B6B}</style>\n        </head><body><h1>Sign-in failed</h1><p>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "</p>\n        <p>Return to Hermes Agent and try again.</p></body></html>\n    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final notReceivedHtml()Ljava/lang/String;
    .locals 1

    .line 137
    const-string v0, "<!DOCTYPE html><html><head><meta charset=\"utf-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<title>Authorization not received</title>\n<style>body{font-family:-apple-system,system-ui,sans-serif;max-width:480px;margin:80px auto;padding:24px;text-align:center;background:#0E1B2C;color:#E8F0F7}h1{color:#FFB74D}</style>\n</head><body><h1>Authorization not received</h1>\n<p>No authorization code was present in this callback. Return to Hermes Agent and try signing in again.</p></body></html>"

    return-object v0
.end method

.method private final successHtml()Ljava/lang/String;
    .locals 1

    .line 121
    const-string v0, "<!DOCTYPE html><html><head><meta charset=\"utf-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<title>Signed in</title>\n<style>body{font-family:-apple-system,system-ui,sans-serif;max-width:480px;margin:80px auto;padding:24px;text-align:center;background:#0E1B2C;color:#E8F0F7}h1{color:#4FC3F7}</style>\n</head><body><h1>Signed in</h1><p>You can close this tab and return to Hermes Agent.</p></body></html>"

    return-object v0
.end method

.method private final withCors(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 54
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    const-string v0, "Access-Control-Allow-Origin"

    invoke-virtual {p1, v0, p2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string p2, "Access-Control-Allow-Methods"

    const-string v0, "GET, OPTIONS"

    invoke-virtual {p1, p2, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string p2, "Access-Control-Allow-Headers"

    const-string v0, "Content-Type"

    invoke-virtual {p1, p2, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string p2, "Access-Control-Allow-Private-Network"

    const-string v0, "true"

    invoke-virtual {p1, p2, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string p2, "Vary"

    const-string v0, "Origin"

    invoke-virtual {p1, p2, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final awaitCode(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;

    iget v1, v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;

    invoke-direct {v0, p0, p3}, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;-><init>(Lcom/hermes/android/data/oauth/OauthCallbackServer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 106
    iget v2, v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p1, v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;->J$0:J

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    :try_start_1
    new-instance p3, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$2;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2}, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$2;-><init>(Lcom/hermes/android/data/oauth/OauthCallbackServer;Lkotlin/coroutines/Continuation;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    iput-wide p1, v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;->J$0:J

    iput v3, v0, Lcom/hermes/android/data/oauth/OauthCallbackServer$awaitCode$1;->label:I

    invoke-static {p1, p2, p3, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;
    :try_end_1
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 110
    :catch_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "OAuth callback timed out after "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "OauthCallbackServer"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance p3, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no callback within "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "timeout"

    invoke-direct {p3, p2, p1}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p3, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;

    :goto_2
    return-object p3
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 9

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->allowedOrigin(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v1

    sget-object v2, Lfi/iki/elonen/NanoHTTPD$Method;->OPTIONS:Lfi/iki/elonen/NanoHTTPD$Method;

    const-string v3, "text/plain"

    const-string v4, "newFixedLengthResponse(...)"

    if-ne v1, v2, :cond_0

    .line 70
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NO_CONTENT:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    check-cast p1, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    const-string v1, ""

    invoke-static {p1, v3, v1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->withCors(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 74
    :cond_0
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->callbackPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->NOT_FOUND:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    check-cast p1, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    const-string v0, "Not Found"

    invoke-static {p1, v3, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 77
    :cond_1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParameters()Ljava/util/Map;

    move-result-object p1

    .line 78
    const-string v1, "state"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 79
    :goto_0
    const-string v3, "code"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 80
    :goto_1
    const-string v5, "error"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_4

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v5, v2

    .line 81
    :goto_2
    const-string v6, "error_description"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object p1, v2

    .line 86
    :goto_3
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    const-string v7, "text/html; charset=utf-8"

    if-eqz v6, :cond_6

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    if-nez v5, :cond_7

    .line 88
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    check-cast p1, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->notReceivedHtml()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {p1, v7, v1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->withCors(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_7
    if-eqz v5, :cond_8

    .line 93
    new-instance v1, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;

    invoke-direct {v1, v5, p1}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;

    goto :goto_5

    .line 94
    :cond_8
    iget-object p1, p0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->expectedState:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$StateMismatch;

    invoke-direct {p1, v1}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$StateMismatch;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_b

    .line 95
    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_4

    .line 96
    :cond_a
    new-instance p1, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;

    invoke-direct {p1, v3}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;

    goto :goto_5

    .line 95
    :cond_b
    :goto_4
    new-instance p1, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;

    const-string v1, "missing_code"

    invoke-direct {p1, v1, v2}, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;

    .line 99
    :goto_5
    iget-object p1, p0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->deferred:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {p1}, Lkotlinx/coroutines/CompletableDeferred;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/hermes/android/data/oauth/OauthCallbackServer;->deferred:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 101
    :cond_c
    instance-of p1, v1, Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->successHtml()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_d
    invoke-direct {p0, v1}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->errorHtml(Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;)Ljava/lang/String;

    move-result-object p1

    .line 102
    :goto_6
    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    check-cast v1, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    invoke-static {v1, v7, p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/hermes/android/data/oauth/OauthCallbackServer;->withCors(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
