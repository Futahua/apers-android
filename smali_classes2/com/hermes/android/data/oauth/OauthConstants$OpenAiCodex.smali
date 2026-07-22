.class public final Lcom/hermes/android/data/oauth/OauthConstants$OpenAiCodex;
.super Ljava/lang/Object;
.source "OauthConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/oauth/OauthConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenAiCodex"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/OauthConstants$OpenAiCodex;",
        "",
        "<init>",
        "()V",
        "CLIENT_ID",
        "",
        "AUTHORIZE_URL",
        "TOKEN_URL",
        "REDIRECT_URI",
        "SCOPES",
        "CALLBACK_PORT",
        "",
        "CALLBACK_PATH",
        "ORIGINATOR",
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

.field public static final AUTHORIZE_URL:Ljava/lang/String; = "https://auth.openai.com/oauth/authorize"

.field public static final CALLBACK_PATH:Ljava/lang/String; = "/auth/callback"

.field public static final CALLBACK_PORT:I = 0x5af

.field public static final CLIENT_ID:Ljava/lang/String; = "app_EMoamEEZ73f0CkXaXp7hrann"

.field public static final INSTANCE:Lcom/hermes/android/data/oauth/OauthConstants$OpenAiCodex;

.field public static final ORIGINATOR:Ljava/lang/String; = "hermes-agent-android"

.field public static final REDIRECT_URI:Ljava/lang/String; = "http://localhost:1455/auth/callback"

.field public static final SCOPES:Ljava/lang/String; = "openid profile email offline_access"

.field public static final TOKEN_URL:Ljava/lang/String; = "https://auth.openai.com/oauth/token"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/data/oauth/OauthConstants$OpenAiCodex;

    invoke-direct {v0}, Lcom/hermes/android/data/oauth/OauthConstants$OpenAiCodex;-><init>()V

    sput-object v0, Lcom/hermes/android/data/oauth/OauthConstants$OpenAiCodex;->INSTANCE:Lcom/hermes/android/data/oauth/OauthConstants$OpenAiCodex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
