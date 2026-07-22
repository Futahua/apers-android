.class public final synthetic Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda14;->f$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iput p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda14;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda14;->f$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda14;->f$1:I

    check-cast p1, Lcom/hermes/android/data/MoaSlot;

    invoke-static {v0, v1, p1}, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt;->$r8$lambda$kPklzHlj-IqceUMuNTsNuNXCmQY(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;ILcom/hermes/android/data/MoaSlot;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
