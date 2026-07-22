.class public final synthetic Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/BootstrapManager;

.field public final synthetic f$1:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$4:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$0:Lcom/hermes/android/BootstrapManager;

    iput-object p2, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$0:Lcom/hermes/android/BootstrapManager;

    iget-object v1, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/hermes/android/ui/EdgeFeaturesSheetKt$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/functions/Function0;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/hermes/android/ui/EdgeFeaturesSheetKt;->$r8$lambda$kVPuon6E5jbHXnEbXqkTNoG2g0s(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
