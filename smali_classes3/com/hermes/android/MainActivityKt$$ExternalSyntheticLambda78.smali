.class public final synthetic Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/BootstrapManager;

.field public final synthetic f$1:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$2:Lcom/hermes/android/TerminalSessionManager;

.field public final synthetic f$3:Lcom/hermes/android/data/BillingRepository;

.field public final synthetic f$4:Lcom/hermes/android/data/ProStatus;

.field public final synthetic f$5:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$6:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$0:Lcom/hermes/android/BootstrapManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$2:Lcom/hermes/android/TerminalSessionManager;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$3:Lcom/hermes/android/data/BillingRepository;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$4:Lcom/hermes/android/data/ProStatus;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$5:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$6:Lkotlin/jvm/functions/Function1;

    iput p8, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$7:I

    iput p9, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$8:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$0:Lcom/hermes/android/BootstrapManager;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$2:Lcom/hermes/android/TerminalSessionManager;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$3:Lcom/hermes/android/data/BillingRepository;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$4:Lcom/hermes/android/data/ProStatus;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$5:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$6:Lkotlin/jvm/functions/Function1;

    iget v7, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$7:I

    iget v8, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda78;->f$8:I

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static/range {v0 .. v10}, Lcom/hermes/android/MainActivityKt;->$r8$lambda$dWgY_EOmDrypgJFTT9UPk90bav8(Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
