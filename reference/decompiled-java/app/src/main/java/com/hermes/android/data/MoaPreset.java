package com.hermes.android.data;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MoaPreset.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\b\"\b\u0087\b\u0018\u00002\u00020\u0001Bk\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0006HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u0010(\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001aJ\u0010\u0010)\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u001eJ\t\u0010*\u001a\u00020\u000eHÆ\u0003J\u0017\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0010HÆ\u0003Jx\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020\u000e2\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u00020\fHÖ\u0001J\t\u00101\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u0019\u0010\u001aR\u0015\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u001b\u001a\u0004\b\u001c\u0010\u001aR\u0015\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001f\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#¨\u00062"}, d2 = {"Lcom/hermes/android/data/MoaPreset;", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.NAME, BuildConfig.FLAVOR, "referenceModels", BuildConfig.FLAVOR, "Lcom/hermes/android/data/MoaSlot;", "aggregator", "referenceTemperature", BuildConfig.FLAVOR, "aggregatorTemperature", "maxTokens", BuildConfig.FLAVOR, "enabled", BuildConfig.FLAVOR, "extras", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;ZLjava/util/Map;)V", "getName", "()Ljava/lang/String;", "getReferenceModels", "()Ljava/util/List;", "getAggregator", "()Lcom/hermes/android/data/MoaSlot;", "getReferenceTemperature", "()Ljava/lang/Double;", "Ljava/lang/Double;", "getAggregatorTemperature", "getMaxTokens", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getEnabled", "()Z", "getExtras", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;ZLjava/util/Map;)Lcom/hermes/android/data/MoaPreset;", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class MoaPreset {
    public static final int $stable = 8;
    private final MoaSlot aggregator;
    private final Double aggregatorTemperature;
    private final boolean enabled;
    private final Map<String, Object> extras;
    private final Integer maxTokens;
    private final String name;
    private final List<MoaSlot> referenceModels;
    private final Double referenceTemperature;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    public final List<MoaSlot> component2() {
        return this.referenceModels;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final MoaSlot getAggregator() {
        return this.aggregator;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Double getReferenceTemperature() {
        return this.referenceTemperature;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Double getAggregatorTemperature() {
        return this.aggregatorTemperature;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Integer getMaxTokens() {
        return this.maxTokens;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getEnabled() {
        return this.enabled;
    }

    public final Map<String, Object> component8() {
        return this.extras;
    }

    public final MoaPreset copy(String name, List<MoaSlot> referenceModels, MoaSlot aggregator, Double referenceTemperature, Double aggregatorTemperature, Integer maxTokens, boolean enabled, Map<String, ? extends Object> extras) {
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Intrinsics.checkNotNullParameter(referenceModels, "referenceModels");
        Intrinsics.checkNotNullParameter(aggregator, "aggregator");
        Intrinsics.checkNotNullParameter(extras, "extras");
        return new MoaPreset(name, referenceModels, aggregator, referenceTemperature, aggregatorTemperature, maxTokens, enabled, extras);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MoaPreset)) {
            return false;
        }
        MoaPreset moaPreset = (MoaPreset) other;
        return Intrinsics.areEqual(this.name, moaPreset.name) && Intrinsics.areEqual(this.referenceModels, moaPreset.referenceModels) && Intrinsics.areEqual(this.aggregator, moaPreset.aggregator) && Intrinsics.areEqual(this.referenceTemperature, moaPreset.referenceTemperature) && Intrinsics.areEqual(this.aggregatorTemperature, moaPreset.aggregatorTemperature) && Intrinsics.areEqual(this.maxTokens, moaPreset.maxTokens) && this.enabled == moaPreset.enabled && Intrinsics.areEqual(this.extras, moaPreset.extras);
    }

    public int hashCode() {
        int iHashCode = ((((this.name.hashCode() * 31) + this.referenceModels.hashCode()) * 31) + this.aggregator.hashCode()) * 31;
        Double d = this.referenceTemperature;
        int iHashCode2 = (iHashCode + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.aggregatorTemperature;
        int iHashCode3 = (iHashCode2 + (d2 == null ? 0 : d2.hashCode())) * 31;
        Integer num = this.maxTokens;
        return ((((iHashCode3 + (num != null ? num.hashCode() : 0)) * 31) + Boolean.hashCode(this.enabled)) * 31) + this.extras.hashCode();
    }

    public String toString() {
        return "MoaPreset(name=" + this.name + ", referenceModels=" + this.referenceModels + ", aggregator=" + this.aggregator + ", referenceTemperature=" + this.referenceTemperature + ", aggregatorTemperature=" + this.aggregatorTemperature + ", maxTokens=" + this.maxTokens + ", enabled=" + this.enabled + ", extras=" + this.extras + ")";
    }

    public MoaPreset(String str, List<MoaSlot> list, MoaSlot moaSlot, Double d, Double d2, Integer num, boolean z, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Intrinsics.checkNotNullParameter(list, "referenceModels");
        Intrinsics.checkNotNullParameter(moaSlot, "aggregator");
        Intrinsics.checkNotNullParameter(map, "extras");
        this.name = str;
        this.referenceModels = list;
        this.aggregator = moaSlot;
        this.referenceTemperature = d;
        this.aggregatorTemperature = d2;
        this.maxTokens = num;
        this.enabled = z;
        this.extras = map;
    }

    public final String getName() {
        return this.name;
    }

    public final List<MoaSlot> getReferenceModels() {
        return this.referenceModels;
    }

    public final MoaSlot getAggregator() {
        return this.aggregator;
    }

    public final Double getReferenceTemperature() {
        return this.referenceTemperature;
    }

    public final Double getAggregatorTemperature() {
        return this.aggregatorTemperature;
    }

    public final Integer getMaxTokens() {
        return this.maxTokens;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public /* synthetic */ MoaPreset(String str, List list, MoaSlot moaSlot, Double d, Double d2, Integer num, boolean z, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, moaSlot, (i & 8) != 0 ? null : d, (i & 16) != 0 ? null : d2, (i & 32) != 0 ? null : num, (i & 64) != 0 ? true : z, (i & 128) != 0 ? MapsKt.emptyMap() : map);
    }

    public final Map<String, Object> getExtras() {
        return this.extras;
    }
}
