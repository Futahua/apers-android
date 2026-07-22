.class public final synthetic Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda13;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda13;->f$1:J

    iput p4, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda13;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda13;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda13;->f$1:J

    iget v3, p0, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt$$ExternalSyntheticLambda13;->f$2:I

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/hermes/android/ui/moa/MoaCouncilScreenKt;->$r8$lambda$RH3fFPVh1bM9k7Sn7Z0uXOwj3b4(Ljava/lang/String;JILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
