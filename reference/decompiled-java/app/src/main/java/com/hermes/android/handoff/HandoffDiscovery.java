package com.hermes.android.handoff;

import android.content.Context;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.net.wifi.WifiManager;
import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.handoff.HandoffDiscovery;
import java.net.InetAddress;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: HandoffDiscovery.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0002\u0010\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/handoff/HandoffDiscovery;", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "nsd", "Landroid/net/nsd/NsdManager;", "wifi", "Landroid/net/wifi/WifiManager;", "resolveByDeviceId", "Lcom/hermes/android/handoff/HandoffDiscovery$Addr;", "deviceId", BuildConfig.FLAVOR, "timeoutMs", BuildConfig.FLAVOR, "Companion", "Addr", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HandoffDiscovery {
    private static final String SERVICE_TYPE = "_hermes-handoff._tcp.";
    private static final String TAG = "HandoffDiscovery";
    private final NsdManager nsd;
    private final WifiManager wifi;
    public static final int $stable = 8;

    public HandoffDiscovery(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getApplicationContext().getSystemService("servicediscovery");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.nsd.NsdManager");
        this.nsd = (NsdManager) systemService;
        Object systemService2 = context.getApplicationContext().getSystemService("wifi");
        this.wifi = systemService2 instanceof WifiManager ? (WifiManager) systemService2 : null;
    }

    /* JADX INFO: compiled from: HandoffDiscovery.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/hermes/android/handoff/HandoffDiscovery$Addr;", BuildConfig.FLAVOR, "host", BuildConfig.FLAVOR, "port", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;I)V", "getHost", "()Ljava/lang/String;", "getPort", "()I", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class Addr {
        public static final int $stable = 0;
        private final String host;
        private final int port;

        public static /* synthetic */ Addr copy$default(Addr addr, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = addr.host;
            }
            if ((i2 & 2) != 0) {
                i = addr.port;
            }
            return addr.copy(str, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getHost() {
            return this.host;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getPort() {
            return this.port;
        }

        public final Addr copy(String host, int port) {
            Intrinsics.checkNotNullParameter(host, "host");
            return new Addr(host, port);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Addr)) {
                return false;
            }
            Addr addr = (Addr) other;
            return Intrinsics.areEqual(this.host, addr.host) && this.port == addr.port;
        }

        public int hashCode() {
            return (this.host.hashCode() * 31) + Integer.hashCode(this.port);
        }

        public String toString() {
            return "Addr(host=" + this.host + ", port=" + this.port + ")";
        }

        public Addr(String str, int i) {
            Intrinsics.checkNotNullParameter(str, "host");
            this.host = str;
            this.port = i;
        }

        public final String getHost() {
            return this.host;
        }

        public final int getPort() {
            return this.port;
        }
    }

    public static /* synthetic */ Addr resolveByDeviceId$default(HandoffDiscovery handoffDiscovery, String str, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 4000;
        }
        return handoffDiscovery.resolveByDeviceId(str, j);
    }

    public final Addr resolveByDeviceId(final String deviceId, long timeoutMs) {
        WifiManager.MulticastLock multicastLock;
        Object obj;
        Object obj2;
        WifiManager.MulticastLock multicastLockCreateMulticastLock;
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Addr addr = null;
        final AtomicReference atomicReference = new AtomicReference(null);
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        WifiManager wifiManager = this.wifi;
        if (wifiManager == null || (multicastLockCreateMulticastLock = wifiManager.createMulticastLock("hermes-handoff-discovery")) == null) {
            multicastLock = null;
        } else {
            multicastLockCreateMulticastLock.setReferenceCounted(false);
            try {
                Result.Companion companion = Result.Companion;
                multicastLockCreateMulticastLock.acquire();
                Result.constructor-impl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                Result.constructor-impl(ResultKt.createFailure(th));
            }
            multicastLock = multicastLockCreateMulticastLock;
        }
        NsdManager.DiscoveryListener discoveryListener = new NsdManager.DiscoveryListener() { // from class: com.hermes.android.handoff.HandoffDiscovery$resolveByDeviceId$listener$1
            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onDiscoveryStarted(String serviceType) {
                Intrinsics.checkNotNullParameter(serviceType, "serviceType");
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onDiscoveryStopped(String serviceType) {
                Intrinsics.checkNotNullParameter(serviceType, "serviceType");
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onServiceLost(NsdServiceInfo serviceInfo) {
                Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onStopDiscoveryFailed(String serviceType, int errorCode) {
                Intrinsics.checkNotNullParameter(serviceType, "serviceType");
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onServiceFound(NsdServiceInfo serviceInfo) {
                Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
                concurrentLinkedQueue.add(serviceInfo);
                HandoffDiscovery.resolveByDeviceId$resolveNext(atomicBoolean, concurrentLinkedQueue, this, deviceId, atomicReference, countDownLatch);
            }

            @Override // android.net.nsd.NsdManager.DiscoveryListener
            public void onStartDiscoveryFailed(String serviceType, int errorCode) {
                Intrinsics.checkNotNullParameter(serviceType, "serviceType");
                Log.w("HandoffDiscovery", "discovery start failed: " + errorCode);
                countDownLatch.countDown();
            }
        };
        try {
            try {
                this.nsd.discoverServices(SERVICE_TYPE, 1, discoveryListener);
                countDownLatch.await(timeoutMs, TimeUnit.MILLISECONDS);
                Addr addr2 = (Addr) atomicReference.get();
                try {
                    Result.Companion companion3 = Result.Companion;
                    HandoffDiscovery handoffDiscovery = this;
                    discoveryListener = discoveryListener;
                    this.nsd.stopServiceDiscovery(discoveryListener);
                    Result.constructor-impl(Unit.INSTANCE);
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.Companion;
                    Result.constructor-impl(ResultKt.createFailure(th2));
                }
                if (multicastLock != null) {
                    try {
                        Result.Companion companion5 = Result.Companion;
                        HandoffDiscovery handoffDiscovery2 = this;
                        multicastLock.release();
                        obj2 = Result.constructor-impl(Unit.INSTANCE);
                    } catch (Throwable th3) {
                        Result.Companion companion6 = Result.Companion;
                        obj2 = Result.constructor-impl(ResultKt.createFailure(th3));
                    }
                    Result.box-impl(obj2);
                }
                addr = addr2;
            } catch (Exception e) {
                Log.w(TAG, "NSD resolve error", e);
                try {
                    Result.Companion companion7 = Result.Companion;
                    discoveryListener = discoveryListener;
                    this.nsd.stopServiceDiscovery(discoveryListener);
                    Result.constructor-impl(Unit.INSTANCE);
                } catch (Throwable th4) {
                    Result.Companion companion8 = Result.Companion;
                    Result.constructor-impl(ResultKt.createFailure(th4));
                }
                if (multicastLock != null) {
                    try {
                        Result.Companion companion9 = Result.Companion;
                        multicastLock.release();
                        obj = Result.constructor-impl(Unit.INSTANCE);
                    } catch (Throwable th5) {
                        Result.Companion companion10 = Result.Companion;
                        obj = Result.constructor-impl(ResultKt.createFailure(th5));
                    }
                    Result.box-impl(obj);
                }
            }
            return addr;
        } finally {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void resolveByDeviceId$resolveNext(final AtomicBoolean atomicBoolean, final ConcurrentLinkedQueue<NsdServiceInfo> concurrentLinkedQueue, final HandoffDiscovery handoffDiscovery, final String str, final AtomicReference<Addr> atomicReference, final CountDownLatch countDownLatch) {
        if (atomicBoolean.compareAndSet(false, true)) {
            NsdServiceInfo nsdServiceInfoPoll = concurrentLinkedQueue.poll();
            if (nsdServiceInfoPoll == null) {
                atomicBoolean.set(false);
            } else {
                handoffDiscovery.nsd.resolveService(nsdServiceInfoPoll, new NsdManager.ResolveListener() { // from class: com.hermes.android.handoff.HandoffDiscovery$resolveByDeviceId$resolveNext$1
                    @Override // android.net.nsd.NsdManager.ResolveListener
                    public void onResolveFailed(NsdServiceInfo serviceInfo, int errorCode) {
                        Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
                        atomicBoolean.set(false);
                        HandoffDiscovery.resolveByDeviceId$resolveNext(atomicBoolean, concurrentLinkedQueue, handoffDiscovery, str, atomicReference, countDownLatch);
                    }

                    @Override // android.net.nsd.NsdManager.ResolveListener
                    public void onServiceResolved(NsdServiceInfo serviceInfo) {
                        byte[] bArr;
                        Intrinsics.checkNotNullParameter(serviceInfo, "serviceInfo");
                        Map<String, byte[]> attributes = serviceInfo.getAttributes();
                        String str2 = (attributes == null || (bArr = attributes.get("did")) == null) ? null : new String(bArr, Charsets.UTF_8);
                        InetAddress host = serviceInfo.getHost();
                        String hostAddress = host != null ? host.getHostAddress() : null;
                        if (Intrinsics.areEqual(str2, str) && hostAddress != null) {
                            atomicReference.set(new HandoffDiscovery.Addr(hostAddress, serviceInfo.getPort()));
                            countDownLatch.countDown();
                        } else {
                            atomicBoolean.set(false);
                            HandoffDiscovery.resolveByDeviceId$resolveNext(atomicBoolean, concurrentLinkedQueue, handoffDiscovery, str, atomicReference, countDownLatch);
                        }
                    }
                });
            }
        }
    }
}
