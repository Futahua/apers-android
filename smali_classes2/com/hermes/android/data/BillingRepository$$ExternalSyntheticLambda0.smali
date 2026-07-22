.class public final synthetic Lcom/hermes/android/data/BillingRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/hermes/android/data/BillingRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/hermes/android/data/BillingRepository;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hermes/android/data/BillingRepository$$ExternalSyntheticLambda0;->f$0:Lcom/hermes/android/data/BillingRepository;

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/hermes/android/data/BillingRepository$$ExternalSyntheticLambda0;->f$0:Lcom/hermes/android/data/BillingRepository;

    invoke-static {v0, p1, p2}, Lcom/hermes/android/data/BillingRepository;->$r8$lambda$PnXnqjA1Jkc8CEPJqzhDmW_yc2I(Lcom/hermes/android/data/BillingRepository;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
