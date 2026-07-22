package com.hermes.android.data;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MoaPreset.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/hermes/android/data/MoaSlot;", BuildConfig.FLAVOR, "provider", BuildConfig.FLAVOR, "model", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getProvider", "()Ljava/lang/String;", "getModel", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class MoaSlot {
    public static final int $stable = 0;
    private final String model;
    private final String provider;

    public static /* synthetic */ MoaSlot copy$default(MoaSlot moaSlot, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = moaSlot.provider;
        }
        if ((i & 2) != 0) {
            str2 = moaSlot.model;
        }
        return moaSlot.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProvider() {
        return this.provider;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getModel() {
        return this.model;
    }

    public final MoaSlot copy(String provider, String model) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(model, "model");
        return new MoaSlot(provider, model);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MoaSlot)) {
            return false;
        }
        MoaSlot moaSlot = (MoaSlot) other;
        return Intrinsics.areEqual(this.provider, moaSlot.provider) && Intrinsics.areEqual(this.model, moaSlot.model);
    }

    public int hashCode() {
        return (this.provider.hashCode() * 31) + this.model.hashCode();
    }

    public String toString() {
        return "MoaSlot(provider=" + this.provider + ", model=" + this.model + ")";
    }

    public MoaSlot(String str, String str2) {
        Intrinsics.checkNotNullParameter(str, "provider");
        Intrinsics.checkNotNullParameter(str2, "model");
        this.provider = str;
        this.model = str2;
    }

    public final String getModel() {
        return this.model;
    }

    public final String getProvider() {
        return this.provider;
    }
}
