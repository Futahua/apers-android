.class public final Lcom/hermes/android/chat/ImageAttachGate;
.super Ljava/lang/Object;
.source "ChatSkinController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/hermes/android/chat/ImageAttachGate;",
        "",
        "<init>",
        "()V",
        "canInject",
        "",
        "targetMatches",
        "originSurfaceGen",
        "",
        "surfaceGenNow",
        "chatPhase",
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

.field public static final INSTANCE:Lcom/hermes/android/chat/ImageAttachGate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/chat/ImageAttachGate;

    invoke-direct {v0}, Lcom/hermes/android/chat/ImageAttachGate;-><init>()V

    sput-object v0, Lcom/hermes/android/chat/ImageAttachGate;->INSTANCE:Lcom/hermes/android/chat/ImageAttachGate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canInject(ZJJLcom/hermes/android/chat/ChatSkinState$Phase;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    cmp-long p1, p2, p4

    if-eqz p1, :cond_1

    return v0

    :cond_1
    if-eqz p6, :cond_2

    .line 419
    sget-object p1, Lcom/hermes/android/chat/ChatSkinState$Phase;->IDLE:Lcom/hermes/android/chat/ChatSkinState$Phase;

    if-ne p6, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method
