package com.hermes.android.pairing;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PairingServer.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J;\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/hermes/android/pairing/PairingConfig;", BuildConfig.FLAVOR, "providerId", BuildConfig.FLAVOR, "apiKey", "baseUrl", "modelId", "apiMode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getProviderId", "()Ljava/lang/String;", "getApiKey", "getBaseUrl", "getModelId", "getApiMode", "component1", "component2", "component3", "component4", "component5", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class PairingConfig {
    public static final int $stable = 0;
    private final String apiKey;
    private final String apiMode;
    private final String baseUrl;
    private final String modelId;
    private final String providerId;

    public static /* synthetic */ PairingConfig copy$default(PairingConfig pairingConfig, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = pairingConfig.providerId;
        }
        if ((i & 2) != 0) {
            str2 = pairingConfig.apiKey;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = pairingConfig.baseUrl;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = pairingConfig.modelId;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = pairingConfig.apiMode;
        }
        return pairingConfig.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProviderId() {
        return this.providerId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApiKey() {
        return this.apiKey;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getModelId() {
        return this.modelId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getApiMode() {
        return this.apiMode;
    }

    public final PairingConfig copy(String providerId, String apiKey, String baseUrl, String modelId, String apiMode) {
        Intrinsics.checkNotNullParameter(providerId, "providerId");
        Intrinsics.checkNotNullParameter(apiKey, "apiKey");
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Intrinsics.checkNotNullParameter(modelId, "modelId");
        Intrinsics.checkNotNullParameter(apiMode, "apiMode");
        return new PairingConfig(providerId, apiKey, baseUrl, modelId, apiMode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PairingConfig)) {
            return false;
        }
        PairingConfig pairingConfig = (PairingConfig) other;
        return Intrinsics.areEqual(this.providerId, pairingConfig.providerId) && Intrinsics.areEqual(this.apiKey, pairingConfig.apiKey) && Intrinsics.areEqual(this.baseUrl, pairingConfig.baseUrl) && Intrinsics.areEqual(this.modelId, pairingConfig.modelId) && Intrinsics.areEqual(this.apiMode, pairingConfig.apiMode);
    }

    public int hashCode() {
        return (((((((this.providerId.hashCode() * 31) + this.apiKey.hashCode()) * 31) + this.baseUrl.hashCode()) * 31) + this.modelId.hashCode()) * 31) + this.apiMode.hashCode();
    }

    public String toString() {
        return "PairingConfig(providerId=" + this.providerId + ", apiKey=" + this.apiKey + ", baseUrl=" + this.baseUrl + ", modelId=" + this.modelId + ", apiMode=" + this.apiMode + ")";
    }

    public PairingConfig(String str, String str2, String str3, String str4, String str5) {
        Intrinsics.checkNotNullParameter(str, "providerId");
        Intrinsics.checkNotNullParameter(str2, "apiKey");
        Intrinsics.checkNotNullParameter(str3, "baseUrl");
        Intrinsics.checkNotNullParameter(str4, "modelId");
        Intrinsics.checkNotNullParameter(str5, "apiMode");
        this.providerId = str;
        this.apiKey = str2;
        this.baseUrl = str3;
        this.modelId = str4;
        this.apiMode = str5;
    }

    public /* synthetic */ PairingConfig(String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? BuildConfig.FLAVOR : str3, (i & 8) != 0 ? BuildConfig.FLAVOR : str4, (i & 16) != 0 ? "openai" : str5);
    }

    public final String getProviderId() {
        return this.providerId;
    }

    public final String getApiKey() {
        return this.apiKey;
    }

    public final String getBaseUrl() {
        return this.baseUrl;
    }

    public final String getModelId() {
        return this.modelId;
    }

    public final String getApiMode() {
        return this.apiMode;
    }
}
