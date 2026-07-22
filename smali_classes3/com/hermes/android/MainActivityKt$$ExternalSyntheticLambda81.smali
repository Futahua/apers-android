.class public final synthetic Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

.field public final synthetic f$1:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic f$2:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$3:Landroidx/compose/runtime/MutableState;

.field public final synthetic f$4:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$0:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$1:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$2:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$3:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$4:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$0:Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$1:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$2:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$3:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda81;->f$4:Landroidx/compose/runtime/MutableState;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static/range {v0 .. v5}, Lcom/hermes/android/MainActivityKt;->$r8$lambda$Gzg-tpJCV_MqzqYZQj6bkSwvQg0(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p1

    return-object p1
.end method
