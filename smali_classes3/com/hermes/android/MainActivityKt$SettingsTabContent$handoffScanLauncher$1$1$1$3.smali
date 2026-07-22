.class final Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5577:1\n1#2:5578\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.hermes.android.MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3"
    f = "MainActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $activity:Landroidx/appcompat/app/AppCompatActivity;

.field final synthetic $handoffError$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffImportedSessionId$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffReceiving$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handoffResult$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/handoff/HandoffImporter$Stats;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $outcome:Ljava/lang/Object;

.field final synthetic $peer:Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/hermes/android/handoff/HandoffImporter$Stats;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$outcome:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffReceiving$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$peer:Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffResult$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffImportedSessionId$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffError$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$outcome:Ljava/lang/Object;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffReceiving$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$peer:Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffResult$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffImportedSessionId$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffError$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/MutableState;Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 2533
    iget v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2534
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffReceiving$delegate:Landroidx/compose/runtime/MutableState;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$270(Landroidx/compose/runtime/MutableState;Z)V

    .line 2535
    iget-object p1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$outcome:Ljava/lang/Object;

    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$peer:Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffResult$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffImportedSessionId$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/hermes/android/handoff/HandoffImporter$Stats;

    .line 2536
    invoke-static {v1, v3}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$273(Landroidx/compose/runtime/MutableState;Lcom/hermes/android/handoff/HandoffImporter$Stats;)V

    .line 2537
    invoke-virtual {v0}, Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$276(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 2539
    :cond_0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$activity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3;->$handoffError$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/hermes/android/UiErrorKt;->uiMessage(Ljava/lang/Throwable;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hermes/android/MainActivityKt;->access$SettingsTabContent$lambda$267(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 2540
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 2533
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
