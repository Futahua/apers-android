.class public final Lcom/hermes/android/data/ProStatus;
.super Ljava/lang/Object;
.source "ProStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/data/ProStatus$Companion;,
        Lcom/hermes/android/data/ProStatus$Tier;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0010R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/hermes/android/data/ProStatus;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "_tier",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/hermes/android/data/ProStatus$Tier;",
        "tier",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getTier",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "isPro",
        "",
        "()Z",
        "setPro",
        "",
        "pro",
        "Tier",
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

.field public static final Companion:Lcom/hermes/android/data/ProStatus$Companion;

.field private static final KEY_IS_PRO:Ljava/lang/String; = "is_pro"

.field private static final TAG:Ljava/lang/String; = "ProStatus"


# instance fields
.field private final _tier:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/hermes/android/data/ProStatus$Tier;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;

.field private final tier:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/data/ProStatus$Tier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/data/ProStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/data/ProStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/data/ProStatus;->Companion:Lcom/hermes/android/data/ProStatus$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/data/ProStatus;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "pro_status"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hermes/android/data/ProStatus;->prefs:Landroid/content/SharedPreferences;

    .line 22
    const-string v0, "is_pro"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/hermes/android/data/ProStatus$Tier;->PRO:Lcom/hermes/android/data/ProStatus$Tier;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hermes/android/data/ProStatus$Tier;->FREE:Lcom/hermes/android/data/ProStatus$Tier;

    .line 21
    :goto_0
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/data/ProStatus;->_tier:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 26
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/hermes/android/data/ProStatus;->tier:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final getTier()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/hermes/android/data/ProStatus$Tier;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/hermes/android/data/ProStatus;->tier:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isPro()Z
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/hermes/android/data/ProStatus;->_tier:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/data/ProStatus$Tier;->PRO:Lcom/hermes/android/data/ProStatus$Tier;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setPro(Z)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/hermes/android/data/ProStatus;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_pro"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    iget-object v0, p0, Lcom/hermes/android/data/ProStatus;->_tier:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/hermes/android/data/ProStatus$Tier;->PRO:Lcom/hermes/android/data/ProStatus$Tier;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hermes/android/data/ProStatus$Tier;->FREE:Lcom/hermes/android/data/ProStatus$Tier;

    :goto_0
    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pro status set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProStatus"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
