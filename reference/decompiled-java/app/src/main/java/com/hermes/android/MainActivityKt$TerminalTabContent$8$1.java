package com.hermes.android;

import android.net.Uri;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.material3.DrawerState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$TerminalTabContent$8$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$TerminalTabContent$8$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $altSticky$delegate;
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ AtomicReference<Function2<TerminalSession, Uri, Unit>> $clipboardImageInjectorRef;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MutableState<Boolean> $ctrlSticky$delegate;
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ MutableState<Boolean> $hermesLaunched$delegate;
    final /* synthetic */ MutableIntState $hermesResponseCount$delegate;
    final /* synthetic */ MutableState<Boolean> $isSessionReady$delegate;
    final /* synthetic */ Function0<Unit> $onResumeHandled;
    final /* synthetic */ String $pendingResumeSessionId;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ MutableIntState $sessionListVersion$delegate;
    final /* synthetic */ TerminalSessionManager $sessionManager;
    final /* synthetic */ MutableState<Boolean> $showMaxSessionsAlert$delegate;
    final /* synthetic */ MutableState<Boolean> $showSqliteError$delegate;
    final /* synthetic */ MutableState<Boolean> $terminalScrolledUp$delegate;
    final /* synthetic */ MutableState<TerminalView> $terminalView$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$TerminalTabContent$8$1(String str, Function0<Unit> function0, MutableState<Boolean> mutableState, TerminalSessionManager terminalSessionManager, AppCompatActivity appCompatActivity, CoroutineScope coroutineScope, MutableState<TerminalView> mutableState2, MutableState<Boolean> mutableState3, MutableState<Boolean> mutableState4, MutableIntState mutableIntState, MutableState<Boolean> mutableState5, MutableState<Boolean> mutableState6, MutableState<Boolean> mutableState7, AtomicReference<Function2<TerminalSession, Uri, Unit>> atomicReference, DrawerState drawerState, BootstrapManager bootstrapManager, MutableState<Boolean> mutableState8, MutableIntState mutableIntState2, Continuation<? super MainActivityKt$TerminalTabContent$8$1> continuation) {
        super(2, continuation);
        this.$pendingResumeSessionId = str;
        this.$onResumeHandled = function0;
        this.$isSessionReady$delegate = mutableState;
        this.$sessionManager = terminalSessionManager;
        this.$context = appCompatActivity;
        this.$scope = coroutineScope;
        this.$terminalView$delegate = mutableState2;
        this.$showMaxSessionsAlert$delegate = mutableState3;
        this.$hermesLaunched$delegate = mutableState4;
        this.$hermesResponseCount$delegate = mutableIntState;
        this.$terminalScrolledUp$delegate = mutableState5;
        this.$ctrlSticky$delegate = mutableState6;
        this.$altSticky$delegate = mutableState7;
        this.$clipboardImageInjectorRef = atomicReference;
        this.$drawerState = drawerState;
        this.$bootstrapManager = bootstrapManager;
        this.$showSqliteError$delegate = mutableState8;
        this.$sessionListVersion$delegate = mutableIntState2;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$TerminalTabContent$8$1(this.$pendingResumeSessionId, this.$onResumeHandled, this.$isSessionReady$delegate, this.$sessionManager, this.$context, this.$scope, this.$terminalView$delegate, this.$showMaxSessionsAlert$delegate, this.$hermesLaunched$delegate, this.$hermesResponseCount$delegate, this.$terminalScrolledUp$delegate, this.$ctrlSticky$delegate, this.$altSticky$delegate, this.$clipboardImageInjectorRef, this.$drawerState, this.$bootstrapManager, this.$showSqliteError$delegate, this.$sessionListVersion$delegate, continuation);
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
        String str = this.$pendingResumeSessionId;
        if (str != null && MainActivityKt.TerminalTabContent$lambda$395(this.$isSessionReady$delegate)) {
            MainActivityKt.TerminalTabContent$resumeHermesSession(this.$sessionManager, this.$context, this.$scope, this.$terminalView$delegate, this.$showMaxSessionsAlert$delegate, this.$hermesLaunched$delegate, this.$hermesResponseCount$delegate, this.$terminalScrolledUp$delegate, this.$ctrlSticky$delegate, this.$altSticky$delegate, this.$clipboardImageInjectorRef, this.$drawerState, this.$bootstrapManager, this.$showSqliteError$delegate, this.$sessionListVersion$delegate, str);
            this.$onResumeHandled.invoke();
        }
        return Unit.INSTANCE;
    }
}
