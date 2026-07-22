package com.hermes.android.handoff;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.LazySodium;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.LocalizedIllegalArgument;
import com.hermes.android.R;
import com.hermes.android.handoff.HandoffCrypto;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.ByteString;
import org.yaml.snakeyaml.Yaml;

/* JADX INFO: compiled from: HandoffCrypto.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0003\u0016\u0017\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u001e\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\tJ \u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/hermes/android/handoff/HandoffCrypto;", BuildConfig.FLAVOR, "ls", "Lcom/goterl/lazysodium/LazySodium;", "<init>", "(Lcom/goterl/lazysodium/LazySodium;)V", "generateIdentity", "Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;", "publicFromPrivate", BuildConfig.FLAVOR, "sk", "boxEncrypt", "mySk", "peerPk", "plaintext", "boxDecrypt", "blob", "parseQr", "Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;", "json", BuildConfig.FLAVOR, "parsePairQr", "KeyPair", "PeerInfo", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HandoffCrypto {
    public static final int HANDOFF_QR_SCHEMA = 2;
    public static final int QR_SCHEMA = 1;
    private final LazySodium ls;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public HandoffCrypto(LazySodium lazySodium) {
        Intrinsics.checkNotNullParameter(lazySodium, "ls");
        this.ls = lazySodium;
    }

    /* JADX INFO: compiled from: HandoffCrypto.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u000bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/hermes/android/handoff/HandoffCrypto$KeyPair;", BuildConfig.FLAVOR, "secretKey", BuildConfig.FLAVOR, "publicKey", "<init>", "([B[B)V", "getSecretKey", "()[B", "getPublicKey", "deviceId", BuildConfig.FLAVOR, "getDeviceId", "()Ljava/lang/String;", "publicB64", "getPublicB64", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class KeyPair {
        public static final int $stable = 8;
        private final byte[] publicKey;
        private final byte[] secretKey;

        public static /* synthetic */ KeyPair copy$default(KeyPair keyPair, byte[] bArr, byte[] bArr2, int i, Object obj) {
            if ((i & 1) != 0) {
                bArr = keyPair.secretKey;
            }
            if ((i & 2) != 0) {
                bArr2 = keyPair.publicKey;
            }
            return keyPair.copy(bArr, bArr2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final byte[] getSecretKey() {
            return this.secretKey;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final byte[] getPublicKey() {
            return this.publicKey;
        }

        public final KeyPair copy(byte[] secretKey, byte[] publicKey) {
            Intrinsics.checkNotNullParameter(secretKey, "secretKey");
            Intrinsics.checkNotNullParameter(publicKey, "publicKey");
            return new KeyPair(secretKey, publicKey);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof KeyPair)) {
                return false;
            }
            KeyPair keyPair = (KeyPair) other;
            return Intrinsics.areEqual(this.secretKey, keyPair.secretKey) && Intrinsics.areEqual(this.publicKey, keyPair.publicKey);
        }

        public int hashCode() {
            return (Arrays.hashCode(this.secretKey) * 31) + Arrays.hashCode(this.publicKey);
        }

        public String toString() {
            return "KeyPair(secretKey=" + Arrays.toString(this.secretKey) + ", publicKey=" + Arrays.toString(this.publicKey) + ")";
        }

        public KeyPair(byte[] bArr, byte[] bArr2) {
            Intrinsics.checkNotNullParameter(bArr, "secretKey");
            Intrinsics.checkNotNullParameter(bArr2, "publicKey");
            this.secretKey = bArr;
            this.publicKey = bArr2;
        }

        public final byte[] getPublicKey() {
            return this.publicKey;
        }

        public final byte[] getSecretKey() {
            return this.secretKey;
        }

        public final String getDeviceId() {
            return HandoffCrypto.INSTANCE.deviceIdFor(this.publicKey);
        }

        public final String getPublicB64() {
            return HandoffCrypto.INSTANCE.b64UrlEncode(this.publicKey);
        }
    }

    /* JADX INFO: compiled from: HandoffCrypto.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\bHÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bHÆ\u0003JM\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000bHÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020\bHÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006$"}, d2 = {"Lcom/hermes/android/handoff/HandoffCrypto$PeerInfo;", BuildConfig.FLAVOR, "deviceId", BuildConfig.FLAVOR, "publicKey", BuildConfig.FLAVOR, "host", "port", BuildConfig.FLAVOR, "sessionId", "alts", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;[BLjava/lang/String;ILjava/lang/String;Ljava/util/List;)V", "getDeviceId", "()Ljava/lang/String;", "getPublicKey", "()[B", "getHost", "getPort", "()I", "getSessionId", "getAlts", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class PeerInfo {
        public static final int $stable = 8;
        private final List<String> alts;
        private final String deviceId;
        private final String host;
        private final int port;
        private final byte[] publicKey;
        private final String sessionId;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PeerInfo copy$default(PeerInfo peerInfo, String str, byte[] bArr, String str2, int i, String str3, List list, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = peerInfo.deviceId;
            }
            if ((i2 & 2) != 0) {
                bArr = peerInfo.publicKey;
            }
            byte[] bArr2 = bArr;
            if ((i2 & 4) != 0) {
                str2 = peerInfo.host;
            }
            String str4 = str2;
            if ((i2 & 8) != 0) {
                i = peerInfo.port;
            }
            int i3 = i;
            if ((i2 & 16) != 0) {
                str3 = peerInfo.sessionId;
            }
            String str5 = str3;
            if ((i2 & 32) != 0) {
                list = peerInfo.alts;
            }
            return peerInfo.copy(str, bArr2, str4, i3, str5, list);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDeviceId() {
            return this.deviceId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final byte[] getPublicKey() {
            return this.publicKey;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getHost() {
            return this.host;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final int getPort() {
            return this.port;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getSessionId() {
            return this.sessionId;
        }

        public final List<String> component6() {
            return this.alts;
        }

        public final PeerInfo copy(String deviceId, byte[] publicKey, String host, int port, String sessionId, List<String> alts) {
            Intrinsics.checkNotNullParameter(deviceId, "deviceId");
            Intrinsics.checkNotNullParameter(publicKey, "publicKey");
            Intrinsics.checkNotNullParameter(host, "host");
            Intrinsics.checkNotNullParameter(alts, "alts");
            return new PeerInfo(deviceId, publicKey, host, port, sessionId, alts);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PeerInfo)) {
                return false;
            }
            PeerInfo peerInfo = (PeerInfo) other;
            return Intrinsics.areEqual(this.deviceId, peerInfo.deviceId) && Intrinsics.areEqual(this.publicKey, peerInfo.publicKey) && Intrinsics.areEqual(this.host, peerInfo.host) && this.port == peerInfo.port && Intrinsics.areEqual(this.sessionId, peerInfo.sessionId) && Intrinsics.areEqual(this.alts, peerInfo.alts);
        }

        public int hashCode() {
            int iHashCode = ((((((this.deviceId.hashCode() * 31) + Arrays.hashCode(this.publicKey)) * 31) + this.host.hashCode()) * 31) + Integer.hashCode(this.port)) * 31;
            String str = this.sessionId;
            return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.alts.hashCode();
        }

        public String toString() {
            return "PeerInfo(deviceId=" + this.deviceId + ", publicKey=" + Arrays.toString(this.publicKey) + ", host=" + this.host + ", port=" + this.port + ", sessionId=" + this.sessionId + ", alts=" + this.alts + ")";
        }

        public PeerInfo(String str, byte[] bArr, String str2, int i, String str3, List<String> list) {
            Intrinsics.checkNotNullParameter(str, "deviceId");
            Intrinsics.checkNotNullParameter(bArr, "publicKey");
            Intrinsics.checkNotNullParameter(str2, "host");
            Intrinsics.checkNotNullParameter(list, "alts");
            this.deviceId = str;
            this.publicKey = bArr;
            this.host = str2;
            this.port = i;
            this.sessionId = str3;
            this.alts = list;
        }

        public final String getDeviceId() {
            return this.deviceId;
        }

        public final byte[] getPublicKey() {
            return this.publicKey;
        }

        public final String getHost() {
            return this.host;
        }

        public final int getPort() {
            return this.port;
        }

        public final String getSessionId() {
            return this.sessionId;
        }

        public /* synthetic */ PeerInfo(String str, byte[] bArr, String str2, int i, String str3, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, bArr, str2, i, (i2 & 16) != 0 ? null : str3, (i2 & 32) != 0 ? CollectionsKt.emptyList() : list);
        }

        public final List<String> getAlts() {
            return this.alts;
        }
    }

    public final KeyPair generateIdentity() {
        byte[] bArrRandomBytesBuf = this.ls.randomBytesBuf(32);
        byte[] bArr = new byte[32];
        if (!this.ls.cryptoScalarMultBase(bArr, bArrRandomBytesBuf)) {
            throw new IllegalArgumentException("scalarMultBase failed".toString());
        }
        Intrinsics.checkNotNull(bArrRandomBytesBuf);
        return new KeyPair(bArrRandomBytesBuf, bArr);
    }

    public final byte[] publicFromPrivate(byte[] sk) {
        Intrinsics.checkNotNullParameter(sk, "sk");
        byte[] bArr = new byte[32];
        if (this.ls.cryptoScalarMultBase(bArr, sk)) {
            return bArr;
        }
        throw new IllegalArgumentException("scalarMultBase failed".toString());
    }

    public final byte[] boxEncrypt(byte[] mySk, byte[] peerPk, byte[] plaintext) {
        Intrinsics.checkNotNullParameter(mySk, "mySk");
        Intrinsics.checkNotNullParameter(peerPk, "peerPk");
        Intrinsics.checkNotNullParameter(plaintext, "plaintext");
        byte[] bArrRandomBytesBuf = this.ls.randomBytesBuf(24);
        byte[] bArr = new byte[plaintext.length + 16];
        if (!this.ls.cryptoBoxEasy(bArr, plaintext, plaintext.length, bArrRandomBytesBuf, peerPk, mySk)) {
            throw new IllegalArgumentException("boxEncrypt failed".toString());
        }
        Intrinsics.checkNotNull(bArrRandomBytesBuf);
        return ArraysKt.plus(bArrRandomBytesBuf, bArr);
    }

    public final byte[] boxDecrypt(byte[] mySk, byte[] peerPk, byte[] blob) {
        Intrinsics.checkNotNullParameter(mySk, "mySk");
        Intrinsics.checkNotNullParameter(peerPk, "peerPk");
        Intrinsics.checkNotNullParameter(blob, "blob");
        if (blob.length < 40) {
            return null;
        }
        byte[] bArrCopyOfRange = ArraysKt.copyOfRange(blob, 0, 24);
        byte[] bArrCopyOfRange2 = ArraysKt.copyOfRange(blob, 24, blob.length);
        byte[] bArr = new byte[bArrCopyOfRange2.length - 16];
        if (this.ls.cryptoBoxOpenEasy(bArr, bArrCopyOfRange2, bArrCopyOfRange2.length, bArrCopyOfRange, peerPk, mySk)) {
            return bArr;
        }
        return null;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.hermes.android.LocalizedIllegalArgument */
    public final PeerInfo parseQr(String json) throws LocalizedIllegalArgument {
        String str;
        List listEmptyList;
        Intrinsics.checkNotNullParameter(json, "json");
        Map map = (Map) new Yaml().load(json);
        if (map == null) {
            throw new IllegalArgumentException("invalid QR");
        }
        Object obj = map.get("v");
        Integer num = obj instanceof Integer ? (Integer) obj : null;
        if ((num == null || num.intValue() != 1) && (num == null || num.intValue() != 2)) {
            throw new IllegalArgumentException(("unsupported QR schema: " + num).toString());
        }
        Companion companion = INSTANCE;
        Object obj2 = map.get("pk");
        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
        byte[] bArrB64UrlDecode = companion.b64UrlDecode((String) obj2);
        if (bArrB64UrlDecode.length != 32) {
            throw new LocalizedIllegalArgument("invalid QR: public key length " + bArrB64UrlDecode.length + " (expected 32)", R.string.handoff_err_qr_bad_pubkey, new Integer[]{Integer.valueOf(bArrB64UrlDecode.length)});
        }
        Object obj3 = map.get("did");
        Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
        String str2 = (String) obj3;
        if (!Intrinsics.areEqual(companion.deviceIdFor(bArrB64UrlDecode), str2)) {
            throw new LocalizedIllegalArgument("QR integrity check failed: device id does not match public key", R.string.handoff_err_qr_mismatch, (Object[]) null, 4, (DefaultConstructorMarker) null);
        }
        if (num != null && num.intValue() == 2) {
            Object obj4 = map.get("sid");
            String str3 = obj4 instanceof String ? (String) obj4 : null;
            String str4 = str3;
            if (str4 == null || str4.length() == 0) {
                throw new LocalizedIllegalArgument("handoff QR (v2) missing sid", R.string.handoff_err_qr_missing_sid, (Object[]) null, 4, (DefaultConstructorMarker) null);
            }
            str = str3;
        } else {
            str = null;
        }
        Object obj5 = map.get("alts");
        List list = obj5 instanceof List ? (List) obj5 : null;
        if (list == null) {
            listEmptyList = CollectionsKt.emptyList();
        } else {
            ArrayList arrayList = new ArrayList();
            for (Object obj6 : list) {
                String str5 = obj6 instanceof String ? (String) obj6 : null;
                if (str5 != null) {
                    arrayList.add(str5);
                }
            }
            listEmptyList = arrayList;
        }
        Object obj7 = map.get("host");
        Intrinsics.checkNotNull(obj7, "null cannot be cast to non-null type kotlin.String");
        Object obj8 = map.get("port");
        Intrinsics.checkNotNull(obj8, "null cannot be cast to non-null type kotlin.Number");
        return new PeerInfo(str2, bArrB64UrlDecode, (String) obj7, ((Number) obj8).intValue(), str, listEmptyList);
    }

    public final PeerInfo parsePairQr(String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        return parseQr(json);
    }

    /* JADX INFO: compiled from: HandoffCrypto.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\nJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/hermes/android/handoff/HandoffCrypto$Companion;", BuildConfig.FLAVOR, "<init>", "()V", "QR_SCHEMA", BuildConfig.FLAVOR, "HANDOFF_QR_SCHEMA", "deviceIdFor", BuildConfig.FLAVOR, "pubkey", BuildConfig.FLAVOR, "b64UrlEncode", "b", "b64UrlDecode", "s", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final CharSequence deviceIdFor$lambda$0(byte b) {
            String str = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            return str;
        }

        public final String deviceIdFor(byte[] pubkey) {
            Intrinsics.checkNotNullParameter(pubkey, "pubkey");
            return ArraysKt.joinToString$default(ArraysKt.copyOfRange(pubkey, 0, 8), BuildConfig.FLAVOR, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.hermes.android.handoff.HandoffCrypto$Companion$$ExternalSyntheticLambda0
                public final Object invoke(Object obj) {
                    return HandoffCrypto.Companion.deviceIdFor$lambda$0(((Byte) obj).byteValue());
                }
            }, 30, (Object) null);
        }

        public final String b64UrlEncode(byte[] b) {
            Intrinsics.checkNotNullParameter(b, "b");
            return StringsKt.trimEnd(ByteString.Companion.of$default(ByteString.Companion, b, 0, 0, 3, (Object) null).base64Url(), new char[]{'='});
        }

        public final byte[] b64UrlDecode(String s) {
            byte[] byteArray;
            Intrinsics.checkNotNullParameter(s, "s");
            ByteString byteStringDecodeBase64 = ByteString.Companion.decodeBase64(s + StringsKt.repeat("=", (4 - (s.length() % 4)) % 4));
            if (byteStringDecodeBase64 == null || (byteArray = byteStringDecodeBase64.toByteArray()) == null) {
                throw new IllegalArgumentException("bad base64");
            }
            return byteArray;
        }
    }
}
