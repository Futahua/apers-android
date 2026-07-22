.class public final synthetic Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/TerminalSessionManager;

.field public final synthetic f$1:Lcom/hermes/android/BootstrapManager;

.field public final synthetic f$2:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$3:Lcom/hermes/android/data/AdManager;

.field public final synthetic f$4:Lcom/hermes/android/data/BillingRepository;

.field public final synthetic f$5:Lcom/hermes/android/data/ProStatus;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AdManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$0:Lcom/hermes/android/TerminalSessionManager;

    iput-object p2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$1:Lcom/hermes/android/BootstrapManager;

    iput-object p3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$3:Lcom/hermes/android/data/AdManager;

    iput-object p5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$4:Lcom/hermes/android/data/BillingRepository;

    iput-object p6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$5:Lcom/hermes/android/data/ProStatus;

    iput p7, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$6:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$0:Lcom/hermes/android/TerminalSessionManager;

    iget-object v1, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$1:Lcom/hermes/android/BootstrapManager;

    iget-object v2, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$3:Lcom/hermes/android/data/AdManager;

    iget-object v4, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$4:Lcom/hermes/android/data/BillingRepository;

    iget-object v5, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$5:Lcom/hermes/android/data/ProStatus;

    iget v6, p0, Lcom/hermes/android/MainActivityKt$$ExternalSyntheticLambda102;->f$6:I

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static/range {v0 .. v8}, Lcom/hermes/android/MainActivityKt;->$r8$lambda$x9wFwInAzf2L03Jjty3GzxwEX74(Lcom/hermes/android/TerminalSessionManager;Lcom/hermes/android/BootstrapManager;Landroidx/appcompat/app/AppCompatActivity;Lcom/hermes/android/data/AdManager;Lcom/hermes/android/data/BillingRepository;Lcom/hermes/android/data/ProStatus;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
