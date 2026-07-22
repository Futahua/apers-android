package com.hermes.android.data.oauth;

import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;

/* JADX INFO: compiled from: NousDeviceCodeClient.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0003\u0011\u0012\u0013B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0086@¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/hermes/android/data/oauth/NousDeviceCodeClient;", BuildConfig.FLAVOR, "portalBaseUrl", BuildConfig.FLAVOR, "http", "Lokhttp3/OkHttpClient;", "<init>", "(Ljava/lang/String;Lokhttp3/OkHttpClient;)V", "requestDeviceCode", "Lkotlin/Result;", "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;", "requestDeviceCode-d1pmJ48", "()Ljava/lang/Object;", "pollForToken", "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;", "dc", "(Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "DeviceCode", "PollResult", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class NousDeviceCodeClient {
    public static final String CLIENT_ID = "hermes-cli";
    public static final String INFERENCE_BASE_URL = "https://inference-api.nousresearch.com/v1";
    private static final int POLL_INTERVAL_CAP_SECONDS = 1;
    public static final String PORTAL_BASE_URL = "https://portal.nousresearch.com";
    public static final String SCOPE = "inference:invoke";
    private static final int SLOW_DOWN_MAX_SECONDS = 30;
    private final OkHttpClient http;
    private final String portalBaseUrl;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    /* JADX INFO: renamed from: com.hermes.android.data.oauth.NousDeviceCodeClient$pollForToken$1, reason: invalid class name */
    /* JADX INFO: compiled from: NousDeviceCodeClient.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.data.oauth.NousDeviceCodeClient", f = "NousDeviceCodeClient.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3}, l = {109, 119, 137, 140}, m = "pollForToken", n = {"this", "dc", "deadlineNanos", "interval", "this", "dc", "deadlineNanos", "interval", "this", "dc", "deadlineNanos", "interval", "this", "dc", "deadlineNanos", "interval"}, s = {"L$0", "L$1", "J$0", "I$0", "L$0", "L$1", "J$0", "I$0", "L$0", "L$1", "J$0", "I$0", "L$0", "L$1", "J$0", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NousDeviceCodeClient.this.pollForToken(null, (Continuation) this);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NousDeviceCodeClient() {
        String str = null;
        this(str, str, 3, str);
    }

    public NousDeviceCodeClient(String str, OkHttpClient okHttpClient) {
        Intrinsics.checkNotNullParameter(str, "portalBaseUrl");
        Intrinsics.checkNotNullParameter(okHttpClient, "http");
        this.portalBaseUrl = str;
        this.http = okHttpClient;
    }

    public /* synthetic */ NousDeviceCodeClient(String str, OkHttpClient okHttpClient, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? PORTAL_BASE_URL : str, (i & 2) != 0 ? INSTANCE.defaultClient() : okHttpClient);
    }

    /* JADX INFO: compiled from: NousDeviceCodeClient.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\rH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/hermes/android/data/oauth/NousDeviceCodeClient$Companion;", BuildConfig.FLAVOR, "<init>", "()V", "PORTAL_BASE_URL", BuildConfig.FLAVOR, "INFERENCE_BASE_URL", "CLIENT_ID", "SCOPE", "POLL_INTERVAL_CAP_SECONDS", BuildConfig.FLAVOR, "SLOW_DOWN_MAX_SECONDS", "defaultClient", "Lokhttp3/OkHttpClient;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final OkHttpClient defaultClient() {
            return new OkHttpClient.Builder().connectTimeout(15L, TimeUnit.SECONDS).readTimeout(20L, TimeUnit.SECONDS).build();
        }
    }

    /* JADX INFO: compiled from: NousDeviceCodeClient.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003JE\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\bHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012¨\u0006 "}, d2 = {"Lcom/hermes/android/data/oauth/NousDeviceCodeClient$DeviceCode;", BuildConfig.FLAVOR, "deviceCode", BuildConfig.FLAVOR, "userCode", "verificationUri", "verificationUriComplete", "expiresIn", BuildConfig.FLAVOR, "interval", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "getDeviceCode", "()Ljava/lang/String;", "getUserCode", "getVerificationUri", "getVerificationUriComplete", "getExpiresIn", "()I", "getInterval", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class DeviceCode {
        public static final int $stable = 0;
        private final String deviceCode;
        private final int expiresIn;
        private final int interval;
        private final String userCode;
        private final String verificationUri;
        private final String verificationUriComplete;

        public static /* synthetic */ DeviceCode copy$default(DeviceCode deviceCode, String str, String str2, String str3, String str4, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = deviceCode.deviceCode;
            }
            if ((i3 & 2) != 0) {
                str2 = deviceCode.userCode;
            }
            String str5 = str2;
            if ((i3 & 4) != 0) {
                str3 = deviceCode.verificationUri;
            }
            String str6 = str3;
            if ((i3 & 8) != 0) {
                str4 = deviceCode.verificationUriComplete;
            }
            String str7 = str4;
            if ((i3 & 16) != 0) {
                i = deviceCode.expiresIn;
            }
            int i4 = i;
            if ((i3 & 32) != 0) {
                i2 = deviceCode.interval;
            }
            return deviceCode.copy(str, str5, str6, str7, i4, i2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDeviceCode() {
            return this.deviceCode;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getUserCode() {
            return this.userCode;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getVerificationUri() {
            return this.verificationUri;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getVerificationUriComplete() {
            return this.verificationUriComplete;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getExpiresIn() {
            return this.expiresIn;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final int getInterval() {
            return this.interval;
        }

        public final DeviceCode copy(String deviceCode, String userCode, String verificationUri, String verificationUriComplete, int expiresIn, int interval) {
            Intrinsics.checkNotNullParameter(deviceCode, "deviceCode");
            Intrinsics.checkNotNullParameter(userCode, "userCode");
            Intrinsics.checkNotNullParameter(verificationUri, "verificationUri");
            Intrinsics.checkNotNullParameter(verificationUriComplete, "verificationUriComplete");
            return new DeviceCode(deviceCode, userCode, verificationUri, verificationUriComplete, expiresIn, interval);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DeviceCode)) {
                return false;
            }
            DeviceCode deviceCode = (DeviceCode) other;
            return Intrinsics.areEqual(this.deviceCode, deviceCode.deviceCode) && Intrinsics.areEqual(this.userCode, deviceCode.userCode) && Intrinsics.areEqual(this.verificationUri, deviceCode.verificationUri) && Intrinsics.areEqual(this.verificationUriComplete, deviceCode.verificationUriComplete) && this.expiresIn == deviceCode.expiresIn && this.interval == deviceCode.interval;
        }

        public int hashCode() {
            return (((((((((this.deviceCode.hashCode() * 31) + this.userCode.hashCode()) * 31) + this.verificationUri.hashCode()) * 31) + this.verificationUriComplete.hashCode()) * 31) + Integer.hashCode(this.expiresIn)) * 31) + Integer.hashCode(this.interval);
        }

        public String toString() {
            return "DeviceCode(deviceCode=" + this.deviceCode + ", userCode=" + this.userCode + ", verificationUri=" + this.verificationUri + ", verificationUriComplete=" + this.verificationUriComplete + ", expiresIn=" + this.expiresIn + ", interval=" + this.interval + ")";
        }

        public DeviceCode(String str, String str2, String str3, String str4, int i, int i2) {
            Intrinsics.checkNotNullParameter(str, "deviceCode");
            Intrinsics.checkNotNullParameter(str2, "userCode");
            Intrinsics.checkNotNullParameter(str3, "verificationUri");
            Intrinsics.checkNotNullParameter(str4, "verificationUriComplete");
            this.deviceCode = str;
            this.userCode = str2;
            this.verificationUri = str3;
            this.verificationUriComplete = str4;
            this.expiresIn = i;
            this.interval = i2;
        }

        public final String getDeviceCode() {
            return this.deviceCode;
        }

        public final String getUserCode() {
            return this.userCode;
        }

        public final String getVerificationUri() {
            return this.verificationUri;
        }

        public final String getVerificationUriComplete() {
            return this.verificationUriComplete;
        }

        public final int getExpiresIn() {
            return this.expiresIn;
        }

        public final int getInterval() {
            return this.interval;
        }
    }

    /* JADX INFO: compiled from: NousDeviceCodeClient.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;", BuildConfig.FLAVOR, "<init>", "()V", "Success", "Denied", "Expired", "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;", "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Expired;", "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static abstract class PollResult {
        public static final int $stable = 0;

        public /* synthetic */ PollResult(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private PollResult() {
        }

        /* JADX INFO: compiled from: NousDeviceCodeClient.kt */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Success;", "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;", "tokenJson", "Lorg/json/JSONObject;", "<init>", "(Lorg/json/JSONObject;)V", "getTokenJson", "()Lorg/json/JSONObject;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Success extends PollResult {
            public static final int $stable = 8;
            private final JSONObject tokenJson;

            public static /* synthetic */ Success copy$default(Success success, JSONObject jSONObject, int i, Object obj) {
                if ((i & 1) != 0) {
                    jSONObject = success.tokenJson;
                }
                return success.copy(jSONObject);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final JSONObject getTokenJson() {
                return this.tokenJson;
            }

            public final Success copy(JSONObject tokenJson) {
                Intrinsics.checkNotNullParameter(tokenJson, "tokenJson");
                return new Success(tokenJson);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.tokenJson, ((Success) other).tokenJson);
            }

            public int hashCode() {
                return this.tokenJson.hashCode();
            }

            public String toString() {
                return "Success(tokenJson=" + this.tokenJson + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(JSONObject jSONObject) {
                super(null);
                Intrinsics.checkNotNullParameter(jSONObject, "tokenJson");
                this.tokenJson = jSONObject;
            }

            public final JSONObject getTokenJson() {
                return this.tokenJson;
            }
        }

        /* JADX INFO: compiled from: NousDeviceCodeClient.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Denied;", "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;", "error", BuildConfig.FLAVOR, "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getError", "()Ljava/lang/String;", "getDescription", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Denied extends PollResult {
            public static final int $stable = 0;
            private final String description;
            private final String error;

            public static /* synthetic */ Denied copy$default(Denied denied, String str, String str2, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = denied.error;
                }
                if ((i & 2) != 0) {
                    str2 = denied.description;
                }
                return denied.copy(str, str2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getError() {
                return this.error;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getDescription() {
                return this.description;
            }

            public final Denied copy(String error, String description) {
                Intrinsics.checkNotNullParameter(error, "error");
                Intrinsics.checkNotNullParameter(description, "description");
                return new Denied(error, description);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Denied)) {
                    return false;
                }
                Denied denied = (Denied) other;
                return Intrinsics.areEqual(this.error, denied.error) && Intrinsics.areEqual(this.description, denied.description);
            }

            public int hashCode() {
                return (this.error.hashCode() * 31) + this.description.hashCode();
            }

            public String toString() {
                return "Denied(error=" + this.error + ", description=" + this.description + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Denied(String str, String str2) {
                super(null);
                Intrinsics.checkNotNullParameter(str, "error");
                Intrinsics.checkNotNullParameter(str2, "description");
                this.error = str;
                this.description = str2;
            }

            public final String getDescription() {
                return this.description;
            }

            public final String getError() {
                return this.error;
            }
        }

        /* JADX INFO: compiled from: NousDeviceCodeClient.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult$Expired;", "Lcom/hermes/android/data/oauth/NousDeviceCodeClient$PollResult;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Expired extends PollResult {
            public static final int $stable = 0;
            public static final Expired INSTANCE = new Expired();

            private Expired() {
                super(null);
            }
        }
    }

    /* JADX INFO: renamed from: requestDeviceCode-d1pmJ48, reason: not valid java name */
    public final Object m22requestDeviceCoded1pmJ48() {
        try {
            Result.Companion companion = Result.Companion;
            NousDeviceCodeClient nousDeviceCodeClient = this;
            Response response = (Closeable) this.http.newCall(new Request.Builder().url(this.portalBaseUrl + "/api/oauth/device/code").post(new FormBody.Builder((Charset) null, 1, (DefaultConstructorMarker) null).add("client_id", CLIENT_ID).add("scope", SCOPE).build()).build()).execute();
            try {
                Response response2 = response;
                if (!response2.isSuccessful()) {
                    throw new IllegalStateException(("Device code request failed: HTTP " + response2.code()).toString());
                }
                ResponseBody responseBodyBody = response2.body();
                String strString = responseBodyBody != null ? responseBodyBody.string() : null;
                String str = strString;
                if (str == null || StringsKt.isBlank(str)) {
                    strString = null;
                }
                if (strString == null) {
                    throw new IllegalStateException("Empty device code response".toString());
                }
                JSONObject jSONObject = new JSONObject(strString);
                List listListOf = CollectionsKt.listOf(new String[]{"device_code", "user_code", "verification_uri", "verification_uri_complete", "expires_in", "interval"});
                ArrayList arrayList = new ArrayList();
                for (Object obj : listListOf) {
                    if (!jSONObject.has((String) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = arrayList;
                if (!arrayList2.isEmpty()) {
                    throw new IllegalStateException(("Device code response missing fields: " + CollectionsKt.joinToString$default(arrayList2, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null)).toString());
                }
                String string = jSONObject.getString("device_code");
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                String string2 = jSONObject.getString("user_code");
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                String string3 = jSONObject.getString("verification_uri");
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                String string4 = jSONObject.getString("verification_uri_complete");
                Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                DeviceCode deviceCode = new DeviceCode(string, string2, string3, string4, jSONObject.getInt("expires_in"), jSONObject.getInt("interval"));
                CloseableKt.closeFinally(response, (Throwable) null);
                return Result.constructor-impl(deviceCode);
            } finally {
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.constructor-impl(ResultKt.createFailure(th));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0198 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x026c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0153 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x01f6 -> B:74:0x01f8). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x021d -> B:15:0x0048). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x026d -> B:29:0x00c4). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object pollForToken(DeviceCode deviceCode, Continuation<? super PollResult> continuation) {
        AnonymousClass1 anonymousClass1;
        NousDeviceCodeClient nousDeviceCodeClient;
        long jNanoTime;
        AnonymousClass1 anonymousClass12;
        NousDeviceCodeClient nousDeviceCodeClient2;
        int iCoerceIn;
        DeviceCode deviceCode2;
        NousDeviceCodeClient nousDeviceCodeClient3;
        DeviceCode deviceCode3;
        int i;
        char c;
        int iIntValue;
        Object obj;
        Object obj2;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
                nousDeviceCodeClient = this;
            } else {
                nousDeviceCodeClient = this;
                anonymousClass1 = nousDeviceCodeClient.new AnonymousClass1(continuation);
            }
        }
        Object obj3 = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj3);
            jNanoTime = System.nanoTime() + (((long) RangesKt.coerceAtLeast(deviceCode.getExpiresIn(), 1)) * 1000000000);
            anonymousClass12 = anonymousClass1;
            nousDeviceCodeClient2 = nousDeviceCodeClient;
            iCoerceIn = RangesKt.coerceIn(deviceCode.getInterval(), 1, 1);
            deviceCode2 = deviceCode;
            if (System.nanoTime() < jNanoTime) {
            }
        } else if (i2 == 1) {
            i = anonymousClass1.I$0;
            jNanoTime = anonymousClass1.J$0;
            deviceCode3 = (DeviceCode) anonymousClass1.L$1;
            nousDeviceCodeClient3 = (NousDeviceCodeClient) anonymousClass1.L$0;
            try {
                try {
                    ResultKt.throwOnFailure(obj3);
                } catch (CancellationException e) {
                    throw e;
                }
            } catch (IOException unused) {
                anonymousClass1.L$0 = nousDeviceCodeClient3;
                anonymousClass1.L$1 = deviceCode3;
                anonymousClass1.J$0 = jNanoTime;
                anonymousClass1.I$0 = i;
                anonymousClass1.label = 2;
                if (DelayKt.delay(((long) i) * 1000, anonymousClass1) == coroutine_suspended) {
                }
                deviceCode2 = deviceCode3;
                nousDeviceCodeClient2 = nousDeviceCodeClient3;
                int i3 = i;
                anonymousClass12 = anonymousClass1;
                iCoerceIn = i3;
                if (System.nanoTime() < jNanoTime) {
                }
            }
            Pair pair = (Pair) obj3;
            iIntValue = ((Number) pair.component1()).intValue();
            String str = (String) pair.component2();
            if (iIntValue != 200) {
            }
        } else if (i2 == 2) {
            i = anonymousClass1.I$0;
            jNanoTime = anonymousClass1.J$0;
            deviceCode3 = (DeviceCode) anonymousClass1.L$1;
            nousDeviceCodeClient3 = (NousDeviceCodeClient) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj3);
            deviceCode2 = deviceCode3;
            nousDeviceCodeClient2 = nousDeviceCodeClient3;
            int i32 = i;
            anonymousClass12 = anonymousClass1;
            iCoerceIn = i32;
            if (System.nanoTime() < jNanoTime) {
            }
        } else if (i2 == 3) {
            i = anonymousClass1.I$0;
            jNanoTime = anonymousClass1.J$0;
            deviceCode3 = (DeviceCode) anonymousClass1.L$1;
            nousDeviceCodeClient3 = (NousDeviceCodeClient) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj3);
            c = 3;
            deviceCode2 = deviceCode3;
            nousDeviceCodeClient2 = nousDeviceCodeClient3;
            int i4 = i;
            anonymousClass12 = anonymousClass1;
            iCoerceIn = i4;
            if (System.nanoTime() < jNanoTime) {
            }
        } else {
            if (i2 != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int iCoerceAtMost = anonymousClass1.I$0;
            jNanoTime = anonymousClass1.J$0;
            deviceCode3 = (DeviceCode) anonymousClass1.L$1;
            nousDeviceCodeClient3 = (NousDeviceCodeClient) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj3);
            char c2 = 4;
            deviceCode2 = deviceCode3;
            nousDeviceCodeClient2 = nousDeviceCodeClient3;
            int i5 = iCoerceAtMost;
            anonymousClass12 = anonymousClass1;
            iCoerceIn = i5;
            if (System.nanoTime() < jNanoTime) {
                Request requestBuild = new Request.Builder().url(nousDeviceCodeClient2.portalBaseUrl + "/api/oauth/token").post(new FormBody.Builder((Charset) null, 1, (DefaultConstructorMarker) null).add("grant_type", "urn:ietf:params:oauth:grant-type:device_code").add("client_id", CLIENT_ID).add("device_code", deviceCode2.getDeviceCode()).build()).build();
                try {
                } catch (IOException unused2) {
                    nousDeviceCodeClient3 = nousDeviceCodeClient2;
                    deviceCode3 = deviceCode2;
                    AnonymousClass1 anonymousClass13 = anonymousClass12;
                    i = iCoerceIn;
                    anonymousClass1 = anonymousClass13;
                    anonymousClass1.L$0 = nousDeviceCodeClient3;
                    anonymousClass1.L$1 = deviceCode3;
                    anonymousClass1.J$0 = jNanoTime;
                    anonymousClass1.I$0 = i;
                    anonymousClass1.label = 2;
                    if (DelayKt.delay(((long) i) * 1000, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    deviceCode2 = deviceCode3;
                    nousDeviceCodeClient2 = nousDeviceCodeClient3;
                    int i322 = i;
                    anonymousClass12 = anonymousClass1;
                    iCoerceIn = i322;
                    if (System.nanoTime() < jNanoTime) {
                    }
                }
                CoroutineContext io = Dispatchers.getIO();
                AnonymousClass2 anonymousClass2 = nousDeviceCodeClient2.new AnonymousClass2(requestBuild, null);
                anonymousClass12.L$0 = nousDeviceCodeClient2;
                anonymousClass12.L$1 = deviceCode2;
                anonymousClass12.J$0 = jNanoTime;
                anonymousClass12.I$0 = iCoerceIn;
                anonymousClass12.label = 1;
                Object objWithContext = BuildersKt.withContext(io, anonymousClass2, anonymousClass12);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                nousDeviceCodeClient3 = nousDeviceCodeClient2;
                deviceCode3 = deviceCode2;
                obj3 = objWithContext;
                AnonymousClass1 anonymousClass14 = anonymousClass12;
                i = iCoerceIn;
                anonymousClass1 = anonymousClass14;
                try {
                } catch (IOException unused3) {
                    anonymousClass1.L$0 = nousDeviceCodeClient3;
                    anonymousClass1.L$1 = deviceCode3;
                    anonymousClass1.J$0 = jNanoTime;
                    anonymousClass1.I$0 = i;
                    anonymousClass1.label = 2;
                    if (DelayKt.delay(((long) i) * 1000, anonymousClass1) == coroutine_suspended) {
                    }
                    deviceCode2 = deviceCode3;
                    nousDeviceCodeClient2 = nousDeviceCodeClient3;
                    int i3222 = i;
                    anonymousClass12 = anonymousClass1;
                    iCoerceIn = i3222;
                    if (System.nanoTime() < jNanoTime) {
                    }
                }
                Pair pair2 = (Pair) obj3;
                iIntValue = ((Number) pair2.component1()).intValue();
                String str2 = (String) pair2.component2();
                if (iIntValue != 200) {
                    try {
                        Result.Companion companion = Result.Companion;
                        obj2 = Result.constructor-impl(new JSONObject(str2));
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.Companion;
                        obj2 = Result.constructor-impl(ResultKt.createFailure(th));
                    }
                    JSONObject jSONObject = (JSONObject) (Result.isFailure-impl(obj2) ? null : obj2);
                    if (jSONObject == null) {
                        return new PollResult.Denied("invalid_response", "Token response was not JSON");
                    }
                    if (!jSONObject.has("access_token")) {
                        return new PollResult.Denied("invalid_response", "Token response did not include access_token");
                    }
                    return new PollResult.Success(jSONObject);
                }
                try {
                } catch (Throwable th2) {
                    Result.Companion companion3 = Result.Companion;
                    obj = Result.constructor-impl(ResultKt.createFailure(th2));
                }
                Result.Companion companion4 = Result.Companion;
                obj = Result.constructor-impl(new JSONObject(str2));
                if (Result.isFailure-impl(obj)) {
                    obj = null;
                }
                JSONObject jSONObject2 = (JSONObject) obj;
                if (jSONObject2 == null) {
                    return new PollResult.Denied("http_" + iIntValue, "Token endpoint returned a non-JSON error response");
                }
                String strOptString = jSONObject2.optString("error");
                if (Intrinsics.areEqual(strOptString, "authorization_pending")) {
                    anonymousClass1.L$0 = nousDeviceCodeClient3;
                    anonymousClass1.L$1 = deviceCode3;
                    anonymousClass1.J$0 = jNanoTime;
                    anonymousClass1.I$0 = i;
                    c = 3;
                    anonymousClass1.label = 3;
                    if (DelayKt.delay(((long) i) * 1000, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    deviceCode2 = deviceCode3;
                    nousDeviceCodeClient2 = nousDeviceCodeClient3;
                    int i42 = i;
                    anonymousClass12 = anonymousClass1;
                    iCoerceIn = i42;
                    if (System.nanoTime() < jNanoTime) {
                    }
                } else if (Intrinsics.areEqual(strOptString, "slow_down")) {
                    iCoerceAtMost = RangesKt.coerceAtMost(i + 1, SLOW_DOWN_MAX_SECONDS);
                    anonymousClass1.L$0 = nousDeviceCodeClient3;
                    anonymousClass1.L$1 = deviceCode3;
                    anonymousClass1.J$0 = jNanoTime;
                    anonymousClass1.I$0 = iCoerceAtMost;
                    c2 = 4;
                    anonymousClass1.label = 4;
                    if (DelayKt.delay(((long) iCoerceAtMost) * 1000, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    deviceCode2 = deviceCode3;
                    nousDeviceCodeClient2 = nousDeviceCodeClient3;
                    int i52 = iCoerceAtMost;
                    anonymousClass12 = anonymousClass1;
                    iCoerceIn = i52;
                    if (System.nanoTime() < jNanoTime) {
                        return PollResult.Expired.INSTANCE;
                    }
                } else {
                    String str3 = strOptString;
                    if (StringsKt.isBlank(str3)) {
                        str3 = "unknown_error";
                    }
                    Intrinsics.checkNotNullExpressionValue(str3, "ifBlank(...)");
                    String str4 = str3;
                    String strOptString2 = jSONObject2.optString("error_description");
                    if (StringsKt.isBlank(strOptString2)) {
                        strOptString2 = "Unknown authentication error";
                    }
                    Intrinsics.checkNotNullExpressionValue(strOptString2, "ifBlank(...)");
                    return new PollResult.Denied(str4, strOptString2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.data.oauth.NousDeviceCodeClient$pollForToken$2, reason: invalid class name */
    /* JADX INFO: compiled from: NousDeviceCodeClient.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lkotlin/Pair;", BuildConfig.FLAVOR, BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.data.oauth.NousDeviceCodeClient$pollForToken$2", f = "NousDeviceCodeClient.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Pair<? extends Integer, ? extends String>>, Object> {
        final /* synthetic */ Request $req;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Request request, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$req = request;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NousDeviceCodeClient.this.new AnonymousClass2(this.$req, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Pair<Integer, String>> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            String strString;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                Response response = (Closeable) NousDeviceCodeClient.this.http.newCall(this.$req).execute();
                try {
                    Response response2 = response;
                    Integer numBoxInt = Boxing.boxInt(response2.code());
                    ResponseBody responseBodyBody = response2.body();
                    if (responseBodyBody == null || (strString = responseBodyBody.string()) == null) {
                        strString = BuildConfig.FLAVOR;
                    }
                    Pair pair = TuplesKt.to(numBoxInt, strString);
                    CloseableKt.closeFinally(response, (Throwable) null);
                    return pair;
                } finally {
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }
}
