package com.hermes.android.data;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MoaSlotCandidates.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0007HÆ\u0003J1\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/hermes/android/data/SlotCandidate;", BuildConfig.FLAVOR, "providerSlug", BuildConfig.FLAVOR, "displayName", "defaultModel", "configured", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "getProviderSlug", "()Ljava/lang/String;", "getDisplayName", "getDefaultModel", "getConfigured", "()Z", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class SlotCandidate {
    public static final int $stable = 0;
    private final boolean configured;
    private final String defaultModel;
    private final String displayName;
    private final String providerSlug;

    public static /* synthetic */ SlotCandidate copy$default(SlotCandidate slotCandidate, String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = slotCandidate.providerSlug;
        }
        if ((i & 2) != 0) {
            str2 = slotCandidate.displayName;
        }
        if ((i & 4) != 0) {
            str3 = slotCandidate.defaultModel;
        }
        if ((i & 8) != 0) {
            z = slotCandidate.configured;
        }
        return slotCandidate.copy(str, str2, str3, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProviderSlug() {
        return this.providerSlug;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDisplayName() {
        return this.displayName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDefaultModel() {
        return this.defaultModel;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getConfigured() {
        return this.configured;
    }

    public final SlotCandidate copy(String providerSlug, String displayName, String defaultModel, boolean configured) {
        Intrinsics.checkNotNullParameter(providerSlug, "providerSlug");
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Intrinsics.checkNotNullParameter(defaultModel, "defaultModel");
        return new SlotCandidate(providerSlug, displayName, defaultModel, configured);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SlotCandidate)) {
            return false;
        }
        SlotCandidate slotCandidate = (SlotCandidate) other;
        return Intrinsics.areEqual(this.providerSlug, slotCandidate.providerSlug) && Intrinsics.areEqual(this.displayName, slotCandidate.displayName) && Intrinsics.areEqual(this.defaultModel, slotCandidate.defaultModel) && this.configured == slotCandidate.configured;
    }

    public int hashCode() {
        return (((((this.providerSlug.hashCode() * 31) + this.displayName.hashCode()) * 31) + this.defaultModel.hashCode()) * 31) + Boolean.hashCode(this.configured);
    }

    public String toString() {
        return "SlotCandidate(providerSlug=" + this.providerSlug + ", displayName=" + this.displayName + ", defaultModel=" + this.defaultModel + ", configured=" + this.configured + ")";
    }

    public SlotCandidate(String str, String str2, String str3, boolean z) {
        Intrinsics.checkNotNullParameter(str, "providerSlug");
        Intrinsics.checkNotNullParameter(str2, "displayName");
        Intrinsics.checkNotNullParameter(str3, "defaultModel");
        this.providerSlug = str;
        this.displayName = str2;
        this.defaultModel = str3;
        this.configured = z;
    }

    public final String getProviderSlug() {
        return this.providerSlug;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getDefaultModel() {
        return this.defaultModel;
    }

    public final boolean getConfigured() {
        return this.configured;
    }
}
