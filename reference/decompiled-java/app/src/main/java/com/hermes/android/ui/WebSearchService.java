package com.hermes.android.ui;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebKeyDialog.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/hermes/android/ui/WebSearchService;", BuildConfig.FLAVOR, "label", BuildConfig.FLAVOR, "envVar", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getLabel", "()Ljava/lang/String;", "getEnvVar", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final /* data */ class WebSearchService {
    private final String envVar;
    private final String label;

    public static /* synthetic */ WebSearchService copy$default(WebSearchService webSearchService, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = webSearchService.label;
        }
        if ((i & 2) != 0) {
            str2 = webSearchService.envVar;
        }
        return webSearchService.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEnvVar() {
        return this.envVar;
    }

    public final WebSearchService copy(String label, String envVar) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(envVar, "envVar");
        return new WebSearchService(label, envVar);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WebSearchService)) {
            return false;
        }
        WebSearchService webSearchService = (WebSearchService) other;
        return Intrinsics.areEqual(this.label, webSearchService.label) && Intrinsics.areEqual(this.envVar, webSearchService.envVar);
    }

    public int hashCode() {
        return (this.label.hashCode() * 31) + this.envVar.hashCode();
    }

    public String toString() {
        return "WebSearchService(label=" + this.label + ", envVar=" + this.envVar + ")";
    }

    public WebSearchService(String str, String str2) {
        Intrinsics.checkNotNullParameter(str, "label");
        Intrinsics.checkNotNullParameter(str2, "envVar");
        this.label = str;
        this.envVar = str2;
    }

    public final String getEnvVar() {
        return this.envVar;
    }

    public final String getLabel() {
        return this.label;
    }
}
