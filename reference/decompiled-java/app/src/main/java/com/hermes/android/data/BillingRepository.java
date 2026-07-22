package com.hermes.android.data;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryPurchasesParams;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: BillingRepository.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 '2\u00020\u0001:\u0002&'B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u0014H\u0002J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u001bJ \u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001e2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 H\u0016J\u0010\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020!H\u0002J\u0010\u0010$\u001a\u00020\u00142\u0006\u0010#\u001a\u00020!H\u0002J\u0006\u0010%\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/hermes/android/data/BillingRepository;", "Lcom/android/billingclient/api/PurchasesUpdatedListener;", "context", "Landroid/content/Context;", "proStatus", "Lcom/hermes/android/data/ProStatus;", "<init>", "(Landroid/content/Context;Lcom/hermes/android/data/ProStatus;)V", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/hermes/android/data/BillingRepository$PurchaseState;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "billingClient", "Lcom/android/billingclient/api/BillingClient;", "productDetails", "Lcom/android/billingclient/api/ProductDetails;", "connect", BuildConfig.FLAVOR, "queryPurchases", "queryProductDetails", "launchPurchaseFlow", "activity", "Landroid/app/Activity;", "getFormattedPrice", BuildConfig.FLAVOR, "onPurchasesUpdated", "result", "Lcom/android/billingclient/api/BillingResult;", "purchases", BuildConfig.FLAVOR, "Lcom/android/billingclient/api/Purchase;", "handlePurchase", "purchase", "acknowledgePurchase", "destroy", "PurchaseState", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class BillingRepository implements PurchasesUpdatedListener {
    public static final String PRODUCT_ID = "hermes_pro";
    private static final String TAG = "BillingRepo";
    private final MutableStateFlow<PurchaseState> _state;
    private final BillingClient billingClient;
    private final ProStatus proStatus;
    private ProductDetails productDetails;
    private final StateFlow<PurchaseState> state;
    public static final int $stable = 8;

    public BillingRepository(Context context, ProStatus proStatus) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(proStatus, "proStatus");
        this.proStatus = proStatus;
        MutableStateFlow<PurchaseState> MutableStateFlow = StateFlowKt.MutableStateFlow(PurchaseState.Idle.INSTANCE);
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
        BillingClient billingClientBuild = BillingClient.newBuilder(context).setListener(this).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
        Intrinsics.checkNotNullExpressionValue(billingClientBuild, "build(...)");
        this.billingClient = billingClientBuild;
    }

    /* JADX INFO: compiled from: BillingRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0005\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/hermes/android/data/BillingRepository$PurchaseState;", BuildConfig.FLAVOR, "<init>", "()V", "Idle", "Connecting", "Ready", "Error", "Purchased", "Lcom/hermes/android/data/BillingRepository$PurchaseState$Connecting;", "Lcom/hermes/android/data/BillingRepository$PurchaseState$Error;", "Lcom/hermes/android/data/BillingRepository$PurchaseState$Idle;", "Lcom/hermes/android/data/BillingRepository$PurchaseState$Purchased;", "Lcom/hermes/android/data/BillingRepository$PurchaseState$Ready;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static abstract class PurchaseState {
        public static final int $stable = 0;

        public /* synthetic */ PurchaseState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: BillingRepository.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/hermes/android/data/BillingRepository$PurchaseState$Idle;", "Lcom/hermes/android/data/BillingRepository$PurchaseState;", "<init>", "()V", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Idle extends PurchaseState {
            public static final int $stable = 0;
            public static final Idle INSTANCE = new Idle();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Idle)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 1748185413;
            }

            public String toString() {
                return "Idle";
            }

            private Idle() {
                super(null);
            }
        }

        private PurchaseState() {
        }

        /* JADX INFO: compiled from: BillingRepository.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/hermes/android/data/BillingRepository$PurchaseState$Connecting;", "Lcom/hermes/android/data/BillingRepository$PurchaseState;", "<init>", "()V", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Connecting extends PurchaseState {
            public static final int $stable = 0;
            public static final Connecting INSTANCE = new Connecting();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Connecting)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1938958487;
            }

            public String toString() {
                return "Connecting";
            }

            private Connecting() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: BillingRepository.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/hermes/android/data/BillingRepository$PurchaseState$Ready;", "Lcom/hermes/android/data/BillingRepository$PurchaseState;", "<init>", "()V", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Ready extends PurchaseState {
            public static final int $stable = 0;
            public static final Ready INSTANCE = new Ready();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Ready)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return -1632496046;
            }

            public String toString() {
                return "Ready";
            }

            private Ready() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: BillingRepository.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/BillingRepository$PurchaseState$Error;", "Lcom/hermes/android/data/BillingRepository$PurchaseState;", "message", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Error extends PurchaseState {
            public static final int $stable = 0;
            private final String message;

            public static /* synthetic */ Error copy$default(Error error, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = error.message;
                }
                return error.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getMessage() {
                return this.message;
            }

            public final Error copy(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                return new Error(message);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Error) && Intrinsics.areEqual(this.message, ((Error) other).message);
            }

            public int hashCode() {
                return this.message.hashCode();
            }

            public String toString() {
                return "Error(message=" + this.message + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(String str) {
                super(null);
                Intrinsics.checkNotNullParameter(str, "message");
                this.message = str;
            }

            public final String getMessage() {
                return this.message;
            }
        }

        /* JADX INFO: compiled from: BillingRepository.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÇ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0003J\t\u0010\b\u001a\u00020\tHÖ\u0001J\t\u0010\n\u001a\u00020\u000bHÖ\u0001¨\u0006\f"}, d2 = {"Lcom/hermes/android/data/BillingRepository$PurchaseState$Purchased;", "Lcom/hermes/android/data/BillingRepository$PurchaseState;", "<init>", "()V", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Purchased extends PurchaseState {
            public static final int $stable = 0;
            public static final Purchased INSTANCE = new Purchased();

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Purchased)) {
                    return false;
                }
                return true;
            }

            public int hashCode() {
                return 110618802;
            }

            public String toString() {
                return "Purchased";
            }

            private Purchased() {
                super(null);
            }
        }
    }

    public final StateFlow<PurchaseState> getState() {
        return this.state;
    }

    public final void connect() {
        this._state.setValue(PurchaseState.Connecting.INSTANCE);
        this.billingClient.startConnection(new BillingClientStateListener() { // from class: com.hermes.android.data.BillingRepository.connect.1
            public void onBillingSetupFinished(BillingResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (result.getResponseCode() == 0) {
                    Log.d(BillingRepository.TAG, "Billing client connected");
                    BillingRepository.this.queryPurchases();
                    BillingRepository.this.queryProductDetails();
                    BillingRepository.this._state.setValue(PurchaseState.Ready.INSTANCE);
                    return;
                }
                Log.w(BillingRepository.TAG, "Billing setup failed: " + result.getDebugMessage());
                MutableStateFlow mutableStateFlow = BillingRepository.this._state;
                String debugMessage = result.getDebugMessage();
                Intrinsics.checkNotNullExpressionValue(debugMessage, "getDebugMessage(...)");
                mutableStateFlow.setValue(new PurchaseState.Error(debugMessage));
            }

            public void onBillingServiceDisconnected() {
                Log.w(BillingRepository.TAG, "Billing service disconnected");
                BillingRepository.this._state.setValue(PurchaseState.Idle.INSTANCE);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void queryPurchases() {
        this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.hermes.android.data.BillingRepository$$ExternalSyntheticLambda0
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                BillingRepository.queryPurchases$lambda$1(this.f$0, billingResult, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryPurchases$lambda$1(BillingRepository billingRepository, BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(billingResult, "result");
        Intrinsics.checkNotNullParameter(list, "purchases");
        if (billingResult.getResponseCode() == 0) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Purchase purchase = (Purchase) it.next();
                if (purchase.getProducts().contains(PRODUCT_ID) && purchase.getPurchaseState() == 1) {
                    billingRepository.proStatus.setPro(true);
                    billingRepository._state.setValue(PurchaseState.Purchased.INSTANCE);
                    if (!purchase.isAcknowledged()) {
                        Intrinsics.checkNotNull(purchase);
                        billingRepository.acknowledgePurchase(purchase);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void queryProductDetails() {
        this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(CollectionsKt.listOf(QueryProductDetailsParams.Product.newBuilder().setProductId(PRODUCT_ID).setProductType("inapp").build())).build(), new ProductDetailsResponseListener() { // from class: com.hermes.android.data.BillingRepository$$ExternalSyntheticLambda2
            public final void onProductDetailsResponse(BillingResult billingResult, List list) {
                BillingRepository.queryProductDetails$lambda$2(this.f$0, billingResult, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryProductDetails$lambda$2(BillingRepository billingRepository, BillingResult billingResult, List list) {
        Intrinsics.checkNotNullParameter(billingResult, "result");
        Intrinsics.checkNotNullParameter(list, "detailsList");
        Log.d(TAG, "queryProductDetails response: code=" + billingResult.getResponseCode() + ", msg=" + billingResult.getDebugMessage() + ", count=" + list.size());
        if (billingResult.getResponseCode() != 0) {
            Log.w(TAG, "queryProductDetails failed: " + billingResult.getDebugMessage());
            return;
        }
        ProductDetails productDetails = (ProductDetails) CollectionsKt.firstOrNull(list);
        billingRepository.productDetails = productDetails;
        if (productDetails != null) {
            Log.d(TAG, "Product details loaded: " + (productDetails != null ? productDetails.getName() : null) + ", price=" + billingRepository.getFormattedPrice());
        } else {
            Log.w(TAG, "Product 'hermes_pro' not found — is it active on Play Console for this package?");
        }
    }

    public final void launchPurchaseFlow(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        ProductDetails productDetails = this.productDetails;
        if (productDetails == null) {
            Log.w(TAG, "Product details not loaded yet");
            this._state.setValue(new PurchaseState.Error("Product details not available. Please try again."));
        } else {
            BillingFlowParams billingFlowParamsBuild = BillingFlowParams.newBuilder().setProductDetailsParamsList(CollectionsKt.listOf(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).build())).build();
            Intrinsics.checkNotNullExpressionValue(billingFlowParamsBuild, "build(...)");
            this.billingClient.launchBillingFlow(activity, billingFlowParamsBuild);
        }
    }

    public final String getFormattedPrice() {
        ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails;
        String formattedPrice;
        ProductDetails productDetails = this.productDetails;
        return (productDetails == null || (oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails()) == null || (formattedPrice = oneTimePurchaseOfferDetails.getFormattedPrice()) == null) ? "$5.99" : formattedPrice;
    }

    public void onPurchasesUpdated(BillingResult result, List<Purchase> purchases) {
        Intrinsics.checkNotNullParameter(result, "result");
        int responseCode = result.getResponseCode();
        if (responseCode == 0) {
            if (purchases != null) {
                Iterator<T> it = purchases.iterator();
                while (it.hasNext()) {
                    handlePurchase((Purchase) it.next());
                }
                return;
            }
            return;
        }
        if (responseCode == 1) {
            Log.d(TAG, "Purchase cancelled by user");
            return;
        }
        Log.w(TAG, "Purchase error: " + result.getDebugMessage());
        MutableStateFlow<PurchaseState> mutableStateFlow = this._state;
        String debugMessage = result.getDebugMessage();
        Intrinsics.checkNotNullExpressionValue(debugMessage, "getDebugMessage(...)");
        mutableStateFlow.setValue(new PurchaseState.Error(debugMessage));
    }

    private final void handlePurchase(Purchase purchase) {
        if (purchase.getPurchaseState() == 1) {
            this.proStatus.setPro(true);
            this._state.setValue(PurchaseState.Purchased.INSTANCE);
            if (!purchase.isAcknowledged()) {
                acknowledgePurchase(purchase);
            }
            Log.d(TAG, "Purchase successful — Pro activated");
        }
    }

    private final void acknowledgePurchase(Purchase purchase) {
        AcknowledgePurchaseParams acknowledgePurchaseParamsBuild = AcknowledgePurchaseParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build();
        Intrinsics.checkNotNullExpressionValue(acknowledgePurchaseParamsBuild, "build(...)");
        this.billingClient.acknowledgePurchase(acknowledgePurchaseParamsBuild, new AcknowledgePurchaseResponseListener() { // from class: com.hermes.android.data.BillingRepository$$ExternalSyntheticLambda1
            public final void onAcknowledgePurchaseResponse(BillingResult billingResult) {
                BillingRepository.acknowledgePurchase$lambda$4(billingResult);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acknowledgePurchase$lambda$4(BillingResult billingResult) {
        Intrinsics.checkNotNullParameter(billingResult, "result");
        if (billingResult.getResponseCode() == 0) {
            Log.d(TAG, "Purchase acknowledged");
        } else {
            Log.w(TAG, "Acknowledge failed: " + billingResult.getDebugMessage());
        }
    }

    public final void destroy() {
        this.billingClient.endConnection();
    }
}
