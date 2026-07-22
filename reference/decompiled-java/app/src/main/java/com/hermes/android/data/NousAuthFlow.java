package com.hermes.android.data;

import android.util.Log;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.BootstrapManager;
import com.hermes.android.data.oauth.NousCredentialStore;
import com.hermes.android.data.oauth.NousDeviceCodeClient;
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

/* JADX INFO: compiled from: NousAuthFlow.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/hermes/android/data/NousAuthFlow;", BuildConfig.FLAVOR, "bootstrap", "Lcom/hermes/android/BootstrapManager;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "<init>", "(Lcom/hermes/android/BootstrapManager;Lkotlinx/coroutines/CoroutineScope;)V", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/hermes/android/data/NousAuthFlow$State;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "client", "Lcom/hermes/android/data/oauth/NousDeviceCodeClient;", "store", "Lcom/hermes/android/data/oauth/NousCredentialStore;", "job", "Lkotlinx/coroutines/Job;", "start", BuildConfig.FLAVOR, "cancel", "Companion", "State", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class NousAuthFlow {
    private static final String TAG = "NousAuthFlow";
    private final MutableStateFlow<State> _state;
    private final NousDeviceCodeClient client;
    private Job job;
    private final CoroutineScope scope;
    private final StateFlow<State> state;
    private final NousCredentialStore store;
    public static final int $stable = 8;

    public NousAuthFlow(BootstrapManager bootstrapManager, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(bootstrapManager, "bootstrap");
        Intrinsics.checkNotNullParameter(coroutineScope, "scope");
        this.scope = coroutineScope;
        MutableStateFlow<State> MutableStateFlow = StateFlowKt.MutableStateFlow(State.Idle.INSTANCE);
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
        this.client = new NousDeviceCodeClient(null, null, 3, null);
        this.store = new NousCredentialStore(bootstrapManager);
    }

    /* JADX INFO: compiled from: NousAuthFlow.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0005\u0004\u0005\u0006\u0007\bB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0005\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/hermes/android/data/NousAuthFlow$State;", BuildConfig.FLAVOR, "<init>", "()V", "Idle", "Starting", "AwaitingApproval", "Success", "Failed", "Lcom/hermes/android/data/NousAuthFlow$State$AwaitingApproval;", "Lcom/hermes/android/data/NousAuthFlow$State$Failed;", "Lcom/hermes/android/data/NousAuthFlow$State$Idle;", "Lcom/hermes/android/data/NousAuthFlow$State$Starting;", "Lcom/hermes/android/data/NousAuthFlow$State$Success;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static abstract class State {
        public static final int $stable = 0;

        public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: compiled from: NousAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/NousAuthFlow$State$Idle;", "Lcom/hermes/android/data/NousAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Idle extends State {
            public static final int $stable = 0;
            public static final Idle INSTANCE = new Idle();

            private Idle() {
                super(null);
            }
        }

        private State() {
        }

        /* JADX INFO: compiled from: NousAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/NousAuthFlow$State$Starting;", "Lcom/hermes/android/data/NousAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Starting extends State {
            public static final int $stable = 0;
            public static final Starting INSTANCE = new Starting();

            private Starting() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: NousAuthFlow.kt */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0018"}, d2 = {"Lcom/hermes/android/data/NousAuthFlow$State$AwaitingApproval;", "Lcom/hermes/android/data/NousAuthFlow$State;", "userCode", BuildConfig.FLAVOR, "verificationUriComplete", "expiresIn", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "getUserCode", "()Ljava/lang/String;", "getVerificationUriComplete", "getExpiresIn", "()I", "component1", "component2", "component3", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class AwaitingApproval extends State {
            public static final int $stable = 0;
            private final int expiresIn;
            private final String userCode;
            private final String verificationUriComplete;

            public static /* synthetic */ AwaitingApproval copy$default(AwaitingApproval awaitingApproval, String str, String str2, int i, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = awaitingApproval.userCode;
                }
                if ((i2 & 2) != 0) {
                    str2 = awaitingApproval.verificationUriComplete;
                }
                if ((i2 & 4) != 0) {
                    i = awaitingApproval.expiresIn;
                }
                return awaitingApproval.copy(str, str2, i);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getUserCode() {
                return this.userCode;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final String getVerificationUriComplete() {
                return this.verificationUriComplete;
            }

            /* JADX INFO: renamed from: component3, reason: from getter */
            public final int getExpiresIn() {
                return this.expiresIn;
            }

            public final AwaitingApproval copy(String userCode, String verificationUriComplete, int expiresIn) {
                Intrinsics.checkNotNullParameter(userCode, "userCode");
                Intrinsics.checkNotNullParameter(verificationUriComplete, "verificationUriComplete");
                return new AwaitingApproval(userCode, verificationUriComplete, expiresIn);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof AwaitingApproval)) {
                    return false;
                }
                AwaitingApproval awaitingApproval = (AwaitingApproval) other;
                return Intrinsics.areEqual(this.userCode, awaitingApproval.userCode) && Intrinsics.areEqual(this.verificationUriComplete, awaitingApproval.verificationUriComplete) && this.expiresIn == awaitingApproval.expiresIn;
            }

            public int hashCode() {
                return (((this.userCode.hashCode() * 31) + this.verificationUriComplete.hashCode()) * 31) + Integer.hashCode(this.expiresIn);
            }

            public String toString() {
                return "AwaitingApproval(userCode=" + this.userCode + ", verificationUriComplete=" + this.verificationUriComplete + ", expiresIn=" + this.expiresIn + ")";
            }

            public final String getUserCode() {
                return this.userCode;
            }

            public final String getVerificationUriComplete() {
                return this.verificationUriComplete;
            }

            public final int getExpiresIn() {
                return this.expiresIn;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AwaitingApproval(String str, String str2, int i) {
                super(null);
                Intrinsics.checkNotNullParameter(str, "userCode");
                Intrinsics.checkNotNullParameter(str2, "verificationUriComplete");
                this.userCode = str;
                this.verificationUriComplete = str2;
                this.expiresIn = i;
            }
        }

        /* JADX INFO: compiled from: NousAuthFlow.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/NousAuthFlow$State$Success;", "Lcom/hermes/android/data/NousAuthFlow$State;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Success extends State {
            public static final int $stable = 0;
            public static final Success INSTANCE = new Success();

            private Success() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: NousAuthFlow.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/NousAuthFlow$State$Failed;", "Lcom/hermes/android/data/NousAuthFlow$State;", "message", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
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

    public final void start() {
        if (this.job != null) {
            return;
        }
        this._state.setValue(State.Starting.INSTANCE);
        this.job = BuildersKt.launch$default(this.scope, Dispatchers.getIO(), (CoroutineStart) null, new AnonymousClass1(null), 2, (Object) null);
    }

    /* JADX INFO: renamed from: com.hermes.android.data.NousAuthFlow$start$1, reason: invalid class name */
    /* JADX INFO: compiled from: NousAuthFlow.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.data.NousAuthFlow$start$1", f = "NousAuthFlow.kt", i = {}, l = {67}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NousAuthFlow.this.new AnonymousClass1(continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
        public final Object invokeSuspend(Object obj) throws NoWhenBranchMatchedException {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Object objM22requestDeviceCoded1pmJ48 = NousAuthFlow.this.client.m22requestDeviceCoded1pmJ48();
                    NousAuthFlow nousAuthFlow = NousAuthFlow.this;
                    Throwable th = Result.exceptionOrNull-impl(objM22requestDeviceCoded1pmJ48);
                    if (th != null) {
                        Log.w(NousAuthFlow.TAG, "device code request failed", th);
                        MutableStateFlow mutableStateFlow = nousAuthFlow._state;
                        String message = th.getMessage();
                        if (message == null) {
                            message = "Device code request failed";
                        }
                        mutableStateFlow.setValue(new State.Failed(message));
                        return Unit.INSTANCE;
                    }
                    NousDeviceCodeClient.DeviceCode deviceCode = (NousDeviceCodeClient.DeviceCode) objM22requestDeviceCoded1pmJ48;
                    NousAuthFlow.this._state.setValue(new State.AwaitingApproval(deviceCode.getUserCode(), deviceCode.getVerificationUriComplete(), deviceCode.getExpiresIn()));
                    this.label = 1;
                    obj = NousAuthFlow.this.client.pollForToken(deviceCode, (Continuation) this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                NousDeviceCodeClient.PollResult pollResult = (NousDeviceCodeClient.PollResult) obj;
                if (pollResult instanceof NousDeviceCodeClient.PollResult.Success) {
                    Object objM21writeIoAF18A = NousAuthFlow.this.store.m21writeIoAF18A(((NousDeviceCodeClient.PollResult.Success) pollResult).getTokenJson());
                    NousAuthFlow nousAuthFlow2 = NousAuthFlow.this;
                    if (Result.isSuccess-impl(objM21writeIoAF18A)) {
                        nousAuthFlow2._state.setValue(State.Success.INSTANCE);
                    }
                    NousAuthFlow nousAuthFlow3 = NousAuthFlow.this;
                    Throwable th2 = Result.exceptionOrNull-impl(objM21writeIoAF18A);
                    if (th2 != null) {
                        Log.e(NousAuthFlow.TAG, "credential save failed", th2);
                        nousAuthFlow3._state.setValue(new State.Failed("Save failed: " + th2.getMessage()));
                    }
                    Result.box-impl(objM21writeIoAF18A);
                } else if (pollResult instanceof NousDeviceCodeClient.PollResult.Denied) {
                    NousDeviceCodeClient.PollResult.Denied denied = (NousDeviceCodeClient.PollResult.Denied) pollResult;
                    NousAuthFlow.this._state.setValue(new State.Failed(denied.getError() + ": " + denied.getDescription()));
                } else if (pollResult instanceof NousDeviceCodeClient.PollResult.Expired) {
                    NousAuthFlow.this._state.setValue(new State.Failed("expired"));
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                return Unit.INSTANCE;
            } catch (CancellationException e) {
                throw e;
            } catch (Exception e2) {
                Log.e(NousAuthFlow.TAG, "token polling failed", e2);
                MutableStateFlow mutableStateFlow2 = NousAuthFlow.this._state;
                String message2 = e2.getMessage();
                if (message2 == null) {
                    message2 = "Network error during sign-in";
                }
                mutableStateFlow2.setValue(new State.Failed(message2));
                return Unit.INSTANCE;
            }
        }
    }

    public final void cancel() {
        Job job = this.job;
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.job = null;
    }
}
