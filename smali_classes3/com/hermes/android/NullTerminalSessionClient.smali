.class public final Lcom/hermes/android/NullTerminalSessionClient;
.super Ljava/lang/Object;
.source "NullTerminalSessionClient.kt"

# interfaces
.implements Lcom/termux/terminal/TerminalSessionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/NullTerminalSessionClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0007H\u0016J\u001a\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\r\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0002\u0010\u0019J\u001c\u0010\u001a\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u001d\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u001e\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u001f\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010 \u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000eH\u0016J,\u0010!\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\u000e\u0010\"\u001a\n\u0018\u00010#j\u0004\u0018\u0001`$H\u0016J\"\u0010%\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000e2\u000e\u0010\"\u001a\n\u0018\u00010#j\u0004\u0018\u0001`$H\u0016\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/hermes/android/NullTerminalSessionClient;",
        "Lcom/termux/terminal/TerminalSessionClient;",
        "<init>",
        "()V",
        "onTextChanged",
        "",
        "changedSession",
        "Lcom/termux/terminal/TerminalSession;",
        "onTitleChanged",
        "onSessionFinished",
        "finishedSession",
        "onCopyTextToClipboard",
        "session",
        "text",
        "",
        "onPasteTextFromClipboard",
        "onBell",
        "onColorsChanged",
        "onTerminalCursorStateChange",
        "state",
        "",
        "setTerminalShellPid",
        "pid",
        "",
        "getTerminalCursorStyle",
        "()Ljava/lang/Integer;",
        "logError",
        "tag",
        "message",
        "logWarn",
        "logInfo",
        "logDebug",
        "logVerbose",
        "logStackTraceWithMessage",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "logStackTrace",
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
.field public static final $stable:I = 0x0

.field public static final Companion:Lcom/hermes/android/NullTerminalSessionClient$Companion;

.field private static final TAG:Ljava/lang/String; = "NullTerminalClient"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/NullTerminalSessionClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/NullTerminalSessionClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/NullTerminalSessionClient;->Companion:Lcom/hermes/android/NullTerminalSessionClient$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTerminalCursorStyle()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 44
    const-string p1, "NullTerminalClient"

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 41
    const-string p1, "NullTerminalClient"

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 43
    const-string p1, "NullTerminalClient"

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    if-nez p1, :cond_0

    .line 50
    const-string p1, "NullTerminalClient"

    :cond_0
    const-string v0, "Stack trace"

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    if-nez p1, :cond_0

    .line 47
    const-string p1, "NullTerminalClient"

    :cond_0
    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 45
    const-string p1, "NullTerminalClient"

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 42
    const-string p1, "NullTerminalClient"

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCopyTextToClipboard(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 0

    const-string p2, "session"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V
    .locals 0

    return-void
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    const-string v0, "finishedSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-string p1, "NullTerminalClient"

    const-string v0, "Session finished (no UI attached)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTerminalCursorStateChange(Z)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    const-string v0, "changedSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    const-string v0, "changedSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setTerminalShellPid(Lcom/termux/terminal/TerminalSession;I)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Shell PID (background): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NullTerminalClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
