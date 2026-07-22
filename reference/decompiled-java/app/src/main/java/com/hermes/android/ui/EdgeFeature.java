package com.hermes.android.ui;

import androidx.compose.ui.graphics.vector.ImageVector;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EdgeFeaturesSheet.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/hermes/android/ui/EdgeFeature;", BuildConfig.FLAVOR, "icon", "Landroidx/compose/ui/graphics/vector/ImageVector;", "titleRes", BuildConfig.FLAVOR, "descRes", "<init>", "(Landroidx/compose/ui/graphics/vector/ImageVector;II)V", "getIcon", "()Landroidx/compose/ui/graphics/vector/ImageVector;", "getTitleRes", "()I", "getDescRes", "component1", "component2", "component3", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final /* data */ class EdgeFeature {
    private final int descRes;
    private final ImageVector icon;
    private final int titleRes;

    public static /* synthetic */ EdgeFeature copy$default(EdgeFeature edgeFeature, ImageVector imageVector, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            imageVector = edgeFeature.icon;
        }
        if ((i3 & 2) != 0) {
            i = edgeFeature.titleRes;
        }
        if ((i3 & 4) != 0) {
            i2 = edgeFeature.descRes;
        }
        return edgeFeature.copy(imageVector, i, i2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ImageVector getIcon() {
        return this.icon;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getTitleRes() {
        return this.titleRes;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getDescRes() {
        return this.descRes;
    }

    public final EdgeFeature copy(ImageVector icon, int titleRes, int descRes) {
        Intrinsics.checkNotNullParameter(icon, "icon");
        return new EdgeFeature(icon, titleRes, descRes);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof EdgeFeature)) {
            return false;
        }
        EdgeFeature edgeFeature = (EdgeFeature) other;
        return Intrinsics.areEqual(this.icon, edgeFeature.icon) && this.titleRes == edgeFeature.titleRes && this.descRes == edgeFeature.descRes;
    }

    public int hashCode() {
        return (((this.icon.hashCode() * 31) + Integer.hashCode(this.titleRes)) * 31) + Integer.hashCode(this.descRes);
    }

    public String toString() {
        return "EdgeFeature(icon=" + this.icon + ", titleRes=" + this.titleRes + ", descRes=" + this.descRes + ")";
    }

    public EdgeFeature(ImageVector imageVector, int i, int i2) {
        Intrinsics.checkNotNullParameter(imageVector, "icon");
        this.icon = imageVector;
        this.titleRes = i;
        this.descRes = i2;
    }

    public final ImageVector getIcon() {
        return this.icon;
    }

    public final int getTitleRes() {
        return this.titleRes;
    }

    public final int getDescRes() {
        return this.descRes;
    }
}
