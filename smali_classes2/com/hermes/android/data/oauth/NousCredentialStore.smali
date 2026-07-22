.class public final Lcom/hermes/android/data/oauth/NousCredentialStore;
.super Ljava/lang/Object;
.source "NousCredentialStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/oauth/NousCredentialStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\rJ\u001b\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/hermes/android/data/oauth/NousCredentialStore;",
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
        "tokenJson",
        "Lorg/json/JSONObject;",
        "write-IoAF18A",
        "(Lorg/json/JSONObject;)Ljava/lang/Object;",
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

.field public static final Companion:Lcom/hermes/android/data/oauth/NousCredentialStore$Companion;

.field private static final PROVIDER_ID:Ljava/lang/String; = "nous"

.field private static final TAG:Ljava/lang/String; = "NousCredStore"


# instance fields
.field private final bootstrap:Lcom/hermes/android/BootstrapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/data/oauth/NousCredentialStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/oauth/NousCredentialStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/oauth/NousCredentialStore;->Companion:Lcom/hermes/android/data/oauth/NousCredentialStore$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/oauth/NousCredentialStore;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/hermes/android/BootstrapManager;)V
    .locals 1

    const-string v0, "bootstrap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/data/oauth/NousCredentialStore;->bootstrap:Lcom/hermes/android/BootstrapManager;

    return-void
.end method

.method private final getAuthFile()Ljava/io/File;
    .locals 2

    .line 64
    sget-object v0, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/NousCredentialStore;->getHermesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hermes/android/data/oauth/AuthJsonStore;->authFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private final getHermesDir()Ljava/io/File;
    .locals 2

    .line 63
    sget-object v0, Lcom/hermes/android/HermesPaths;->INSTANCE:Lcom/hermes/android/HermesPaths;

    iget-object v1, p0, Lcom/hermes/android/data/oauth/NousCredentialStore;->bootstrap:Lcom/hermes/android/BootstrapManager;

    invoke-virtual {v1}, Lcom/hermes/android/BootstrapManager;->getHomeDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hermes/android/HermesPaths;->hermesHome(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()Z
    .locals 3

    .line 77
    sget-object v0, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/NousCredentialStore;->getHermesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nous"

    invoke-virtual {v0, v1, v2}, Lcom/hermes/android/data/oauth/AuthJsonStore;->clearProvider(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string v1, "NousCredStore"

    const-string v2, "clear() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public final exists()Z
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/hermes/android/data/oauth/NousCredentialStore;->getAuthFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final write-IoAF18A(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7

    const-string v0, "Wrote Nous Portal creds to "

    const-string v1, "tokenJson"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/hermes/android/data/oauth/NousCredentialStore;

    .line 73
    sget-object v1, Lcom/hermes/android/data/oauth/AuthJsonStore;->INSTANCE:Lcom/hermes/android/data/oauth/AuthJsonStore;

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/NousCredentialStore;->getHermesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "nous"

    sget-object v4, Lcom/hermes/android/data/oauth/NousCredentialStore;->Companion:Lcom/hermes/android/data/oauth/NousCredentialStore$Companion;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, p1, v6, v5, v6}, Lcom/hermes/android/data/oauth/NousCredentialStore$Companion;->buildState$app_release$default(Lcom/hermes/android/data/oauth/NousCredentialStore$Companion;Lorg/json/JSONObject;Ljava/util/Date;ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/hermes/android/data/oauth/AuthJsonStore;->writeProviderState(Ljava/io/File;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 74
    const-string p1, "NousCredStore"

    invoke-direct {p0}, Lcom/hermes/android/data/oauth/NousCredentialStore;->getAuthFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
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
