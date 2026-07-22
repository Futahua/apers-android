package com.hermes.android.handoff;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.yaml.snakeyaml.Yaml;

/* JADX INFO: compiled from: HandoffClient.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\b\b\u0007\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005JL\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u000bJ@\u0010\u0012\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/hermes/android/handoff/HandoffClient;", BuildConfig.FLAVOR, "crypto", "Lcom/hermes/android/handoff/HandoffCrypto;", "<init>", "(Lcom/hermes/android/handoff/HandoffCrypto;)V", "pullSession", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "host", "port", BuildConfig.FLAVOR, "mySecretKey", BuildConfig.FLAVOR, "myPublicKey", "serverPublicKey", "sessionId", "timeoutMs", "pullSessionRaw", "HandoffException", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HandoffClient {
    public static final int MAX_FRAME = 67108864;
    private final HandoffCrypto crypto;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public HandoffClient(HandoffCrypto handoffCrypto) {
        Intrinsics.checkNotNullParameter(handoffCrypto, "crypto");
        this.crypto = handoffCrypto;
    }

    /* JADX INFO: compiled from: HandoffClient.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/hermes/android/handoff/HandoffClient$HandoffException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "msg", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class HandoffException extends Exception {
        public static final int $stable = 0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandoffException(String str) {
            super(str);
            Intrinsics.checkNotNullParameter(str, "msg");
        }
    }

    public final Map<String, Object> pullSession(String host, int port, byte[] mySecretKey, byte[] myPublicKey, byte[] serverPublicKey, String sessionId, int timeoutMs) throws HandoffException {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(mySecretKey, "mySecretKey");
        Intrinsics.checkNotNullParameter(myPublicKey, "myPublicKey");
        Intrinsics.checkNotNullParameter(serverPublicKey, "serverPublicKey");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Map<String, Object> map = (Map) new Yaml().load(new String(pullSessionRaw(host, port, mySecretKey, myPublicKey, serverPublicKey, sessionId, timeoutMs), Charsets.UTF_8));
        if (map != null) {
            return map;
        }
        throw new HandoffException("bundle 解析失敗");
    }

    public final byte[] pullSessionRaw(String host, int port, byte[] mySecretKey, byte[] myPublicKey, byte[] serverPublicKey, String sessionId, int timeoutMs) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(mySecretKey, "mySecretKey");
        Intrinsics.checkNotNullParameter(myPublicKey, "myPublicKey");
        Intrinsics.checkNotNullParameter(serverPublicKey, "serverPublicKey");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Socket socket = new Socket();
        try {
            Socket socket2 = socket;
            socket2.connect(new InetSocketAddress(host, port), timeoutMs);
            socket2.setSoTimeout(timeoutMs);
            DataOutputStream dataOutputStream = new DataOutputStream(socket2.getOutputStream());
            DataInputStream dataInputStream = new DataInputStream(socket2.getInputStream());
            String strDeviceIdFor = HandoffCrypto.INSTANCE.deviceIdFor(myPublicKey);
            Companion companion = INSTANCE;
            byte[] bytes = companion.helloJson(strDeviceIdFor, HandoffCrypto.INSTANCE.b64UrlEncode(myPublicKey)).getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            companion.sendFrame(dataOutputStream, bytes);
            Map<String, Object> json = companion.parseJson(Companion.recvFrame$default(companion, dataInputStream, 0, 2, null));
            Object obj = "unknown";
            if (!Intrinsics.areEqual(json.get("ok"), true)) {
                Object obj2 = json.get("err");
                if (obj2 != null) {
                    obj = obj2;
                }
                throw new HandoffException("握手被拒：" + obj);
            }
            byte[] bytes2 = companion.sessionRequestJson(sessionId).getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
            companion.sendFrame(dataOutputStream, this.crypto.boxEncrypt(mySecretKey, serverPublicKey, bytes2));
            Map<String, Object> json2 = companion.parseJson(Companion.recvFrame$default(companion, dataInputStream, 0, 2, null));
            if (!Intrinsics.areEqual(json2.get("ok"), true)) {
                Object obj3 = json2.get("err");
                if (obj3 != null) {
                    obj = obj3;
                }
                throw new HandoffException("請求失敗：" + obj);
            }
            byte[] bArrBoxDecrypt = this.crypto.boxDecrypt(mySecretKey, serverPublicKey, Companion.recvFrame$default(companion, dataInputStream, 0, 2, null));
            if (bArrBoxDecrypt == null) {
                throw new HandoffException("bundle 解密失敗（竄改或非登記 server）");
            }
            CloseableKt.closeFinally(socket, (Throwable) null);
            return bArrBoxDecrypt;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(socket, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: compiled from: HandoffClient.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0005J\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/hermes/android/handoff/HandoffClient$Companion;", BuildConfig.FLAVOR, "<init>", "()V", "MAX_FRAME", BuildConfig.FLAVOR, "helloJson", BuildConfig.FLAVOR, "did", "pkB64", "sessionRequestJson", "sessionId", "sendFrame", BuildConfig.FLAVOR, "out", "Ljava/io/DataOutputStream;", "data", BuildConfig.FLAVOR, "recvFrame", "ins", "Ljava/io/DataInputStream;", "maxLen", "parseJson", BuildConfig.FLAVOR, "bytes", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String helloJson(String did, String pkB64) {
            Intrinsics.checkNotNullParameter(did, "did");
            Intrinsics.checkNotNullParameter(pkB64, "pkB64");
            return "{\"did\":" + HandoffJson.INSTANCE.quote(did) + ",\"pk\":" + HandoffJson.INSTANCE.quote(pkB64) + "}";
        }

        public final String sessionRequestJson(String sessionId) {
            Intrinsics.checkNotNullParameter(sessionId, "sessionId");
            return "{\"session_id\":" + HandoffJson.INSTANCE.quote(sessionId) + "}";
        }

        public final void sendFrame(DataOutputStream out, byte[] data) throws IOException {
            Intrinsics.checkNotNullParameter(out, "out");
            Intrinsics.checkNotNullParameter(data, "data");
            out.writeInt(data.length);
            out.write(data);
            out.flush();
        }

        public static /* synthetic */ byte[] recvFrame$default(Companion companion, DataInputStream dataInputStream, int i, int i2, Object obj) {
            if ((i2 & 2) != 0) {
                i = 67108864;
            }
            return companion.recvFrame(dataInputStream, i);
        }

        public final byte[] recvFrame(DataInputStream ins, int maxLen) throws HandoffException, IOException {
            Intrinsics.checkNotNullParameter(ins, "ins");
            int i = ins.readInt();
            if (i < 0 || i > maxLen) {
                throw new HandoffException("frame too large: " + i);
            }
            byte[] bArr = new byte[i];
            ins.readFully(bArr);
            return bArr;
        }

        public final Map<String, Object> parseJson(byte[] bytes) {
            Intrinsics.checkNotNullParameter(bytes, "bytes");
            Map<String, Object> map = (Map) new Yaml().load(new String(bytes, Charsets.UTF_8));
            return map == null ? MapsKt.emptyMap() : map;
        }
    }
}
