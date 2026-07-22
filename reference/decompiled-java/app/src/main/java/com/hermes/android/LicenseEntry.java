package com.hermes.android;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/hermes/android/LicenseEntry;", "", "name", "", "license", "purpose", "homepage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getLicense", "getPurpose", "getHomepage", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final /* data */ class LicenseEntry {
    private final String homepage;
    private final String license;
    private final String name;
    private final String purpose;

    public static /* synthetic */ LicenseEntry copy$default(LicenseEntry licenseEntry, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = licenseEntry.name;
        }
        if ((i & 2) != 0) {
            str2 = licenseEntry.license;
        }
        if ((i & 4) != 0) {
            str3 = licenseEntry.purpose;
        }
        if ((i & 8) != 0) {
            str4 = licenseEntry.homepage;
        }
        return licenseEntry.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLicense() {
        return this.license;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPurpose() {
        return this.purpose;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getHomepage() {
        return this.homepage;
    }

    public final LicenseEntry copy(String name, String license, String purpose, String homepage) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(license, "license");
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Intrinsics.checkNotNullParameter(homepage, "homepage");
        return new LicenseEntry(name, license, purpose, homepage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LicenseEntry)) {
            return false;
        }
        LicenseEntry licenseEntry = (LicenseEntry) other;
        return Intrinsics.areEqual(this.name, licenseEntry.name) && Intrinsics.areEqual(this.license, licenseEntry.license) && Intrinsics.areEqual(this.purpose, licenseEntry.purpose) && Intrinsics.areEqual(this.homepage, licenseEntry.homepage);
    }

    public int hashCode() {
        return (((((this.name.hashCode() * 31) + this.license.hashCode()) * 31) + this.purpose.hashCode()) * 31) + this.homepage.hashCode();
    }

    public String toString() {
        return "LicenseEntry(name=" + this.name + ", license=" + this.license + ", purpose=" + this.purpose + ", homepage=" + this.homepage + ")";
    }

    public LicenseEntry(String str, String str2, String str3, String str4) {
        Intrinsics.checkNotNullParameter(str, "name");
        Intrinsics.checkNotNullParameter(str2, "license");
        Intrinsics.checkNotNullParameter(str3, "purpose");
        Intrinsics.checkNotNullParameter(str4, "homepage");
        this.name = str;
        this.license = str2;
        this.purpose = str3;
        this.homepage = str4;
    }

    public final String getName() {
        return this.name;
    }

    public final String getLicense() {
        return this.license;
    }

    public final String getPurpose() {
        return this.purpose;
    }

    public final String getHomepage() {
        return this.homepage;
    }
}
