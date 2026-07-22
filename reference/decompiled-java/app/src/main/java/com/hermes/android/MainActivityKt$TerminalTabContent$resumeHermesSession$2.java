package com.hermes.android;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.material3.DrawerState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import com.hermes.android.TerminalSessionManager;
import com.termux.terminal.TerminalSession;
import com.termux.view.TerminalView;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$resumeHermesSession$2", f = "MainActivity.kt", i = {}, l = {4104, 4138}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$TerminalTabContent$resumeHermesSession$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ SimpleTerminalClient $client;
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ String $sessionId;
    final /* synthetic */ MutableIntState $sessionListVersion$delegate;
    final /* synthetic */ TerminalSessionManager $sessionManager;
    final /* synthetic */ MutableState<Boolean> $showSqliteError$delegate;
    final /* synthetic */ TerminalView $tv;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$TerminalTabContent$resumeHermesSession$2(TerminalSessionManager terminalSessionManager, String str, SimpleTerminalClient simpleTerminalClient, TerminalView terminalView, DrawerState drawerState, BootstrapManager bootstrapManager, MutableState<Boolean> mutableState, MutableIntState mutableIntState, Continuation<? super MainActivityKt$TerminalTabContent$resumeHermesSession$2> continuation) {
        super(2, continuation);
        this.$sessionManager = terminalSessionManager;
        this.$sessionId = str;
        this.$client = simpleTerminalClient;
        this.$tv = terminalView;
        this.$drawerState = drawerState;
        this.$bootstrapManager = bootstrapManager;
        this.$showSqliteError$delegate = mutableState;
        this.$sessionListVersion$delegate = mutableIntState;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$TerminalTabContent$resumeHermesSession$2(this.$sessionManager, this.$sessionId, this.$client, this.$tv, this.$drawerState, this.$bootstrapManager, this.$showSqliteError$delegate, this.$sessionListVersion$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    public final Object invokeSuspend(Object obj) {
        boolean zBooleanValue;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
        } catch (PackageSubsystemPoisonedException unused) {
            zBooleanValue = false;
        }
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$TerminalTabContent$resumeHermesSession$2$ok$1(this.$bootstrapManager, null), (Continuation) this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
        }
        zBooleanValue = ((Boolean) obj).booleanValue();
        if (!zBooleanValue) {
            MainActivityKt.TerminalTabContent$lambda$468(this.$showSqliteError$delegate, true);
            return Unit.INSTANCE;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        TerminalSession terminalSessionCreateSession = this.$sessionManager.createSession("hermes --resume " + this.$sessionId, this.$client, "Hermes");
        if (terminalSessionCreateSession == null) {
            return Unit.INSTANCE;
        }
        this.$sessionManager.setHermesBinding(terminalSessionCreateSession, new TerminalSessionManager.HermesBinding(jCurrentTimeMillis, this.$sessionId));
        this.$tv.attachSession(terminalSessionCreateSession);
        final TerminalView terminalView = this.$tv;
        terminalView.post(new Runnable() { // from class: com.hermes.android.MainActivityKt$TerminalTabContent$resumeHermesSession$2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MainActivityKt$TerminalTabContent$resumeHermesSession$2.invokeSuspend$lambda$0(terminalView);
            }
        });
        this.$sessionListVersion$delegate.setIntValue(MainActivityKt.TerminalTabContent$lambda$414(this.$sessionListVersion$delegate) + 1);
        this.label = 2;
        if (this.$drawerState.close((Continuation) this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(TerminalView terminalView) {
        terminalView.requestFocus();
        Object systemService = terminalView.getContext().getSystemService("input_method");
        InputMethodManager inputMethodManager = systemService instanceof InputMethodManager ? (InputMethodManager) systemService : null;
        if (inputMethodManager != null) {
            inputMethodManager.restartInput((View) terminalView);
        }
        if (inputMethodManager != null) {
            inputMethodManager.showSoftInput((View) terminalView, 1);
        }
    }
}
