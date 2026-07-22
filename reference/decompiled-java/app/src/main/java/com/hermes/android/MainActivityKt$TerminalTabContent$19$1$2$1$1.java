package com.hermes.android;

import android.net.Uri;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material3.DrawerState;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.core.view.PointerIconCompat;
import com.termux.terminal.TerminalSession;
import com.termux.view.TerminalView;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$TerminalTabContent$19$1$2$1$1 implements Function4<LazyItemScope, Integer, Composer, Integer, Unit> {
    final /* synthetic */ int $activeIdx;
    final /* synthetic */ MutableState<Boolean> $altSticky$delegate;
    final /* synthetic */ AtomicReference<Function2<TerminalSession, Uri, Unit>> $clipboardImageInjectorRef;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MutableState<Boolean> $ctrlSticky$delegate;
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ MutableIntState $sessionListVersion$delegate;
    final /* synthetic */ TerminalSessionManager $sessionManager;
    final /* synthetic */ List<Pair<String, Boolean>> $sessions;
    final /* synthetic */ MutableState<Boolean> $terminalScrolledUp$delegate;
    final /* synthetic */ MutableState<TerminalView> $terminalView$delegate;

    MainActivityKt$TerminalTabContent$19$1$2$1$1(List<Pair<String, Boolean>> list, int i, TerminalSessionManager terminalSessionManager, AppCompatActivity appCompatActivity, AtomicReference<Function2<TerminalSession, Uri, Unit>> atomicReference, CoroutineScope coroutineScope, DrawerState drawerState, MutableState<TerminalView> mutableState, MutableState<Boolean> mutableState2, MutableState<Boolean> mutableState3, MutableState<Boolean> mutableState4, MutableIntState mutableIntState) {
        this.$sessions = list;
        this.$activeIdx = i;
        this.$sessionManager = terminalSessionManager;
        this.$context = appCompatActivity;
        this.$clipboardImageInjectorRef = atomicReference;
        this.$scope = coroutineScope;
        this.$drawerState = drawerState;
        this.$terminalView$delegate = mutableState;
        this.$terminalScrolledUp$delegate = mutableState2;
        this.$ctrlSticky$delegate = mutableState3;
        this.$altSticky$delegate = mutableState4;
        this.$sessionListVersion$delegate = mutableIntState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        invoke((LazyItemScope) obj, ((Number) obj2).intValue(), (Composer) obj3, ((Number) obj4).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(LazyItemScope lazyItemScope, final int i, Composer composer, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(lazyItemScope, "$this$items");
        if ((i2 & 48) == 0) {
            i3 = i2 | (composer.changed(i) ? 32 : 16);
        } else {
            i3 = i2;
        }
        if ((i3 & 145) != 144 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-365758718, i3, -1, "com.hermes.android.TerminalTabContent.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:4491)");
            }
            Pair<String, Boolean> pair = this.$sessions.get(i);
            String str = (String) pair.component1();
            boolean zBooleanValue = ((Boolean) pair.component2()).booleanValue();
            boolean z = i == this.$activeIdx;
            Color.Companion companion = Color.INSTANCE;
            long jM1198copywmQWz5c$default = z ? Color.m1198copywmQWz5c$default(companion.m1236getWhite0d7_KjU(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : companion.m1234getTransparent0d7_KjU();
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null);
            composer.startReplaceGroup(-1338626741);
            boolean zChangedInstance = composer.changedInstance(this.$sessionManager) | composer.changedInstance(this.$context) | composer.changedInstance(this.$clipboardImageInjectorRef) | composer.changedInstance(this.$scope) | composer.changed(this.$drawerState) | ((i3 & 112) == 32);
            final TerminalSessionManager terminalSessionManager = this.$sessionManager;
            final AppCompatActivity appCompatActivity = this.$context;
            final CoroutineScope coroutineScope = this.$scope;
            final MutableState<TerminalView> mutableState = this.$terminalView$delegate;
            final MutableState<Boolean> mutableState2 = this.$terminalScrolledUp$delegate;
            final MutableState<Boolean> mutableState3 = this.$ctrlSticky$delegate;
            final MutableState<Boolean> mutableState4 = this.$altSticky$delegate;
            final AtomicReference<Function2<TerminalSession, Uri, Unit>> atomicReference = this.$clipboardImageInjectorRef;
            final MutableIntState mutableIntState = this.$sessionListVersion$delegate;
            final DrawerState drawerState = this.$drawerState;
            Object objRememberedValue = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                Function0 function0 = new Function0() { // from class: com.hermes.android.MainActivityKt$TerminalTabContent$19$1$2$1$1$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return MainActivityKt$TerminalTabContent$19$1$2$1$1.invoke$lambda$1$lambda$0(i, terminalSessionManager, appCompatActivity, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, atomicReference, mutableIntState, drawerState);
                    }
                };
                composer.updateRememberedValue(function0);
                objRememberedValue = function0;
            }
            composer.endReplaceGroup();
            SurfaceKt.Surface-o_FOJdg((Function0) objRememberedValue, modifierFillMaxWidth$default, false, (Shape) null, jM1198copywmQWz5c$default, 0L, 0.0f, 0.0f, (BorderStroke) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-1643812019, true, new AnonymousClass2(zBooleanValue, i, str, z, this.$sessions, this.$sessionManager, this.$context, this.$clipboardImageInjectorRef, this.$scope, this.$drawerState, this.$terminalView$delegate, this.$terminalScrolledUp$delegate, this.$ctrlSticky$delegate, this.$altSticky$delegate, this.$sessionListVersion$delegate), composer, 54), composer, 48, 6, PointerIconCompat.TYPE_WAIT);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(int i, TerminalSessionManager terminalSessionManager, AppCompatActivity appCompatActivity, CoroutineScope coroutineScope, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, AtomicReference atomicReference, MutableIntState mutableIntState, DrawerState drawerState) {
        MainActivityKt.TerminalTabContent$switchToSession(terminalSessionManager, appCompatActivity, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, atomicReference, mutableIntState, drawerState, i);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$TerminalTabContent$19$1$2$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    static final class AnonymousClass2 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ MutableState<Boolean> $altSticky$delegate;
        final /* synthetic */ AtomicReference<Function2<TerminalSession, Uri, Unit>> $clipboardImageInjectorRef;
        final /* synthetic */ AppCompatActivity $context;
        final /* synthetic */ MutableState<Boolean> $ctrlSticky$delegate;
        final /* synthetic */ DrawerState $drawerState;
        final /* synthetic */ int $i;
        final /* synthetic */ boolean $isActive;
        final /* synthetic */ boolean $isRunning;
        final /* synthetic */ String $label;
        final /* synthetic */ CoroutineScope $scope;
        final /* synthetic */ MutableIntState $sessionListVersion$delegate;
        final /* synthetic */ TerminalSessionManager $sessionManager;
        final /* synthetic */ List<Pair<String, Boolean>> $sessions;
        final /* synthetic */ MutableState<Boolean> $terminalScrolledUp$delegate;
        final /* synthetic */ MutableState<TerminalView> $terminalView$delegate;

        AnonymousClass2(boolean z, int i, String str, boolean z2, List<Pair<String, Boolean>> list, TerminalSessionManager terminalSessionManager, AppCompatActivity appCompatActivity, AtomicReference<Function2<TerminalSession, Uri, Unit>> atomicReference, CoroutineScope coroutineScope, DrawerState drawerState, MutableState<TerminalView> mutableState, MutableState<Boolean> mutableState2, MutableState<Boolean> mutableState3, MutableState<Boolean> mutableState4, MutableIntState mutableIntState) {
            this.$isRunning = z;
            this.$i = i;
            this.$label = str;
            this.$isActive = z2;
            this.$sessions = list;
            this.$sessionManager = terminalSessionManager;
            this.$context = appCompatActivity;
            this.$clipboardImageInjectorRef = atomicReference;
            this.$scope = coroutineScope;
            this.$drawerState = drawerState;
            this.$terminalView$delegate = mutableState;
            this.$terminalScrolledUp$delegate = mutableState2;
            this.$ctrlSticky$delegate = mutableState3;
            this.$altSticky$delegate = mutableState4;
            this.$sessionListVersion$delegate = mutableIntState;
        }

        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v14 ??, still in use, count: 1, list:
              (r3v14 ?? I:java.lang.Object) from 0x028d: INVOKE (r46v0 ?? I:androidx.compose.runtime.Composer), (r3v14 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5621)
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
            	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
            	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
            	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
            	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
            */
        public final void invoke(
        /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v14 ??, still in use, count: 1, list:
              (r3v14 ?? I:java.lang.Object) from 0x028d: INVOKE (r46v0 ?? I:androidx.compose.runtime.Composer), (r3v14 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5621)
            	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
            	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
            	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
            	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
            	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
            */
        /*  JADX ERROR: Method generation error
            jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r46v0 ??
            	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
            	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
            	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:407)
            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
            */

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$2$lambda$1$lambda$0(TerminalSessionManager terminalSessionManager, int i, AppCompatActivity appCompatActivity, CoroutineScope coroutineScope, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, AtomicReference atomicReference, MutableIntState mutableIntState, DrawerState drawerState) {
            TerminalSession terminalSessionSwitchSession = terminalSessionManager.switchSession(i);
            if (terminalSessionSwitchSession != null) {
                terminalSessionManager.closeSession(terminalSessionSwitchSession);
                if (terminalSessionManager.getActiveSession() != null) {
                    MainActivityKt.TerminalTabContent$switchToSession(terminalSessionManager, appCompatActivity, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, atomicReference, mutableIntState, drawerState, terminalSessionManager.getActiveIndex());
                }
                mutableIntState.setIntValue(MainActivityKt.TerminalTabContent$lambda$414(mutableIntState) + 1);
            }
            return Unit.INSTANCE;
        }
    }
}
