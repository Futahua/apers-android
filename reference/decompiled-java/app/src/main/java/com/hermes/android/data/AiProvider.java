package com.hermes.android.data;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.goterl.lazysodium.interfaces.PwHash;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProviderCatalog.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b;\b\u0087\b\u0018\u0000 O2\u00020\u0001:\u0001OBå\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000f\u001a\u00020\f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0019\u001a\u00020\f\u0012\b\b\u0002\u0010\u001a\u001a\u00020\f\u0012\b\b\u0002\u0010\u001b\u001a\u00020\f¢\u0006\u0004\b\u001c\u0010\u001dJ\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0003HÆ\u0003J\t\u0010;\u001a\u00020\fHÆ\u0003J\t\u0010<\u001a\u00020\fHÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\fHÆ\u0003J\t\u0010?\u001a\u00020\fHÆ\u0003J\t\u0010@\u001a\u00020\u0003HÆ\u0003J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\t\u0010B\u001a\u00020\u0003HÆ\u0003J\t\u0010C\u001a\u00020\u0015HÆ\u0003J\t\u0010D\u001a\u00020\u0015HÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\t\u0010F\u001a\u00020\u0003HÆ\u0003J\t\u0010G\u001a\u00020\fHÆ\u0003J\t\u0010H\u001a\u00020\fHÆ\u0003J\t\u0010I\u001a\u00020\fHÆ\u0003Jï\u0001\u0010J\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\f2\b\b\u0002\u0010\u0010\u001a\u00020\f2\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\f2\b\b\u0002\u0010\u001a\u001a\u00020\f2\b\b\u0002\u0010\u001b\u001a\u00020\fHÆ\u0001J\u0013\u0010K\u001a\u00020\f2\b\u0010L\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010M\u001a\u00020\u0015HÖ\u0001J\t\u0010N\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001fR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001fR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001fR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010'R\u0011\u0010\r\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b(\u0010'R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001fR\u0011\u0010\u000f\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010'R\u0011\u0010\u0010\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b*\u0010'R\u0011\u0010\u0011\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001fR\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001fR\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001fR\u0011\u0010\u0014\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0011\u0010\u0016\u001a\u00020\u0015¢\u0006\b\n\u0000\u001a\u0004\b0\u0010/R\u0011\u0010\u0017\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001fR\u0011\u0010\u0018\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u001fR\u0011\u0010\u0019\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010'R\u0011\u0010\u001a\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010'R\u0011\u0010\u001b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010'¨\u0006P"}, d2 = {"Lcom/hermes/android/data/AiProvider;", BuildConfig.FLAVOR, "id", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.NAME, "description", "envVar", "baseUrlEnvVar", "keyHint", "keyUrl", "keyLabel", "isPopular", BuildConfig.FLAVOR, "requiresKey", "category", "isCustom", "allowsCustomModel", "defaultBaseUrl", "defaultModelId", "apiMode", "contextWindow", BuildConfig.FLAVOR, "maxTokens", "hermesProvider", "hermesDefaultModel", "isOAuth", "isVirtual", "isLabs", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZZ)V", "getId", "()Ljava/lang/String;", "getName", "getDescription", "getEnvVar", "getBaseUrlEnvVar", "getKeyHint", "getKeyUrl", "getKeyLabel", "()Z", "getRequiresKey", "getCategory", "getAllowsCustomModel", "getDefaultBaseUrl", "getDefaultModelId", "getApiMode", "getContextWindow", "()I", "getMaxTokens", "getHermesProvider", "getHermesDefaultModel", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "copy", "equals", "other", "hashCode", "toString", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class AiProvider {
    public static final int $stable = 0;
    private static final List<AiProvider> ALL;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<AiProvider> LABS;
    private static final Map<String, List<AiProvider>> ONBOARDING_BY_CATEGORY;
    private static final List<AiProvider> POPULAR;
    private final boolean allowsCustomModel;
    private final String apiMode;
    private final String baseUrlEnvVar;
    private final String category;
    private final int contextWindow;
    private final String defaultBaseUrl;
    private final String defaultModelId;
    private final String description;
    private final String envVar;
    private final String hermesDefaultModel;
    private final String hermesProvider;
    private final String id;
    private final boolean isCustom;
    private final boolean isLabs;
    private final boolean isOAuth;
    private final boolean isPopular;
    private final boolean isVirtual;
    private final String keyHint;
    private final String keyLabel;
    private final String keyUrl;
    private final int maxTokens;
    private final String name;
    private final boolean requiresKey;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getRequiresKey() {
        return this.requiresKey;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getIsCustom() {
        return this.isCustom;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final boolean getAllowsCustomModel() {
        return this.allowsCustomModel;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getDefaultBaseUrl() {
        return this.defaultBaseUrl;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getDefaultModelId() {
        return this.defaultModelId;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getApiMode() {
        return this.apiMode;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final int getContextWindow() {
        return this.contextWindow;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final int getMaxTokens() {
        return this.maxTokens;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getHermesProvider() {
        return this.hermesProvider;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getHermesDefaultModel() {
        return this.hermesDefaultModel;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final boolean getIsOAuth() {
        return this.isOAuth;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final boolean getIsVirtual() {
        return this.isVirtual;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final boolean getIsLabs() {
        return this.isLabs;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getEnvVar() {
        return this.envVar;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getBaseUrlEnvVar() {
        return this.baseUrlEnvVar;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getKeyHint() {
        return this.keyHint;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getKeyUrl() {
        return this.keyUrl;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getKeyLabel() {
        return this.keyLabel;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getIsPopular() {
        return this.isPopular;
    }

    public final AiProvider copy(String id, String name, String description, String envVar, String baseUrlEnvVar, String keyHint, String keyUrl, String keyLabel, boolean isPopular, boolean requiresKey, String category, boolean isCustom, boolean allowsCustomModel, String defaultBaseUrl, String defaultModelId, String apiMode, int contextWindow, int maxTokens, String hermesProvider, String hermesDefaultModel, boolean isOAuth, boolean isVirtual, boolean isLabs) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(envVar, "envVar");
        Intrinsics.checkNotNullParameter(baseUrlEnvVar, "baseUrlEnvVar");
        Intrinsics.checkNotNullParameter(keyHint, "keyHint");
        Intrinsics.checkNotNullParameter(keyUrl, "keyUrl");
        Intrinsics.checkNotNullParameter(keyLabel, "keyLabel");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(defaultBaseUrl, "defaultBaseUrl");
        Intrinsics.checkNotNullParameter(defaultModelId, "defaultModelId");
        Intrinsics.checkNotNullParameter(apiMode, "apiMode");
        Intrinsics.checkNotNullParameter(hermesProvider, "hermesProvider");
        Intrinsics.checkNotNullParameter(hermesDefaultModel, "hermesDefaultModel");
        return new AiProvider(id, name, description, envVar, baseUrlEnvVar, keyHint, keyUrl, keyLabel, isPopular, requiresKey, category, isCustom, allowsCustomModel, defaultBaseUrl, defaultModelId, apiMode, contextWindow, maxTokens, hermesProvider, hermesDefaultModel, isOAuth, isVirtual, isLabs);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AiProvider)) {
            return false;
        }
        AiProvider aiProvider = (AiProvider) other;
        return Intrinsics.areEqual(this.id, aiProvider.id) && Intrinsics.areEqual(this.name, aiProvider.name) && Intrinsics.areEqual(this.description, aiProvider.description) && Intrinsics.areEqual(this.envVar, aiProvider.envVar) && Intrinsics.areEqual(this.baseUrlEnvVar, aiProvider.baseUrlEnvVar) && Intrinsics.areEqual(this.keyHint, aiProvider.keyHint) && Intrinsics.areEqual(this.keyUrl, aiProvider.keyUrl) && Intrinsics.areEqual(this.keyLabel, aiProvider.keyLabel) && this.isPopular == aiProvider.isPopular && this.requiresKey == aiProvider.requiresKey && Intrinsics.areEqual(this.category, aiProvider.category) && this.isCustom == aiProvider.isCustom && this.allowsCustomModel == aiProvider.allowsCustomModel && Intrinsics.areEqual(this.defaultBaseUrl, aiProvider.defaultBaseUrl) && Intrinsics.areEqual(this.defaultModelId, aiProvider.defaultModelId) && Intrinsics.areEqual(this.apiMode, aiProvider.apiMode) && this.contextWindow == aiProvider.contextWindow && this.maxTokens == aiProvider.maxTokens && Intrinsics.areEqual(this.hermesProvider, aiProvider.hermesProvider) && Intrinsics.areEqual(this.hermesDefaultModel, aiProvider.hermesDefaultModel) && this.isOAuth == aiProvider.isOAuth && this.isVirtual == aiProvider.isVirtual && this.isLabs == aiProvider.isLabs;
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((((((((((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.description.hashCode()) * 31) + this.envVar.hashCode()) * 31) + this.baseUrlEnvVar.hashCode()) * 31) + this.keyHint.hashCode()) * 31) + this.keyUrl.hashCode()) * 31) + this.keyLabel.hashCode()) * 31) + Boolean.hashCode(this.isPopular)) * 31) + Boolean.hashCode(this.requiresKey)) * 31) + this.category.hashCode()) * 31) + Boolean.hashCode(this.isCustom)) * 31) + Boolean.hashCode(this.allowsCustomModel)) * 31) + this.defaultBaseUrl.hashCode()) * 31) + this.defaultModelId.hashCode()) * 31) + this.apiMode.hashCode()) * 31) + Integer.hashCode(this.contextWindow)) * 31) + Integer.hashCode(this.maxTokens)) * 31) + this.hermesProvider.hashCode()) * 31) + this.hermesDefaultModel.hashCode()) * 31) + Boolean.hashCode(this.isOAuth)) * 31) + Boolean.hashCode(this.isVirtual)) * 31) + Boolean.hashCode(this.isLabs);
    }

    public String toString() {
        return "AiProvider(id=" + this.id + ", name=" + this.name + ", description=" + this.description + ", envVar=" + this.envVar + ", baseUrlEnvVar=" + this.baseUrlEnvVar + ", keyHint=" + this.keyHint + ", keyUrl=" + this.keyUrl + ", keyLabel=" + this.keyLabel + ", isPopular=" + this.isPopular + ", requiresKey=" + this.requiresKey + ", category=" + this.category + ", isCustom=" + this.isCustom + ", allowsCustomModel=" + this.allowsCustomModel + ", defaultBaseUrl=" + this.defaultBaseUrl + ", defaultModelId=" + this.defaultModelId + ", apiMode=" + this.apiMode + ", contextWindow=" + this.contextWindow + ", maxTokens=" + this.maxTokens + ", hermesProvider=" + this.hermesProvider + ", hermesDefaultModel=" + this.hermesDefaultModel + ", isOAuth=" + this.isOAuth + ", isVirtual=" + this.isVirtual + ", isLabs=" + this.isLabs + ")";
    }

    public AiProvider(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, boolean z2, String str9, boolean z3, boolean z4, String str10, String str11, String str12, int i, int i2, String str13, String str14, boolean z5, boolean z6, boolean z7) {
        Intrinsics.checkNotNullParameter(str, "id");
        Intrinsics.checkNotNullParameter(str2, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Intrinsics.checkNotNullParameter(str3, "description");
        Intrinsics.checkNotNullParameter(str4, "envVar");
        Intrinsics.checkNotNullParameter(str5, "baseUrlEnvVar");
        Intrinsics.checkNotNullParameter(str6, "keyHint");
        Intrinsics.checkNotNullParameter(str7, "keyUrl");
        Intrinsics.checkNotNullParameter(str8, "keyLabel");
        Intrinsics.checkNotNullParameter(str9, "category");
        Intrinsics.checkNotNullParameter(str10, "defaultBaseUrl");
        Intrinsics.checkNotNullParameter(str11, "defaultModelId");
        Intrinsics.checkNotNullParameter(str12, "apiMode");
        Intrinsics.checkNotNullParameter(str13, "hermesProvider");
        Intrinsics.checkNotNullParameter(str14, "hermesDefaultModel");
        this.id = str;
        this.name = str2;
        this.description = str3;
        this.envVar = str4;
        this.baseUrlEnvVar = str5;
        this.keyHint = str6;
        this.keyUrl = str7;
        this.keyLabel = str8;
        this.isPopular = z;
        this.requiresKey = z2;
        this.category = str9;
        this.isCustom = z3;
        this.allowsCustomModel = z4;
        this.defaultBaseUrl = str10;
        this.defaultModelId = str11;
        this.apiMode = str12;
        this.contextWindow = i;
        this.maxTokens = i2;
        this.hermesProvider = str13;
        this.hermesDefaultModel = str14;
        this.isOAuth = z5;
        this.isVirtual = z6;
        this.isLabs = z7;
    }

    public /* synthetic */ AiProvider(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, boolean z2, String str9, boolean z3, boolean z4, String str10, String str11, String str12, int i, int i2, String str13, String str14, boolean z5, boolean z6, boolean z7, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i3 & 16) != 0 ? BuildConfig.FLAVOR : str5, (i3 & 32) != 0 ? BuildConfig.FLAVOR : str6, (i3 & 64) != 0 ? BuildConfig.FLAVOR : str7, (i3 & 128) != 0 ? "API Key" : str8, (i3 & 256) != 0 ? false : z, (i3 & 512) != 0 ? true : z2, (i3 & 1024) != 0 ? "Other" : str9, (i3 & 2048) != 0 ? false : z3, (i3 & 4096) != 0 ? false : z4, (i3 & PwHash.ARGON2ID_MEMLIMIT_MIN) != 0 ? BuildConfig.FLAVOR : str10, (i3 & 16384) != 0 ? BuildConfig.FLAVOR : str11, (32768 & i3) != 0 ? "openai" : str12, (65536 & i3) != 0 ? 0 : i, (131072 & i3) != 0 ? 0 : i2, (262144 & i3) != 0 ? BuildConfig.FLAVOR : str13, (524288 & i3) != 0 ? BuildConfig.FLAVOR : str14, (1048576 & i3) != 0 ? false : z5, (2097152 & i3) != 0 ? false : z6, (i3 & 4194304) != 0 ? false : z7);
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getEnvVar() {
        return this.envVar;
    }

    public final String getBaseUrlEnvVar() {
        return this.baseUrlEnvVar;
    }

    public final String getKeyHint() {
        return this.keyHint;
    }

    public final String getKeyUrl() {
        return this.keyUrl;
    }

    public final String getKeyLabel() {
        return this.keyLabel;
    }

    public final boolean isPopular() {
        return this.isPopular;
    }

    public final boolean getRequiresKey() {
        return this.requiresKey;
    }

    public final String getCategory() {
        return this.category;
    }

    public final boolean isCustom() {
        return this.isCustom;
    }

    public final boolean getAllowsCustomModel() {
        return this.allowsCustomModel;
    }

    public final String getDefaultBaseUrl() {
        return this.defaultBaseUrl;
    }

    public final String getDefaultModelId() {
        return this.defaultModelId;
    }

    public final String getApiMode() {
        return this.apiMode;
    }

    public final int getContextWindow() {
        return this.contextWindow;
    }

    public final int getMaxTokens() {
        return this.maxTokens;
    }

    public final String getHermesProvider() {
        return this.hermesProvider;
    }

    public final String getHermesDefaultModel() {
        return this.hermesDefaultModel;
    }

    public final boolean isOAuth() {
        return this.isOAuth;
    }

    public final boolean isVirtual() {
        return this.isVirtual;
    }

    public final boolean isLabs() {
        return this.isLabs;
    }

    /* JADX INFO: compiled from: ProviderCatalog.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0013\u001a\u00020\rR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR#\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u00050\f¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/hermes/android/data/AiProvider$Companion;", BuildConfig.FLAVOR, "<init>", "()V", "ALL", BuildConfig.FLAVOR, "Lcom/hermes/android/data/AiProvider;", "getALL", "()Ljava/util/List;", "POPULAR", "getPOPULAR", "ONBOARDING_BY_CATEGORY", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "getONBOARDING_BY_CATEGORY", "()Ljava/util/Map;", "LABS", "getLABS", "findById", "id", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<AiProvider> getALL() {
            return AiProvider.ALL;
        }

        public final List<AiProvider> getPOPULAR() {
            return AiProvider.POPULAR;
        }

        public final Map<String, List<AiProvider>> getONBOARDING_BY_CATEGORY() {
            return AiProvider.ONBOARDING_BY_CATEGORY;
        }

        public final List<AiProvider> getLABS() {
            return AiProvider.LABS;
        }

        public final AiProvider findById(String id) {
            Object next;
            Intrinsics.checkNotNullParameter(id, "id");
            Iterator<T> it = getALL().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (Intrinsics.areEqual(((AiProvider) next).getId(), id)) {
                    break;
                }
            }
            return (AiProvider) next;
        }
    }

    static {
        String str = null;
        boolean z = false;
        String str2 = null;
        boolean z2 = false;
        boolean z3 = false;
        String str3 = null;
        boolean z4 = false;
        DefaultConstructorMarker defaultConstructorMarker = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        boolean z5 = false;
        String str7 = null;
        String str8 = null;
        int i = 0;
        int i2 = 0;
        boolean z6 = false;
        String str9 = null;
        boolean z7 = false;
        String str10 = null;
        int i3 = 7596976;
        boolean z8 = false;
        boolean z9 = true;
        boolean z10 = false;
        String str11 = null;
        String str12 = null;
        boolean z11 = false;
        String str13 = null;
        boolean z12 = true;
        String str14 = null;
        boolean z13 = false;
        String str15 = null;
        boolean z14 = false;
        boolean z15 = false;
        String str16 = null;
        boolean z16 = false;
        String str17 = null;
        boolean z17 = false;
        String str18 = null;
        boolean z18 = false;
        String str19 = null;
        String str20 = null;
        String str21 = null;
        String str22 = null;
        boolean z19 = false;
        String str23 = null;
        boolean z20 = false;
        boolean z21 = false;
        String str24 = null;
        boolean z22 = false;
        boolean z23 = true;
        String str25 = null;
        boolean z24 = false;
        String str26 = null;
        boolean z25 = false;
        int i4 = 7597040;
        String str27 = null;
        String str28 = null;
        boolean z26 = false;
        String str29 = null;
        boolean z27 = false;
        boolean z28 = false;
        String str30 = null;
        boolean z29 = false;
        String str31 = null;
        boolean z30 = false;
        String str32 = null;
        String str33 = null;
        boolean z31 = false;
        String str34 = null;
        boolean z32 = false;
        String str35 = null;
        String str36 = null;
        boolean z33 = false;
        boolean z34 = false;
        String str37 = null;
        boolean z35 = false;
        List<AiProvider> listListOf = CollectionsKt.listOf(new AiProvider[]{new AiProvider("anthropic", "Anthropic Claude", "Claude Opus, Sonnet, Haiku", "ANTHROPIC_API_KEY", str, "sk-ant-...", "https://console.anthropic.com/settings/keys", null, true, z, "Popular", false, true, str2, null, null, 0, 0, "anthropic", "claude-opus-4-6", z2, false, false, 7596688, null), new AiProvider("openai", "OpenAI", "GPT-5.4, GPT-5.4-mini, o3", "OPENAI_API_KEY", null, "sk-...", "https://platform.openai.com/api-keys", null, true, false, "Popular", z3, true, null, null, str3, 0, 0, "openai-api", "gpt-5.4", false, false, z4, 7596688, null), new AiProvider("openai-codex", "ChatGPT Codex (subscription) [Experimental]", "GPT-5.5 via ChatGPT plan. Experimental — likely unsupported in your region due to OpenAI's policy.", BuildConfig.FLAVOR, str4, str5, str, str6, true, z5, "Popular", z, false, str7, str8, str2, i, i2, "openai-codex", "gpt-5.5", true, z6, z2, 6551792, defaultConstructorMarker), new AiProvider("google", "Google Gemini", "Gemini 3.1 Pro, Flash", "GEMINI_API_KEY", null, "AI...", "https://aistudio.google.com/apikey", str9, true, z3, "Popular", z7, true, str3, null, str10, 0, 0, "gemini", "gemini-3.1-pro-preview", z4, false, false, 7596688, null), new AiProvider("openrouter", "OpenRouter", "Multi-provider gateway", "OPENROUTER_API_KEY", str4, str5, "https://openrouter.ai/keys", str6, z8, z5, "AI Platforms", z, z9, str7, str8, str2, i, i2, "openrouter", "anthropic/claude-sonnet-4.6", z10, z6, z2, i3, defaultConstructorMarker), new AiProvider("nous", "Nous Portal (subscription)", "Official Nous API — Hermes 4 & 270+ models via your Nous subscription", BuildConfig.FLAVOR, null, str9, str11, str12, false, z7, "AI Platforms", z11, false, str10, null, str13, 0, 0, "nous", "nousresearch/hermes-4-405b", true, false, z12, 2357744, null), new AiProvider("xai", "xAI (Grok)", "Grok 4 reasoning models", "XAI_API_KEY", str4, str5, "https://console.x.ai/", str6, z8, z5, "AI Platforms", z, z9, str7, str8, str2, i, i2, "xai", "grok-4.20-0309-reasoning", z10, z6, z2, i3, defaultConstructorMarker), new AiProvider("xai-oauth", "xAI Grok OAuth (SuperGrok) [Experimental]", "Use your SuperGrok subscription — no API key needed.", BuildConfig.FLAVOR, str11, str12, str14, null, false, z11, "AI Platforms", z13, false, str13, null, str15, 0, 0, "xai-oauth", "grok-4.20-0309-reasoning", z12, false, z14, 6552048, null), new AiProvider("deepseek", "DeepSeek", "DeepSeek V3, R1", "DEEPSEEK_API_KEY", str4, str5, "https://platform.deepseek.com/api_keys", str6, z8, z5, "AI Platforms", z, z9, str7, str8, str2, i, i2, "deepseek", "deepseek-chat", z10, z6, z2, i3, defaultConstructorMarker), new AiProvider("copilot", "GitHub Copilot", "Copilot Chat models", "COPILOT_GITHUB_TOKEN", str14, "ghp_... or ghu_...", "https://github.com/settings/tokens", "GitHub Token", false, z13, "AI Platforms", z15, true, str15, null, str16, 0, 0, "copilot", "gpt-5.4", z14, false, z16, 7596816, null), new AiProvider("huggingface", "Hugging Face", "Inference API models", "HF_TOKEN", str4, "hf_...", "https://huggingface.co/settings/tokens", "HF Token", z8, z5, "AI Platforms", z, z9, str7, str8, str2, i, i2, "huggingface", "Qwen/Qwen3.5-397B-A17B", z10, z6, z2, 7596816, defaultConstructorMarker), new AiProvider("arcee", "Arcee AI", "Trinity reasoning models", "ARCEEAI_API_KEY", null, null, "https://app.arcee.ai/", str17, false, z15, "AI Platforms", z17, true, str16, null, str18, 0, 0, "arcee", "trinity-large-thinking", z16, false, z18, 7596976, null), new AiProvider("xiaomi", "Xiaomi MiMo", "MiMo models (free tier available)", "XIAOMI_API_KEY", str4, str19, "https://xiaomimimo.com/", str20, z8, z5, "AI Platforms", z, z9, str7, str8, str2, i, i2, "xiaomi", "mimo-v2-pro", z10, z6, z2, 7596976, defaultConstructorMarker), new AiProvider("kilocode", "Kilo Code", "Kilo Code platform", "KILOCODE_API_KEY", null, str17, str21, str22, false, z17, "AI Platforms", z19, true, str18, null, str23, 0, 0, "kilocode", "anthropic/claude-opus-4.6", z18, false, z20, 7597040, null), new AiProvider("mistral", "Mistral AI", "Mistral, Codestral", "MISTRAL_API_KEY", str4, str19, "https://console.mistral.ai/api-keys", str20, z8, z5, "AI Platforms", z, false, str7, str8, str2, i, i2, null, null, z10, z6, z2, 8387504, defaultConstructorMarker), new AiProvider("together", "Together AI", "Open-source models", "TOGETHER_API_KEY", str21, str22, "https://api.together.xyz/settings/api-keys", null, false, z19, "AI Platforms", z21, false, str23, null, str24, 0, 0, null, null, z20, false, z22, 8387504, null), new AiProvider("kimi-coding", "Kimi for Coding", "Coding optimized (api.kimi.com)", "KIMI_API_KEY", str4, "sk-kimi-...", "https://www.kimi.com/code/console", str20, true, z5, "China Region", z, z23, str7, str8, str2, i, i2, "kimi-coding", "kimi-for-coding", z10, z6, z2, 7596688, defaultConstructorMarker), new AiProvider("kimi-coding-cn", "Moonshot AI (China)", "Kimi models via Moonshot Open Platform (api.moonshot.cn)", "KIMI_CN_API_KEY", null, "sk-...", "https://platform.moonshot.cn/console/api-keys", str25, false, z21, "China Region", z24, true, str24, null, str26, 0, 0, "kimi-coding-cn", "kimi-k2.5", z22, false, z25, 7596944, null), new AiProvider("zai", "Z.AI (GLM)", "GLM 5.1 models", "GLM_API_KEY", str4, str27, str28, str20, z26, z5, "China Region", z, z23, str7, str8, str2, i, i2, "zai", "glm-5.1", z10, z6, z2, i4, defaultConstructorMarker), new AiProvider("minimax", "MiniMax", "MiniMax models", "MINIMAX_API_KEY", null, str25, null, str29, false, z24, "China Region", z27, true, str26, null, null, 0, 0, "minimax", "MiniMax-M2.7", z25, false, z28, 7597040, null), new AiProvider("minimax-cn", "MiniMax (China)", "MiniMax China endpoint", "MINIMAX_CN_API_KEY", str4, str27, str28, str20, z26, z5, "China Region", z, z23, str7, str8, str2, i, i2, "minimax-cn", "MiniMax-M2.7", z10, z6, z2, i4, defaultConstructorMarker), new AiProvider("alibaba", "Alibaba DashScope", "Qwen 3.5 models", "DASHSCOPE_API_KEY", "DASHSCOPE_BASE_URL", str29, "https://dashscope.console.aliyun.com/", str30, false, z27, "China Region", z29, true, "https://dashscope-intl.aliyuncs.com/compatible-mode/v1", null, str31, 0, 0, "alibaba", "qwen3.5-plus", z28, false, z30, 7588768, null), new AiProvider("opencode-zen", "OpenCode Zen", "OpenCode Zen platform", "OPENCODE_ZEN_API_KEY", str4, str27, str28, str20, z26, z5, "China Region", z, z23, str7, str8, str2, i, i2, "opencode-zen", "gpt-5.4-pro", z10, z6, z2, i4, defaultConstructorMarker), new AiProvider("opencode-go", "OpenCode Go", "OpenCode Go platform", "OPENCODE_GO_API_KEY", null, str30, str32, str33, false, z29, "China Region", z31, true, str31, null, str34, 0, 0, "opencode-go", "glm-5", z30, false, z32, 7597040, null), new AiProvider("volcengine", "Volcano Engine", "ByteDance AI platform", "VOLCANO_ENGINE_API_KEY", str4, str27, str28, str20, z26, z5, "China Region", z, false, str7, str8, str2, i, i2, null, null, z10, z6, z2, 8387568, defaultConstructorMarker), new AiProvider("qianfan", "Qianfan", "Baidu AI platform", "QIANFAN_API_KEY", str32, str33, str35, str36, false, z31, "China Region", z33, false, str34, null, null, 0, 0, null, null, z32, false, z34, 8387568, null), new AiProvider("moa", "Mixture of Agents (MoA)", "Council of your configured providers — needs their keys set up first", BuildConfig.FLAVOR, str4, str27, str28, str20, z26, z5, "Advanced", z, true, str7, str8, str2, i, i2, "moa", MoaNormalize.DEFAULT_PRESET_NAME, z10, true, true, 1305072, defaultConstructorMarker), new AiProvider("litertlm", "LiteRT-LM (On-Device)", "Local Gemma 4 / Llama on this device", BuildConfig.FLAVOR, str35, str36, str37, "No key needed", false, z33, "Self-Hosted", true, false, "http://127.0.0.1:8081/v1", "gemma-4-E2B-it", "chat_completions", 0, 0, BuildConfig.FLAVOR, BuildConfig.FLAVOR, z34, false, z35, 7541104, null), new AiProvider("custom", "Custom Provider", "Any OpenAI/Anthropic-compatible endpoint", "CUSTOM_API_KEY", str4, str27, str28, "API Key (optional)", z26, z5, "Self-Hosted", true, false, str7, str8, "chat_completions", i, i2, null, null, z10, false, false, 8352112, defaultConstructorMarker), new AiProvider("local_llm", "On-Device (llama.cpp)", "MiniCPM 1B — fully offline, no API key, one-tap download", BuildConfig.FLAVOR, str37, null, null, "No key needed", false, false, "Self-Hosted", true, false, "http://127.0.0.1:8090/v1", "local-llm", "chat_completions", 0, 0, BuildConfig.FLAVOR, BuildConfig.FLAVOR, z35, false, true, 3346800, null)});
        ALL = listListOf;
        ArrayList arrayList = new ArrayList();
        for (Object obj : listListOf) {
            if (((AiProvider) obj).isPopular) {
                arrayList.add(obj);
            }
        }
        POPULAR = arrayList;
        List<AiProvider> list = ALL;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            AiProvider aiProvider = (AiProvider) obj2;
            if (!aiProvider.isPopular && !aiProvider.isVirtual && !aiProvider.isLabs) {
                arrayList2.add(obj2);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj3 : arrayList2) {
            String str38 = ((AiProvider) obj3).category;
            Object obj4 = linkedHashMap.get(str38);
            if (obj4 == null) {
                obj4 = (List) new ArrayList();
                linkedHashMap.put(str38, obj4);
            }
            ((List) obj4).add(obj3);
        }
        ONBOARDING_BY_CATEGORY = linkedHashMap;
        List<AiProvider> list2 = ALL;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj5 : list2) {
            if (((AiProvider) obj5).isLabs) {
                arrayList3.add(obj5);
            }
        }
        LABS = arrayList3;
    }
}
