package com.hermes.android.handoff;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.LocalizedIllegalArgument;
import com.hermes.android.LocalizedIllegalState;
import com.hermes.android.R;
import com.hermes.android.handoff.HandoffCrypto;
import com.hermes.android.llama.LocalLlmCrashGuard;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.yaml.snakeyaml.Yaml;

/* JADX INFO: compiled from: HandoffPeerStore.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\n\u001a\u00020\u000bH\u0002J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00020\bJ\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u0011J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0015J\b\u0010\u0016\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/hermes/android/handoff/HandoffPeerStore;", BuildConfig.FLAVOR, "file", "Ljava/io/File;", "<init>", "(Ljava/io/File;)V", "peers", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;", LocalLlmCrashGuard.STAGE_LOAD, BuildConfig.FLAVOR, "add", "peer", "get", "deviceId", "all", BuildConfig.FLAVOR, "isPaired", BuildConfig.FLAVOR, "publicKey", BuildConfig.FLAVOR, "save", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HandoffPeerStore {
    public static final int $stable = 8;
    private final File file;
    private final Map<String, HandoffCrypto.PeerInfo> peers;

    public HandoffPeerStore(File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        this.file = file;
        this.peers = new LinkedHashMap();
        load();
    }

    private final void load() {
        Object obj;
        List listEmptyList;
        if (this.file.isFile()) {
            Map map = null;
            try {
                Result.Companion companion = Result.Companion;
                HandoffPeerStore handoffPeerStore = this;
                obj = Result.constructor-impl((Map) new Yaml().load(FilesKt.readText$default(this.file, (Charset) null, 1, (Object) null)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj = Result.constructor-impl(ResultKt.createFailure(th));
            }
            if (Result.isFailure-impl(obj)) {
                obj = null;
            }
            Map map2 = (Map) obj;
            if (map2 == null) {
                return;
            }
            for (Map.Entry entry : map2.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                try {
                    Result.Companion companion3 = Result.Companion;
                    HandoffPeerStore handoffPeerStore2 = this;
                    Map map3 = value instanceof Map ? (Map) value : map;
                    if (map3 != null) {
                        HandoffCrypto.Companion companion4 = HandoffCrypto.INSTANCE;
                        Object obj2 = map3.get("pk");
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                        byte[] bArrB64UrlDecode = companion4.b64UrlDecode((String) obj2);
                        if (bArrB64UrlDecode.length == 32 && Intrinsics.areEqual(HandoffCrypto.INSTANCE.deviceIdFor(bArrB64UrlDecode), str)) {
                            Object obj3 = map3.get("alts");
                            Object obj4 = obj3 instanceof List ? (List) obj3 : map;
                            if (obj4 == null) {
                                listEmptyList = CollectionsKt.emptyList();
                            } else {
                                ArrayList arrayList = new ArrayList();
                                for (Object obj5 : (Iterable) obj4) {
                                    Object obj6 = obj5 instanceof String ? (String) obj5 : map;
                                    if (obj6 != null) {
                                        arrayList.add(obj6);
                                    }
                                }
                                listEmptyList = arrayList;
                            }
                            Map<String, HandoffCrypto.PeerInfo> map4 = this.peers;
                            Object obj7 = map3.get("host");
                            Intrinsics.checkNotNull(obj7, "null cannot be cast to non-null type kotlin.String");
                            Object obj8 = map3.get("port");
                            Intrinsics.checkNotNull(obj8, "null cannot be cast to non-null type kotlin.Number");
                            map4.put(str, new HandoffCrypto.PeerInfo(str, bArrB64UrlDecode, (String) obj7, ((Number) obj8).intValue(), null, listEmptyList, 16, null));
                        }
                    }
                    Result.constructor-impl(Unit.INSTANCE);
                } catch (Throwable th2) {
                    Result.Companion companion5 = Result.Companion;
                    Result.constructor-impl(ResultKt.createFailure(th2));
                }
                map = null;
            }
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.hermes.android.LocalizedIllegalArgument */
    public final void add(HandoffCrypto.PeerInfo peer) throws IOException, LocalizedIllegalArgument {
        Intrinsics.checkNotNullParameter(peer, "peer");
        if (peer.getPublicKey().length != 32) {
            throw new LocalizedIllegalArgument("bad public key length " + peer.getPublicKey().length + " (expected 32)", R.string.handoff_err_qr_bad_pubkey, new Integer[]{Integer.valueOf(peer.getPublicKey().length)});
        }
        if (!Intrinsics.areEqual(HandoffCrypto.INSTANCE.deviceIdFor(peer.getPublicKey()), peer.getDeviceId())) {
            throw new LocalizedIllegalArgument("device id does not match public key", R.string.handoff_err_qr_mismatch, (Object[]) null, 4, (DefaultConstructorMarker) null);
        }
        this.peers.put(peer.getDeviceId(), HandoffCrypto.PeerInfo.copy$default(peer, null, null, null, 0, null, null, 47, null));
        save();
    }

    public final HandoffCrypto.PeerInfo get(String deviceId) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        return this.peers.get(deviceId);
    }

    public final List<HandoffCrypto.PeerInfo> all() {
        return CollectionsKt.toList(this.peers.values());
    }

    public final boolean isPaired(String deviceId, byte[] publicKey) {
        byte[] publicKey2;
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(publicKey, "publicKey");
        HandoffCrypto.PeerInfo peerInfo = this.peers.get(deviceId);
        return (peerInfo == null || (publicKey2 = peerInfo.getPublicKey()) == null || !Arrays.equals(publicKey2, publicKey)) ? false : true;
    }

    private final void save() throws IOException {
        StringBuilder sb = new StringBuilder("{");
        int i = 0;
        for (Object obj : this.peers.values()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            HandoffCrypto.PeerInfo peerInfo = (HandoffCrypto.PeerInfo) obj;
            if (i > 0) {
                sb.append(",");
            }
            sb.append(HandoffJson.INSTANCE.quote(peerInfo.getDeviceId())).append(":{\"pk\":").append(HandoffJson.INSTANCE.quote(HandoffCrypto.INSTANCE.b64UrlEncode(peerInfo.getPublicKey()))).append(",\"host\":").append(HandoffJson.INSTANCE.quote(peerInfo.getHost())).append(",");
            if (!peerInfo.getAlts().isEmpty()) {
                sb.append("\"alts\":[").append(CollectionsKt.joinToString$default(peerInfo.getAlts(), ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.hermes.android.handoff.HandoffPeerStore$$ExternalSyntheticLambda0
                    public final Object invoke(Object obj2) {
                        return HandoffPeerStore.save$lambda$4$lambda$3((String) obj2);
                    }
                }, 30, (Object) null)).append("],");
            }
            sb.append("\"port\":").append(peerInfo.getPort()).append("}");
            i = i2;
        }
        sb.append("}");
        File parentFile = this.file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        File fileCreateTempFile = File.createTempFile(".peers-", null, this.file.getParentFile());
        try {
            Intrinsics.checkNotNull(fileCreateTempFile);
            String string = sb.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            FilesKt.writeText$default(fileCreateTempFile, string, (Charset) null, 2, (Object) null);
            if (!fileCreateTempFile.renameTo(this.file)) {
                throw new LocalizedIllegalState("peers file rename failed", R.string.handoff_err_peers_write, (Object[]) null, 4, (DefaultConstructorMarker) null);
            }
        } catch (Throwable th) {
            fileCreateTempFile.delete();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence save$lambda$4$lambda$3(String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        return HandoffJson.INSTANCE.quote(str);
    }
}
