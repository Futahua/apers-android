package com.hermes.android.mesh;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.LocalizedError;
import com.hermes.android.R;
import com.hermes.android.handoff.HandoffClient;
import com.hermes.android.handoff.HandoffCrypto;
import com.hermes.android.handoff.HandoffJson;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.yaml.snakeyaml.Yaml;

/* JADX INFO: compiled from: MeshClient.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0002)*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J8\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\nJ@\u0010\u0010\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\nJ>\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\nJF\u0010\u0015\u001a\u00020\u00162\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u00132\b\b\u0002\u0010\u000f\u001a\u00020\nJ@\u0010\u0018\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u00072\b\b\u0002\u0010\u000f\u001a\u00020\nJL\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u001b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\nJL\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u001b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\nH\u0002JF\u0010\u001f\u001a\u0002H \"\u0004\b\u0000\u0010 2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\n2\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u0002H 0\"H\u0082\b¢\u0006\u0002\u0010%J \u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020#2\u0006\u0010(\u001a\u00020$2\u0006\u0010\r\u001a\u00020\fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/hermes/android/mesh/MeshClient;", BuildConfig.FLAVOR, "crypto", "Lcom/hermes/android/handoff/HandoffCrypto;", "<init>", "(Lcom/hermes/android/handoff/HandoffCrypto;)V", "pair", BuildConfig.FLAVOR, "host", "port", BuildConfig.FLAVOR, "mySk", BuildConfig.FLAVOR, "myPk", "brokerPk", "timeoutMs", "push", "prompt", "poll", BuildConfig.FLAVOR, "Lcom/hermes/android/mesh/MeshClient$Result;", "ack", BuildConfig.FLAVOR, "ids", "pull", "sessionId", "pushSession", BuildConfig.FLAVOR, "bundleJson", "plainOp", "reqJson", "connect", "T", "body", "Lkotlin/Function2;", "Ljava/io/DataOutputStream;", "Ljava/io/DataInputStream;", "(Ljava/lang/String;IILkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "handshake", "out", "ins", "MeshException", "Result", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class MeshClient {
    public static final int $stable = HandoffCrypto.$stable;
    private final HandoffCrypto crypto;

    public MeshClient(HandoffCrypto handoffCrypto) {
        Intrinsics.checkNotNullParameter(handoffCrypto, "crypto");
        this.crypto = handoffCrypto;
    }

    /* JADX INFO: compiled from: MeshClient.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\b\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u00022\u00020\u0003B+\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\tX\u0096\u0004¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/mesh/MeshClient$MeshException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Lcom/hermes/android/LocalizedError;", "msg", BuildConfig.FLAVOR, "resId", BuildConfig.FLAVOR, "formatArgs", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;I[Ljava/lang/Object;)V", "getResId", "()I", "getFormatArgs", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class MeshException extends Exception implements LocalizedError {
        public static final int $stable = 8;
        private final Object[] formatArgs;
        private final int resId;

        public int getResId() {
            return this.resId;
        }

        public /* synthetic */ MeshException(String str, int i, Object[] objArr, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? new Object[0] : objArr);
        }

        public Object[] getFormatArgs() {
            return this.formatArgs;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MeshException(String str, int i, Object[] objArr) {
            super(str);
            Intrinsics.checkNotNullParameter(str, "msg");
            Intrinsics.checkNotNullParameter(objArr, "formatArgs");
            this.resId = i;
            this.formatArgs = objArr;
        }
    }

    /* JADX INFO: compiled from: MeshClient.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\tHÆ\u0003J;\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/hermes/android/mesh/MeshClient$Result;", BuildConfig.FLAVOR, "id", BuildConfig.FLAVOR, "ref", "ok", BuildConfig.FLAVOR, "text", "created", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;D)V", "getId", "()Ljava/lang/String;", "getRef", "getOk", "()Z", "getText", "getCreated", "()D", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class Result {
        public static final int $stable = 0;
        private final double created;
        private final String id;
        private final boolean ok;
        private final String ref;
        private final String text;

        public static /* synthetic */ Result copy$default(Result result, String str, String str2, boolean z, String str3, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                str = result.id;
            }
            if ((i & 2) != 0) {
                str2 = result.ref;
            }
            String str4 = str2;
            if ((i & 4) != 0) {
                z = result.ok;
            }
            boolean z2 = z;
            if ((i & 8) != 0) {
                str3 = result.text;
            }
            String str5 = str3;
            if ((i & 16) != 0) {
                d = result.created;
            }
            return result.copy(str, str4, z2, str5, d);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getRef() {
            return this.ref;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getOk() {
            return this.ok;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getText() {
            return this.text;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final double getCreated() {
            return this.created;
        }

        public final Result copy(String id, String ref, boolean ok, String text, double created) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(ref, "ref");
            Intrinsics.checkNotNullParameter(text, "text");
            return new Result(id, ref, ok, text, created);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Result)) {
                return false;
            }
            Result result = (Result) other;
            return Intrinsics.areEqual(this.id, result.id) && Intrinsics.areEqual(this.ref, result.ref) && this.ok == result.ok && Intrinsics.areEqual(this.text, result.text) && Double.compare(this.created, result.created) == 0;
        }

        public int hashCode() {
            return (((((((this.id.hashCode() * 31) + this.ref.hashCode()) * 31) + Boolean.hashCode(this.ok)) * 31) + this.text.hashCode()) * 31) + Double.hashCode(this.created);
        }

        public String toString() {
            return "Result(id=" + this.id + ", ref=" + this.ref + ", ok=" + this.ok + ", text=" + this.text + ", created=" + this.created + ")";
        }

        public Result(String str, String str2, boolean z, String str3, double d) {
            Intrinsics.checkNotNullParameter(str, "id");
            Intrinsics.checkNotNullParameter(str2, "ref");
            Intrinsics.checkNotNullParameter(str3, "text");
            this.id = str;
            this.ref = str2;
            this.ok = z;
            this.text = str3;
            this.created = d;
        }

        public final String getId() {
            return this.id;
        }

        public final boolean getOk() {
            return this.ok;
        }

        public final String getRef() {
            return this.ref;
        }

        public final double getCreated() {
            return this.created;
        }

        public final String getText() {
            return this.text;
        }
    }

    public static /* synthetic */ String pair$default(MeshClient meshClient, String str, int i, byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int i3, Object obj) {
        if ((i3 & 32) != 0) {
            i2 = 8000;
        }
        return meshClient.pair(str, i, bArr, bArr2, bArr3, i2);
    }

    public final String pair(String host, int port, byte[] mySk, byte[] myPk, byte[] brokerPk, int timeoutMs) throws MeshException {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(mySk, "mySk");
        Intrinsics.checkNotNullParameter(myPk, "myPk");
        Intrinsics.checkNotNullParameter(brokerPk, "brokerPk");
        Map<String, Object> mapPlainOp = plainOp(host, port, mySk, myPk, brokerPk, "{\"op\":\"pair\"}", timeoutMs);
        if (!Intrinsics.areEqual(mapPlainOp.get("ok"), true)) {
            Object obj = mapPlainOp.get("err");
            if (obj == null) {
                obj = "unknown";
            }
            String strValueOf = String.valueOf(obj);
            throw new MeshException("pair failed: " + strValueOf, R.string.mesh_err_pair_failed, new String[]{strValueOf});
        }
        Object obj2 = mapPlainOp.get("did");
        String str = obj2 instanceof String ? (String) obj2 : null;
        return str == null ? BuildConfig.FLAVOR : str;
    }

    public final String push(String host, int port, byte[] mySk, byte[] myPk, byte[] brokerPk, String prompt, int timeoutMs) throws MeshException {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(mySk, "mySk");
        Intrinsics.checkNotNullParameter(myPk, "myPk");
        Intrinsics.checkNotNullParameter(brokerPk, "brokerPk");
        Intrinsics.checkNotNullParameter(prompt, "prompt");
        Map<String, Object> mapPlainOp = plainOp(host, port, mySk, myPk, brokerPk, "{\"op\":\"push\",\"task\":{\"prompt\":" + HandoffJson.INSTANCE.quote(prompt) + "}}", timeoutMs);
        if (!Intrinsics.areEqual(mapPlainOp.get("ok"), true)) {
            Object obj = mapPlainOp.get("err");
            if (obj == null) {
                obj = "unknown";
            }
            String strValueOf = String.valueOf(obj);
            throw new MeshException("push failed: " + strValueOf, R.string.mesh_err_push_failed, new String[]{strValueOf});
        }
        Object obj2 = mapPlainOp.get("id");
        String str = obj2 instanceof String ? (String) obj2 : null;
        return str == null ? BuildConfig.FLAVOR : str;
    }

    public static /* synthetic */ List poll$default(MeshClient meshClient, String str, int i, byte[] bArr, byte[] bArr2, byte[] bArr3, int i2, int i3, Object obj) {
        if ((i3 & 32) != 0) {
            i2 = 8000;
        }
        return meshClient.poll(str, i, bArr, bArr2, bArr3, i2);
    }

    public final void ack(String host, int port, byte[] mySk, byte[] myPk, byte[] brokerPk, List<String> ids, int timeoutMs) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(mySk, "mySk");
        Intrinsics.checkNotNullParameter(myPk, "myPk");
        Intrinsics.checkNotNullParameter(brokerPk, "brokerPk");
        Intrinsics.checkNotNullParameter(ids, "ids");
        if (ids.isEmpty()) {
            return;
        }
        plainOp(host, port, mySk, myPk, brokerPk, "{\"op\":\"ack\",\"ids\":[" + CollectionsKt.joinToString$default(ids, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.hermes.android.mesh.MeshClient$$ExternalSyntheticLambda0
            public final Object invoke(Object obj) {
                return MeshClient.ack$lambda$2((String) obj);
            }
        }, 30, (Object) null) + "]}", timeoutMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence ack$lambda$2(String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        return HandoffJson.INSTANCE.quote(str);
    }

    private final <T> T connect(String host, int port, int timeoutMs, Function2<? super DataOutputStream, ? super DataInputStream, ? extends T> body) {
        Socket socket = new Socket();
        try {
            Socket socket2 = socket;
            socket2.connect(new InetSocketAddress(host, port), timeoutMs);
            socket2.setSoTimeout(timeoutMs);
            T t = (T) body.invoke(new DataOutputStream(socket2.getOutputStream()), new DataInputStream(socket2.getInputStream()));
            InlineMarker.finallyStart(2);
            CloseableKt.closeFinally(socket, (Throwable) null);
            InlineMarker.finallyEnd(2);
            return t;
        } finally {
        }
    }

    private final void handshake(DataOutputStream out, DataInputStream ins, byte[] myPk) throws IOException, MeshException {
        String strDeviceIdFor = HandoffCrypto.INSTANCE.deviceIdFor(myPk);
        HandoffClient.Companion companion = HandoffClient.INSTANCE;
        byte[] bytes = HandoffClient.INSTANCE.helloJson(strDeviceIdFor, HandoffCrypto.INSTANCE.b64UrlEncode(myPk)).getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        companion.sendFrame(out, bytes);
        Map<String, Object> json = HandoffClient.INSTANCE.parseJson(HandoffClient.Companion.recvFrame$default(HandoffClient.INSTANCE, ins, 0, 2, null));
        if (Intrinsics.areEqual(json.get("ok"), true)) {
            return;
        }
        Object obj = json.get("err");
        String string = obj != null ? obj.toString() : null;
        if (string != null) {
            throw new MeshException("handshake rejected: " + string, R.string.mesh_err_handshake_rejected, new String[]{string});
        }
        throw new MeshException("handshake rejected (not paired?)", R.string.mesh_err_handshake_not_paired, null, 4, null);
    }

    public final List<Result> poll(String host, int port, byte[] mySk, byte[] myPk, byte[] brokerPk, int timeoutMs) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(mySk, "mySk");
        Intrinsics.checkNotNullParameter(myPk, "myPk");
        Intrinsics.checkNotNullParameter(brokerPk, "brokerPk");
        Socket socket = new Socket();
        try {
            Socket socket2 = socket;
            socket2.connect(new InetSocketAddress(host, port), timeoutMs);
            socket2.setSoTimeout(timeoutMs);
            DataOutputStream dataOutputStream = new DataOutputStream(socket2.getOutputStream());
            DataInputStream dataInputStream = new DataInputStream(socket2.getInputStream());
            handshake(dataOutputStream, dataInputStream, myPk);
            HandoffClient.Companion companion = HandoffClient.INSTANCE;
            HandoffCrypto handoffCrypto = this.crypto;
            byte[] bytes = "{\"op\":\"poll\"}".getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            companion.sendFrame(dataOutputStream, handoffCrypto.boxEncrypt(mySk, brokerPk, bytes));
            byte[] bArrBoxDecrypt = this.crypto.boxDecrypt(mySk, brokerPk, HandoffClient.Companion.recvFrame$default(HandoffClient.INSTANCE, dataInputStream, 0, 2, null));
            if (bArrBoxDecrypt == null) {
                throw new MeshException("poll decrypt failed (tampered or unregistered broker)", R.string.mesh_err_decrypt_failed, null, 4, null);
            }
            Map mapEmptyMap = (Map) new Yaml().load(new String(bArrBoxDecrypt, Charsets.UTF_8));
            if (mapEmptyMap == null) {
                mapEmptyMap = MapsKt.emptyMap();
            }
            if (!Intrinsics.areEqual(mapEmptyMap.get("ok"), true)) {
                Object obj = mapEmptyMap.get("err");
                if (obj == null) {
                    obj = "unknown";
                }
                String strValueOf = String.valueOf(obj);
                throw new MeshException("poll failed: " + strValueOf, R.string.mesh_err_poll_failed, new String[]{strValueOf});
            }
            Object obj2 = mapEmptyMap.get("results");
            List listEmptyList = obj2 instanceof List ? (List) obj2 : null;
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            List<Map> list = listEmptyList;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (Map map : list) {
                Object obj3 = map.get("id");
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                String str = (String) obj3;
                Object obj4 = map.get("ref");
                Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.String");
                String str2 = (String) obj4;
                boolean zAreEqual = Intrinsics.areEqual(map.get("ok"), true);
                Object obj5 = map.get("text");
                String str3 = obj5 instanceof String ? (String) obj5 : null;
                if (str3 == null) {
                    str3 = BuildConfig.FLAVOR;
                }
                String str4 = str3;
                Object obj6 = map.get("created");
                Number number = obj6 instanceof Number ? (Number) obj6 : null;
                arrayList.add(new Result(str, str2, zAreEqual, str4, number != null ? number.doubleValue() : 0.0d));
            }
            ArrayList arrayList2 = arrayList;
            CloseableKt.closeFinally(socket, (Throwable) null);
            return arrayList2;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(socket, th);
                throw th2;
            }
        }
    }

    public final byte[] pull(String host, int port, byte[] mySk, byte[] myPk, byte[] brokerPk, String sessionId, int timeoutMs) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(mySk, "mySk");
        Intrinsics.checkNotNullParameter(myPk, "myPk");
        Intrinsics.checkNotNullParameter(brokerPk, "brokerPk");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Socket socket = new Socket();
        try {
            Socket socket2 = socket;
            socket2.connect(new InetSocketAddress(host, port), timeoutMs);
            socket2.setSoTimeout(timeoutMs);
            DataOutputStream dataOutputStream = new DataOutputStream(socket2.getOutputStream());
            DataInputStream dataInputStream = new DataInputStream(socket2.getInputStream());
            handshake(dataOutputStream, dataInputStream, myPk);
            String str = "{\"op\":\"pull\",\"session_id\":" + HandoffJson.INSTANCE.quote(sessionId) + "}";
            HandoffClient.Companion companion = HandoffClient.INSTANCE;
            HandoffCrypto handoffCrypto = this.crypto;
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            companion.sendFrame(dataOutputStream, handoffCrypto.boxEncrypt(mySk, brokerPk, bytes));
            Map<String, Object> json = HandoffClient.INSTANCE.parseJson(HandoffClient.Companion.recvFrame$default(HandoffClient.INSTANCE, dataInputStream, 0, 2, null));
            if (!Intrinsics.areEqual(json.get("ok"), true)) {
                Object obj = json.get("err");
                if (obj == null) {
                    obj = "unknown";
                }
                String strValueOf = String.valueOf(obj);
                throw new MeshException("pull failed: " + strValueOf, R.string.mesh_err_pull_failed, new String[]{strValueOf});
            }
            byte[] bArrBoxDecrypt = this.crypto.boxDecrypt(mySk, brokerPk, HandoffClient.Companion.recvFrame$default(HandoffClient.INSTANCE, dataInputStream, 0, 2, null));
            if (bArrBoxDecrypt == null) {
                throw new MeshException("bundle decrypt failed (tampered or unregistered computer)", R.string.mesh_err_decrypt_failed, null, 4, null);
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

    public final Map<String, Object> pushSession(String host, int port, byte[] mySk, byte[] myPk, byte[] brokerPk, byte[] bundleJson, int timeoutMs) {
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(mySk, "mySk");
        Intrinsics.checkNotNullParameter(myPk, "myPk");
        Intrinsics.checkNotNullParameter(brokerPk, "brokerPk");
        Intrinsics.checkNotNullParameter(bundleJson, "bundleJson");
        Socket socket = new Socket();
        try {
            Socket socket2 = socket;
            socket2.connect(new InetSocketAddress(host, port), timeoutMs);
            socket2.setSoTimeout(timeoutMs);
            DataOutputStream dataOutputStream = new DataOutputStream(socket2.getOutputStream());
            DataInputStream dataInputStream = new DataInputStream(socket2.getInputStream());
            handshake(dataOutputStream, dataInputStream, myPk);
            byte[] bytes = "{\"op\":\"push_session\",\"bundle\":".getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            byte[] bytes2 = "}".getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
            HandoffClient.INSTANCE.sendFrame(dataOutputStream, this.crypto.boxEncrypt(mySk, brokerPk, ArraysKt.plus(ArraysKt.plus(bytes, bundleJson), bytes2)));
            Map<String, Object> json = HandoffClient.INSTANCE.parseJson(HandoffClient.Companion.recvFrame$default(HandoffClient.INSTANCE, dataInputStream, 0, 2, null));
            if (!Intrinsics.areEqual(json.get("ok"), true)) {
                Object obj = json.get("err");
                if (obj == null) {
                    obj = "unknown";
                }
                String strValueOf = String.valueOf(obj);
                throw new MeshException("sync back failed: " + strValueOf, R.string.mesh_err_syncback_failed, new String[]{strValueOf});
            }
            Object obj2 = json.get("stats");
            Map<String, Object> mapEmptyMap = obj2 instanceof Map ? (Map) obj2 : null;
            if (mapEmptyMap == null) {
                mapEmptyMap = MapsKt.emptyMap();
            }
            CloseableKt.closeFinally(socket, (Throwable) null);
            return mapEmptyMap;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(socket, th);
                throw th2;
            }
        }
    }

    private final Map<String, Object> plainOp(String host, int port, byte[] mySk, byte[] myPk, byte[] brokerPk, String reqJson, int timeoutMs) {
        Socket socket = new Socket();
        try {
            Socket socket2 = socket;
            socket2.connect(new InetSocketAddress(host, port), timeoutMs);
            socket2.setSoTimeout(timeoutMs);
            DataOutputStream dataOutputStream = new DataOutputStream(socket2.getOutputStream());
            DataInputStream dataInputStream = new DataInputStream(socket2.getInputStream());
            handshake(dataOutputStream, dataInputStream, myPk);
            HandoffClient.Companion companion = HandoffClient.INSTANCE;
            HandoffCrypto handoffCrypto = this.crypto;
            byte[] bytes = reqJson.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            companion.sendFrame(dataOutputStream, handoffCrypto.boxEncrypt(mySk, brokerPk, bytes));
            Map<String, Object> json = HandoffClient.INSTANCE.parseJson(HandoffClient.Companion.recvFrame$default(HandoffClient.INSTANCE, dataInputStream, 0, 2, null));
            CloseableKt.closeFinally(socket, (Throwable) null);
            return json;
        } finally {
        }
    }
}
