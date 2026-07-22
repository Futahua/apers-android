package com.hermes.android.data;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MoaPreset.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J-\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/hermes/android/data/MoaSection;", BuildConfig.FLAVOR, "defaultPreset", BuildConfig.FLAVOR, "activePreset", "presets", BuildConfig.FLAVOR, "Lcom/hermes/android/data/MoaPreset;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getDefaultPreset", "()Ljava/lang/String;", "getActivePreset", "getPresets", "()Ljava/util/List;", "component1", "component2", "component3", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class MoaSection {
    public static final int $stable = 8;
    private final String activePreset;
    private final String defaultPreset;
    private final List<MoaPreset> presets;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MoaSection copy$default(MoaSection moaSection, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = moaSection.defaultPreset;
        }
        if ((i & 2) != 0) {
            str2 = moaSection.activePreset;
        }
        if ((i & 4) != 0) {
            list = moaSection.presets;
        }
        return moaSection.copy(str, str2, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDefaultPreset() {
        return this.defaultPreset;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getActivePreset() {
        return this.activePreset;
    }

    public final List<MoaPreset> component3() {
        return this.presets;
    }

    public final MoaSection copy(String defaultPreset, String activePreset, List<MoaPreset> presets) {
        Intrinsics.checkNotNullParameter(defaultPreset, "defaultPreset");
        Intrinsics.checkNotNullParameter(activePreset, "activePreset");
        Intrinsics.checkNotNullParameter(presets, "presets");
        return new MoaSection(defaultPreset, activePreset, presets);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MoaSection)) {
            return false;
        }
        MoaSection moaSection = (MoaSection) other;
        return Intrinsics.areEqual(this.defaultPreset, moaSection.defaultPreset) && Intrinsics.areEqual(this.activePreset, moaSection.activePreset) && Intrinsics.areEqual(this.presets, moaSection.presets);
    }

    public int hashCode() {
        return (((this.defaultPreset.hashCode() * 31) + this.activePreset.hashCode()) * 31) + this.presets.hashCode();
    }

    public String toString() {
        return "MoaSection(defaultPreset=" + this.defaultPreset + ", activePreset=" + this.activePreset + ", presets=" + this.presets + ")";
    }

    public MoaSection(String str, String str2, List<MoaPreset> list) {
        Intrinsics.checkNotNullParameter(str, "defaultPreset");
        Intrinsics.checkNotNullParameter(str2, "activePreset");
        Intrinsics.checkNotNullParameter(list, "presets");
        this.defaultPreset = str;
        this.activePreset = str2;
        this.presets = list;
    }

    public final String getDefaultPreset() {
        return this.defaultPreset;
    }

    public final String getActivePreset() {
        return this.activePreset;
    }

    public final List<MoaPreset> getPresets() {
        return this.presets;
    }
}
