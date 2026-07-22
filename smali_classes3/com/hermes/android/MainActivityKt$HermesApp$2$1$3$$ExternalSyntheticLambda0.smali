.class public final synthetic Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/BootstrapManager;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/BootstrapManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3$$ExternalSyntheticLambda0;->f$0:Lcom/hermes/android/BootstrapManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3$$ExternalSyntheticLambda0;->f$0:Lcom/hermes/android/BootstrapManager;

    check-cast p1, Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;

    invoke-static {v0, p1}, Lcom/hermes/android/MainActivityKt$HermesApp$2$1$3;->$r8$lambda$BXOkfqp1HETlaEPIQIA1Mr4MshM(Lcom/hermes/android/BootstrapManager;Lcom/hermes/android/DpkgHealPolicy$MaintenanceStep;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
