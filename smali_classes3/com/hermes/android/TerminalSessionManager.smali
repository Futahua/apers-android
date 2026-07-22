.class public final Lcom/hermes/android/TerminalSessionManager;
.super Ljava/lang/Object;
.source "TerminalSessionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hermes/android/TerminalSessionManager$Companion;,
        Lcom/hermes/android/TerminalSessionManager$HermesBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTerminalSessionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TerminalSessionManager.kt\ncom/hermes/android/TerminalSessionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n1567#2:255\n1598#2,4:256\n1755#2,3:260\n1872#2,3:263\n774#2:266\n865#2,2:267\n1863#2,2:269\n1863#2,2:271\n1863#2,2:273\n*S KotlinDebug\n*F\n+ 1 TerminalSessionManager.kt\ncom/hermes/android/TerminalSessionManager\n*L\n101#1:255\n101#1:256,4\n109#1:260,3\n113#1:263,3\n236#1:266\n236#1:267,2\n237#1:269,2\n242#1:271,2\n246#1:273,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 >2\u00020\u0001:\u0002>?B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0015J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0008J\u0008\u0010%\u001a\u00020\u0017H\u0002J\u0018\u0010(\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020+0*0)J\u0006\u0010,\u001a\u00020+J\u001c\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0008\u0018\u00010*2\u0006\u0010.\u001a\u00020\u000bJ\u000e\u0010/\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0008J,\u00102\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\u000bJ\u0010\u00106\u001a\u0004\u0018\u00010\u00082\u0006\u00107\u001a\u00020\rJ\u000e\u00108\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0008J\u0006\u00109\u001a\u00020\u0017J\u001a\u0010:\u001a\u00020\u00172\u0012\u0010;\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00170<J\u0006\u0010=\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00150\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0010\u0010!\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\"\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0011\u0010&\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010 R\u0011\u00100\u001a\u00020+8F\u00a2\u0006\u0006\u001a\u0004\u00080\u00101\u00a8\u0006@"
    }
    d2 = {
        "Lcom/hermes/android/TerminalSessionManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "sessions",
        "",
        "Lcom/termux/terminal/TerminalSession;",
        "sessionLabels",
        "",
        "",
        "activeIndex",
        "",
        "sessionClient",
        "Lcom/termux/terminal/TerminalSessionClient;",
        "getSessionClient",
        "()Lcom/termux/terminal/TerminalSessionClient;",
        "setSessionClient",
        "(Lcom/termux/terminal/TerminalSessionClient;)V",
        "hermesBindings",
        "Lcom/hermes/android/TerminalSessionManager$HermesBinding;",
        "setHermesBinding",
        "",
        "session",
        "binding",
        "hermesBinding",
        "activeSession",
        "getActiveSession",
        "()Lcom/termux/terminal/TerminalSession;",
        "activeSessionIndex",
        "getActiveSessionIndex",
        "()I",
        "activeHandleSnapshot",
        "activeSessionHandleSnapshot",
        "getActiveSessionHandleSnapshot",
        "()Ljava/lang/String;",
        "publishActiveHandle",
        "sessionCount",
        "getSessionCount",
        "sessionInfoList",
        "",
        "Lkotlin/Pair;",
        "",
        "hasRunningSession",
        "findRunningSession",
        "labelContains",
        "getLabel",
        "isAtMaxSessions",
        "()Z",
        "createSession",
        "command",
        "client",
        "label",
        "switchSession",
        "index",
        "closeSession",
        "pruneDeadSessions",
        "forEachSession",
        "action",
        "Lkotlin/Function1;",
        "closeAll",
        "Companion",
        "HermesBinding",
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

.field public static final Companion:Lcom/hermes/android/TerminalSessionManager$Companion;

.field public static final MAX_SESSIONS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "TerminalSessionManager"

.field public static final TERMINAL_SCROLLBACK_ROWS:I = 0x2710

.field private static volatile processInstance:Lcom/hermes/android/TerminalSessionManager;


# instance fields
.field private volatile activeHandleSnapshot:Ljava/lang/String;

.field private activeIndex:I

.field private final context:Landroid/content/Context;

.field private final hermesBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/termux/terminal/TerminalSession;",
            "Lcom/hermes/android/TerminalSessionManager$HermesBinding;",
            ">;"
        }
    .end annotation
.end field

.field private sessionClient:Lcom/termux/terminal/TerminalSessionClient;

.field private final sessionLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/termux/terminal/TerminalSession;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hermes/android/TerminalSessionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hermes/android/TerminalSessionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/hermes/android/TerminalSessionManager;->Companion:Lcom/hermes/android/TerminalSessionManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/hermes/android/TerminalSessionManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/TerminalSessionManager;->context:Landroid/content/Context;

    .line 46
    sput-object p0, Lcom/hermes/android/TerminalSessionManager;->processInstance:Lcom/hermes/android/TerminalSessionManager;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/hermes/android/TerminalSessionManager;->sessionLabels:Ljava/util/Map;

    .line 65
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/hermes/android/TerminalSessionManager;->hermesBindings:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getProcessInstance$cp()Lcom/hermes/android/TerminalSessionManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/hermes/android/TerminalSessionManager;->processInstance:Lcom/hermes/android/TerminalSessionManager;

    return-object v0
