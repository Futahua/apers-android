package com.hermes.android;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import com.hermes.android.handoff.HandoffController;
import com.hermes.android.handoff.HandoffCrypto;
import com.hermes.android.handoff.HandoffImporter;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1", f = "MainActivity.kt", i = {2, 2}, l = {2521, 2528, 2531, 2533}, m = "invokeSuspend", n = {"$this$launch", "peer"}, s = {"L$0", "L$1"})
final class MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ String $contents;
    final /* synthetic */ HandoffController $handoffController;
    final /* synthetic */ MutableState<String> $handoffError$delegate;
    final /* synthetic */ MutableState<String> $handoffImportedSessionId$delegate;
    final /* synthetic */ MutableState<HandoffCrypto.PeerInfo> $handoffPaired$delegate;
    final /* synthetic */ MutableState<Boolean> $handoffReceiving$delegate;
    final /* synthetic */ MutableState<HandoffImporter.Stats> $handoffResult$delegate;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1(HandoffController handoffController, String str, AppCompatActivity appCompatActivity, MutableState<String> mutableState, MutableState<HandoffCrypto.PeerInfo> mutableState2, MutableState<Boolean> mutableState3, MutableState<HandoffImporter.Stats> mutableState4, MutableState<String> mutableState5, Continuation<? super MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1> continuation) {
        super(2, continuation);
        this.$handoffController = handoffController;
        this.$contents = str;
        this.$activity = appCompatActivity;
        this.$handoffError$delegate = mutableState;
        this.$handoffPaired$delegate = mutableState2;
        this.$handoffReceiving$delegate = mutableState3;
        this.$handoffResult$delegate = mutableState4;
        this.$handoffImportedSessionId$delegate = mutableState5;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        Continuation<Unit> mainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1 = new MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1(this.$handoffController, this.$contents, this.$activity, this.$handoffError$delegate, this.$handoffPaired$delegate, this.$handoffReceiving$delegate, this.$handoffResult$delegate, this.$handoffImportedSessionId$delegate, continuation);
        mainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1.L$0 = obj;
        return mainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1;
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c9 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        HandoffCrypto.PeerInfo peerInfo;
        Object obj2;
        Object obj3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            try {
                HandoffCrypto.PeerInfo peerInfoPairFromQr = this.$handoffController.pairFromQr(this.$contents);
                if (peerInfoPairFromQr.getSessionId() == null) {
                    this.label = 2;
                    if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass1(peerInfoPairFromQr, this.$handoffPaired$delegate, null), (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    this.L$0 = coroutineScope;
                    this.L$1 = peerInfoPairFromQr;
                    this.label = 3;
                    if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(this.$handoffReceiving$delegate, null), (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    peerInfo = peerInfoPairFromQr;
                    HandoffController handoffController = this.$handoffController;
                    Result.Companion companion = Result.Companion;
                    obj2 = Result.constructor-impl(handoffController.receive(peerInfo));
                    obj3 = obj2;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 4;
                    if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass3(obj3, this.$handoffReceiving$delegate, peerInfo, this.$handoffResult$delegate, this.$handoffImportedSessionId$delegate, this.$activity, this.$handoffError$delegate, null), (Continuation) this) == coroutine_suspended) {
                    }
                }
            } catch (Exception e) {
                this.label = 1;
                if (BuildersKt.withContext(Dispatchers.getMain(), new MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$peer$1(e, this.$activity, this.$handoffError$delegate, null), (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            if (i != 2) {
                if (i == 3) {
                    HandoffCrypto.PeerInfo peerInfo2 = (HandoffCrypto.PeerInfo) this.L$1;
                    ResultKt.throwOnFailure(obj);
                    peerInfo = peerInfo2;
                    HandoffController handoffController2 = this.$handoffController;
                    try {
                        Result.Companion companion2 = Result.Companion;
                        obj2 = Result.constructor-impl(handoffController2.receive(peerInfo));
                    } catch (Throwable th) {
                        Result.Companion companion3 = Result.Companion;
                        obj2 = Result.constructor-impl(ResultKt.createFailure(th));
                    }
                    obj3 = obj2;
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 4;
                    if (BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass3(obj3, this.$handoffReceiving$delegate, peerInfo, this.$handoffResult$delegate, this.$handoffImportedSessionId$delegate, this.$activity, this.$handoffError$delegate, null), (Continuation) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableState<HandoffCrypto.PeerInfo> $handoffPaired$delegate;
        final /* synthetic */ HandoffCrypto.PeerInfo $peer;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(HandoffCrypto.PeerInfo peerInfo, MutableState<HandoffCrypto.PeerInfo> mutableState, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$peer = peerInfo;
            this.$handoffPaired$delegate = mutableState;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$peer, this.$handoffPaired$delegate, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$handoffPaired$delegate.setValue(this.$peer);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$2", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MutableState<Boolean> $handoffReceiving$delegate;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(MutableState<Boolean> mutableState, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$handoffReceiving$delegate = mutableState;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$handoffReceiving$delegate, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MainActivityKt.SettingsTabContent$lambda$270(this.$handoffReceiving$delegate, true);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$SettingsTabContent$handoffScanLauncher$1$1$1$3", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AppCompatActivity $activity;
        final /* synthetic */ MutableState<String> $handoffError$delegate;
        final /* synthetic */ MutableState<String> $handoffImportedSessionId$delegate;
        final /* synthetic */ MutableState<Boolean> $handoffReceiving$delegate;
        final /* synthetic */ MutableState<HandoffImporter.Stats> $handoffResult$delegate;
        final /* synthetic */ Object $outcome;
        final /* synthetic */ HandoffCrypto.PeerInfo $peer;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Object obj, MutableState<Boolean> mutableState, HandoffCrypto.PeerInfo peerInfo, MutableState<HandoffImporter.Stats> mutableState2, MutableState<String> mutableState3, AppCompatActivity appCompatActivity, MutableState<String> mutableState4, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$outcome = obj;
            this.$handoffReceiving$delegate = mutableState;
            this.$peer = peerInfo;
            this.$handoffResult$delegate = mutableState2;
            this.$handoffImportedSessionId$delegate = mutableState3;
            this.$activity = appCompatActivity;
            this.$handoffError$delegate = mutableState4;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$outcome, this.$handoffReceiving$delegate, this.$peer, this.$handoffResult$delegate, this.$handoffImportedSessionId$delegate, this.$activity, this.$handoffError$delegate, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                MainActivityKt.SettingsTabContent$lambda$270(this.$handoffReceiving$delegate, false);
                Object obj2 = this.$outcome;
                HandoffCrypto.PeerInfo peerInfo = this.$peer;
                MutableState<HandoffImporter.Stats> mutableState = this.$handoffResult$delegate;
                MutableState<String> mutableState2 = this.$handoffImportedSessionId$delegate;
                if (Result.isSuccess-impl(obj2)) {
                    mutableState.setValue((HandoffImporter.Stats) obj2);
                    mutableState2.setValue(peerInfo.getSessionId());
                }
                Context context = this.$activity;
                MutableState<String> mutableState3 = this.$handoffError$delegate;
                Throwable th = Result.exceptionOrNull-impl(obj2);
                if (th != null) {
                    mutableState3.setValue(UiErrorKt.uiMessage(th, context));
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
