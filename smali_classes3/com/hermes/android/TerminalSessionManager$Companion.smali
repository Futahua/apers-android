.class public final Lcom/hermes/android/TerminalSessionManager$Companion;
.super Ljava/lang/Object;
.source "TerminalSessionManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hermes/android/TerminalSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\"\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/hermes/android/TerminalSessionManager$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "MAX_SESSIONS",
        "",
        "TERMINAL_SCROLLBACK_ROWS",
        "value",
        "Lcom/hermes/android/TerminalSessionManager;",
        "processInstance",
        "getProcessInstance",
        "()Lcom/hermes/android/TerminalSessionManager;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/hermes/android/TerminalSessionManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProcessInstance()Lcom/hermes/android/TerminalSessionManager;
    .locals 1

    .line 40
    invoke-static {}, Lcom/hermes/android/TerminalSessionManager;->access$getProcessInstance$cp()Lcom/hermes/android/TerminalSessionManager;

    move-result-object v0

    return-object v0
.end method
