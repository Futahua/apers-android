.class public final Lcom/hermes/android/data/oauth/CodexCredentialStore;
.super Ljava/lang/Object;
.source "CodexCredentialStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/oauth/CodexCredentialStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u001b\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/CodexCredentialStore;",
        "",
        "bootstrap",
        "Lcom/hermes/android/BootstrapManager;",
        "<init>",
        "(Lcom/hermes/android/BootstrapManager;)V",
        "hermesDir",
        "Ljava/io/File;",
        "getHermesDir",
        "()Ljava/io/File;",
        "authFile",
        "getAuthFile",
        "exists",
        "",
        "pathForLogging",
        "",
        "write",
        "Lkotlin/Result;",
        "",
        "tokens",
        "Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;",
        "write-IoAF18A",
        "(Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;)Ljava/lang/Object;",
        "clear",
        "Companion",
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

.field public static final Companion:Lcom/hermes/android/data/oauth/CodexCredentialStore$Companion;

.field private static final PROVIDER_ID:Ljava/lang/String; = "openai-codex"

.field private static final TAG:Ljava/lang/String; = "CodexCredStore"


# instance fields
.field private final bootstrap:Lcom/hermes/android/BootstrapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/data/oauth/CodexCredentialStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/oauth/CodexCredentialStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/oauth/CodexCredentialStore;->Companion:Lcom/hermes/android/data/oauth/CodexCredentialStore$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/oauth/CodexCredentialStore;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/BootstrapManager;)V
    .locals 1

    const-string v0, "bootstrap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/data/oauth/CodexCredentialStore;->bootstrap:Lcom/hermes/android/BootstrapManager;

    return-void
.end method

.method private final getAuthFile()Ljava/io/File;
    .locals 2

    .line 32
    sget-object v0, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/CodexCredentialStore;->getHermesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hermes/android/data/oauth/AuthJsonStore;->authFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final getHermesDir()Ljava/io/File;
    .locals 2

    .line 31
    sget-object v0, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    iget-object v1, p0, Lcom/hermes/android/data/oauth/CodexCredentialStore;->bootstrap:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager;->getHomeDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hermes/android/HermesPaths;->hermesHome(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()Z
    .locals 3

    .line 50
    sget-object v0, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/CodexCredentialStore;->getHermesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "openai-codex"

    invoke-virtual {v0, v1, v2}, Lcom/hermes/android/data/oauth/AuthJsonStore;->clearProvider(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v1, "CodexCredStore"

    const-string v2, "clear() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public final exists()Z
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/hermes/android/data/oauth/CodexCredentialStore;->getAuthFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final pathForLogging()Ljava/lang/String;
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/hermes/android/data/oauth/CodexCredentialStore;->getAuthFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final write-IoAF18A(Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;)Ljava/lang/Object;
    .locals 6

    const-string v0, "Wrote codex creds to "

    const-string v1, "tokens"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v2, p0

    check-cast v2, Lcom/hermes/android/data/oauth/CodexCredentialStore;

    .line 38
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 39
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string v4, "access_token"

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v4, "refresh_token"

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;->getRefreshToken()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "last_refresh"

    sget-object v3, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-virtual {v3}, Lcom/hermes/android/data/oauth/AuthJsonStore;->nowIso8601()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "auth_mode"

    const-string v3, "chatgpt"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    sget-object v1, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/CodexCredentialStore;->getHermesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "openai-codex"

    invoke-virtual {v1, v3, v4, v2}, Lcom/hermes/android/data/oauth/AuthJsonStore;->writeProviderState(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    const-string v1, "CodexCredStore"

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/CodexCredentialStore;->getAuthFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/OauthRepository$TokenSet;->getPlanType()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (planType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
