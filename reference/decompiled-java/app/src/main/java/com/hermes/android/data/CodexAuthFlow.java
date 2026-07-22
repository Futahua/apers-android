package com.hermes.android.data;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.goterl.lazysodium.interfaces.PwHash;
import com.hermes.android.BootstrapManager;
import com.hermes.android.data.oauth.CodexCredentialStore;
import com.hermes.android.data.oauth.OauthCallbackServer;
import com.hermes.android.data.oauth.OauthRepository;
import com.hermes.android.data.oauth.PkceGenerator;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: CodexAuthFlow.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0018J\u0006\u0010\u001c\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/hermes/android/data/CodexAuthFlow;", BuildConfig.FLAVOR, "bootstrap", "Lcom/hermes/android/BootstrapManager;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;)V", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/hermes/android/data/CodexAuthFlow$State;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "oauth", "Lcom/hermes/android/data/oauth/OauthRepository;", "store", "Lcom/hermes/android/data/oauth/CodexCredentialStore;", "server", "Lcom/hermes/android/data/oauth/OauthCallbackServer;", "job", "Lkotlinx/coroutines/Job;", "start", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "cancel", "reset", "Companion", "State", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class CodexAuthFlow {
    private static final String TAG = "CodexAuthFlow";
    private static final long TIMEOUT_MS = 300000;
    private final MutableStateFlow<State> _state;
    private final BootstrapManager bootstrap;
    private Job job;
    private final OauthRepository oauth;
    private final CoroutineScope scope;
    private OauthCallbackServer server;
    private final StateFlow<State> state;
    private final CodexCredentialStore store;
    public static final int $stable = 8;

    public CodexAuthFlow(BootstrapManager bootstrapManager, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrap");
        Intrinsics.checkNotNullParameter(coroutineScope, "scope");
        this.bootstrap = bootstrapManager;
        this.scope = coroutineScope;
        MutableStateFlow<State> MutableStateFlow = StateFlowKt.MutableStateFlow(State.Idle.INSTANCE);
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
        this.oauth = new OauthRepository();
        this.store = new CodexCredentialStore(bootstrapManager);
    }

    /* JADX INFO: compiled from: CodexAuthFlow.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\b\tB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0006\n\u000b\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/hermes/android/data/CodexAuthFlow$State;", BuildConfig.FLAVOR, "<init>", "()V", "Idle", "Starting", "AwaitingCallback", "Exchanging", "Success", "Failed", "Lcom/hermes/android/data/CodexAuthFlow$State$AwaitingCallback;", "Lcom/hermes/android/data/CodexAuthFlow$State$Exchanging;", "Lcom/hermes/android/data/CodexAuthFlow$State$Failed;", "Lcom/hermes/android/data/CodexAuthFlow$State$Idle;", "Lcom/hermes/android/data/CodexAuthFlow$State$Starting;", "Lcom/hermes/android/data/CodexAuthFlow$State$Success;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static abstract class State {
        public static final int $stable = 0;

        public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: CodexAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/CodexAuthFlow$State$Idle;", "Lcom/hermes/android/data/CodexAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Idle extends State {
            public static final int $stable = 0;
            public static final Idle INSTANCE = new Idle();

            private Idle() {
                super(null);
            }
        }

        private State() {
        }

        /* JADX INFO: compiled from: CodexAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/CodexAuthFlow$State$Starting;", "Lcom/hermes/android/data/CodexAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Starting extends State {
            public static final int $stable = 0;
            public static final Starting INSTANCE = new Starting();

            private Starting() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: CodexAuthFlow.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/CodexAuthFlow$State$AwaitingCallback;", "Lcom/hermes/android/data/CodexAuthFlow$State;", "authorizeUrl", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getAuthorizeUrl", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
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

        /* JADX INFO: compiled from: CodexAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/CodexAuthFlow$State$Exchanging;", "Lcom/hermes/android/data/CodexAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Exchanging extends State {
            public static final int $stable = 0;
            public static final Exchanging INSTANCE = new Exchanging();

            private Exchanging() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: CodexAuthFlow.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/CodexAuthFlow$State$Success;", "Lcom/hermes/android/data/CodexAuthFlow$State;", "planType", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getPlanType", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Success extends State {
            public static final int $stable = 0;
            private final String planType;

            public static /* synthetic */ Success copy$default(Success success, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = success.planType;
                }
                return success.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getPlanType() {
                return this.planType;
            }

            public final Success copy(String planType) {
                return new Success(planType);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Success) && Intrinsics.areEqual(this.planType, ((Success) other).planType);
            }

            public int hashCode() {
                String str = this.planType;
                if (str == null) {
                    return 0;
                }
                return str.hashCode();
            }

            public String toString() {
                return "Success(planType=" + this.planType + ")";
            }

            public Success(String str) {
                super(null);
                this.planType = str;
            }

            public final String getPlanType() {
                return this.planType;
            }
        }

        /* JADX INFO: compiled from: CodexAuthFlow.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/CodexAuthFlow$State$Failed;", "Lcom/hermes/android/data/CodexAuthFlow$State;", "message", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
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
            this._state.setValue(State.Starting.INSTANCE);
            this.job = BuildersKt.launch$default(this.scope, Dispatchers.getIO(), (CoroutineStart) null, new AnonymousClass1(context, null), 2, (Object) null);
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.data.CodexAuthFlow$start$1, reason: invalid class name */
    /* JADX INFO: compiled from: CodexAuthFlow.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.data.CodexAuthFlow$start$1", f = "CodexAuthFlow.kt", i = {0, 0, 0, 1, 1, 1}, l = {82, 91}, m = "invokeSuspend", n = {"$this$launch", "verifier", "srv", "$this$launch", "verifier", "srv"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            Continuation<Unit> anonymousClass1 = CodexAuthFlow.this.new AnonymousClass1(this.$context, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00f6 A[Catch: Exception -> 0x0229, TryCatch #2 {Exception -> 0x0229, blocks: (B:7:0x0029, B:26:0x00d6, B:31:0x00ed, B:33:0x00f6, B:35:0x0115, B:37:0x012e, B:38:0x0147, B:40:0x014f, B:41:0x016c, B:42:0x0171, B:44:0x0175, B:45:0x0198, B:46:0x019d, B:47:0x019e, B:49:0x01a2, B:51:0x01b7, B:54:0x01c8, B:55:0x01e2, B:57:0x01e6, B:58:0x01f7, B:59:0x01fc, B:30:0x00e4, B:12:0x0044, B:22:0x00be, B:15:0x0050, B:18:0x0081, B:61:0x01fe, B:17:0x007e, B:27:0x00d8), top: B:74:0x0017, inners: #0, #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x019e A[Catch: Exception -> 0x0229, TryCatch #2 {Exception -> 0x0229, blocks: (B:7:0x0029, B:26:0x00d6, B:31:0x00ed, B:33:0x00f6, B:35:0x0115, B:37:0x012e, B:38:0x0147, B:40:0x014f, B:41:0x016c, B:42:0x0171, B:44:0x0175, B:45:0x0198, B:46:0x019d, B:47:0x019e, B:49:0x01a2, B:51:0x01b7, B:54:0x01c8, B:55:0x01e2, B:57:0x01e6, B:58:0x01f7, B:59:0x01fc, B:30:0x00e4, B:12:0x0044, B:22:0x00be, B:15:0x0050, B:18:0x0081, B:61:0x01fe, B:17:0x007e, B:27:0x00d8), top: B:74:0x0017, inners: #0, #1 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object obj) throws NoWhenBranchMatchedException {
            CoroutineScope coroutineScope;
            OauthCallbackServer oauthCallbackServer;
            String str;
            Object objAwaitCode;
            OauthCallbackServer oauthCallbackServer2;
            String str2;
            OauthCallbackServer.Result result;
            String str3;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
            } catch (Exception e) {
                Log.e(CodexAuthFlow.TAG, "codex auth flow crashed", e);
                MutableStateFlow mutableStateFlow = CodexAuthFlow.this._state;
                String message = e.getMessage();
                if (message == null) {
                    message = "unknown error";
                }
                mutableStateFlow.setValue(new State.Failed(message));
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                String strGenerateVerifier = PkceGenerator.INSTANCE.generateVerifier();
                String strDeriveChallenge = PkceGenerator.INSTANCE.deriveChallenge(strGenerateVerifier);
                String strGenerateState = PkceGenerator.INSTANCE.generateState();
                OauthCallbackServer oauthCallbackServer3 = new OauthCallbackServer(strGenerateState, null, 0, 6, null);
                CodexAuthFlow.this.server = oauthCallbackServer3;
                try {
                    oauthCallbackServer3.start(300000, false);
                    String strBuildAuthorizeUrl = CodexAuthFlow.this.oauth.buildAuthorizeUrl(strDeriveChallenge, strGenerateState);
                    CodexAuthFlow.this._state.setValue(new State.AwaitingCallback(strBuildAuthorizeUrl));
                    this.L$0 = coroutineScope2;
                    this.L$1 = strGenerateVerifier;
                    this.L$2 = oauthCallbackServer3;
                    this.label = 1;
                    if (BuildersKt.withContext(Dispatchers.getMain(), new C00281(strBuildAuthorizeUrl, this.$context, null), (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    coroutineScope = coroutineScope2;
                    oauthCallbackServer = oauthCallbackServer3;
                    str = strGenerateVerifier;
                } catch (Exception e2) {
                    Log.e(CodexAuthFlow.TAG, "callback server start failed", e2);
                    CodexAuthFlow.this._state.setValue(new State.Failed("Could not start local callback server (port 1455 in use?): " + e2.getMessage()));
                    return Unit.INSTANCE;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    oauthCallbackServer2 = (OauthCallbackServer) this.L$2;
                    str2 = (String) this.L$1;
                    ResultKt.throwOnFailure(obj);
                    objAwaitCode = obj;
                    result = (OauthCallbackServer.Result) objAwaitCode;
                    try {
                        Result.Companion companion = Result.Companion;
                        oauthCallbackServer2.stop();
                        Result.constructor-impl(Unit.INSTANCE);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.Companion;
                        Result.constructor-impl(ResultKt.createFailure(th));
                    }
                    CodexAuthFlow.this.server = null;
                    if (!(result instanceof OauthCallbackServer.Result.Success)) {
                        CodexAuthFlow.this._state.setValue(State.Exchanging.INSTANCE);
                        OauthRepository.TokenResult tokenResultExchangeCode = CodexAuthFlow.this.oauth.exchangeCode(((OauthCallbackServer.Result.Success) result).getCode(), str2);
                        if (tokenResultExchangeCode instanceof OauthRepository.TokenResult.Success) {
                            Object objM20writeIoAF18A = CodexAuthFlow.this.store.m20writeIoAF18A(((OauthRepository.TokenResult.Success) tokenResultExchangeCode).getTokens());
                            CodexAuthFlow codexAuthFlow = CodexAuthFlow.this;
                            if (Result.isSuccess-impl(objM20writeIoAF18A)) {
                                codexAuthFlow._state.setValue(new State.Success(((OauthRepository.TokenResult.Success) tokenResultExchangeCode).getTokens().getPlanType()));
                            }
                            CodexAuthFlow codexAuthFlow2 = CodexAuthFlow.this;
                            Throwable th2 = Result.exceptionOrNull-impl(objM20writeIoAF18A);
                            if (th2 != null) {
                                codexAuthFlow2._state.setValue(new State.Failed("Wrote tokens failed: " + th2.getMessage()));
                            }
                            Result.box-impl(objM20writeIoAF18A);
                        } else if (tokenResultExchangeCode instanceof OauthRepository.TokenResult.Failure) {
                            CodexAuthFlow.this._state.setValue(new State.Failed("Token exchange failed: " + ((OauthRepository.TokenResult.Failure) tokenResultExchangeCode).getMessage()));
                        } else {
                            throw new NoWhenBranchMatchedException();
                        }
                    } else if (result instanceof OauthCallbackServer.Result.Error) {
                        MutableStateFlow mutableStateFlow2 = CodexAuthFlow.this._state;
                        String error = ((OauthCallbackServer.Result.Error) result).getError();
                        String description = ((OauthCallbackServer.Result.Error) result).getDescription();
                        if (description == null || (str3 = " — " + description) == null) {
                            str3 = BuildConfig.FLAVOR;
                        }
                        mutableStateFlow2.setValue(new State.Failed("Callback error: " + error + str3));
                    } else if (result instanceof OauthCallbackServer.Result.StateMismatch) {
                        CodexAuthFlow.this._state.setValue(new State.Failed("State mismatch (possible CSRF). Try again."));
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                    return Unit.INSTANCE;
                }
                oauthCallbackServer = (OauthCallbackServer) this.L$2;
                str = (String) this.L$1;
                coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            this.L$0 = coroutineScope;
            this.L$1 = str;
            this.L$2 = oauthCallbackServer;
            this.label = 2;
            objAwaitCode = oauthCallbackServer.awaitCode(CodexAuthFlow.TIMEOUT_MS, (Continuation) this);
            if (objAwaitCode == coroutine_suspended) {
                return coroutine_suspended;
            }
            oauthCallbackServer2 = oauthCallbackServer;
            str2 = str;
            result = (OauthCallbackServer.Result) objAwaitCode;
            Result.Companion companion3 = Result.Companion;
            oauthCallbackServer2.stop();
            Result.constructor-impl(Unit.INSTANCE);
            CodexAuthFlow.this.server = null;
            if (!(result instanceof OauthCallbackServer.Result.Success)) {
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.hermes.android.data.CodexAuthFlow$start$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: CodexAuthFlow.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        @DebugMetadata(c = "com.hermes.android.data.CodexAuthFlow$start$1$1", f = "CodexAuthFlow.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C00281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {
            final /* synthetic */ String $authorizeUrl;
            final /* synthetic */ Context $context;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00281(String str, Context context, Continuation<? super C00281> continuation) {
                super(2, continuation);
                this.$authorizeUrl = str;
                this.$context = context;
            }

            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                Continuation<Unit> c00281 = new C00281(this.$authorizeUrl, this.$context, continuation);
                c00281.L$0 = obj;
                return c00281;
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
                    Log.e(CodexAuthFlow.TAG, "open browser failed", th2);
                }
                return Result.box-impl(obj2);
            }
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
            CodexAuthFlow codexAuthFlow = this;
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
