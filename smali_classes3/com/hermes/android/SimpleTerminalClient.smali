.class public final Lcom/hermes/android/SimpleTerminalClient;
.super Ljava/lang/Object;
.source "SimpleTerminalClient.kt"

# interfaces
.implements Lcom/termux/terminal/TerminalSessionClient;
.implements Lcom/termux/view/TerminalViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/SimpleTerminalClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 h2\u00020\u00012\u00020\u0002:\u0001hB\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u0013H\u0016J\u0010\u0010.\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u0013H\u0016J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010/\u001a\u00020\u0013H\u0016J\u001a\u00100\u001a\u00020\n2\u0006\u00101\u001a\u00020\u00132\u0008\u00102\u001a\u0004\u0018\u000103H\u0016J\u0012\u00104\u001a\u00020\n2\u0008\u00101\u001a\u0004\u0018\u00010\u0013H\u0016J\u0018\u00105\u001a\u00020\n2\u0006\u00106\u001a\u00020\u00042\u0006\u00107\u001a\u000208H\u0002J\u0010\u00109\u001a\u00020\n2\u0006\u00101\u001a\u00020\u0013H\u0016J\u0010\u0010:\u001a\u00020\n2\u0006\u00101\u001a\u00020\u0013H\u0016J\u0010\u0010;\u001a\u00020\n2\u0006\u0010<\u001a\u00020\u0019H\u0016J\u0018\u0010=\u001a\u00020\n2\u0006\u00101\u001a\u00020\u00132\u0006\u0010>\u001a\u000208H\u0016J\r\u0010?\u001a\u000208H\u0016\u00a2\u0006\u0002\u0010@J\u0010\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020BH\u0016J\u0012\u0010D\u001a\u00020\n2\u0008\u0010E\u001a\u0004\u0018\u00010FH\u0016J\u0008\u0010G\u001a\u00020\u0019H\u0016J\u0008\u0010H\u001a\u00020\u0019H\u0016J\u0008\u0010I\u001a\u000208H\u0016J\u0008\u0010J\u001a\u00020\u0019H\u0016J\u0008\u0010K\u001a\u00020\u0019H\u0016J\u0010\u0010L\u001a\u00020\n2\u0006\u0010M\u001a\u00020\u0019H\u0016J$\u0010N\u001a\u00020\u00192\u0006\u0010O\u001a\u0002082\u0008\u0010E\u001a\u0004\u0018\u00010P2\u0008\u00101\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010Q\u001a\u00020\u00192\u0006\u0010O\u001a\u0002082\u0008\u0010E\u001a\u0004\u0018\u00010PH\u0016J\u0012\u0010R\u001a\u00020\u00192\u0008\u0010S\u001a\u0004\u0018\u00010FH\u0016J\u0008\u0010T\u001a\u00020\u0019H\u0016J\u0008\u0010U\u001a\u00020\u0019H\u0016J\u0008\u0010V\u001a\u00020\nH\u0016J\u0008\u0010W\u001a\u00020\u0019H\u0016J\u0008\u0010X\u001a\u00020\u0019H\u0016J\"\u0010Y\u001a\u00020\u00192\u0006\u0010Z\u001a\u0002082\u0006\u0010[\u001a\u00020\u00192\u0008\u00101\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\\\u001a\u00020\nH\u0016J\u001c\u0010]\u001a\u00020\n2\u0008\u0010^\u001a\u0004\u0018\u0001032\u0008\u0010_\u001a\u0004\u0018\u000103H\u0016J\u001c\u0010`\u001a\u00020\n2\u0008\u0010^\u001a\u0004\u0018\u0001032\u0008\u0010_\u001a\u0004\u0018\u000103H\u0016J\u001c\u0010a\u001a\u00020\n2\u0008\u0010^\u001a\u0004\u0018\u0001032\u0008\u0010_\u001a\u0004\u0018\u000103H\u0016J\u001c\u0010b\u001a\u00020\n2\u0008\u0010^\u001a\u0004\u0018\u0001032\u0008\u0010_\u001a\u0004\u0018\u000103H\u0016J\u001c\u0010c\u001a\u00020\n2\u0008\u0010^\u001a\u0004\u0018\u0001032\u0008\u0010_\u001a\u0004\u0018\u000103H\u0016J,\u0010d\u001a\u00020\n2\u0008\u0010^\u001a\u0004\u0018\u0001032\u0008\u0010_\u001a\u0004\u0018\u0001032\u000e\u0010E\u001a\n\u0018\u00010ej\u0004\u0018\u0001`fH\u0016J\"\u0010g\u001a\u00020\n2\u0008\u0010^\u001a\u0004\u0018\u0001032\u000e\u0010E\u001a\n\u0018\u00010ej\u0004\u0018\u0001`fH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R(\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000e\"\u0004\u0008\u001b\u0010\u0010R\"\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u000e\"\u0004\u0008\u001e\u0010\u0010R\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u000e\"\u0004\u0008!\u0010\u0010R.\u0010\"\u001a\u0016\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\n\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\"\u0010)\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u000e\"\u0004\u0008+\u0010\u0010\u00a8\u0006i"
    }
    d2 = {
        "Lcom/hermes/android/SimpleTerminalClient;",
        "Lcom/termux/terminal/TerminalSessionClient;",
        "Lcom/termux/view/TerminalViewClient;",
        "appContext",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "generation",
        "",
        "markActive",
        "",
        "onSessionTextChanged",
        "Lkotlin/Function0;",
        "getOnSessionTextChanged",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnSessionTextChanged",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onSessionFinished",
        "Lkotlin/Function1;",
        "Lcom/termux/terminal/TerminalSession;",
        "getOnSessionFinished",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSessionFinished",
        "(Lkotlin/jvm/functions/Function1;)V",
        "peekControlState",
        "",
        "getPeekControlState",
        "setPeekControlState",
        "peekAltState",
        "getPeekAltState",
        "setPeekAltState",
        "onConsumeStickyModifiers",
        "getOnConsumeStickyModifiers",
        "setOnConsumeStickyModifiers",
        "onAttachClipboardImage",
        "Lkotlin/Function2;",
        "Landroid/net/Uri;",
        "getOnAttachClipboardImage",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnAttachClipboardImage",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onTextChangedExtra",
        "getOnTextChangedExtra",
        "setOnTextChangedExtra",
        "onTextChanged",
        "changedSession",
        "onTitleChanged",
        "finishedSession",
        "onCopyTextToClipboard",
        "session",
        "text",
        "",
        "onPasteTextFromClipboard",
        "toast",
        "ctx",
        "resId",
        "",
        "onBell",
        "onColorsChanged",
        "onTerminalCursorStateChange",
        "state",
        "setTerminalShellPid",
        "pid",
        "getTerminalCursorStyle",
        "()Ljava/lang/Integer;",
        "onScale",
        "",
        "scale",
        "onSingleTapUp",
        "e",
        "Landroid/view/MotionEvent;",
        "shouldBackButtonBeMappedToEscape",
        "shouldEnforceCharBasedInput",
        "getInputMode",
        "shouldUseCtrlSpaceWorkaround",
        "isTerminalViewSelected",
        "copyModeChanged",
        "copyMode",
        "onKeyDown",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onLongPress",
        "event",
        "readControlKey",
        "readAltKey",
        "consumeStickyModifiers",
        "readShiftKey",
        "readFnKey",
        "onCodePoint",
        "codePoint",
        "ctrlDown",
        "onEmulatorSet",
        "logError",
        "tag",
        "message",
        "logWarn",
        "logInfo",
        "logDebug",
        "logVerbose",
        "logStackTraceWithMessage",
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
.field public static final $stable:I

.field private static final ACTIVE_GENERATION:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final Companion:Lcom/hermes/android/SimpleTerminalClient$Companion;

.field private static final TAG:Ljava/lang/String; = "SimpleTerminalClient"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private volatile generation:J

.field private onAttachClipboardImage:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/termux/terminal/TerminalSession;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onConsumeStickyModifiers:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSessionFinished:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/termux/terminal/TerminalSession;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSessionTextChanged:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onTextChangedExtra:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private peekAltState:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private peekControlState:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$nlJK7vauwIjGZiNeypQKMOa7JHI(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hermes/android/SimpleTerminalClient;->onPasteTextFromClipboard$lambda$1(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ytMQxJAhgYPZVXLkWeT6pJWjPUw(Ljava/lang/String;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/hermes/android/SimpleTerminalClient;->onPasteTextFromClipboard$lambda$1$lambda$0(Ljava/lang/String;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hermes/android/SimpleTerminalClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/SimpleTerminalClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/SimpleTerminalClient;->Companion:Lcom/hermes/android/SimpleTerminalClient$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/SimpleTerminalClient;->$stable:I

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/hermes/android/SimpleTerminalClient;->ACTIVE_GENERATION:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/hermes/android/SimpleTerminalClient;-><init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->appContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lcom/hermes/android/SimpleTerminalClient;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static final onPasteTextFromClipboard$lambda$1(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/hermes/android/ImageAttach;->INSTANCE:Lcom/hermes/android/ImageAttach;

    invoke-virtual {v0, p0, p1}, Lcom/hermes/android/ImageAttach;->saveToHermesImages(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 141
    new-instance v0, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3, p4, p0}, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final onPasteTextFromClipboard$lambda$1$lambda$0(Ljava/lang/String;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 143
    sget-object v0, Lcom/hermes/android/ImageAttach;->INSTANCE:Lcom/hermes/android/ImageAttach;

    invoke-virtual {v0, p0}, Lcom/hermes/android/ImageAttach;->imageCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 144
    :cond_0
    sget p0, Lcom/hermes/android/R$string;->image_attached:I

    invoke-direct {p2, p3, p0}, Lcom/hermes/android/SimpleTerminalClient;->toast(Landroid/content/Context;I)V

    goto :goto_0

    .line 146
    :cond_1
    sget p0, Lcom/hermes/android/R$string;->image_attach_failed:I

    invoke-direct {p2, p3, p0}, Lcom/hermes/android/SimpleTerminalClient;->toast(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private final toast(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    :try_start_0
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public consumeStickyModifiers()V
    .locals 4

    .line 216
    iget-wide v0, p0, Lcom/hermes/android/SimpleTerminalClient;->generation:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hermes/android/SimpleTerminalClient;->generation:J

    sget-object v2, Lcom/hermes/android/SimpleTerminalClient;->ACTIVE_GENERATION:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->onConsumeStickyModifiers:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public copyModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public getInputMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getOnAttachClipboardImage()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/termux/terminal/TerminalSession;",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->onAttachClipboardImage:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getOnConsumeStickyModifiers()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->onConsumeStickyModifiers:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnSessionFinished()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/termux/terminal/TerminalSession;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->onSessionFinished:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnSessionTextChanged()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->onSessionTextChanged:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnTextChangedExtra()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->onTextChangedExtra:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getPeekAltState()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->peekAltState:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getPeekControlState()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->peekControlState:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public getTerminalCursorStyle()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isTerminalViewSelected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 233
    const-string p1, "SimpleTerminalClient"

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

    .line 230
    const-string p1, "SimpleTerminalClient"

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

    .line 232
    const-string p1, "SimpleTerminalClient"

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

    .line 239
    const-string p1, "SimpleTerminalClient"

    :cond_0
    const-string v0, "Stack trace"

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    if-nez p1, :cond_0

    .line 236
    const-string p1, "SimpleTerminalClient"

    :cond_0
    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 234
    const-string p1, "SimpleTerminalClient"

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

    .line 231
    const-string p1, "SimpleTerminalClient"

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final markActive()V
    .locals 2

    .line 42
    sget-object v0, Lcom/hermes/android/SimpleTerminalClient;->ACTIVE_GENERATION:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hermes/android/SimpleTerminalClient;->generation:J

    return-void
.end method

.method public onBell(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onColorsChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCopyTextToClipboard(Lcom/termux/terminal/TerminalSession;Ljava/lang/String;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->appContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    return-void

    .line 104
    :cond_3
    const-string v0, "hermes-terminal"

    check-cast v0, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "copy to clipboard failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimpleTerminalClient"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public onEmulatorSet()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V
    .locals 8

    .line 114
    iget-object v1, p0, Lcom/hermes/android/SimpleTerminalClient;->appContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    .line 116
    :cond_0
    :try_start_0
    const-string v0, "clipboard"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/content/ClipboardManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 117
    :cond_2
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 118
    :cond_3
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 121
    :cond_5
    sget-object v2, Lcom/hermes/android/ImageAttach;->INSTANCE:Lcom/hermes/android/ImageAttach;

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/hermes/android/ImageAttach;->imageUriFromClip(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 126
    invoke-virtual {p0}, Lcom/hermes/android/SimpleTerminalClient;->consumeStickyModifiers()V

    .line 132
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->onAttachClipboardImage:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 134
    invoke-interface {v0, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 138
    :cond_6
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    new-instance v6, Ljava/lang/Thread;

    .line 149
    new-instance v7, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;

    move-object v0, v7

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/hermes/android/SimpleTerminalClient$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/SimpleTerminalClient;)V

    .line 139
    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void

    .line 153
    :cond_7
    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    :cond_8
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_a

    .line 155
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v3}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    .line 156
    :cond_a
    invoke-virtual {p0}, Lcom/hermes/android/SimpleTerminalClient;->consumeStickyModifiers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "paste from clipboard failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimpleTerminalClient"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    return-void
.end method

.method public onScale(F)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public onSessionFinished(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    const-string v0, "finishedSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->onSessionFinished:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 0

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

    .line 87
    iget-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->onSessionTextChanged:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->onTextChangedExtra:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onTitleChanged(Lcom/termux/terminal/TerminalSession;)V
    .locals 1

    const-string v0, "changedSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public readAltKey()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->peekAltState:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readControlKey()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/hermes/android/SimpleTerminalClient;->peekControlState:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readFnKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readShiftKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setOnAttachClipboardImage(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/termux/terminal/TerminalSession;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->onAttachClipboardImage:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnConsumeStickyModifiers(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->onConsumeStickyModifiers:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnSessionFinished(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/termux/terminal/TerminalSession;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->onSessionFinished:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSessionTextChanged(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->onSessionTextChanged:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnTextChangedExtra(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->onTextChangedExtra:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setPeekAltState(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->peekAltState:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setPeekControlState(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/hermes/android/SimpleTerminalClient;->peekControlState:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public setTerminalShellPid(Lcom/termux/terminal/TerminalSession;I)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Shell PID: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimpleTerminalClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldBackButtonBeMappedToEscape()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldEnforceCharBasedInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldUseCtrlSpaceWorkaround()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
