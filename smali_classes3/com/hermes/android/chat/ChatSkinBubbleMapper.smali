.class public final Lcom/hermes/android/chat/ChatSkinBubbleMapper;
.super Ljava/lang/Object;
.source "ChatSkinController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hermes/android/chat/ChatSkinBubbleMapper;",
        "",
        "<init>",
        "()V",
        "toBubble",
        "Lcom/hermes/android/chat/ChatBubble;",
        "role",
        "",
        "content",
        "toolName",
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

.field public static final INSTANCE:Lcom/hermes/android/chat/ChatSkinBubbleMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hermes/android/chat/ChatSkinBubbleMapper;

    invoke-direct {v0}, Lcom/hermes/android/chat/ChatSkinBubbleMapper;-><init>()V

    sput-object v0, Lcom/hermes/android/chat/ChatSkinBubbleMapper;->INSTANCE:Lcom/hermes/android/chat/ChatSkinBubbleMapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toBubble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hermes/android/chat/ChatBubble;
    .locals 8

    const-string v0, "role"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    new-instance v0, Lcom/hermes/android/chat/ChatBubble;

    .line 359
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x366998

    if-eq v1, v2, :cond_4

    const v2, 0x36ebcb

    if-eq v1, v2, :cond_2

    const v2, 0x553972de

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "assistant"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 361
    :cond_1
    sget-object p1, Lcom/hermes/android/chat/BubbleRole;->ASSISTANT:Lcom/hermes/android/chat/BubbleRole;

    goto :goto_1

    .line 359
    :cond_2
    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 360
    :cond_3
    sget-object p1, Lcom/hermes/android/chat/BubbleRole;->USER:Lcom/hermes/android/chat/BubbleRole;

    goto :goto_1

    .line 359
    :cond_4
    const-string v1, "tool"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 363
    :goto_0
    sget-object p1, Lcom/hermes/android/chat/BubbleRole;->SYSTEM:Lcom/hermes/android/chat/BubbleRole;

    :goto_1
    move-object v2, p1

    goto :goto_2

    .line 362
    :cond_5
    sget-object p1, Lcom/hermes/android/chat/BubbleRole;->TOOL:Lcom/hermes/android/chat/BubbleRole;

    goto :goto_1

    :goto_2
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    .line 358
    invoke-direct/range {v1 .. v7}, Lcom/hermes/android/chat/ChatBubble;-><init>(Lcom/hermes/android/chat/BubbleRole;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
