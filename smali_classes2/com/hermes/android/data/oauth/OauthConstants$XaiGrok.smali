.class public final Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;
.super Ljava/lang/Object;
.source "OauthConstants.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/data/oauth/OauthConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XaiGrok"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;",
        "",
        "<init>",
        "()V",
        "CLIENT_ID",
        "",
        "ISSUER",
        "DISCOVERY_URL",
        "REDIRECT_URI",
        "SCOPES",
        "CALLBACK_PORT",
        "",
        "CALLBACK_PATH",
        "PLAN",
        "REFERRER",
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

.field public static final CALLBACK_PATH:Ljava/lang/String; = "/callback"

.field public static final CALLBACK_PORT:I = 0xdb39

.field public static final CLIENT_ID:Ljava/lang/String; = "b1a00492-073a-47ea-816f-4c329264a828"

.field public static final DISCOVERY_URL:Ljava/lang/String; = "https://auth.x.ai/.well-known/openid-configuration"

.field public static final INSTANCE:Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;

.field public static final ISSUER:Ljava/lang/String; = "https://auth.x.ai"

.field public static final PLAN:Ljava/lang/String; = "generic"

.field public static final REDIRECT_URI:Ljava/lang/String; = "http://127.0.0.1:56121/callback"

.field public static final REFERRER:Ljava/lang/String; = "hermes-agent"

.field public static final SCOPES:Ljava/lang/String; = "openid profile email offline_access grok-cli:access api:access"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;

    invoke-direct {v0}, Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;-><init>()V

    sput-object v0, Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;->INSTANCE:Lcom/hermes/android/data/oauth/OauthConstants$XaiGrok;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
