package com.hermes.android.data.oauth;

import android.util.Log;
import com.google.common.net.HttpHeaders;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.data.oauth.OauthConstants;
import fi.iki.elonen.NanoHTTPD;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: OauthCallbackServer.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\b\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001b\u001cB#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0014\u0010\u000f\u001a\u00020\u0010*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0003H\u0002J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0016\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H\u0086@¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u000bH\u0002J\b\u0010\u001a\u001a\u00020\u0003H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/hermes/android/data/oauth/OauthCallbackServer;", "Lfi/iki/elonen/NanoHTTPD;", "expectedState", BuildConfig.FLAVOR, "callbackPath", "port", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "deferred", "Lkotlinx/coroutines/CompletableDeferred;", "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;", "allowedOrigin", "session", "Lfi/iki/elonen/NanoHTTPD$IHTTPSession;", "withCors", "Lfi/iki/elonen/NanoHTTPD$Response;", "allowOrigin", "serve", "awaitCode", "timeoutMs", BuildConfig.FLAVOR, "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "successHtml", "errorHtml", "r", "notReceivedHtml", "Companion", "Result", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class OauthCallbackServer extends NanoHTTPD {
    private static final String TAG = "OauthCallbackServer";
    private final String callbackPath;
    private final CompletableDeferred<Result> deferred;
    private final String expectedState;
    private final int port;
    public static final int $stable = 8;
    private static final Set<String> CORS_ALLOWLIST = SetsKt.setOf(new String[]{"https://accounts.x.ai", OauthConstants.XaiGrok.ISSUER});

    /* JADX INFO: renamed from: com.hermes.android.data.oauth.OauthCallbackServer$awaitCode$1, reason: invalid class name */
    /* JADX INFO: compiled from: OauthCallbackServer.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.data.oauth.OauthCallbackServer", f = "OauthCallbackServer.kt", i = {0}, l = {108}, m = "awaitCode", n = {"timeoutMs"}, s = {"J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OauthCallbackServer.this.awaitCode(0L, (Continuation) this);
        }
    }

    public /* synthetic */ OauthCallbackServer(String str, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? OauthConstants.OpenAiCodex.CALLBACK_PATH : str2, (i2 & 4) != 0 ? OauthConstants.OpenAiCodex.CALLBACK_PORT : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OauthCallbackServer(String str, String str2, int i) {
        super("127.0.0.1", i);
        Intrinsics.checkNotNullParameter(str, "expectedState");
        Intrinsics.checkNotNullParameter(str2, "callbackPath");
        this.expectedState = str;
        this.callbackPath = str2;
        this.port = i;
        this.deferred = CompletableDeferredKt.CompletableDeferred$default((Job) null, 1, (Object) null);
    }

    /* JADX INFO: compiled from: OauthCallbackServer.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;", BuildConfig.FLAVOR, "<init>", "()V", "Success", "Error", "StateMismatch", "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;", "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$StateMismatch;", "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static abstract class Result {
        public static final int $stable = 0;

        public /* synthetic */ Result(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: OauthCallbackServer.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Success;", "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;", "code", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getCode", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Success extends Result {
            public static final int $stable = 0;
            private final String code;

            public static /* synthetic */ Success copy$default(Success success, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = success.code;
                }
                return success.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getCode() {
                return this.code;
            }

            public final Success copy(String code) {
                Intrinsics.checkNotNullParameter(code, "code");
                return new Success(code);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.code, ((Success) other).code);
            }

            public int hashCode() {
                return this.code.hashCode();
            }

            public String toString() {
                return "Success(code=" + this.code + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Success(String str) {
                super(null);
                Intrinsics.checkNotNullParameter(str, "code");
                this.code = str;
            }

            public final String getCode() {
                return this.code;
            }
        }

        private Result() {
        }

        /* JADX INFO: compiled from: OauthCallbackServer.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$Error;", "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;", "error", BuildConfig.FLAVOR, "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getError", "()Ljava/lang/String;", "getDescription", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Error extends Result {
            public static final int $stable = 0;
            private final String description;
            private final String error;

            public static /* synthetic */ Error copy$default(Error error, String str, String str2, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = error.error;
                }
                if ((i & 2) != 0) {
                    str2 = error.description;
                }
                return error.copy(str, str2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getError() {
                return this.error;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getDescription() {
                return this.description;
            }

            public final Error copy(String error, String description) {
                Intrinsics.checkNotNullParameter(error, "error");
                return new Error(error, description);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Error)) {
                    return false;
                }
                Error error = (Error) other;
                return Intrinsics.areEqual(this.error, error.error) && Intrinsics.areEqual(this.description, error.description);
            }

            public int hashCode() {
                int iHashCode = this.error.hashCode() * 31;
                String str = this.description;
                return iHashCode + (str == null ? 0 : str.hashCode());
            }

            public String toString() {
                return "Error(error=" + this.error + ", description=" + this.description + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Error(String str, String str2) {
                super(null);
                Intrinsics.checkNotNullParameter(str, "error");
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

        /* JADX INFO: compiled from: OauthCallbackServer.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/oauth/OauthCallbackServer$Result$StateMismatch;", "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;", "received", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getReceived", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class StateMismatch extends Result {
            public static final int $stable = 0;
            private final String received;

            public static /* synthetic */ StateMismatch copy$default(StateMismatch stateMismatch, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = stateMismatch.received;
                }
                return stateMismatch.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getReceived() {
                return this.received;
            }

            public final StateMismatch copy(String received) {
                return new StateMismatch(received);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof StateMismatch) && Intrinsics.areEqual(this.received, ((StateMismatch) other).received);
            }

            public int hashCode() {
                String str = this.received;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            public String toString() {
                return "StateMismatch(received=" + this.received + ")";
            }

            public StateMismatch(String str) {
                super(null);
                this.received = str;
            }

            public final String getReceived() {
                return this.received;
            }
        }
    }

    private final String allowedOrigin(NanoHTTPD.IHTTPSession session) {
        String str = (String) session.getHeaders().get("origin");
        return (str == null || !CORS_ALLOWLIST.contains(str)) ? BuildConfig.FLAVOR : str;
    }

    private final NanoHTTPD.Response withCors(NanoHTTPD.Response response, String str) {
        if (str.length() > 0) {
            response.addHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, str);
            response.addHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_METHODS, "GET, OPTIONS");
            response.addHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_HEADERS, HttpHeaders.CONTENT_TYPE);
            response.addHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_PRIVATE_NETWORK, "true");
            response.addHeader(HttpHeaders.VARY, HttpHeaders.ORIGIN);
        }
        return response;
    }

    public NanoHTTPD.Response serve(NanoHTTPD.IHTTPSession session) {
        Result.Error error;
        Intrinsics.checkNotNullParameter(session, "session");
        String strAllowedOrigin = allowedOrigin(session);
        if (session.getMethod() == NanoHTTPD.Method.OPTIONS) {
            NanoHTTPD.Response responseNewFixedLengthResponse = NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NO_CONTENT, "text/plain", BuildConfig.FLAVOR);
            Intrinsics.checkNotNullExpressionValue(responseNewFixedLengthResponse, "newFixedLengthResponse(...)");
            return withCors(responseNewFixedLengthResponse, strAllowedOrigin);
        }
        if (!Intrinsics.areEqual(session.getUri(), this.callbackPath)) {
            NanoHTTPD.Response responseNewFixedLengthResponse2 = NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.NOT_FOUND, "text/plain", "Not Found");
            Intrinsics.checkNotNullExpressionValue(responseNewFixedLengthResponse2, "newFixedLengthResponse(...)");
            return responseNewFixedLengthResponse2;
        }
        Map parameters = session.getParameters();
        List list = (List) parameters.get("state");
        String str = list != null ? (String) CollectionsKt.firstOrNull(list) : null;
        List list2 = (List) parameters.get("code");
        String str2 = list2 != null ? (String) CollectionsKt.firstOrNull(list2) : null;
        List list3 = (List) parameters.get("error");
        String str3 = list3 != null ? (String) CollectionsKt.firstOrNull(list3) : null;
        List list4 = (List) parameters.get("error_description");
        String str4 = list4 != null ? (String) CollectionsKt.firstOrNull(list4) : null;
        String str5 = str2;
        if ((str5 == null || StringsKt.isBlank(str5)) && str3 == null) {
            NanoHTTPD.Response responseNewFixedLengthResponse3 = NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.BAD_REQUEST, "text/html; charset=utf-8", notReceivedHtml());
            Intrinsics.checkNotNullExpressionValue(responseNewFixedLengthResponse3, "newFixedLengthResponse(...)");
            return withCors(responseNewFixedLengthResponse3, strAllowedOrigin);
        }
        if (str3 != null) {
            error = new Result.Error(str3, str4);
        } else if (!Intrinsics.areEqual(str, this.expectedState)) {
            error = new Result.StateMismatch(str);
        } else if (str5 == null || StringsKt.isBlank(str5)) {
            error = new Result.Error("missing_code", null);
        } else {
            error = new Result.Success(str2);
        }
        if (!this.deferred.isCompleted()) {
            this.deferred.complete(error);
        }
        NanoHTTPD.Response responseNewFixedLengthResponse4 = NanoHTTPD.newFixedLengthResponse(NanoHTTPD.Response.Status.OK, "text/html; charset=utf-8", error instanceof Result.Success ? successHtml() : errorHtml(error));
        Intrinsics.checkNotNullExpressionValue(responseNewFixedLengthResponse4, "newFixedLengthResponse(...)");
        return withCors(responseNewFixedLengthResponse4, strAllowedOrigin);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object awaitCode(long j, Continuation<? super Result> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object objWithTimeout = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objWithTimeout);
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(null);
                anonymousClass1.J$0 = j;
                anonymousClass1.label = 1;
                objWithTimeout = TimeoutKt.withTimeout(j, anonymousClass2, anonymousClass1);
                if (objWithTimeout == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j = anonymousClass1.J$0;
                ResultKt.throwOnFailure(objWithTimeout);
            }
            return (Result) objWithTimeout;
        } catch (TimeoutCancellationException unused) {
            Log.w(TAG, "OAuth callback timed out after " + j + "ms");
            return new Result.Error("timeout", "no callback within " + (j / ((long) 1000)) + "s");
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.data.oauth.OauthCallbackServer$awaitCode$2, reason: invalid class name */
    /* JADX INFO: compiled from: OauthCallbackServer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/hermes/android/data/oauth/OauthCallbackServer$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.data.oauth.OauthCallbackServer$awaitCode$2", f = "OauthCallbackServer.kt", i = {}, l = {108}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OauthCallbackServer.this.new AnonymousClass2(continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = OauthCallbackServer.this.deferred.await((Continuation) this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    private final String successHtml() {
        return "<!DOCTYPE html><html><head><meta charset=\"utf-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<title>Signed in</title>\n<style>body{font-family:-apple-system,system-ui,sans-serif;max-width:480px;margin:80px auto;padding:24px;text-align:center;background:#0E1B2C;color:#E8F0F7}h1{color:#4FC3F7}</style>\n</head><body><h1>Signed in</h1><p>You can close this tab and return to Hermes Agent.</p></body></html>";
    }

    private final String errorHtml(Result r) {
        return StringsKt.trimIndent("\n        <!DOCTYPE html><html><head><meta charset=\"utf-8\"><title>Sign-in failed</title>\n        <style>body{font-family:-apple-system,system-ui,sans-serif;max-width:480px;margin:80px auto;padding:24px;text-align:center;background:#0E1B2C;color:#E8F0F7}h1{color:#FF6B6B}</style>\n        </head><body><h1>Sign-in failed</h1><p>" + StringsKt.replace$default(StringsKt.replace$default(r.toString(), "<", "&lt;", false, 4, (Object) null), ">", "&gt;", false, 4, (Object) null) + "</p>\n        <p>Return to Hermes Agent and try again.</p></body></html>\n    ");
    }

    private final String notReceivedHtml() {
        return "<!DOCTYPE html><html><head><meta charset=\"utf-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n<title>Authorization not received</title>\n<style>body{font-family:-apple-system,system-ui,sans-serif;max-width:480px;margin:80px auto;padding:24px;text-align:center;background:#0E1B2C;color:#E8F0F7}h1{color:#FFB74D}</style>\n</head><body><h1>Authorization not received</h1>\n<p>No authorization code was present in this callback. Return to Hermes Agent and try signing in again.</p></body></html>";
    }
}
