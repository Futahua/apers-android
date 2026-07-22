.class public final Lcom/hermes/android/data/BillingRepository$connect$1;
.super Ljava/lang/Object;
.source "BillingRepository.kt"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hermes/android/data/BillingRepository;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/hermes/android/data/BillingRepository$connect$1",
        "Lcom/android/billingclient/api/BillingClientStateListener;",
        "onBillingSetupFinished",
        "",
        "result",
        "Lcom/android/billingclient/api/BillingResult;",
        "onBillingServiceDisconnected",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hermes/android/data/BillingRepository;


# direct methods
.method constructor <init>(Lcom/hermes/android/data/BillingRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/hermes/android/data/BillingRepository$connect$1;->this$0:Lcom/hermes/android/data/BillingRepository;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 60
    const-string v0, "BillingRepo"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/hermes/android/data/BillingRepository$connect$1;->this$0:Lcom/hermes/android/data/BillingRepository;

    invoke-static {v0}, Lcom/hermes/android/data/BillingRepository;->access$get_state$p(Lcom/hermes/android/data/BillingRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sget-object v1, Lcom/hermes/android/data/BillingRepository$PurchaseState$Idle;->INSTANCE:Lcom/hermes/android/data/BillingRepository$PurchaseState$Idle;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const-string v1, "BillingRepo"

    if-nez v0, :cond_0

    .line 49
    const-string p1, "Billing client connected"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/hermes/android/data/BillingRepository$connect$1;->this$0:Lcom/hermes/android/data/BillingRepository;

    invoke-static {p1}, Lcom/hermes/android/data/BillingRepository;->access$queryPurchases(Lcom/hermes/android/data/BillingRepository;)V

    .line 51
    iget-object p1, p0, Lcom/hermes/android/data/BillingRepository$connect$1;->this$0:Lcom/hermes/android/data/BillingRepository;

    invoke-static {p1}, Lcom/hermes/android/data/BillingRepository;->access$queryProductDetails(Lcom/hermes/android/data/BillingRepository;)V

    .line 52
    iget-object p1, p0, Lcom/hermes/android/data/BillingRepository$connect$1;->this$0:Lcom/hermes/android/data/BillingRepository;

    invoke-static {p1}, Lcom/hermes/android/data/BillingRepository;->access$get_state$p(Lcom/hermes/android/data/BillingRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    sget-object v0, Lcom/hermes/android/data/BillingRepository$PurchaseState$Ready;->INSTANCE:Lcom/hermes/android/data/BillingRepository$PurchaseState$Ready;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Billing setup failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/hermes/android/data/BillingRepository$connect$1;->this$0:Lcom/hermes/android/data/BillingRepository;

    invoke-static {v0}, Lcom/hermes/android/data/BillingRepository;->access$get_state$p(Lcom/hermes/android/data/BillingRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    new-instance v1, Lcom/hermes/android/data/BillingRepository$PurchaseState$Error;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getDebugMessage(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/hermes/android/data/BillingRepository$PurchaseState$Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
