.class public final synthetic Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

.field public final synthetic f$1:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f$2:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

.field public final synthetic f$3:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iput-object p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$2:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    iput-object p4, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$3:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    iput p5, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$4:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$0:Lcom/hermes/android/ui/moa/MoaCouncilViewModel;

    iget-object v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$1:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$2:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;

    iget-object v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$3:Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;

    iget v4, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda20;->f$4:I

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt;->$r8$lambda$Gv1xTKXe9eRDHKQDukrd6YtlhyI(Lcom/hermes/android/ui/moa/MoaCouncilViewModel;Lkotlinx/coroutines/CoroutineScope;Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
