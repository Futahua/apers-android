.class public final synthetic Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/pairing/PairingViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/pairing/PairingViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda79;->f$0:Lcom/hermes/android/pairing/PairingViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda79;->f$0:Lcom/hermes/android/pairing/PairingViewModel;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-static {v0, p1}, Lcom/hermes/android/MainActivityKt;->$r8$lambda$i3Hb2fxPgh8bZUqaTWgeARRumrc(Lcom/hermes/android/pairing/PairingViewModel;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p1

    return-object p1
.end method
