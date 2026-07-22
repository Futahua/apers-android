.class public final Lcom/hermes/android/LocalLlmModuleBridge;
.super Ljava/lang/Object;
.source "LocalLlmModuleBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/LocalLlmModuleBridge$LocalLlmClickAction;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalLlmModuleBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalLlmModuleBridge.kt\ncom/hermes/android/LocalLlmModuleBridge\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,283:1\n11165#2:284\n11500#2,3:285\n37#3,2:288\n1#4:290\n*S KotlinDebug\n*F\n+ 1 LocalLlmModuleBridge.kt\ncom/hermes/android/LocalLlmModuleBridge\n*L\n66#1:284\n66#1:285,3\n74#1:288,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u00015B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ \u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0012H\u0002J\u0006\u0010\u0013\u001a\u00020\u000bJ/\u0010\u0014\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0015\u001a\u00020\u00052\u0016\u0010\u0016\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0017\"\u0004\u0018\u00010\u0001H\u0002\u00a2\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0005J\u0016\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000bJ\u000e\u0010 \u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010!\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0016\u0010$\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0006\u0010\u001b\u001a\u00020\u001cJ\u001e\u0010\'\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020\u0005J&\u0010)\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010%2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0005J\u000e\u0010-\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010.\u001a\u00020\u0005J\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020\u0005J\u000e\u00102\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u00103\u001a\u000204R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcom/hermes/android/LocalLlmModuleBridge;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "ENTRY_CLASS",
        "PROVIDER_ID",
        "localLlmClickAction",
        "Lcom/hermes/android/LocalLlmModuleBridge$LocalLlmClickAction;",
        "moduleInstalled",
        "",
        "runtimeReady",
        "loadSucceededForBackend",
        "isModelLoaded",
        "backendInfo",
        "expectedPrefix",
        "entry",
        "Ljava/lang/Class;",
        "isModuleAvailable",
        "invoke",
        "name",
        "args",
        "",
        "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;",
        "ensureServerRunningIfConfigured",
        "",
        "context",
        "Landroid/content/Context;",
        "activeProviderId",
        "ensureServerRunning",
        "userInitiated",
        "isModelReady",
        "isRuntimeReady",
        "currentEngine",
        "Lcom/hermes/android/llama/LocalInferenceEngine;",
        "downloadRecommendedModel",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/hermes/android/llama/ModelDownloadState;",
        "downloadModelFromUrl",
        "url",
        "importModelFromUri",
        "uri",
        "Landroid/net/Uri;",
        "displayName",
        "deleteActiveModel",
        "recommendedModelName",
        "recommendedModelSizeBytes",
        "",
        "importedModelDefaultName",
        "listGpuDevices",
        "defaultGpuLayers",
        "",
        "LocalLlmClickAction",
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

.field private static final ENTRY_CLASS:Ljava/lang/String; = "com.hermes.android.llama.LocalLlmModuleEntryPoint"

.field public static final INSTANCE:Lcom/hermes/android/LocalLlmModuleBridge;

.field public static final PROVIDER_ID:Ljava/lang/String; = "local_llm"

