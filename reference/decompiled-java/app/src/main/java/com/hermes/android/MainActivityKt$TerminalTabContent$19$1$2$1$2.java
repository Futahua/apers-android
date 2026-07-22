package com.hermes.android;

import android.net.Uri;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CloseKt;
import androidx.compose.material.icons.filled.VisibilityKt;
import androidx.compose.material3.DrawerState;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.hermes.android.MainActivityKt$TerminalTabContent$19$1$2$1$2;
import com.hermes.android.data.HermesHudRepository;
import com.termux.terminal.TerminalSession;
import com.termux.view.TerminalView;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$TerminalTabContent$19$1$2$1$2 implements Function4<LazyItemScope, Integer, Composer, Integer, Unit> {
    final /* synthetic */ MutableState<Boolean> $altSticky$delegate;
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ AtomicReference<Function2<TerminalSession, Uri, Unit>> $clipboardImageInjectorRef;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MutableState<Boolean> $ctrlSticky$delegate;
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ MutableState<Boolean> $hermesLaunched$delegate;
    final /* synthetic */ MutableIntState $hermesResponseCount$delegate;
    final /* synthetic */ HermesHudRepository $hudRepo;
    final /* synthetic */ MutableState<List<HermesHudRepository.SessionInfo>> $pastSessions$delegate;
    final /* synthetic */ MutableState<String> $previewSessionId$delegate;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ MutableIntState $sessionListVersion$delegate;
    final /* synthetic */ TerminalSessionManager $sessionManager;
    final /* synthetic */ MutableState<Boolean> $showMaxSessionsAlert$delegate;
    final /* synthetic */ MutableState<Boolean> $showSqliteError$delegate;
    final /* synthetic */ MutableState<Boolean> $terminalScrolledUp$delegate;
    final /* synthetic */ MutableState<TerminalView> $terminalView$delegate;

    MainActivityKt$TerminalTabContent$19$1$2$1$2(HermesHudRepository hermesHudRepository, TerminalSessionManager terminalSessionManager, AppCompatActivity appCompatActivity, AtomicReference<Function2<TerminalSession, Uri, Unit>> atomicReference, CoroutineScope coroutineScope, BootstrapManager bootstrapManager, DrawerState drawerState, MutableState<List<HermesHudRepository.SessionInfo>> mutableState, MutableState<TerminalView> mutableState2, MutableState<Boolean> mutableState3, MutableState<Boolean> mutableState4, MutableIntState mutableIntState, MutableState<Boolean> mutableState5, MutableState<Boolean> mutableState6, MutableState<Boolean> mutableState7, MutableState<Boolean> mutableState8, MutableIntState mutableIntState2, MutableState<String> mutableState9) {
        this.$hudRepo = hermesHudRepository;
        this.$sessionManager = terminalSessionManager;
        this.$context = appCompatActivity;
        this.$clipboardImageInjectorRef = atomicReference;
        this.$scope = coroutineScope;
        this.$bootstrapManager = bootstrapManager;
        this.$drawerState = drawerState;
        this.$pastSessions$delegate = mutableState;
        this.$terminalView$delegate = mutableState2;
        this.$showMaxSessionsAlert$delegate = mutableState3;
        this.$hermesLaunched$delegate = mutableState4;
        this.$hermesResponseCount$delegate = mutableIntState;
        this.$terminalScrolledUp$delegate = mutableState5;
        this.$ctrlSticky$delegate = mutableState6;
        this.$altSticky$delegate = mutableState7;
        this.$showSqliteError$delegate = mutableState8;
        this.$sessionListVersion$delegate = mutableIntState2;
        this.$previewSessionId$delegate = mutableState9;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        invoke((LazyItemScope) obj, ((Number) obj2).intValue(), (Composer) obj3, ((Number) obj4).intValue());
        return Unit.INSTANCE;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v19 ??, still in use, count: 1, list:
          (r1v19 ?? I:java.lang.Object) from 0x012a: INVOKE (r14v4 ?? I:androidx.compose.runtime.Composer), (r1v19 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5582)
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
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v19 ??, still in use, count: 1, list:
          (r1v19 ?? I:java.lang.Object) from 0x012a: INVOKE (r14v4 ?? I:androidx.compose.runtime.Composer), (r1v19 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5582)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r36v0 ??
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
    public static final Unit invoke$lambda$2$lambda$1(HermesHudRepository.SessionInfo sessionInfo, TerminalSessionManager terminalSessionManager, AppCompatActivity appCompatActivity, CoroutineScope coroutineScope, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableIntState mutableIntState, MutableState mutableState4, MutableState mutableState5, MutableState mutableState6, AtomicReference atomicReference, DrawerState drawerState, BootstrapManager bootstrapManager, MutableState mutableState7, MutableIntState mutableIntState2) {
        MainActivityKt.TerminalTabContent$resumeHermesSession(terminalSessionManager, appCompatActivity, coroutineScope, mutableState, mutableState2, mutableState3, mutableIntState, mutableState4, mutableState5, mutableState6, atomicReference, drawerState, bootstrapManager, mutableState7, mutableIntState2, sessionInfo.getId());
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$TerminalTabContent$19$1$2$1$2$2, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    static final class AnonymousClass2 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ DrawerState $drawerState;
        final /* synthetic */ HermesHudRepository $hudRepo;
        final /* synthetic */ MutableState<String> $previewSessionId$delegate;
        final /* synthetic */ HermesHudRepository.SessionInfo $s;
        final /* synthetic */ CoroutineScope $scope;
        final /* synthetic */ MutableIntState $sessionListVersion$delegate;
        final /* synthetic */ String $time;
        final /* synthetic */ String $title;

        AnonymousClass2(HermesHudRepository.SessionInfo sessionInfo, CoroutineScope coroutineScope, DrawerState drawerState, HermesHudRepository hermesHudRepository, String str, String str2, MutableState<String> mutableState, MutableIntState mutableIntState) {
            this.$s = sessionInfo;
            this.$scope = coroutineScope;
            this.$drawerState = drawerState;
            this.$hudRepo = hermesHudRepository;
            this.$title = str;
            this.$time = str2;
            this.$previewSessionId$delegate = mutableState;
            this.$sessionListVersion$delegate = mutableIntState;
        }

        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1069333828, i, -1, "com.hermes.android.TerminalTabContent.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:4576)");
                }
                float f = 16;
                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(PaddingKt.padding-VpY3zN4(Modifier.INSTANCE, Dp.m3807constructorimpl(f), Dp.m3807constructorimpl(8)), 0.0f, 1, (Object) null);
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                final HermesHudRepository.SessionInfo sessionInfo = this.$s;
                final CoroutineScope coroutineScope = this.$scope;
                final DrawerState drawerState = this.$drawerState;
                final HermesHudRepository hermesHudRepository = this.$hudRepo;
                String str = this.$title;
                String str2 = this.$time;
                final MutableState<String> mutableState = this.$previewSessionId$delegate;
                final MutableIntState mutableIntState = this.$sessionListVersion$delegate;
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, 48);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifierFillMaxWidth$default);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                Modifier modifierWeight$default = RowScope.weight$default(RowScopeInstance.INSTANCE, Modifier.INSTANCE, 1.0f, false, 2, (Object) null);
                ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, 0);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer, modifierWeight$default);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor2);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl2 = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl2, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (composerM661constructorimpl2.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                    composerM661constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                    composerM661constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                }
                Updater.m668setimpl(composerM661constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
                TextKt.Text--4IGK_g(str, (Modifier) null, Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.7f, 0.0f, 0.0f, 0.0f, 14, null), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 1, 0, (Function1) null, (TextStyle) null, composer, 3456, 3072, 122866);
                ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                Modifier.Companion companion = Modifier.INSTANCE;
                MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.INSTANCE.getTop(), composer, 0);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap3 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer, companion);
                Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer.createNode(constructor3);
                } else {
                    composer.useNode();
                }
                Composer composerM661constructorimpl3 = Updater.m661constructorimpl(composer);
                Updater.m668setimpl(composerM661constructorimpl3, measurePolicyRowMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m668setimpl(composerM661constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if (composerM661constructorimpl3.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                    composerM661constructorimpl3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                    composerM661constructorimpl3.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
                }
                Updater.m668setimpl(composerM661constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                RowScope rowScope = RowScopeInstance.INSTANCE;
                TextKt.Text--4IGK_g(str2 + "  " + sessionInfo.getMessageCount() + " msgs", (Modifier) null, Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.35f, 0.0f, 0.0f, 0.0f, 14, null), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                composer.startReplaceGroup(1855926096);
                if (sessionInfo.getModel().length() > 0) {
                    TextKt.Text--4IGK_g("  " + sessionInfo.getModel(), (Modifier) null, Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.25f, 0.0f, 0.0f, 0.0f, 14, null), TextUnitKt.getSp(11), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                }
                composer.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ImageVector visibility = VisibilityKt.getVisibility(Icons.INSTANCE.getDefault());
                long jM1198copywmQWz5c$default = Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.3f, 0.0f, 0.0f, 0.0f, 14, null);
                Modifier modifier = SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(f));
                composer.startReplaceGroup(2096018271);
                boolean zChanged = composer.changed(sessionInfo) | composer.changedInstance(coroutineScope) | composer.changed(drawerState);
                Object objRememberedValue = composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$TerminalTabContent$19$1$2$1$2$2$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return MainActivityKt$TerminalTabContent$19$1$2$1$2.AnonymousClass2.invoke$lambda$6$lambda$3$lambda$2(sessionInfo, coroutineScope, mutableState, drawerState);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                IconKt.Icon-ww6aTOc(visibility, "Preview", ClickableKt.clickable-XHw0xAI$default(modifier, false, (String) null, (Role) null, (Function0) objRememberedValue, 7, (Object) null), jM1198copywmQWz5c$default, composer, 3120, 0);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(10)), composer, 6);
                ImageVector close = CloseKt.getClose(Icons.INSTANCE.getDefault());
                long jM1198copywmQWz5c$default2 = Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.3f, 0.0f, 0.0f, 0.0f, 14, null);
                Modifier modifier2 = SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(f));
                composer.startReplaceGroup(2096043424);
                boolean zChangedInstance = composer.changedInstance(coroutineScope) | composer.changedInstance(hermesHudRepository) | composer.changed(sessionInfo);
                Object objRememberedValue2 = composer.rememberedValue();
                if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = new Function0() { // from class: com.hermes.android.MainActivityKt$TerminalTabContent$19$1$2$1$2$2$$ExternalSyntheticLambda1
                        public final Object invoke() {
                            return MainActivityKt$TerminalTabContent$19$1$2$1$2.AnonymousClass2.invoke$lambda$6$lambda$5$lambda$4(coroutineScope, hermesHudRepository, sessionInfo, mutableIntState);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue2);
                }
                composer.endReplaceGroup();
                IconKt.Icon-ww6aTOc(close, "Delete", ClickableKt.clickable-XHw0xAI$default(modifier2, false, (String) null, (Role) null, (Function0) objRememberedValue2, 7, (Object) null), jM1198copywmQWz5c$default2, composer, 3120, 0);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$6$lambda$3$lambda$2(HermesHudRepository.SessionInfo sessionInfo, CoroutineScope coroutineScope, MutableState mutableState, DrawerState drawerState) {
            mutableState.setValue(sessionInfo.getId());
            BuildersKt.launch$default(coroutineScope, (CoroutineContext) null, (CoroutineStart) null, new MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$2$1$1(drawerState, null), 3, (Object) null);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$6$lambda$5$lambda$4(CoroutineScope coroutineScope, HermesHudRepository hermesHudRepository, HermesHudRepository.SessionInfo sessionInfo, MutableIntState mutableIntState) {
            BuildersKt.launch$default(coroutineScope, Dispatchers.getIO(), (CoroutineStart) null, new MainActivityKt$TerminalTabContent$19$1$2$1$2$2$1$3$1$1(hermesHudRepository, sessionInfo, mutableIntState, null), 2, (Object) null);
            return Unit.INSTANCE;
        }
    }
}
