package com.hermes.android.mesh;

import android.content.Context;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.LazySodiumAndroid;
import com.goterl.lazysodium.SodiumAndroid;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.HermesPaths;
import com.hermes.android.LocalizedIllegalArgument;
import com.hermes.android.R;
import com.hermes.android.handoff.HandoffCrypto;
import com.hermes.android.handoff.HandoffIdentityStore;
import com.hermes.android.handoff.HandoffPeerStore;
import com.hermes.android.mesh.MeshClient;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MeshController.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019JI\u0010 \u001a\u0002H!\"\u0004\b\u0000\u0010!2\u0006\u0010\"\u001a\u00020\u00192\b\b\u0002\u0010#\u001a\u00020\u001b2!\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\u001f¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0004\u0012\u0002H!0%H\u0082\b¢\u0006\u0002\u0010)J\u000e\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\u001fJ\u000e\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u001fJ\f\u0010.\u001a\b\u0012\u0004\u0012\u0002000/J\u0014\u00101\u001a\u0002022\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u001f0/R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u001a\u001a\u00020\u001b8F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001cR\u001c\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/hermes/android/mesh/MeshController;", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "crypto", "Lcom/hermes/android/handoff/HandoffCrypto;", "dir", "Ljava/io/File;", "identityStore", "Lcom/hermes/android/handoff/HandoffIdentityStore;", "client", "Lcom/hermes/android/mesh/MeshClient;", "peers", "Lcom/hermes/android/handoff/HandoffPeerStore;", "getPeers", "()Lcom/hermes/android/handoff/HandoffPeerStore;", "identity", "Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;", "getIdentity", "()Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;", "identity$delegate", "Lkotlin/Lazy;", "broker", "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;", "isPaired", BuildConfig.FLAVOR, "()Z", "lastGood", "Lkotlin/Pair;", BuildConfig.FLAVOR, "withFailover", "T", "b", "useLastGood", "block", "Lkotlin/Function1;", "Lkotlin/ParameterName;", AppMeasurementSdk.ConditionalUserProperty.NAME, "host", "(Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "pairFromQr", "qrJson", "dispatch", "prompt", "poll", BuildConfig.FLAVOR, "Lcom/hermes/android/mesh/MeshClient$Result;", "ack", BuildConfig.FLAVOR, "ids", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class MeshController {
    public static final int $stable = 8;
    private final MeshClient client;
    private final HandoffCrypto crypto;
    private final File dir;

    /* JADX INFO: renamed from: identity$delegate, reason: from kotlin metadata */
    private final Lazy identity;
    private final HandoffIdentityStore identityStore;
    private volatile Pair<String, String> lastGood;
    private final HandoffPeerStore peers;

    public MeshController(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        HandoffCrypto handoffCrypto = new HandoffCrypto(new LazySodiumAndroid(new SodiumAndroid()));
        this.crypto = handoffCrypto;
        File fileMeshDir = HermesPaths.INSTANCE.meshDir(context);
        this.dir = fileMeshDir;
        this.identityStore = new HandoffIdentityStore(new File(fileMeshDir, "id.key"), handoffCrypto);
        this.client = new MeshClient(handoffCrypto);
        this.peers = new HandoffPeerStore(new File(fileMeshDir, "peers.json"));
        this.identity = LazyKt.lazy(new Function0() { // from class: com.hermes.android.mesh.MeshController$$ExternalSyntheticLambda0
            public final Object invoke() {
                return MeshController.identity_delegate$lambda$0(this.f$0);
            }
        });
    }

    public final HandoffPeerStore getPeers() {
        return this.peers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HandoffCrypto.KeyPair identity_delegate$lambda$0(MeshController meshController) {
        return meshController.identityStore.loadOrCreate();
    }

    public final HandoffCrypto.KeyPair getIdentity() {
        return (HandoffCrypto.KeyPair) this.identity.getValue();
    }

    public final HandoffCrypto.PeerInfo broker() {
        return (HandoffCrypto.PeerInfo) CollectionsKt.firstOrNull(this.peers.all());
    }

    public final boolean isPaired() {
        return broker() != null;
    }

    private final <T> T withFailover(HandoffCrypto.PeerInfo b, boolean useLastGood, Function1<? super String, ? extends T> block) throws IOException {
        Pair pair;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(b.getHost());
        linkedHashSet.addAll(b.getAlts());
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        if (useLastGood && (pair = this.lastGood) != null) {
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            if (Intrinsics.areEqual(str, b.getDeviceId()) && linkedHashSet.contains(str2)) {
                linkedHashSet2.add(str2);
            }
        }
        linkedHashSet2.addAll(linkedHashSet);
        HostFailover hostFailover = HostFailover.INSTANCE;
        Iterator it = CollectionsKt.toList(linkedHashSet2).iterator();
        IOException e = null;
        while (it.hasNext()) {
            String str3 = (String) it.next();
            try {
                T t = (T) block.invoke(str3);
                if (str3 != null) {
                    this.lastGood = TuplesKt.to(b.getDeviceId(), str3);
                }
                return t;
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new IOException("no reachable host");
    }

    static /* synthetic */ Object withFailover$default(MeshController meshController, HandoffCrypto.PeerInfo peerInfo, boolean z, Function1 function1, int i, Object obj) throws IOException {
        Pair pair;
        if ((i & 2) != 0) {
            z = true;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(peerInfo.getHost());
        linkedHashSet.addAll(peerInfo.getAlts());
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        if (z && (pair = meshController.lastGood) != null) {
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            if (Intrinsics.areEqual(str, peerInfo.getDeviceId()) && linkedHashSet.contains(str2)) {
                linkedHashSet2.add(str2);
            }
        }
        linkedHashSet2.addAll(linkedHashSet);
        HostFailover hostFailover = HostFailover.INSTANCE;
        Iterator it = CollectionsKt.toList(linkedHashSet2).iterator();
        IOException e = null;
        while (it.hasNext()) {
            String str3 = (String) it.next();
            try {
                Object objInvoke = function1.invoke(str3);
                if (str3 != null) {
                    meshController.lastGood = TuplesKt.to(peerInfo.getDeviceId(), str3);
                }
                return objInvoke;
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new IOException("no reachable host");
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.hermes.android.LocalizedIllegalArgument */
    public final HandoffCrypto.PeerInfo pairFromQr(String qrJson) throws IOException, LocalizedIllegalArgument {
        Intrinsics.checkNotNullParameter(qrJson, "qrJson");
        HandoffCrypto.PeerInfo qr = this.crypto.parseQr(qrJson);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(qr.getHost());
        linkedHashSet.addAll(qr.getAlts());
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        linkedHashSet2.addAll(linkedHashSet);
        HostFailover hostFailover = HostFailover.INSTANCE;
        IOException e = null;
        for (String str : CollectionsKt.toList(linkedHashSet2)) {
            try {
                MeshClient.pair$default(this.client, str, qr.getPort(), getIdentity().getSecretKey(), getIdentity().getPublicKey(), qr.getPublicKey(), 0, 32, null);
                if (str != null) {
                    this.lastGood = TuplesKt.to(qr.getDeviceId(), str);
                }
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

    public final String dispatch(String prompt) throws IOException, MeshClient.MeshException {
        Intrinsics.checkNotNullParameter(prompt, "prompt");
        HandoffCrypto.PeerInfo peerInfoBroker = broker();
        if (peerInfoBroker == null) {
            throw new MeshClient.MeshException("no computer linked", R.string.mesh_err_not_linked, null, 4, null);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(peerInfoBroker.getHost());
        linkedHashSet.addAll(peerInfoBroker.getAlts());
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Pair pair = this.lastGood;
        if (pair != null) {
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            if (Intrinsics.areEqual(str, peerInfoBroker.getDeviceId()) && linkedHashSet.contains(str2)) {
                linkedHashSet2.add(str2);
            }
        }
        linkedHashSet2.addAll(linkedHashSet);
        HostFailover hostFailover = HostFailover.INSTANCE;
        IOException e = null;
        for (String str3 : CollectionsKt.toList(linkedHashSet2)) {
            try {
                String strPush = this.client.push(str3, peerInfoBroker.getPort(), getIdentity().getSecretKey(), getIdentity().getPublicKey(), peerInfoBroker.getPublicKey(), prompt, (64 & 64) != 0 ? 8000 : 0);
                if (str3 != null) {
                    this.lastGood = TuplesKt.to(peerInfoBroker.getDeviceId(), str3);
                }
                return strPush;
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new IOException("no reachable host");
    }

    public final List<MeshClient.Result> poll() throws IOException {
        HandoffCrypto.PeerInfo peerInfoBroker = broker();
        if (peerInfoBroker == null) {
            return CollectionsKt.emptyList();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(peerInfoBroker.getHost());
        linkedHashSet.addAll(peerInfoBroker.getAlts());
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Pair pair = this.lastGood;
        if (pair != null) {
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            if (Intrinsics.areEqual(str, peerInfoBroker.getDeviceId()) && linkedHashSet.contains(str2)) {
                linkedHashSet2.add(str2);
            }
        }
        linkedHashSet2.addAll(linkedHashSet);
        HostFailover hostFailover = HostFailover.INSTANCE;
        Iterator it = CollectionsKt.toList(linkedHashSet2).iterator();
        IOException e = null;
        while (it.hasNext()) {
            String str3 = (String) it.next();
            try {
                List<MeshClient.Result> listPoll$default = MeshClient.poll$default(this.client, str3, peerInfoBroker.getPort(), getIdentity().getSecretKey(), getIdentity().getPublicKey(), peerInfoBroker.getPublicKey(), 0, 32, null);
                if (str3 != null) {
                    this.lastGood = TuplesKt.to(peerInfoBroker.getDeviceId(), str3);
                }
                return listPoll$default;
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e != null) {
            throw e;
        }
        throw new IOException("no reachable host");
    }

    public final void ack(List<String> ids) throws IOException {
        Intrinsics.checkNotNullParameter(ids, "ids");
        HandoffCrypto.PeerInfo peerInfoBroker = broker();
        if (peerInfoBroker == null) {
            return;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(peerInfoBroker.getHost());
        linkedHashSet.addAll(peerInfoBroker.getAlts());
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        Pair pair = this.lastGood;
        if (pair != null) {
            String str = (String) pair.component1();
            String str2 = (String) pair.component2();
            if (Intrinsics.areEqual(str, peerInfoBroker.getDeviceId()) && linkedHashSet.contains(str2)) {
                linkedHashSet2.add(str2);
            }
        }
        linkedHashSet2.addAll(linkedHashSet);
        HostFailover hostFailover = HostFailover.INSTANCE;
        IOException e = null;
        for (String str3 : CollectionsKt.toList(linkedHashSet2)) {
            try {
                this.client.ack(str3, peerInfoBroker.getPort(), getIdentity().getSecretKey(), getIdentity().getPublicKey(), peerInfoBroker.getPublicKey(), ids, (64 & 64) != 0 ? 8000 : 0);
                Unit unit = Unit.INSTANCE;
                if (str3 != null) {
                    this.lastGood = TuplesKt.to(peerInfoBroker.getDeviceId(), str3);
                    return;
                }
                return;
            } catch (IOException e2) {
                e = e2;
            }
        }
        if (e == null) {
            throw new IOException("no reachable host");
        }
    }
}