.field private static final TAG:Ljava/lang/String; = "LocalLlmModuleBridge"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/LocalLlmModuleBridge;

    invoke-direct {v0}, Lcom/hermes/android/LocalLlmModuleBridge;-><init>()V

    sput-object v0, Lcom/hermes/android/LocalLlmModuleBridge;->INSTANCE:Lcom/hermes/android/LocalLlmModuleBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final entry()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 54
    :try_start_0
    const-string v0, "com.hermes.android.llama.LocalLlmModuleEntryPoint"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 63
    invoke-direct {p0}, Lcom/hermes/android/LocalLlmModuleBridge;->entry()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 65
    :cond_0
    :try_start_0
    const-string v2, "INSTANCE"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 284
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 285
    array-length v4, p2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_7

    aget-object v7, p2, v6

    .line 68
    instance-of v8, v7, Landroid/content/Context;

    if-eqz v8, :cond_1

    const-class v7, Landroid/content/Context;

    goto :goto_1

    .line 69
    :cond_1
    instance-of v8, v7, Landroid/net/Uri;

    if-eqz v8, :cond_2

    const-class v7, Landroid/net/Uri;

    goto :goto_1

    .line 70
    :cond_2
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_3

    const-class v7, Ljava/lang/String;

    goto :goto_1

    .line 71
    :cond_3
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    .line 72
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_6

    :cond_5
    const-class v7, Ljava/lang/Object;

    .line 286
    :cond_6
    :goto_1
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 287
    :cond_7
    check-cast v3, Ljava/util/List;

    .line 284
    check-cast v3, Ljava/util/Collection;

    .line 289
    new-array v4, v5, [Ljava/lang/Class;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 74
    check-cast v3, [Ljava/lang/Class;

    .line 75
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reflection call "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Throwable;

    const-string v0, "LocalLlmModuleBridge"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v1
.end method


# virtual methods
.method public final currentEngine()Lcom/hermes/android/llama/LocalInferenceEngine;
    .locals 2

    const/4 v0, 0x0

    .line 116
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "currentEngine"

    invoke-direct {p0, v1, v0}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/hermes/android/llama/LocalInferenceEngine;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/hermes/android/llama/LocalInferenceEngine;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final defaultGpuLayers()I
    .locals 3

    const/4 v0, 0x0

    .line 164
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "defaultGpuLayers"

    invoke-direct {p0, v2, v1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    return v0
.end method

.method public final deleteActiveModel(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 144
    invoke-direct {p0}, Lcom/hermes/android/LocalLlmModuleBridge;->entry()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 145
    sget-object v0, Lcom/hermes/android/llama/LocalLlmPaths;->INSTANCE:Lcom/hermes/android/llama/LocalLlmPaths;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/hermes/android/llama/LocalLlmPaths;->activeModelFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 146
    sget-object v2, Lcom/hermes/android/llama/LocalLlmPaths;->INSTANCE:Lcom/hermes/android/llama/LocalLlmPaths;

    invoke-virtual {v2, p1}, Lcom/hermes/android/llama/LocalLlmPaths;->activeModelTmpFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 148
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, p0

    check-cast v3, Lcom/hermes/android/LocalLlmModuleBridge;

    sget-object v3, Lcom/hermes/android/llama/ActiveModelStore;->INSTANCE:Lcom/hermes/android/llama/ActiveModelStore;

    invoke-virtual {v3, p1}, Lcom/hermes/android/llama/ActiveModelStore;->clear(Landroid/content/Context;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 151
    :cond_1
    const-string v0, "deleteActiveModel"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_3
    return v1
.end method

.method public final downloadModelFromUrl(Landroid/content/Context;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/hermes/android/llama/ModelDownloadState;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "downloadModelFromUrl"

    invoke-direct {p0, p2, p1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lkotlinx/coroutines/flow/Flow;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final downloadRecommendedModel(Landroid/content/Context;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/hermes/android/llama/ModelDownloadState;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "downloadRecommendedModel"

    invoke-direct {p0, v0, p1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lkotlinx/coroutines/flow/Flow;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final ensureServerRunning(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ensureServerRunning"

    invoke-direct {p0, p2, p1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ensureServerRunningIfConfigured(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeProviderId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v0, "local_llm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/hermes/android/LocalLlmModuleBridge;->entry()Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_1

    .line 90
    const-string p1, "LocalLlmModuleBridge"

    const-string p2, "llama_native module not installed \u2014 cannot ensure local LLM server running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ensureServerRunning"

    invoke-direct {p0, p2, p1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final importModelFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/hermes/android/llama/ModelDownloadState;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "importModelFromUri"

    invoke-direct {p0, p2, p1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lkotlinx/coroutines/flow/Flow;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final importedModelDefaultName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "importedModelDefaultName"

    invoke-direct {p0, v1, v0}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Imported model"

    :cond_1
    return-object v0
.end method

.method public final isModelReady(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "isModelReady"

    invoke-direct {p0, v0, p1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final isModuleAvailable()Z
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/hermes/android/LocalLlmModuleBridge;->entry()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRuntimeReady(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "isRuntimeReady"

    invoke-direct {p0, v0, p1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final listGpuDevices(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "listGpuDevices"

    invoke-direct {p0, v0, p1}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public final loadSucceededForBackend(ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "expectedPrefix"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 51
    invoke-static {p2, p3, v0, p1, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method public final localLlmClickAction(ZZ)Lcom/hermes/android/LocalLlmModuleBridge$LocalLlmClickAction;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 42
    sget-object p1, Lcom/hermes/android/LocalLlmModuleBridge$LocalLlmClickAction;->DIRECT_SWITCH:Lcom/hermes/android/LocalLlmModuleBridge$LocalLlmClickAction;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hermes/android/LocalLlmModuleBridge$LocalLlmClickAction;->OPEN_SETUP:Lcom/hermes/android/LocalLlmModuleBridge$LocalLlmClickAction;

    :goto_0
    return-object p1
.end method

.method public final recommendedModelName()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 154
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "recommendedModelName"

    invoke-direct {p0, v1, v0}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "MiniCPM5-1B"

    :cond_1
    return-object v0
.end method

.method public final recommendedModelSizeBytes()J
    .locals 2

    const/4 v0, 0x0

    .line 156
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "recommendedModelSizeBytes"

    invoke-direct {p0, v1, v0}, Lcom/hermes/android/LocalLlmModuleBridge;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    return-wide v0
.end method
