package com.hermes.android.handoff;

import android.content.Context;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.LazySodiumAndroid;
import com.goterl.lazysodium.SodiumAndroid;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.BootstrapManager;
import com.hermes.android.HermesPaths;
import com.hermes.android.LocalizedIllegalArgument;
import com.hermes.android.R;
import com.hermes.android.handoff.HandoffCrypto;
import com.hermes.android.handoff.HandoffDiscovery;
import com.hermes.android.handoff.HandoffImporter;
import com.hermes.android.mesh.HostFailover;
import com.hermes.android.mesh.MeshClient;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HandoffController.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020!JT\u0010'\u001a\u0002H(\"\u0004\b\u0000\u0010(2\u0006\u0010&\u001a\u00020!26\u0010)\u001a2\u0012\u0013\u0012\u00110#¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(-\u0012\u0013\u0012\u00110.¢\u0006\f\b+\u0012\b\b,\u0012\u0004\b\b(/\u0012\u0004\u0012\u0002H(0*H\u0082\b¢\u0006\u0002\u00100J(\u00101\u001a\u0002022\u0006\u0010-\u001a\u00020#2\u0006\u0010/\u001a\u00020.2\u0006\u0010&\u001a\u00020!2\u0006\u00103\u001a\u00020#H\u0002J\u0006\u00104\u001a\u00020%J4\u00105\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u0001062\u0006\u0010-\u001a\u00020#2\u0006\u0010/\u001a\u00020.2\u0006\u0010&\u001a\u00020!2\u0006\u00107\u001a\u000202H\u0002J\u001c\u00108\u001a\u00020%2\u0012\u00109\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u000106H\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0016\u001a\u00020\u0017¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001a\u001a\u00020\u001b8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001d¨\u0006:"}, d2 = {"Lcom/hermes/android/handoff/HandoffController;", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "bootstrap", "Lcom/hermes/android/BootstrapManager;", "<init>", "(Landroid/content/Context;Lcom/hermes/android/BootstrapManager;)V", "crypto", "Lcom/hermes/android/handoff/HandoffCrypto;", "dir", "Ljava/io/File;", "identityStore", "Lcom/hermes/android/handoff/HandoffIdentityStore;", "client", "Lcom/hermes/android/mesh/MeshClient;", "importer", "Lcom/hermes/android/handoff/HandoffImporter;", "exporter", "Lcom/hermes/android/handoff/HandoffExporter;", "discovery", "Lcom/hermes/android/handoff/HandoffDiscovery;", "peers", "Lcom/hermes/android/handoff/HandoffPeerStore;", "getPeers", "()Lcom/hermes/android/handoff/HandoffPeerStore;", "identity", "Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;", "getIdentity", "()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;", "identity$delegate", "Lkotlin/Lazy;", "pairFromQr", "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;", "qrJson", BuildConfig.FLAVOR, "receive", "Lcom/hermes/android/handoff/HandoffImporter$Stats;", "peer", "firstReachable", "T", "op", "Lkotlin/Function2;", "Lkotlin/ParameterName;", AppMeasurementSdk.ConditionalUserProperty.NAME, "host", BuildConfig.FLAVOR, "port", "(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "pull", BuildConfig.FLAVOR, "sid", "syncBack", "push", BuildConfig.FLAVOR, "bundle", "statsFrom", "m", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HandoffController {
    public static final int $stable = 8;
    private final MeshClient client;
    private final HandoffCrypto crypto;
    private final File dir;
    private final HandoffDiscovery discovery;
    private final HandoffExporter exporter;

    /* JADX INFO: renamed from: identity$delegate, reason: from kotlin metadata */
    private final Lazy identity;
    private final HandoffIdentityStore identityStore;
    private final HandoffImporter importer;
    private final HandoffPeerStore peers;

    public HandoffController(Context context, BootstrapManager bootstrapManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrap");
        HandoffCrypto handoffCrypto = new HandoffCrypto(new LazySodiumAndroid(new SodiumAndroid()));
        this.crypto = handoffCrypto;
        File fileMeshDir = HermesPaths.INSTANCE.meshDir(context);
        this.dir = fileMeshDir;
        this.identityStore = new HandoffIdentityStore(new File(fileMeshDir, "id.key"), handoffCrypto);
        this.client = new MeshClient(handoffCrypto);
        this.importer = new HandoffImporter(context, bootstrapManager);
        this.exporter = new HandoffExporter(context, bootstrapManager);
        this.discovery = new HandoffDiscovery(context);
        this.peers = new HandoffPeerStore(new File(fileMeshDir, "peers.json"));
        this.identity = LazyKt.lazy(new Function0() { // from class: com.hermes.android.handoff.HandoffController$$ExternalSyntheticLambda0
            public final Object invoke() {
                return HandoffController.identity_delegate$lambda$0(this.f$0);
            }
        });
    }

    public final HandoffPeerStore getPeers() {
        return this.peers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandoffCrypto.KeyPair identity_delegate$lambda$0(HandoffController handoffController) {
        return handoffController.identityStore.loadOrCreate();
    }

    public final HandoffCrypto.KeyPair getIdentity() {
        return (HandoffCrypto.KeyPair) this.identity.getValue();
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.hermes.android.LocalizedIllegalArgument */
    public final HandoffCrypto.PeerInfo pairFromQr(String qrJson) throws IOException, LocalizedIllegalArgument {
        Intrinsics.checkNotNullParameter(qrJson, "qrJson");
        HandoffCrypto.PeerInfo qr = this.crypto.parseQr(qrJson);
        HostFailover hostFailover = HostFailover.INSTANCE;
        IOException e = null;
        for (String str : CollectionsKt.plus(CollectionsKt.listOf(qr.getHost()), qr.getAlts())) {
            try {
                MeshClient.pair$default(this.client, str, qr.getPort(), getIdentity().getSecretKey(), getIdentity().getPublicKey(), qr.getPublicKey(), 0, 32, null);
                this.peers.add(qr);
                return qr;
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new IOException("no reachable host");
    }

    public final HandoffImporter.Stats receive(HandoffCrypto.PeerInfo peer) throws IOException, HandoffImporter.ImportException {
        byte[] bArrPull;
        Iterator it;
        IOException e;
        Intrinsics.checkNotNullParameter(peer, "peer");
        String sessionId = peer.getSessionId();
        if (sessionId == null) {
            throw new HandoffImporter.ImportException("QR carries no session id (use the desktop's send-to-phone QR)", R.string.handoff_err_qr_no_session, null, 4, null);
        }
        try {
            HostFailover hostFailover = HostFailover.INSTANCE;
            it = CollectionsKt.plus(CollectionsKt.listOf(peer.getHost()), peer.getAlts()).iterator();
            e = null;
        } catch (IOException unused) {
            HandoffDiscovery.Addr addrResolveByDeviceId$default = HandoffDiscovery.resolveByDeviceId$default(this.discovery, peer.getDeviceId(), 0L, 2, null);
            if (addrResolveByDeviceId$default == null) {
                throw new HandoffImporter.ImportException("desktop unreachable (" + peer.getHost() + ":" + peer.getPort() + "), mDNS lookup failed", R.string.handoff_err_unreachable, new String[]{peer.getHost() + ":" + peer.getPort()});
            }
            bArrPull = pull(addrResolveByDeviceId$default.getHost(), addrResolveByDeviceId$default.getPort(), peer, sessionId);
        }
        while (it.hasNext()) {
            try {
                bArrPull = pull((String) it.next(), peer.getPort(), peer, sessionId);
                return this.importer.importBundle(bArrPull);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new IOException("no reachable host");
    }

    private final <T> T firstReachable(HandoffCrypto.PeerInfo peer, Function2<? super String, ? super Integer, ? extends T> op) throws IOException {
        HostFailover hostFailover = HostFailover.INSTANCE;
        Iterator it = CollectionsKt.plus(CollectionsKt.listOf(peer.getHost()), peer.getAlts()).iterator();
        IOException e = null;
        while (it.hasNext()) {
            try {
                return (T) op.invoke((String) it.next(), Integer.valueOf(peer.getPort()));
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new IOException("no reachable host");
    }

    private final byte[] pull(String host, int port, HandoffCrypto.PeerInfo peer, String sid) {
        return this.client.pull(host, port, getIdentity().getSecretKey(), getIdentity().getPublicKey(), peer.getPublicKey(), sid, (64 & 64) != 0 ? 15000 : 0);
    }

    public final HandoffImporter.Stats syncBack() throws IOException, HandoffImporter.ImportException {
        Map<String, Object> mapPush;
        Iterator it;
        IOException e;
        HandoffCrypto.PeerInfo peerInfo = (HandoffCrypto.PeerInfo) CollectionsKt.firstOrNull(this.peers.all());
        if (peerInfo == null) {
            throw new HandoffImporter.ImportException("no desktop paired", R.string.handoff_err_not_paired, null, 4, null);
        }
        byte[] bArrExportAll = this.exporter.exportAll(getIdentity().getDeviceId());
        try {
            HostFailover hostFailover = HostFailover.INSTANCE;
            it = CollectionsKt.plus(CollectionsKt.listOf(peerInfo.getHost()), peerInfo.getAlts()).iterator();
            e = null;
        } catch (IOException unused) {
            HandoffDiscovery.Addr addrResolveByDeviceId$default = HandoffDiscovery.resolveByDeviceId$default(this.discovery, peerInfo.getDeviceId(), 0L, 2, null);
            if (addrResolveByDeviceId$default == null) {
                throw new HandoffImporter.ImportException("desktop unreachable (" + peerInfo.getHost() + ":" + peerInfo.getPort() + "), mDNS lookup failed", R.string.handoff_err_unreachable, new String[]{peerInfo.getHost() + ":" + peerInfo.getPort()});
            }
            mapPush = push(addrResolveByDeviceId$default.getHost(), addrResolveByDeviceId$default.getPort(), peerInfo, bArrExportAll);
        }
        while (it.hasNext()) {
            try {
                mapPush = push((String) it.next(), peerInfo.getPort(), peerInfo, bArrExportAll);
                return statsFrom(mapPush);
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new IOException("no reachable host");
    }

    private final Map<String, Object> push(String host, int port, HandoffCrypto.PeerInfo peer, byte[] bundle) {
        return this.client.pushSession(host, port, getIdentity().getSecretKey(), getIdentity().getPublicKey(), peer.getPublicKey(), bundle, (64 & 64) != 0 ? 30000 : 0);
    }

    private static final int statsFrom$i(Map<String, ? extends Object> map, String str) {
        Object obj = map.get(str);
        Number number = obj instanceof Number ? (Number) obj : null;
        if (number != null) {
            return number.intValue();
        }
        return 0;
    }

    private final HandoffImporter.Stats statsFrom(Map<String, ? extends Object> m) {
        return new HandoffImporter.Stats(statsFrom$i(m, "sessions_added"), statsFrom$i(m, "sessions_existing"), statsFrom$i(m, "messages_added"), statsFrom$i(m, "messages_skipped"), statsFrom$i(m, "mem_added"), statsFrom$i(m, "mem_merged"), statsFrom$i(m, "mem_unchanged"));
    }
}
