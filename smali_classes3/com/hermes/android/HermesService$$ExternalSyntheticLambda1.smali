.class public final synthetic Lcom/hermes/android/HermesService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/NullTerminalSessionClient;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/NullTerminalSessionClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/HermesService$$ExternalSyntheticLambda1;->f$0:Lcom/hermes/android/NullTerminalSessionClient;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/hermes/android/HermesService$$ExternalSyntheticLambda1;->f$0:Lcom/hermes/android/NullTerminalSessionClient;

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    invoke-static {v0, p1}, Lcom/hermes/android/HermesService;->$r8$lambda$gwQJjSrT2vNNpNzL2IPqmxyf-TA(Lcom/hermes/android/NullTerminalSessionClient;Lcom/termux/terminal/TerminalSession;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
