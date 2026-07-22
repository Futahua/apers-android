.class public final synthetic Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/TerminalSessionManager;

.field public final synthetic f$1:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$5:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/TerminalSessionManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$0:Lcom/hermes/android/TerminalSessionManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$1:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$3:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$4:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$5:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$6:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$0:Lcom/hermes/android/TerminalSessionManager;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$1:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$3:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$4:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$5:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20$$ExternalSyntheticLambda16;->f$6:Landroidx/compose/runtime/MutableState;

    move-object v7, p1

    check-cast v7, Landroid/content/Context;

    invoke-static/range {v0 .. v7}, Lcom/hermes/android/MainActivityKt$TerminalTabContent$20;->$r8$lambda$bS2cWIr1cSWFxbV2NQfJDwRF5fU(Lcom/hermes/android/TerminalSessionManager;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/compose/runtime/MutableState;Landroid/content/Context;)Lcom/termux/view/TerminalView;

    move-result-object p1

    return-object p1
.end method
