.class public final synthetic Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/TerminalSessionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/TerminalSessionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda5;->f$0:Lcom/hermes/android/TerminalSessionManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$4$$ExternalSyntheticLambda5;->f$0:Lcom/hermes/android/TerminalSessionManager;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {v0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$4;->$r8$lambda$psqeZNQCWutmTqBJGTAckoN3E8g(Lcom/hermes/android/TerminalSessionManager;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p1

    return-object p1
.end method
