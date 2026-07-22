package com.hermes.android.ui.localllm;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b4\b\u0082\b\u0018\u00002\u00020\u0001B¡\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u0006\u0010\u0015\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\t\u0010.\u001a\u00020\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0011HÆ\u0003J\t\u0010;\u001a\u00020\u0011HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0003HÆ\u0003JÇ\u0001\u0010@\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0014\u001a\u00020\u00032\b\b\u0002\u0010\u0015\u001a\u00020\u00032\b\b\u0002\u0010\u0016\u001a\u00020\u0003HÆ\u0001J\u0013\u0010A\u001a\u00020\u00032\b\u0010B\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010C\u001a\u00020\u0011HÖ\u0001J\t\u0010D\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001cR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001cR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001aR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001cR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001aR\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001aR\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001aR\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001aR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010\u0012\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b)\u0010(R\u0011\u0010\u0013\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001aR\u0011\u0010\u0014\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001aR\u0011\u0010\u0015\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001aR\u0011\u0010\u0016\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001a¨\u0006E"}, d2 = {"Lcom/hermes/android/ui/localllm/SetupSnapshot;", BuildConfig.FLAVOR, "hasGguf", BuildConfig.FLAVOR, "modelName", BuildConfig.FLAVOR, "modelDetail", "engineLoaded", "backendInfo", "backendPref", "gpuAvailable", "gpuDeviceLine", "npuModuleInstalled", "npuModuleVisible", "npuRunnable", "npuBundleReady", "npuDownloadMb", BuildConfig.FLAVOR, "npuContextSize", "npuActive", "providerIsLocalLlm", "ramWarn", "dirtyExit", "<init>", "(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZZIIZZZZ)V", "getHasGguf", "()Z", "getModelName", "()Ljava/lang/String;", "getModelDetail", "getEngineLoaded", "getBackendInfo", "getBackendPref", "getGpuAvailable", "getGpuDeviceLine", "getNpuModuleInstalled", "getNpuModuleVisible", "getNpuRunnable", "getNpuBundleReady", "getNpuDownloadMb", "()I", "getNpuContextSize", "getNpuActive", "getProviderIsLocalLlm", "getRamWarn", "getDirtyExit", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final /* data */ class SetupSnapshot {
    private final String backendInfo;
    private final String backendPref;
    private final boolean dirtyExit;
    private final boolean engineLoaded;
    private final boolean gpuAvailable;
    private final String gpuDeviceLine;
    private final boolean hasGguf;
    private final String modelDetail;
    private final String modelName;
    private final boolean npuActive;
    private final boolean npuBundleReady;
    private final int npuContextSize;
    private final int npuDownloadMb;
    private final boolean npuModuleInstalled;
    private final boolean npuModuleVisible;
    private final boolean npuRunnable;
    private final boolean providerIsLocalLlm;
    private final boolean ramWarn;

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getHasGguf() {
        return this.hasGguf;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final boolean getNpuModuleVisible() {
        return this.npuModuleVisible;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final boolean getNpuRunnable() {
        return this.npuRunnable;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getNpuBundleReady() {
        return this.npuBundleReady;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final int getNpuDownloadMb() {
        return this.npuDownloadMb;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final int getNpuContextSize() {
        return this.npuContextSize;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final boolean getNpuActive() {
        return this.npuActive;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final boolean getProviderIsLocalLlm() {
        return this.providerIsLocalLlm;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final boolean getRamWarn() {
        return this.ramWarn;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final boolean getDirtyExit() {
        return this.dirtyExit;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getModelName() {
        return this.modelName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getModelDetail() {
        return this.modelDetail;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getEngineLoaded() {
        return this.engineLoaded;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getBackendInfo() {
        return this.backendInfo;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getBackendPref() {
        return this.backendPref;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final boolean getGpuAvailable() {
        return this.gpuAvailable;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getGpuDeviceLine() {
        return this.gpuDeviceLine;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final boolean getNpuModuleInstalled() {
        return this.npuModuleInstalled;
    }

    public final SetupSnapshot copy(boolean hasGguf, String modelName, String modelDetail, boolean engineLoaded, String backendInfo, String backendPref, boolean gpuAvailable, String gpuDeviceLine, boolean npuModuleInstalled, boolean npuModuleVisible, boolean npuRunnable, boolean npuBundleReady, int npuDownloadMb, int npuContextSize, boolean npuActive, boolean providerIsLocalLlm, boolean ramWarn, boolean dirtyExit) {
        return new SetupSnapshot(hasGguf, modelName, modelDetail, engineLoaded, backendInfo, backendPref, gpuAvailable, gpuDeviceLine, npuModuleInstalled, npuModuleVisible, npuRunnable, npuBundleReady, npuDownloadMb, npuContextSize, npuActive, providerIsLocalLlm, ramWarn, dirtyExit);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SetupSnapshot)) {
            return false;
        }
        SetupSnapshot setupSnapshot = (SetupSnapshot) other;
        return this.hasGguf == setupSnapshot.hasGguf && Intrinsics.areEqual(this.modelName, setupSnapshot.modelName) && Intrinsics.areEqual(this.modelDetail, setupSnapshot.modelDetail) && this.engineLoaded == setupSnapshot.engineLoaded && Intrinsics.areEqual(this.backendInfo, setupSnapshot.backendInfo) && Intrinsics.areEqual(this.backendPref, setupSnapshot.backendPref) && this.gpuAvailable == setupSnapshot.gpuAvailable && Intrinsics.areEqual(this.gpuDeviceLine, setupSnapshot.gpuDeviceLine) && this.npuModuleInstalled == setupSnapshot.npuModuleInstalled && this.npuModuleVisible == setupSnapshot.npuModuleVisible && this.npuRunnable == setupSnapshot.npuRunnable && this.npuBundleReady == setupSnapshot.npuBundleReady && this.npuDownloadMb == setupSnapshot.npuDownloadMb && this.npuContextSize == setupSnapshot.npuContextSize && this.npuActive == setupSnapshot.npuActive && this.providerIsLocalLlm == setupSnapshot.providerIsLocalLlm && this.ramWarn == setupSnapshot.ramWarn && this.dirtyExit == setupSnapshot.dirtyExit;
    }

    public int hashCode() {
        int iHashCode = Boolean.hashCode(this.hasGguf) * 31;
        String str = this.modelName;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.modelDetail;
        int iHashCode3 = (((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + Boolean.hashCode(this.engineLoaded)) * 31;
        String str3 = this.backendInfo;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.backendPref;
        int iHashCode5 = (((iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31) + Boolean.hashCode(this.gpuAvailable)) * 31;
        String str5 = this.gpuDeviceLine;
        return ((((((((((((((((((((iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31) + Boolean.hashCode(this.npuModuleInstalled)) * 31) + Boolean.hashCode(this.npuModuleVisible)) * 31) + Boolean.hashCode(this.npuRunnable)) * 31) + Boolean.hashCode(this.npuBundleReady)) * 31) + Integer.hashCode(this.npuDownloadMb)) * 31) + Integer.hashCode(this.npuContextSize)) * 31) + Boolean.hashCode(this.npuActive)) * 31) + Boolean.hashCode(this.providerIsLocalLlm)) * 31) + Boolean.hashCode(this.ramWarn)) * 31) + Boolean.hashCode(this.dirtyExit);
    }

    public String toString() {
        return "SetupSnapshot(hasGguf=" + this.hasGguf + ", modelName=" + this.modelName + ", modelDetail=" + this.modelDetail + ", engineLoaded=" + this.engineLoaded + ", backendInfo=" + this.backendInfo + ", backendPref=" + this.backendPref + ", gpuAvailable=" + this.gpuAvailable + ", gpuDeviceLine=" + this.gpuDeviceLine + ", npuModuleInstalled=" + this.npuModuleInstalled + ", npuModuleVisible=" + this.npuModuleVisible + ", npuRunnable=" + this.npuRunnable + ", npuBundleReady=" + this.npuBundleReady + ", npuDownloadMb=" + this.npuDownloadMb + ", npuContextSize=" + this.npuContextSize + ", npuActive=" + this.npuActive + ", providerIsLocalLlm=" + this.providerIsLocalLlm + ", ramWarn=" + this.ramWarn + ", dirtyExit=" + this.dirtyExit + ")";
    }

    public SetupSnapshot(boolean z, String str, String str2, boolean z2, String str3, String str4, boolean z3, String str5, boolean z4, boolean z5, boolean z6, boolean z7, int i, int i2, boolean z8, boolean z9, boolean z10, boolean z11) {
        this.hasGguf = z;
        this.modelName = str;
        this.modelDetail = str2;
        this.engineLoaded = z2;
        this.backendInfo = str3;
        this.backendPref = str4;
        this.gpuAvailable = z3;
        this.gpuDeviceLine = str5;
        this.npuModuleInstalled = z4;
        this.npuModuleVisible = z5;
        this.npuRunnable = z6;
        this.npuBundleReady = z7;
        this.npuDownloadMb = i;
        this.npuContextSize = i2;
        this.npuActive = z8;
        this.providerIsLocalLlm = z9;
        this.ramWarn = z10;
        this.dirtyExit = z11;
    }

    public final boolean getHasGguf() {
        return this.hasGguf;
    }

    public final String getModelName() {
        return this.modelName;
    }

    public final String getModelDetail() {
        return this.modelDetail;
    }

    public final boolean getEngineLoaded() {
        return this.engineLoaded;
    }

    public final String getBackendInfo() {
        return this.backendInfo;
    }

    public final String getBackendPref() {
        return this.backendPref;
    }

    public final boolean getGpuAvailable() {
        return this.gpuAvailable;
    }

    public final String getGpuDeviceLine() {
        return this.gpuDeviceLine;
    }

    public final boolean getNpuModuleInstalled() {
        return this.npuModuleInstalled;
    }

    public final boolean getNpuModuleVisible() {
        return this.npuModuleVisible;
    }

    public final boolean getNpuRunnable() {
        return this.npuRunnable;
    }

    public final boolean getNpuBundleReady() {
        return this.npuBundleReady;
    }

    public final int getNpuDownloadMb() {
        return this.npuDownloadMb;
    }

    public final int getNpuContextSize() {
        return this.npuContextSize;
    }

    public final boolean getNpuActive() {
        return this.npuActive;
    }

    public final boolean getProviderIsLocalLlm() {
        return this.providerIsLocalLlm;
    }

    public final boolean getRamWarn() {
        return this.ramWarn;
    }

    public final boolean getDirtyExit() {
        return this.dirtyExit;
    }
}
