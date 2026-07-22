.class public final synthetic Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$1:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$2:Lcom/hermes/android/TerminalSessionManager;

.field public final synthetic f$3:Lcom/hermes/android/chat/ChatSkinController;

.field public final synthetic f$4:Lcom/termux/terminal/TerminalSession;

.field public final synthetic f$5:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/chat/ChatSkinController;Lcom/termux/terminal/TerminalSession;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$0:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$2:Lcom/hermes/android/TerminalSessionManager;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$3:Lcom/hermes/android/chat/ChatSkinController;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$4:Lcom/termux/terminal/TerminalSession;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$5:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$0:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$2:Lcom/hermes/android/TerminalSessionManager;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$3:Lcom/hermes/android/chat/ChatSkinController;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$4:Lcom/termux/terminal/TerminalSession;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$5:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda43;->f$7:Ljava/lang/String;

    move-object v8, p1

    check-cast v8, Lcom/termux/terminal/TerminalSession;

    move-object v9, p2

    check-cast v9, Landroid/net/Uri;

    invoke-static/range {v0 .. v9}, Lcom/hermes/android/MainActivityKt;->$r8$lambda$Dh7zFCAeJ02PZwz4vrI981whMhI(Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/chat/ChatSkinController;Lcom/termux/terminal/TerminalSession;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/String;Lcom/termux/terminal/TerminalSession;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
