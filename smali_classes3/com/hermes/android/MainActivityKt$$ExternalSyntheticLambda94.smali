.class public final synthetic Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda94;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda94;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda94;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    check-cast p2, Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Lcom/hermes/android/MainActivityKt;->$r8$lambda$mTxojKHhF9yz6-Mh424lzctG05c(Ljava/util/concurrent/atomic/AtomicReference;Lcom/termux/terminal/TerminalSession;Landroid/net/Uri;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