.end method

.method public static synthetic createSession$default(Lcom/hermes/android/TerminalSessionManager;Ljava/lang/String;Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;ILjava/lang/Object;)Lcom/termux/terminal/TerminalSession;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 135
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/hermes/android/TerminalSessionManager;->createSession(Ljava/lang/String;Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;)Lcom/termux/terminal/TerminalSession;

    move-result-object p0

    return-object p0
.end method

.method private final publishActiveHandle()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    iget v1, p0, Lcom/hermes/android/TerminalSessionManager;->activeIndex:I

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/termux/terminal/TerminalSession;->mHandle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->activeHandleSnapshot:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final closeAll()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 273
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/terminal/TerminalSession;

    .line 246
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    goto :goto_0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessionLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 249
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->hermesBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lcom/hermes/android/TerminalSessionManager;->activeIndex:I

    .line 251
    invoke-direct {p0}, Lcom/hermes/android/TerminalSessionManager;->publishActiveHandle()V

    return-void
.end method

.method public final closeSession(Lcom/termux/terminal/TerminalSession;)V
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    .line 224
    iget-object v1, p0, Lcom/hermes/android/TerminalSessionManager;->sessionLabels:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/hermes/android/TerminalSessionManager;->hermesBindings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object p1, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 227
    iget p1, p0, Lcom/hermes/android/TerminalSessionManager;->activeIndex:I

    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 228
    iget-object p1, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    iput p1, p0, Lcom/hermes/android/TerminalSessionManager;->activeIndex:I

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/hermes/android/TerminalSessionManager;->publishActiveHandle()V

    :cond_1
    return-void
.end method

