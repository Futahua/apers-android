.class public final synthetic Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/hermes/android/BootstrapManager;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda36;->f$0:Lkotlin/jvm/functions/Function1;

    iput p2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda36;->f$1:I

    iput-object p3, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda36;->f$2:Lcom/hermes/android/BootstrapManager;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda36;->f$0:Lkotlin/jvm/functions/Function1;

    iget v1, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda36;->f$1:I

    iget-object v2, p0, Lcom/hermes/android/BootstrapManager$$ExternalSyntheticLambda36;->f$2:Lcom/hermes/android/BootstrapManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/hermes/android/BootstrapManager;->$r8$lambda$N2DpdsQVzHVxoS3pPxmtpXMJaUk(Lkotlin/jvm/functions/Function1;ILcom/hermes/android/BootstrapManager;ILjava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
