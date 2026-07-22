package com.hermes.android;

import android.net.Uri;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.material3.DrawerState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import com.hermes.android.TerminalSessionManager;
import com.termux.terminal.TerminalSession;
import com.termux.view.TerminalView;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$createNewHermesSession$1", f = "MainActivity.kt", i = {}, l = {4153, 4191}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$TerminalTabContent$createNewHermesSession$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $altSticky$delegate;
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ AtomicReference<Function2<TerminalSession, Uri, Unit>> $clipboardImageInjectorRef;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MutableState<Boolean> $ctrlSticky$delegate;
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ MutableState<Boolean> $hermesLaunched$delegate;
    final /* synthetic */ MutableIntState $hermesResponseCount$delegate;
    final /* synthetic */ MutableIntState $sessionListVersion$delegate;
    final /* synthetic */ TerminalSessionManager $sessionManager;
    final /* synthetic */ MutableState<Boolean> $showSqliteError$delegate;
    final /* synthetic */ MutableState<Boolean> $terminalScrolledUp$delegate;
    final /* synthetic */ TerminalView $tv;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$TerminalTabContent$createNewHermesSession$1(AppCompatActivity appCompatActivity, TerminalView terminalView, TerminalSessionManager terminalSessionManager, DrawerState drawerState, BootstrapManager bootstrapManager, MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2, MutableIntState mutableIntState, MutableState<Boolean> mutableState3, MutableState<Boolean> mutableState4, MutableState<Boolean> mutableState5, AtomicReference<Function2<TerminalSession, Uri, Unit>> atomicReference, MutableIntState mutableIntState2, Continuation<? super MainActivityKt$TerminalTabContent$createNewHermesSession$1> continuation) {
        super(2, continuation);
        this.$context = appCompatActivity;
        this.$tv = terminalView;
        this.$sessionManager = terminalSessionManager;
        this.$drawerState = drawerState;
        this.$bootstrapManager = bootstrapManager;
        this.$showSqliteError$delegate = mutableState;
        this.$hermesLaunched$delegate = mutableState2;
        this.$hermesResponseCount$delegate = mutableIntState;
        this.$terminalScrolledUp$delegate = mutableState3;
        this.$ctrlSticky$delegate = mutableState4;
        this.$altSticky$delegate = mutableState5;
        this.$clipboardImageInjectorRef = atomicReference;
        this.$sessionListVersion$delegate = mutableIntState2;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$TerminalTabContent$createNewHermesSession$1(this.$context, this.$tv, this.$sessionManager, this.$drawerState, this.$bootstrapManager, this.$showSqliteError$delegate, this.$hermesLaunched$delegate, this.$hermesResponseCount$delegate, this.$terminalScrolledUp$delegate, this.$ctrlSticky$delegate, this.$altSticky$delegate, this.$clipboardImageInjectorRef, this.$sessionListVersion$delegate, continuation);
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
            obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$TerminalTabContent$createNewHermesSession$1$ok$1(this.$bootstrapManager, null), (Continuation) this);
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
        SimpleTerminalClient simpleTerminalClient = new SimpleTerminalClient(this.$context.getApplicationContext());
        MainActivityKt.TerminalTabContent$lambda$456(this.$hermesLaunched$delegate, true);
        this.$hermesResponseCount$delegate.setIntValue(0);
        MutableState<Boolean> mutableState = this.$terminalScrolledUp$delegate;
        MutableState<Boolean> mutableState2 = this.$ctrlSticky$delegate;
        MutableState<Boolean> mutableState3 = this.$altSticky$delegate;
        AtomicReference<Function2<TerminalSession, Uri, Unit>> atomicReference = this.$clipboardImageInjectorRef;
        TerminalView terminalView = this.$tv;
        final MutableIntState mutableIntState = this.$hermesResponseCount$delegate;
        MainActivityKt.TerminalTabContent$installScrollAwareCallback(mutableState, mutableState2, mutableState3, atomicReference, terminalView, simpleTerminalClient, new Function0() { // from class: com.hermes.android.MainActivityKt$TerminalTabContent$createNewHermesSession$1$$ExternalSyntheticLambda0
            public final Object invoke() {
                return MainActivityKt$TerminalTabContent$createNewHermesSession$1.invokeSuspend$lambda$0(mutableIntState);
            }
        });
        this.$tv.setTerminalViewClient(simpleTerminalClient);
        SimpleTerminalClient simpleTerminalClient2 = simpleTerminalClient;
        this.$sessionManager.setSessionClient(simpleTerminalClient2);
        long jCurrentTimeMillis = System.currentTimeMillis();
        TerminalSession terminalSessionCreateSession = this.$sessionManager.createSession("hermes", simpleTerminalClient2, "Hermes");
        if (terminalSessionCreateSession == null) {
            return Unit.INSTANCE;
        }
        this.$sessionManager.setHermesBinding(terminalSessionCreateSession, new TerminalSessionManager.HermesBinding(jCurrentTimeMillis, null));
        this.$tv.attachSession(terminalSessionCreateSession);
        final TerminalView terminalView2 = this.$tv;
        terminalView2.post(new Runnable() { // from class: com.hermes.android.MainActivityKt$TerminalTabContent$createNewHermesSession$1$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MainActivityKt$TerminalTabContent$createNewHermesSession$1.invokeSuspend$lambda$1(terminalView2);
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
    public static final Unit invokeSuspend$lambda$0(MutableIntState mutableIntState) {
        mutableIntState.setIntValue(MainActivityKt.TerminalTabContent$lambda$452(mutableIntState) + 1);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$1(TerminalView terminalView) {
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
