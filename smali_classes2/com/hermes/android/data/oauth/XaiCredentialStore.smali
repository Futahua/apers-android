.class public final Lcom/hermes/android/data/oauth/XaiCredentialStore;
.super Ljava/lang/Object;
.source "XaiCredentialStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/oauth/XaiCredentialStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\rJ+\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/XaiCredentialStore;",
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
        "write",
        "Lkotlin/Result;",
        "",
        "tokens",
        "Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;",
        "discovery",
        "Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;",
        "redirectUri",
        "",
        "write-0E7RQCE",
        "(Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;)Ljava/lang/Object;",
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

.field public static final Companion:Lcom/hermes/android/data/oauth/XaiCredentialStore$Companion;

.field private static final PROVIDER_ID:Ljava/lang/String; = "xai-oauth"

.field private static final TAG:Ljava/lang/String; = "XaiCredStore"


# instance fields
.field private final bootstrap:Lcom/hermes/android/BootstrapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/data/oauth/XaiCredentialStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/oauth/XaiCredentialStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/oauth/XaiCredentialStore;->Companion:Lcom/hermes/android/data/oauth/XaiCredentialStore$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/oauth/XaiCredentialStore;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/BootstrapManager;)V
    .locals 1

    const-string v0, "bootstrap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/data/oauth/XaiCredentialStore;->bootstrap:Lcom/hermes/android/BootstrapManager;

    return-void
.end method

.method private final getAuthFile()Ljava/io/File;
    .locals 2

    .line 27
    sget-object v0, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/XaiCredentialStore;->getHermesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hermes/android/data/oauth/AuthJsonStore;->authFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final getHermesDir()Ljava/io/File;
    .locals 2

    .line 26
    sget-object v0, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    iget-object v1, p0, Lcom/hermes/android/data/oauth/XaiCredentialStore;->bootstrap:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager;->getHomeDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hermes/android/HermesPaths;->hermesHome(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()Z
    .locals 3

    .line 56
    sget-object v0, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/XaiCredentialStore;->getHermesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "xai-oauth"

    invoke-virtual {v0, v1, v2}, Lcom/hermes/android/data/oauth/AuthJsonStore;->clearProvider(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const-string v1, "XaiCredStore"

    const-string v2, "clear() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public final exists()Z
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/hermes/android/data/oauth/XaiCredentialStore;->getAuthFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final write-0E7RQCE(Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const-string v0, "Wrote xAI Grok creds to "

    const-string v1, "tokens"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "discovery"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "redirectUri"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/hermes/android/data/oauth/XaiCredentialStore;

    .line 36
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 37
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 38
    const-string v5, "access_token"

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v5, "refresh_token"

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;->getRefreshToken()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;->getIdToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v5, "id_token"

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;->getIdToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;->getExpiresIn()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "expires_in"

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;->getExpiresIn()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;->getTokenType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "token_type"

    invoke-virtual {p1}, Lcom/hermes/android/data/oauth/XaiOauthRepository$TokenSet;->getTokenType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 37
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string p1, "last_refresh"

    sget-object v1, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-virtual {v1}, Lcom/hermes/android/data/oauth/AuthJsonStore;->nowIso8601()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string p1, "auth_mode"

    const-string v1, "oauth_pkce"

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 47
    const-string v1, "authorization_endpoint"

    invoke-virtual {p2}, Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;->getAuthorizationEndpoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v1, "token_endpoint"

    invoke-virtual {p2}, Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;->getTokenEndpoint()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 46
    invoke-virtual {v3, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string p1, "redirect_uri"

    invoke-virtual {v3, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    sget-object p1, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/XaiCredentialStore;->getHermesDir()Ljava/io/File;

    move-result-object p2

    const-string p3, "xai-oauth"

    invoke-virtual {p1, p2, p3, v3}, Lcom/hermes/android/data/oauth/AuthJsonStore;->writeProviderState(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 53
    const-string p1, "XaiCredStore"

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/XaiCredentialStore;->getAuthFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