.method public final createSession(Ljava/lang/String;Lcom/termux/terminal/TerminalSessionClient;Ljava/lang/String;)Lcom/termux/terminal/TerminalSession;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 140
    iget-object v2, v0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    const-string v4, ")"

    const-string v5, "TerminalSessionManager"

    const/4 v6, 0x0

    if-lt v2, v3, :cond_0

    .line 141
    iget-object v1, v0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create session: limit 8 reached (current="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    if-nez p2, :cond_2

    .line 144
    iget-object v2, v0, Lcom/hermes/android/TerminalSessionManager;->sessionClient:Lcom/termux/terminal/TerminalSessionClient;

    if-eqz v2, :cond_1

    move-object v13, v2

    goto :goto_0

    .line 145
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No TerminalSessionClient set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object/from16 v13, p2

    .line 147
    :goto_0
    iget-object v2, v0, Lcom/hermes/android/TerminalSessionManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/usr"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/home"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 153
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/bin/bash"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 154
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/bin/sh"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 155
    :cond_4
    const-string v2, "/system/bin/sh"

    .line 159
    :goto_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    const/4 v8, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-lt v3, v7, :cond_7

    .line 160
    const-string v3, "/data/"

    invoke-static {v2, v3, v15, v8, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 162
    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    const-string v7, "SUPPORTED_64_BIT_ABIS"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    if-nez v3, :cond_5

    move v3, v14

    goto :goto_2

    :cond_5
    move v3, v15

    :goto_2
    if-nez v3, :cond_6

    .line 163
    const-string v3, "/system/bin/linker64"

    goto :goto_3

    :cond_6
    const-string v3, "/system/bin/linker"

    goto :goto_3

    :cond_7
    move-object v3, v6

    .line 168
    :goto_3
    const-string v7, "-c"

    const-string v10, "-l"

    const/4 v11, 0x3

    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    const/4 v10, 0x4

    .line 171
    new-array v10, v10, [Ljava/lang/String;

    aput-object v3, v10, v15

    aput-object v2, v10, v14

    aput-object v7, v10, v8

    aput-object v1, v10, v11

    goto :goto_4

    .line 173
    :cond_8
    new-array v7, v11, [Ljava/lang/String;

    aput-object v3, v7, v15

    aput-object v2, v7, v14

    aput-object v10, v7, v8

    move-object v10, v7

    :goto_4
    move-object v8, v3

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    .line 178
    new-array v3, v11, [Ljava/lang/String;

    aput-object v2, v3, v15

    aput-object v7, v3, v14

    aput-object v1, v3, v8

    goto :goto_5

    .line 180
    :cond_a
    new-array v3, v8, [Ljava/lang/String;

    aput-object v2, v3, v15

    aput-object v10, v3, v14

    :goto_5
    move-object v8, v2

    move-object v10, v3

    .line 184
    :goto_6
    sget-object v3, Lcom/hermes/android/EnvironmentBuilder;->INSTANCE:Lcom/hermes/android/EnvironmentBuilder;

    iget-object v7, v0, Lcom/hermes/android/TerminalSessionManager;->context:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/hermes/android/EnvironmentBuilder;->build(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v11

    .line 186
    new-instance v3, Lcom/termux/terminal/TerminalSession;

    const/16 v7, 0x2710

    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v7, v3

    .line 186
    invoke-direct/range {v7 .. v13}, Lcom/termux/terminal/TerminalSession;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Lcom/termux/terminal/TerminalSessionClient;)V

    .line 198
    iget-object v7, v0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v7, v0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v14

    iput v7, v0, Lcom/hermes/android/TerminalSessionManager;->activeIndex:I

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/hermes/android/TerminalSessionManager;->publishActiveHandle()V

    if-nez p3, :cond_c

    if-eqz v1, :cond_b

    .line 203
    move-object v7, v1

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v14, [Ljava/lang/String;

    const-string v6, " "

    aput-object v6, v8, v15

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v14, [Ljava/lang/String;

    const-string v6, "/"

    aput-object v6, v8, v15

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_b
    if-nez v6, :cond_d

    .line 204
    iget-object v6, v0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Shell "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_c
    move-object/from16 v6, p3

    .line 205
    :cond_d
    :goto_7
    iget-object v7, v0, Lcom/hermes/android/TerminalSessionManager;->sessionLabels:Ljava/util/Map;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v7, v0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Created session #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " label="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (shell="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", cmd="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public final findRunningSession(Ljava/lang/String;)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/termux/terminal/TerminalSession;",
            ">;"
        }
    .end annotation

    const-string v0, "labelContains"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 264
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/termux/terminal/TerminalSession;

    .line 114
    iget-object v4, p0, Lcom/hermes/android/TerminalSessionManager;->sessionLabels:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    .line 115
    :cond_1
    check-cast v4, Ljava/lang/CharSequence;

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final forEachSession(Lkotlin/jvm/functions/Function1;)V
    .locals 2
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

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 271
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getActiveSession()Lcom/termux/terminal/TerminalSession;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    iget v1, p0, Lcom/hermes/android/TerminalSessionManager;->activeIndex:I

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public final getActiveSessionHandleSnapshot()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->activeHandleSnapshot:Ljava/lang/String;

    return-object v0
.end method

.method public final getActiveSessionIndex()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/hermes/android/TerminalSessionManager;->activeIndex:I

    return v0
.end method

.method public final getLabel(Lcom/termux/terminal/TerminalSession;)Ljava/lang/String;
    .locals 2

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/hermes/android/TerminalSessionManager;->sessionLabels:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Shell "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final getSessionClient()Lcom/termux/terminal/TerminalSessionClient;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessionClient:Lcom/termux/terminal/TerminalSessionClient;

    return-object v0
.end method

.method public final getSessionCount()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final hasRunningSession()Z
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 260
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/terminal/TerminalSession;

    .line 109
    invoke-virtual {v1}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public final hermesBinding(Lcom/termux/terminal/TerminalSession;)Lcom/hermes/android/TerminalSessionManager$HermesBinding;
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->hermesBindings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/TerminalSessionManager$HermesBinding;

    return-object p1
.end method

.method public final isAtMaxSessions()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final pruneDeadSessions()V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 267
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/termux/terminal/TerminalSession;

    .line 236
    invoke-virtual {v3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 237
    check-cast v1, Ljava/lang/Iterable;

    .line 269
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/terminal/TerminalSession;

    .line 237
    invoke-virtual {p0, v1}, Lcom/hermes/android/TerminalSessionManager;->closeSession(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final sessionInfoList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 257
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    .line 258
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v3, Lcom/termux/terminal/TerminalSession;

    .line 102
    iget-object v2, p0, Lcom/hermes/android/TerminalSessionManager;->sessionLabels:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Shell "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    :cond_1
    invoke-virtual {v3}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 258
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 259
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final setHermesBinding(Lcom/termux/terminal/TerminalSession;Lcom/hermes/android/TerminalSessionManager$HermesBinding;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->hermesBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setSessionClient(Lcom/termux/terminal/TerminalSessionClient;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/hermes/android/TerminalSessionManager;->sessionClient:Lcom/termux/terminal/TerminalSessionClient;

    return-void
.end method

.method public final switchSession(I)Lcom/termux/terminal/TerminalSession;
    .locals 1

    if-ltz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 213
    iput p1, p0, Lcom/hermes/android/TerminalSessionManager;->activeIndex:I

    .line 214
    invoke-direct {p0}, Lcom/hermes/android/TerminalSessionManager;->publishActiveHandle()V

    .line 215
    iget-object v0, p0, Lcom/hermes/android/TerminalSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
