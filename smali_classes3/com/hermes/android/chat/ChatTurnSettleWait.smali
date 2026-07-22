.class public final Lcom/hermes/android/chat/ChatTurnSettleWait;
.super Ljava/lang/Object;
.source "ChatSkinController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J&\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/hermes/android/chat/ChatTurnSettleWait;",
        "",
        "<init>",
        "()V",
        "shouldKeepWaiting",
        "",
        "elapsedMs",
        "",
        "sawMidTurnEver",
        "noEvidenceGiveUpMs",
        "fuseMs",
        "pollInterval",
        "fastWindowMs",
        "fastIntervalMs",
        "slowIntervalMs",
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

.field public static final INSTANCE:Lcom/hermes/android/chat/ChatTurnSettleWait;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/chat/ChatTurnSettleWait;

    invoke-direct {v0}, Lcom/hermes/android/chat/ChatTurnSettleWait;-><init>()V

    sput-object v0, Lcom/hermes/android/chat/ChatTurnSettleWait;->INSTANCE:Lcom/hermes/android/chat/ChatTurnSettleWait;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final pollInterval(JJJJ)J
    .locals 0

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p5, p7

    :goto_0
    return-wide p5
.end method

.method public final shouldKeepWaiting(JZJJ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    cmp-long p1, p1, p6

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    cmp-long p1, p1, p4

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method
