.class public final synthetic Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/LifecycleCoroutineScope;

.field public final synthetic f$1:Lcom/hermes/android/handoff/HandoffController;

.field public final synthetic f$2:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$5:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$6:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$7:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/hermes/android/handoff/HandoffController;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$0:Landroidx/lifecycle/LifecycleCoroutineScope;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$1:Lcom/hermes/android/handoff/HandoffController;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$3:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$4:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$5:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$6:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$7:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$0:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$1:Lcom/hermes/android/handoff/HandoffController;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$3:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$4:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$5:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$6:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda82;->f$7:Landroidx/compose/runtime/MutableState;

    move-object v8, p1

    check-cast v8, Lcom/journeyapps/barcodescanner/ScanIntentResult;

    invoke-static/range {v0 .. v8}, Lcom/hermes/android/MainActivityKt;->$r8$lambda$k6aslaLAlA1iexYbllSAsWXOEiI(Landroidx/lifecycle/LifecycleCoroutineScope;Lcom/hermes/android/handoff/HandoffController;Landroidx/appcompat/app/AppCompatActivity;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/journeyapps/barcodescanner/ScanIntentResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
