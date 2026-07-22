.class public final Lcom/hermes/android/chat/InitApplyGate;
.super Ljava/lang/Object;
.source "ChatSkinController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/hermes/android/chat/InitApplyGate;",
        "",
        "<init>",
        "()V",
        "canApply",
        "",
        "disposed",
        "phase",
        "Lcom/hermes/android/chat/ChatSkinState$Phase;",
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

.field public static final INSTANCE:Lcom/hermes/android/chat/InitApplyGate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/chat/InitApplyGate;

    invoke-direct {v0}, Lcom/hermes/android/chat/InitApplyGate;-><init>()V

    sput-object v0, Lcom/hermes/android/chat/InitApplyGate;->INSTANCE:Lcom/hermes/android/chat/InitApplyGate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canApply(ZLcom/hermes/android/chat/ChatSkinState$Phase;)Z
    .locals 1

    const-string v0, "phase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 425
    sget-object p1, Lcom/hermes/android/chat/ChatSkinState$Phase;->INITIALIZING:Lcom/hermes/android/chat/ChatSkinState$Phase;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
