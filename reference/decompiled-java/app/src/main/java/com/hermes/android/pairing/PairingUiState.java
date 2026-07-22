package com.hermes.android.pairing;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PairingViewModel.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001b\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\bHÆ\u0003J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003JO\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u001f\u001a\u00020\u00032\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\bHÖ\u0001J\t\u0010\"\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010¨\u0006#"}, d2 = {"Lcom/hermes/android/pairing/PairingUiState;", BuildConfig.FLAVOR, "isRunning", BuildConfig.FLAVOR, "url", BuildConfig.FLAVOR, "deviceIp", "port", BuildConfig.FLAVOR, "lastEvent", "configReceived", "error", "<init>", "(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V", "()Z", "getUrl", "()Ljava/lang/String;", "getDeviceIp", "getPort", "()I", "getLastEvent", "getConfigReceived", "getError", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final /* data */ class PairingUiState {
    public static final int $stable = 0;
    private final boolean configReceived;
    private final String deviceIp;
    private final String error;
    private final boolean isRunning;
    private final String lastEvent;
    private final int port;
    private final String url;

    public PairingUiState() {
        this(false, null, null, 0, null, false, null, 127, null);
    }

    public static /* synthetic */ PairingUiState copy$default(PairingUiState pairingUiState, boolean z, String str, String str2, int i, String str3, boolean z2, String str4, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = pairingUiState.isRunning;
        }
        if ((i2 & 2) != 0) {
            str = pairingUiState.url;
        }
        String str5 = str;
        if ((i2 & 4) != 0) {
            str2 = pairingUiState.deviceIp;
        }
        String str6 = str2;
        if ((i2 & 8) != 0) {
            i = pairingUiState.port;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            str3 = pairingUiState.lastEvent;
        }
        String str7 = str3;
        if ((i2 & 32) != 0) {
            z2 = pairingUiState.configReceived;
        }
        boolean z3 = z2;
        if ((i2 & 64) != 0) {
            str4 = pairingUiState.error;
        }
        return pairingUiState.copy(z, str5, str6, i3, str7, z3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getIsRunning() {
        return this.isRunning;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDeviceIp() {
        return this.deviceIp;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getPort() {
        return this.port;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLastEvent() {
        return this.lastEvent;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final boolean getConfigReceived() {
        return this.configReceived;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getError() {
        return this.error;
    }

    public final PairingUiState copy(boolean isRunning, String url, String deviceIp, int port, String lastEvent, boolean configReceived, String error) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(deviceIp, "deviceIp");
        Intrinsics.checkNotNullParameter(lastEvent, "lastEvent");
        Intrinsics.checkNotNullParameter(error, "error");
        return new PairingUiState(isRunning, url, deviceIp, port, lastEvent, configReceived, error);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PairingUiState)) {
            return false;
        }
        PairingUiState pairingUiState = (PairingUiState) other;
        return this.isRunning == pairingUiState.isRunning && Intrinsics.areEqual(this.url, pairingUiState.url) && Intrinsics.areEqual(this.deviceIp, pairingUiState.deviceIp) && this.port == pairingUiState.port && Intrinsics.areEqual(this.lastEvent, pairingUiState.lastEvent) && this.configReceived == pairingUiState.configReceived && Intrinsics.areEqual(this.error, pairingUiState.error);
    }

    public int hashCode() {
        return (((((((((((Boolean.hashCode(this.isRunning) * 31) + this.url.hashCode()) * 31) + this.deviceIp.hashCode()) * 31) + Integer.hashCode(this.port)) * 31) + this.lastEvent.hashCode()) * 31) + Boolean.hashCode(this.configReceived)) * 31) + this.error.hashCode();
    }

    public String toString() {
        return "PairingUiState(isRunning=" + this.isRunning + ", url=" + this.url + ", deviceIp=" + this.deviceIp + ", port=" + this.port + ", lastEvent=" + this.lastEvent + ", configReceived=" + this.configReceived + ", error=" + this.error + ")";
    }

    public PairingUiState(boolean z, String str, String str2, int i, String str3, boolean z2, String str4) {
        Intrinsics.checkNotNullParameter(str, "url");
        Intrinsics.checkNotNullParameter(str2, "deviceIp");
        Intrinsics.checkNotNullParameter(str3, "lastEvent");
        Intrinsics.checkNotNullParameter(str4, "error");
        this.isRunning = z;
        this.url = str;
        this.deviceIp = str2;
        this.port = i;
        this.lastEvent = str3;
        this.configReceived = z2;
        this.error = str4;
    }

    public /* synthetic */ PairingUiState(boolean z, String str, String str2, int i, String str3, boolean z2, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? BuildConfig.FLAVOR : str, (i2 & 4) != 0 ? BuildConfig.FLAVOR : str2, (i2 & 8) != 0 ? PairingServer.DEFAULT_PORT : i, (i2 & 16) != 0 ? BuildConfig.FLAVOR : str3, (i2 & 32) == 0 ? z2 : false, (i2 & 64) != 0 ? BuildConfig.FLAVOR : str4);
    }

    public final boolean isRunning() {
        return this.isRunning;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getDeviceIp() {
        return this.deviceIp;
    }

    public final int getPort() {
        return this.port;
    }

    public final String getLastEvent() {
        return this.lastEvent;
    }

    public final boolean getConfigReceived() {
        return this.configReceived;
    }

    public final String getError() {
        return this.error;
    }
}
