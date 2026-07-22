package com.hermes.android.data;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.goterl.lazysodium.interfaces.PwHash;
import com.hermes.android.BootstrapManager;
import com.hermes.android.data.oauth.OauthCallbackServer;
import com.hermes.android.data.oauth.OauthConstants;
import com.hermes.android.data.oauth.PkceGenerator;
import com.hermes.android.data.oauth.XaiCredentialStore;
import com.hermes.android.data.oauth.XaiOauthRepository;
import java.net.URLDecoder;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: XaiAuthFlow.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u0000 %2\u00020\u0001:\u0003%&'B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001aJ\u0006\u0010#\u001a\u00020\u001eJ\u0006\u0010$\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow;", BuildConfig.FLAVOR, "bootstrap", "Lcom/hermes/android/BootstrapManager;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;)V", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/hermes/android/data/XaiAuthFlow$State;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "oauth", "Lcom/hermes/android/data/oauth/XaiOauthRepository;", "store", "Lcom/hermes/android/data/oauth/XaiCredentialStore;", "server", "Lcom/hermes/android/data/oauth/OauthCallbackServer;", "job", "Lkotlinx/coroutines/Job;", "discovery", "Lcom/hermes/android/data/oauth/XaiOauthRepository$Discovery;", "verifier", BuildConfig.FLAVOR, "challenge", "stateNonce", "start", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "submitPastedCode", "input", "cancel", "reset", "Companion", "State", "PastedCallback", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class XaiAuthFlow {
    private static final int NANOHTTPD_TIMEOUT_MS = 300000;
    private static final String TAG = "XaiAuthFlow";
    private static final long TIMEOUT_MS = 300000;
    private final MutableStateFlow<State> _state;
    private final BootstrapManager bootstrap;
    private String challenge;
    private XaiOauthRepository.Discovery discovery;
    private Job job;
    private final XaiOauthRepository oauth;
    private final CoroutineScope scope;
    private OauthCallbackServer server;
    private final StateFlow<State> state;
    private String stateNonce;
    private final XaiCredentialStore store;
    private String verifier;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public XaiAuthFlow(BootstrapManager bootstrapManager, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrap");
        Intrinsics.checkNotNullParameter(coroutineScope, "scope");
        this.bootstrap = bootstrapManager;
        this.scope = coroutineScope;
        MutableStateFlow<State> MutableStateFlow = StateFlowKt.MutableStateFlow(State.Idle.INSTANCE);
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
        this.oauth = new XaiOauthRepository();
        this.store = new XaiCredentialStore(bootstrapManager);
    }

    /* JADX INFO: compiled from: XaiAuthFlow.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$Companion;", BuildConfig.FLAVOR, "<init>", "()V", "TAG", BuildConfig.FLAVOR, "TIMEOUT_MS", BuildConfig.FLAVOR, "NANOHTTPD_TIMEOUT_MS", BuildConfig.FLAVOR, "parsePastedCallback", "Lcom/hermes/android/data/XaiAuthFlow$PastedCallback;", "raw", "parsePastedCallback$app_release", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PastedCallback parsePastedCallback$app_release(String raw) {
            Object obj;
            Object obj2;
            Intrinsics.checkNotNullParameter(raw, "raw");
            String string = StringsKt.trim(raw).toString();
            String str = string;
            if (str.length() == 0) {
                return new PastedCallback(null, null);
            }
            if (StringsKt.startsWith$default(string, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(string, "https://", false, 2, (Object) null)) {
                try {
                    Result.Companion companion = Result.Companion;
                    Companion companion2 = this;
                    obj = Result.constructor-impl(Uri.parse(string).getQuery());
                } catch (Throwable th) {
                    Result.Companion companion3 = Result.Companion;
                    obj = Result.constructor-impl(ResultKt.createFailure(th));
                }
                if (Result.isFailure-impl(obj)) {
                    obj = null;
                }
                string = (String) obj;
                if (string == null) {
                    return new PastedCallback(null, null);
                }
            } else if (StringsKt.startsWith$default(string, "?", false, 2, (Object) null)) {
                string = string.substring(1);
                Intrinsics.checkNotNullExpressionValue(string, "substring(...)");
            } else if (!StringsKt.contains$default(str, "=", false, 2, (Object) null)) {
                return new PastedCallback(string, null);
            }
            String str2 = null;
            String str3 = null;
            for (String str4 : StringsKt.split$default(string, new String[]{"&"}, false, 0, 6, (Object) null)) {
                int iIndexOf$default = StringsKt.indexOf$default(str4, '=', 0, false, 6, (Object) null);
                if (iIndexOf$default > 0) {
                    String strSubstring = str4.substring(0, iIndexOf$default);
                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                    try {
                        Result.Companion companion4 = Result.Companion;
                        Companion companion5 = this;
                        String strSubstring2 = str4.substring(iIndexOf$default + 1);
                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                        obj2 = Result.constructor-impl(URLDecoder.decode(strSubstring2, "UTF-8"));
                    } catch (Throwable th2) {
                        Result.Companion companion6 = Result.Companion;
                        obj2 = Result.constructor-impl(ResultKt.createFailure(th2));
                    }
                    if (Result.isFailure-impl(obj2)) {
                        obj2 = null;
                    }
                    String str5 = (String) obj2;
                    if (str5 == null || StringsKt.isBlank(str5)) {
                        str5 = null;
                    }
                    if (Intrinsics.areEqual(strSubstring, "code")) {
                        str2 = str5;
                    } else if (Intrinsics.areEqual(strSubstring, "state")) {
                        str3 = str5;
                    }
                }
            }
            return new PastedCallback(str2, str3);
        }
    }

    /* JADX INFO: compiled from: XaiAuthFlow.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\b\t\nB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0007\u000b\f\r\u000e\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$State;", BuildConfig.FLAVOR, "<init>", "()V", "Idle", "Discovering", "Starting", "AwaitingCallback", "Exchanging", "Success", "Failed", "Lcom/hermes/android/data/XaiAuthFlow$State$AwaitingCallback;", "Lcom/hermes/android/data/XaiAuthFlow$State$Discovering;", "Lcom/hermes/android/data/XaiAuthFlow$State$Exchanging;", "Lcom/hermes/android/data/XaiAuthFlow$State$Failed;", "Lcom/hermes/android/data/XaiAuthFlow$State$Idle;", "Lcom/hermes/android/data/XaiAuthFlow$State$Starting;", "Lcom/hermes/android/data/XaiAuthFlow$State$Success;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static abstract class State {
        public static final int $stable = 0;

        public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: XaiAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$State$Idle;", "Lcom/hermes/android/data/XaiAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Idle extends State {
            public static final int $stable = 0;
            public static final Idle INSTANCE = new Idle();

            private Idle() {
                super(null);
            }
        }

        private State() {
        }

        /* JADX INFO: compiled from: XaiAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$State$Discovering;", "Lcom/hermes/android/data/XaiAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Discovering extends State {
            public static final int $stable = 0;
            public static final Discovering INSTANCE = new Discovering();

            private Discovering() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: XaiAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$State$Starting;", "Lcom/hermes/android/data/XaiAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Starting extends State {
            public static final int $stable = 0;
            public static final Starting INSTANCE = new Starting();

            private Starting() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: XaiAuthFlow.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$State$AwaitingCallback;", "Lcom/hermes/android/data/XaiAuthFlow$State;", "authorizeUrl", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getAuthorizeUrl", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class AwaitingCallback extends State {
            public static final int $stable = 0;
            private final String authorizeUrl;

            public static /* synthetic */ AwaitingCallback copy$default(AwaitingCallback awaitingCallback, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = awaitingCallback.authorizeUrl;
                }
                return awaitingCallback.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getAuthorizeUrl() {
                return this.authorizeUrl;
            }

            public final AwaitingCallback copy(String authorizeUrl) {
                Intrinsics.checkNotNullParameter(authorizeUrl, "authorizeUrl");
                return new AwaitingCallback(authorizeUrl);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof AwaitingCallback) && Intrinsics.areEqual(this.authorizeUrl, ((AwaitingCallback) other).authorizeUrl);
            }

            public int hashCode() {
                return this.authorizeUrl.hashCode();
            }

            public String toString() {
                return "AwaitingCallback(authorizeUrl=" + this.authorizeUrl + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AwaitingCallback(String str) {
                super(null);
                Intrinsics.checkNotNullParameter(str, "authorizeUrl");
                this.authorizeUrl = str;
            }

            public final String getAuthorizeUrl() {
                return this.authorizeUrl;
            }
        }

        /* JADX INFO: compiled from: XaiAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$State$Exchanging;", "Lcom/hermes/android/data/XaiAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Exchanging extends State {
            public static final int $stable = 0;
            public static final Exchanging INSTANCE = new Exchanging();

            private Exchanging() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: XaiAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$State$Success;", "Lcom/hermes/android/data/XaiAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Success extends State {
            public static final int $stable = 0;
            public static final Success INSTANCE = new Success();

            private Success() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: XaiAuthFlow.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$State$Failed;", "Lcom/hermes/android/data/XaiAuthFlow$State;", "message", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Failed extends State {
            public static final int $stable = 0;
            private final String message;

            public static /* synthetic */ Failed copy$default(Failed failed, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = failed.message;
                }
                return failed.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getMessage() {
                return this.message;
            }

            public final Failed copy(String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                return new Failed(message);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Failed) && Intrinsics.areEqual(this.message, ((Failed) other).message);
            }

            public int hashCode() {
                return this.message.hashCode();
            }

            public String toString() {
                return "Failed(message=" + this.message + ")";
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failed(String str) {
                super(null);
                Intrinsics.checkNotNullParameter(str, "message");
                this.message = str;
            }

            public final String getMessage() {
                return this.message;
            }
        }
    }

    public final StateFlow<State> getState() {
        return this.state;
    }

    public final void start(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if ((this._state.getValue() instanceof State.Idle) || (this._state.getValue() instanceof State.Failed)) {
            this._state.setValue(State.Discovering.INSTANCE);
            this.job = BuildersKt.launch$default(this.scope, Dispatchers.getIO(), (CoroutineStart) null, new AnonymousClass1(context, null), 2, (Object) null);
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.data.XaiAuthFlow$start$1, reason: invalid class name */
    /* JADX INFO: compiled from: XaiAuthFlow.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.data.XaiAuthFlow$start$1", f = "XaiAuthFlow.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1}, l = {145, 153}, m = "invokeSuspend", n = {"$this$launch", "discovery", "verifier", "challenge", "srv", "$this$launch", "discovery", "verifier", "challenge", "srv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            Continuation<Unit> anonymousClass1 = XaiAuthFlow.this.new AnonymousClass1(this.$context, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
        /* JADX WARN: Removed duplicated region for block: B:37:0x014f A[Catch: Exception -> 0x024c, CancellationException -> 0x02da, TryCatch #1 {Exception -> 0x024c, blocks: (B:30:0x012e, B:35:0x0145, B:37:0x014f, B:39:0x016e, B:41:0x0188, B:42:0x0194, B:44:0x019c, B:45:0x01b9, B:46:0x01be, B:48:0x01c2, B:49:0x01e5, B:50:0x01ea, B:51:0x01eb, B:53:0x01ef, B:55:0x0204, B:58:0x0215, B:59:0x0230, B:61:0x0234, B:62:0x0246, B:63:0x024b, B:34:0x013c, B:26:0x0112, B:22:0x00f0, B:69:0x0255), top: B:93:0x0018 }] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x01eb A[Catch: Exception -> 0x024c, CancellationException -> 0x02da, TryCatch #1 {Exception -> 0x024c, blocks: (B:30:0x012e, B:35:0x0145, B:37:0x014f, B:39:0x016e, B:41:0x0188, B:42:0x0194, B:44:0x019c, B:45:0x01b9, B:46:0x01be, B:48:0x01c2, B:49:0x01e5, B:50:0x01ea, B:51:0x01eb, B:53:0x01ef, B:55:0x0204, B:58:0x0215, B:59:0x0230, B:61:0x0234, B:62:0x0246, B:63:0x024b, B:34:0x013c, B:26:0x0112, B:22:0x00f0, B:69:0x0255), top: B:93:0x0018 }] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x02cf  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws NoWhenBranchMatchedException {
            String message;
            CoroutineScope coroutineScope;
            String strGenerateVerifier;
            String str;
            XaiOauthRepository.Discovery discovery;
            OauthCallbackServer oauthCallbackServer;
            Object objAwaitCode;
            String str2;
            XaiOauthRepository.Discovery discovery2;
            OauthCallbackServer.Result result;
            String str3;
            String str4 = "Token exchange failed: ";
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                try {
                    try {
                    } catch (Exception e) {
                        e = e;
                    }
                } catch (Exception e2) {
                    e = e2;
                    str4 = XaiAuthFlow.TAG;
                }
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    coroutineScope = (CoroutineScope) this.L$0;
                    XaiOauthRepository.DiscoveryResult discoveryResultDiscover = XaiAuthFlow.this.oauth.discover();
                    try {
                        if (discoveryResultDiscover instanceof XaiOauthRepository.DiscoveryResult.Success) {
                            XaiOauthRepository.Discovery discovery3 = ((XaiOauthRepository.DiscoveryResult.Success) discoveryResultDiscover).getDiscovery();
                            XaiAuthFlow.this._state.setValue(State.Starting.INSTANCE);
                            strGenerateVerifier = PkceGenerator.INSTANCE.generateVerifier();
                            String strDeriveChallenge = PkceGenerator.INSTANCE.deriveChallenge(strGenerateVerifier);
                            String strGenerateState = PkceGenerator.INSTANCE.generateState();
                            String strGenerateState2 = PkceGenerator.INSTANCE.generateState();
                            XaiAuthFlow.this.discovery = discovery3;
                            XaiAuthFlow.this.verifier = strGenerateVerifier;
                            XaiAuthFlow.this.challenge = strDeriveChallenge;
                            XaiAuthFlow.this.stateNonce = strGenerateState;
                            OauthConstants.XaiGrok xaiGrok = OauthConstants.XaiGrok.INSTANCE;
                            OauthCallbackServer oauthCallbackServer2 = new OauthCallbackServer(strGenerateState, OauthConstants.XaiGrok.CALLBACK_PATH, OauthConstants.XaiGrok.CALLBACK_PORT);
                            XaiAuthFlow.this.server = oauthCallbackServer2;
                            try {
                                oauthCallbackServer2.start(XaiAuthFlow.NANOHTTPD_TIMEOUT_MS, false);
                                try {
                                    String strBuildAuthorizeUrl = XaiAuthFlow.this.oauth.buildAuthorizeUrl(discovery3, strDeriveChallenge, strGenerateState, strGenerateState2);
                                    XaiAuthFlow.this._state.setValue(new State.AwaitingCallback(strBuildAuthorizeUrl));
                                    CoroutineContext main = Dispatchers.getMain();
                                    this.L$0 = coroutineScope;
                                    this.L$1 = discovery3;
                                    this.L$2 = strGenerateVerifier;
                                    this.L$3 = strDeriveChallenge;
                                    this.L$4 = oauthCallbackServer2;
                                    this.label = 1;
                                    if (BuildersKt.withContext(main, new C00291(strBuildAuthorizeUrl, this.$context, null), (Continuation) this) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    str = strDeriveChallenge;
                                    discovery = discovery3;
                                    oauthCallbackServer = oauthCallbackServer2;
                                } catch (Exception e3) {
                                    e = e3;
                                    str4 = XaiAuthFlow.TAG;
                                    Log.e(str4, "xai auth flow crashed", e);
                                    MutableStateFlow mutableStateFlow = XaiAuthFlow.this._state;
                                    message = e.getMessage();
                                    if (message == null) {
                                        message = "unknown error";
                                    }
                                    mutableStateFlow.setValue(new State.Failed(message));
                                }
                            } catch (Exception e4) {
                                Log.e(XaiAuthFlow.TAG, "callback server start failed", e4);
                                XaiAuthFlow.this._state.setValue(new State.Failed("Could not start local callback server (port 56121 in use?): " + e4.getMessage()));
                                return Unit.INSTANCE;
                            }
                        } else {
                            if (discoveryResultDiscover instanceof XaiOauthRepository.DiscoveryResult.Failure) {
                                XaiAuthFlow.this._state.setValue(new State.Failed("OIDC discovery failed: " + ((XaiOauthRepository.DiscoveryResult.Failure) discoveryResultDiscover).getMessage()));
                                return Unit.INSTANCE;
                            }
                            throw new NoWhenBranchMatchedException();
                        }
                    } catch (Exception e5) {
                        e = e5;
                        Log.e(str4, "xai auth flow crashed", e);
                        MutableStateFlow mutableStateFlow2 = XaiAuthFlow.this._state;
                        message = e.getMessage();
                        if (message == null) {
                        }
                        mutableStateFlow2.setValue(new State.Failed(message));
                    }
                } else {
                    if (i != 1) {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        oauthCallbackServer = (OauthCallbackServer) this.L$4;
                        str = (String) this.L$3;
                        str2 = (String) this.L$2;
                        discovery2 = (XaiOauthRepository.Discovery) this.L$1;
                        ResultKt.throwOnFailure(obj);
                        objAwaitCode = obj;
                        result = (OauthCallbackServer.Result) objAwaitCode;
                        try {
                            Result.Companion companion = Result.Companion;
                            oauthCallbackServer.stop();
                            Result.constructor-impl(Unit.INSTANCE);
                        } catch (Throwable th) {
                            Result.Companion companion2 = Result.Companion;
                            Result.constructor-impl(ResultKt.createFailure(th));
                        }
                        XaiAuthFlow.this.server = null;
                        if (!(result instanceof OauthCallbackServer.Result.Success)) {
                            XaiAuthFlow.this._state.setValue(State.Exchanging.INSTANCE);
                            XaiOauthRepository.TokenResult tokenResultExchangeCode = XaiAuthFlow.this.oauth.exchangeCode(discovery2, ((OauthCallbackServer.Result.Success) result).getCode(), str2, str);
                            if (tokenResultExchangeCode instanceof XaiOauthRepository.TokenResult.Success) {
                                Object objM23write0E7RQCE = XaiAuthFlow.this.store.m23write0E7RQCE(((XaiOauthRepository.TokenResult.Success) tokenResultExchangeCode).getTokens(), discovery2, OauthConstants.XaiGrok.REDIRECT_URI);
                                XaiAuthFlow xaiAuthFlow = XaiAuthFlow.this;
                                if (Result.isSuccess-impl(objM23write0E7RQCE)) {
                                    xaiAuthFlow._state.setValue(State.Success.INSTANCE);
                                }
                                XaiAuthFlow xaiAuthFlow2 = XaiAuthFlow.this;
                                Throwable th2 = Result.exceptionOrNull-impl(objM23write0E7RQCE);
                                if (th2 != null) {
                                    xaiAuthFlow2._state.setValue(new State.Failed("Wrote tokens failed: " + th2.getMessage()));
                                }
                                Result.box-impl(objM23write0E7RQCE);
                            } else if (tokenResultExchangeCode instanceof XaiOauthRepository.TokenResult.Failure) {
                                XaiAuthFlow.this._state.setValue(new State.Failed("Token exchange failed: " + ((XaiOauthRepository.TokenResult.Failure) tokenResultExchangeCode).getMessage()));
                            } else {
                                throw new NoWhenBranchMatchedException();
                            }
                        } else if (result instanceof OauthCallbackServer.Result.Error) {
                            MutableStateFlow mutableStateFlow3 = XaiAuthFlow.this._state;
                            String error = ((OauthCallbackServer.Result.Error) result).getError();
                            String description = ((OauthCallbackServer.Result.Error) result).getDescription();
                            if (description == null || (str3 = " — " + description) == null) {
                                str3 = BuildConfig.FLAVOR;
                            }
                            mutableStateFlow3.setValue(new State.Failed("Callback error: " + error + str3));
                        } else if (result instanceof OauthCallbackServer.Result.StateMismatch) {
                            XaiAuthFlow.this._state.setValue(new State.Failed("State mismatch (possible CSRF). Try again."));
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                        return Unit.INSTANCE;
                    }
                    oauthCallbackServer = (OauthCallbackServer) this.L$4;
                    str = (String) this.L$3;
                    strGenerateVerifier = (String) this.L$2;
                    discovery = (XaiOauthRepository.Discovery) this.L$1;
                    coroutineScope = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                this.L$0 = coroutineScope;
                this.L$1 = discovery;
                this.L$2 = strGenerateVerifier;
                this.L$3 = str;
                this.L$4 = oauthCallbackServer;
                this.label = 2;
                objAwaitCode = oauthCallbackServer.awaitCode(XaiAuthFlow.TIMEOUT_MS, (Continuation) this);
                if (objAwaitCode == coroutine_suspended) {
                    return coroutine_suspended;
                }
                str2 = strGenerateVerifier;
                discovery2 = discovery;
                result = (OauthCallbackServer.Result) objAwaitCode;
                Result.Companion companion3 = Result.Companion;
                oauthCallbackServer.stop();
                Result.constructor-impl(Unit.INSTANCE);
                XaiAuthFlow.this.server = null;
                if (!(result instanceof OauthCallbackServer.Result.Success)) {
                }
                return Unit.INSTANCE;
            } catch (CancellationException e6) {
                throw e6;
            }
        }

        /* JADX INFO: renamed from: com.hermes.android.data.XaiAuthFlow$start$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: XaiAuthFlow.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        @DebugMetadata(c = "com.hermes.android.data.XaiAuthFlow$start$1$1", f = "XaiAuthFlow.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {
            final /* synthetic */ String $authorizeUrl;
            final /* synthetic */ Context $context;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00291(String str, Context context, Continuation<? super C00291> continuation) {
                super(2, continuation);
                this.$authorizeUrl = str;
                this.$context = context;
            }

            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                Continuation<Unit> c00291 = new C00291(this.$authorizeUrl, this.$context, continuation);
                c00291.L$0 = obj;
                return c00291;
            }

            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<Unit>> continuation) {
                return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
            }

            public final Object invokeSuspend(Object obj) {
                Object obj2;
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                String str = this.$authorizeUrl;
                Context context = this.$context;
                try {
                    Result.Companion companion = Result.Companion;
                    Intent intentAddFlags = new Intent("android.intent.action.VIEW", Uri.parse(str)).addFlags(PwHash.ARGON2ID_MEMLIMIT_MODERATE);
                    Intrinsics.checkNotNullExpressionValue(intentAddFlags, "addFlags(...)");
                    context.startActivity(intentAddFlags);
                    obj2 = Result.constructor-impl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    obj2 = Result.constructor-impl(ResultKt.createFailure(th));
                }
                Throwable th2 = Result.exceptionOrNull-impl(obj2);
                if (th2 != null) {
                    Log.e(XaiAuthFlow.TAG, "open browser failed", th2);
                }
                return Result.box-impl(obj2);
            }
        }
    }

    public final void submitPastedCode(String input) {
        Unit unit;
        Intrinsics.checkNotNullParameter(input, "input");
        XaiOauthRepository.Discovery discovery = this.discovery;
        String str = this.verifier;
        String str2 = this.challenge;
        String str3 = this.stateNonce;
        if (discovery == null || str == null || str2 == null) {
            this._state.setValue(new State.Failed("Sign-in not ready yet — wait for the browser to open, then paste."));
            return;
        }
        PastedCallback pastedCallback$app_release = INSTANCE.parsePastedCallback$app_release(input);
        String code = pastedCallback$app_release.getCode();
        String str4 = code;
        if (str4 == null || StringsKt.isBlank(str4)) {
            this._state.setValue(new State.Failed("No authorization code found in the pasted text."));
            return;
        }
        if (pastedCallback$app_release.getState() != null && !Intrinsics.areEqual(pastedCallback$app_release.getState(), str3)) {
            this._state.setValue(new State.Failed("State mismatch — paste the code from this sign-in attempt, then try again."));
            return;
        }
        this._state.setValue(State.Exchanging.INSTANCE);
        Job job = this.job;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        try {
            Result.Companion companion = Result.Companion;
            XaiAuthFlow xaiAuthFlow = this;
            OauthCallbackServer oauthCallbackServer = this.server;
            if (oauthCallbackServer != null) {
                oauthCallbackServer.stop();
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.constructor-impl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.constructor-impl(ResultKt.createFailure(th));
        }
        this.server = null;
        this.job = BuildersKt.launch$default(this.scope, Dispatchers.getIO(), (CoroutineStart) null, new AnonymousClass2(discovery, code, str, str2, null), 2, (Object) null);
    }

    /* JADX INFO: renamed from: com.hermes.android.data.XaiAuthFlow$submitPastedCode$2, reason: invalid class name */
    /* JADX INFO: compiled from: XaiAuthFlow.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.data.XaiAuthFlow$submitPastedCode$2", f = "XaiAuthFlow.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $ch;
        final /* synthetic */ String $code;
        final /* synthetic */ XaiOauthRepository.Discovery $d;
        final /* synthetic */ String $v;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(XaiOauthRepository.Discovery discovery, String str, String str2, String str3, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$d = discovery;
            this.$code = str;
            this.$v = str2;
            this.$ch = str3;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return XaiAuthFlow.this.new AnonymousClass2(this.$d, this.$code, this.$v, this.$ch, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
        public final Object invokeSuspend(Object obj) throws NoWhenBranchMatchedException {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                XaiOauthRepository.TokenResult tokenResultExchangeCode = XaiAuthFlow.this.oauth.exchangeCode(this.$d, this.$code, this.$v, this.$ch);
                if (tokenResultExchangeCode instanceof XaiOauthRepository.TokenResult.Success) {
                    Object objM23write0E7RQCE = XaiAuthFlow.this.store.m23write0E7RQCE(((XaiOauthRepository.TokenResult.Success) tokenResultExchangeCode).getTokens(), this.$d, OauthConstants.XaiGrok.REDIRECT_URI);
                    XaiAuthFlow xaiAuthFlow = XaiAuthFlow.this;
                    if (Result.isSuccess-impl(objM23write0E7RQCE)) {
                        xaiAuthFlow._state.setValue(State.Success.INSTANCE);
                    }
                    XaiAuthFlow xaiAuthFlow2 = XaiAuthFlow.this;
                    Throwable th = Result.exceptionOrNull-impl(objM23write0E7RQCE);
                    if (th != null) {
                        xaiAuthFlow2._state.setValue(new State.Failed("Wrote tokens failed: " + th.getMessage()));
                    }
                    Result.box-impl(objM23write0E7RQCE);
                } else if (tokenResultExchangeCode instanceof XaiOauthRepository.TokenResult.Failure) {
                    XaiAuthFlow.this._state.setValue(new State.Failed("Token exchange failed: " + ((XaiOauthRepository.TokenResult.Failure) tokenResultExchangeCode).getMessage()));
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: compiled from: XaiAuthFlow.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0081\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/hermes/android/data/XaiAuthFlow$PastedCallback;", BuildConfig.FLAVOR, "code", BuildConfig.FLAVOR, "state", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getCode", "()Ljava/lang/String;", "getState", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class PastedCallback {
        public static final int $stable = 0;
        private final String code;
        private final String state;

        public static /* synthetic */ PastedCallback copy$default(PastedCallback pastedCallback, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = pastedCallback.code;
            }
            if ((i & 2) != 0) {
                str2 = pastedCallback.state;
            }
            return pastedCallback.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getCode() {
            return this.code;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getState() {
            return this.state;
        }

        public final PastedCallback copy(String code, String state) {
            return new PastedCallback(code, state);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PastedCallback)) {
                return false;
            }
            PastedCallback pastedCallback = (PastedCallback) other;
            return Intrinsics.areEqual(this.code, pastedCallback.code) && Intrinsics.areEqual(this.state, pastedCallback.state);
        }

        public int hashCode() {
            String str = this.code;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.state;
            return iHashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public String toString() {
            return "PastedCallback(code=" + this.code + ", state=" + this.state + ")";
        }

        public PastedCallback(String str, String str2) {
            this.code = str;
            this.state = str2;
        }

        public final String getCode() {
            return this.code;
        }

        public final String getState() {
            return this.state;
        }
    }

    public final void cancel() {
        Unit unit;
        Job job = this.job;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.job = null;
        try {
            Result.Companion companion = Result.Companion;
            XaiAuthFlow xaiAuthFlow = this;
            OauthCallbackServer oauthCallbackServer = this.server;
            if (oauthCallbackServer != null) {
                oauthCallbackServer.stop();
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            Result.constructor-impl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            Result.constructor-impl(ResultKt.createFailure(th));
        }
        this.server = null;
        this._state.setValue(State.Idle.INSTANCE);
    }

    public final void reset() {
        cancel();
        this._state.setValue(State.Idle.INSTANCE);
    }
}
