package com.hermes.android.pairing;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CheckCircleKt;
import androidx.compose.material.icons.filled.PhoneAndroidKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.CardDefaults;
import androidx.compose.material3.CardElevation;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Dp;
import com.google.firebase.encoders.json.BuildConfig;
import com.google.zxing.WriterException;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.pairing.PairingScreenKt;
import com.hermes.android.ui.QrCodeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: PairingScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\u001a3\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010\u0007¨\u0006\b²\u0006\n\u0010\t\u001a\u00020\nX\u008a\u0084\u0002"}, d2 = {"PairingScreen", BuildConfig.FLAVOR, "viewModel", "Lcom/hermes/android/pairing/PairingViewModel;", "onBack", "Lkotlin/Function0;", "onConfigReceived", "(Lcom/hermes/android/pairing/PairingViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V", "app_release", "state", "Lcom/hermes/android/pairing/PairingUiState;"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class PairingScreenKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit PairingScreen$lambda$7(PairingViewModel pairingViewModel, Function0 function0, Function0 function02, int i, int i2, Composer composer, int i3) {
        PairingScreen(pairingViewModel, function0, function02, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void PairingScreen(final PairingViewModel pairingViewModel, final Function0<Unit> function0, Function0<Unit> function02, Composer composer, final int i, final int i2) {
        int i3;
        Function0<Unit> function03;
        Function0<Unit> function04;
        State stateCollectAsState;
        boolean zChangedInstance;
        Object objRememberedValue;
        boolean zChanged;
        PairingScreenKt$PairingScreen$3$1 pairingScreenKt$PairingScreen$3$1RememberedValue;
        Function0<Unit> function05;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Intrinsics.checkNotNullParameter(pairingViewModel, "viewModel");
        Intrinsics.checkNotNullParameter(function0, "onBack");
        Composer composerStartRestartGroup = composer.startRestartGroup(-789772916);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changedInstance(pairingViewModel) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(function0) ? 32 : 16;
        }
        int i4 = i2 & 4;
        if (i4 == 0) {
            if ((i & 384) == 0) {
                function03 = function02;
                i3 |= composerStartRestartGroup.changedInstance(function03) ? 256 : 128;
            }
            if ((i3 & 147) == 146 || !composerStartRestartGroup.getSkipping()) {
                if (i4 == 0) {
                    composerStartRestartGroup.startReplaceGroup(887928950);
                    Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = new Function0() { // from class: com.hermes.android.pairing.PairingScreenKt$$ExternalSyntheticLambda0
                            public final Object invoke() {
                                return Unit.INSTANCE;
                            }
                        };
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    function04 = (Function0) objRememberedValue2;
                } else {
                    function04 = function03;
                }
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-789772916, i3, -1, "com.hermes.android.pairing.PairingScreen (PairingScreen.kt:30)");
                }
                stateCollectAsState = SnapshotStateKt.collectAsState(pairingViewModel.getState(), (CoroutineContext) null, composerStartRestartGroup, 0, 1);
                Unit unit = Unit.INSTANCE;
                composerStartRestartGroup.startReplaceGroup(887933000);
                zChangedInstance = composerStartRestartGroup.changedInstance(pairingViewModel);
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function1() { // from class: com.hermes.android.pairing.PairingScreenKt$$ExternalSyntheticLambda1
                        public final Object invoke(Object obj) {
                            return PairingScreenKt.PairingScreen$lambda$5$lambda$4(pairingViewModel, (DisposableEffectScope) obj);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                EffectsKt.DisposableEffect(unit, (Function1) objRememberedValue, composerStartRestartGroup, 6);
                Boolean boolValueOf = Boolean.valueOf(PairingScreen$lambda$2(stateCollectAsState).getConfigReceived());
                composerStartRestartGroup.startReplaceGroup(887937459);
                zChanged = ((i3 & 896) != 256) | composerStartRestartGroup.changed(stateCollectAsState);
                pairingScreenKt$PairingScreen$3$1RememberedValue = composerStartRestartGroup.rememberedValue();
                if (!zChanged || pairingScreenKt$PairingScreen$3$1RememberedValue == Composer.Companion.getEmpty()) {
                    pairingScreenKt$PairingScreen$3$1RememberedValue = new PairingScreenKt$PairingScreen$3$1(function04, stateCollectAsState, null);
                    composerStartRestartGroup.updateRememberedValue(pairingScreenKt$PairingScreen$3$1RememberedValue);
                }
                composerStartRestartGroup.endReplaceGroup();
                EffectsKt.LaunchedEffect(boolValueOf, (Function2) pairingScreenKt$PairingScreen$3$1RememberedValue, composerStartRestartGroup, 0);
                function05 = function04;
                ScaffoldKt.Scaffold-TvnljyQ((Modifier) null, ComposableLambdaKt.rememberComposableLambda(2029518920, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.PairingScreenKt.PairingScreen.4
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer2, int i5) {
                        if ((i5 & 3) != 2 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(2029518920, i5, -1, "com.hermes.android.pairing.PairingScreen.<anonymous> (PairingScreen.kt:48)");
                            }
                            Function2<Composer, Integer, Unit> function2M27getLambda1$app_release = ComposableSingletons$PairingScreenKt.INSTANCE.m27getLambda1$app_release();
                            final Function0<Unit> function06 = function0;
                            AppBarKt.TopAppBar-GHTll3U(function2M27getLambda1$app_release, (Modifier) null, ComposableLambdaKt.rememberComposableLambda(-1222741874, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.PairingScreenKt.PairingScreen.4.1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                    invoke((Composer) obj, ((Number) obj2).intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer composer3, int i6) {
                                    if ((i6 & 3) != 2 || !composer3.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(-1222741874, i6, -1, "com.hermes.android.pairing.PairingScreen.<anonymous>.<anonymous> (PairingScreen.kt:51)");
                                        }
                                        IconButtonKt.IconButton(function06, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$PairingScreenKt.INSTANCE.m28getLambda2$app_release(), composer3, 196608, 30);
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    composer3.skipToGroupEnd();
                                }
                            }, composer2, 54), (Function3) null, 0.0f, (WindowInsets) null, (TopAppBarColors) null, (TopAppBarScrollBehavior) null, composer2, 390, 250);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer2.skipToGroupEnd();
                    }
                }, composerStartRestartGroup, 54), (Function2) null, (Function2) null, (Function2) null, 0, 0L, 0L, (WindowInsets) null, ComposableLambdaKt.rememberComposableLambda(-1399527907, true, new AnonymousClass5(pairingViewModel, function0, stateCollectAsState), composerStartRestartGroup, 54), composerStartRestartGroup, 805306416, 509);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
            } else {
                composerStartRestartGroup.skipToGroupEnd();
                function05 = function03;
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup == null) {
                final Function0<Unit> function06 = function05;
                scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.pairing.PairingScreenKt$$ExternalSyntheticLambda2
                    public final Object invoke(Object obj, Object obj2) {
                        return PairingScreenKt.PairingScreen$lambda$7(pairingViewModel, function0, function06, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                    }
                });
                return;
            }
            return;
        }
        i3 |= 384;
        function03 = function02;
        if ((i3 & 147) == 146) {
            if (i4 == 0) {
            }
            if (ComposerKt.isTraceInProgress()) {
            }
            stateCollectAsState = SnapshotStateKt.collectAsState(pairingViewModel.getState(), (CoroutineContext) null, composerStartRestartGroup, 0, 1);
            Unit unit2 = Unit.INSTANCE;
            composerStartRestartGroup.startReplaceGroup(887933000);
            zChangedInstance = composerStartRestartGroup.changedInstance(pairingViewModel);
            objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (!zChangedInstance) {
                objRememberedValue = new Function1() { // from class: com.hermes.android.pairing.PairingScreenKt$$ExternalSyntheticLambda1
                    public final Object invoke(Object obj) {
                        return PairingScreenKt.PairingScreen$lambda$5$lambda$4(pairingViewModel, (DisposableEffectScope) obj);
                    }
                };
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                composerStartRestartGroup.endReplaceGroup();
                EffectsKt.DisposableEffect(unit2, (Function1) objRememberedValue, composerStartRestartGroup, 6);
                Boolean boolValueOf2 = Boolean.valueOf(PairingScreen$lambda$2(stateCollectAsState).getConfigReceived());
                composerStartRestartGroup.startReplaceGroup(887937459);
                zChanged = ((i3 & 896) != 256) | composerStartRestartGroup.changed(stateCollectAsState);
                pairingScreenKt$PairingScreen$3$1RememberedValue = composerStartRestartGroup.rememberedValue();
                if (!zChanged) {
                    pairingScreenKt$PairingScreen$3$1RememberedValue = new PairingScreenKt$PairingScreen$3$1(function04, stateCollectAsState, null);
                    composerStartRestartGroup.updateRememberedValue(pairingScreenKt$PairingScreen$3$1RememberedValue);
                    composerStartRestartGroup.endReplaceGroup();
                    EffectsKt.LaunchedEffect(boolValueOf2, (Function2) pairingScreenKt$PairingScreen$3$1RememberedValue, composerStartRestartGroup, 0);
                    function05 = function04;
                    ScaffoldKt.Scaffold-TvnljyQ((Modifier) null, ComposableLambdaKt.rememberComposableLambda(2029518920, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.PairingScreenKt.PairingScreen.4
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer2, int i5) {
                            if ((i5 & 3) != 2 || !composer2.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(2029518920, i5, -1, "com.hermes.android.pairing.PairingScreen.<anonymous> (PairingScreen.kt:48)");
                                }
                                Function2<Composer, Integer, Unit> function2M27getLambda1$app_release = ComposableSingletons$PairingScreenKt.INSTANCE.m27getLambda1$app_release();
                                final Function0<Unit> function062 = function0;
                                AppBarKt.TopAppBar-GHTll3U(function2M27getLambda1$app_release, (Modifier) null, ComposableLambdaKt.rememberComposableLambda(-1222741874, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.PairingScreenKt.PairingScreen.4.1
                                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                                        invoke((Composer) obj, ((Number) obj2).intValue());
                                        return Unit.INSTANCE;
                                    }

                                    public final void invoke(Composer composer3, int i6) {
                                        if ((i6 & 3) != 2 || !composer3.getSkipping()) {
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(-1222741874, i6, -1, "com.hermes.android.pairing.PairingScreen.<anonymous>.<anonymous> (PairingScreen.kt:51)");
                                            }
                                            IconButtonKt.IconButton(function062, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$PairingScreenKt.INSTANCE.m28getLambda2$app_release(), composer3, 196608, 30);
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                                return;
                                            }
                                            return;
                                        }
                                        composer3.skipToGroupEnd();
                                    }
                                }, composer2, 54), (Function3) null, 0.0f, (WindowInsets) null, (TopAppBarColors) null, (TopAppBarScrollBehavior) null, composer2, 390, 250);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            composer2.skipToGroupEnd();
                        }
                    }, composerStartRestartGroup, 54), (Function2) null, (Function2) null, (Function2) null, 0, 0L, 0L, (WindowInsets) null, ComposableLambdaKt.rememberComposableLambda(-1399527907, true, new AnonymousClass5(pairingViewModel, function0, stateCollectAsState), composerStartRestartGroup, 54), composerStartRestartGroup, 805306416, 509);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                }
            }
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup == null) {
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.pairing.PairingScreenKt$PairingScreen$5, reason: invalid class name */
    /* JADX INFO: compiled from: PairingScreen.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    static final class AnonymousClass5 implements Function3<PaddingValues, Composer, Integer, Unit> {
        final /* synthetic */ Function0<Unit> $onBack;
        final /* synthetic */ State<PairingUiState> $state$delegate;
        final /* synthetic */ PairingViewModel $viewModel;

        AnonymousClass5(PairingViewModel pairingViewModel, Function0<Unit> function0, State<PairingUiState> state) {
            this.$viewModel = pairingViewModel;
            this.$onBack = function0;
            this.$state$delegate = state;
        }

        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) throws WriterException {
            invoke((PaddingValues) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(PaddingValues paddingValues, Composer composer, int i) throws WriterException {
            int i2;
            int i3;
            float f;
            Object obj;
            Intrinsics.checkNotNullParameter(paddingValues, "padding");
            if ((i & 6) == 0) {
                i2 = i | (composer.changed(paddingValues) ? 4 : 2);
            } else {
                i2 = i;
            }
            if ((i2 & 19) != 18 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1399527907, i2, -1, "com.hermes.android.pairing.PairingScreen.<anonymous> (PairingScreen.kt:58)");
                }
                float f2 = 16;
                Modifier modifier = PaddingKt.padding-3ABfNKs(ScrollKt.verticalScroll$default(PaddingKt.padding(SizeKt.fillMaxSize$default(Modifier.Companion, 0.0f, 1, (Object) null), paddingValues), ScrollKt.rememberScrollState(0, composer, 0, 1), false, (FlingBehavior) null, false, 14, (Object) null), Dp.constructor-impl(f2));
                Alignment.Horizontal centerHorizontally = Alignment.Companion.getCenterHorizontally();
                Arrangement.Vertical vertical = Arrangement.INSTANCE.spacedBy-0680j_4(Dp.constructor-impl(f2));
                final PairingViewModel pairingViewModel = this.$viewModel;
                final Function0<Unit> function0 = this.$onBack;
                final State<PairingUiState> state = this.$state$delegate;
                ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(vertical, centerHorizontally, composer, 54);
                ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
                Function0 constructor = ComposeUiNode.Companion.getConstructor();
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
                Composer composer2 = Updater.constructor-impl(composer);
                Updater.set-impl(composer2, measurePolicyColumnMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                Updater.set-impl(composer2, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                Function2 setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                if (composer2.getInserting() || !Intrinsics.areEqual(composer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                    composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                    composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                }
                Updater.set-impl(composer2, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                ComposerKt.sourceInformationMarkerStart(composer, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
                if (!PairingScreenKt.PairingScreen$lambda$2(state).isRunning()) {
                    composer.startReplaceGroup(1561776541);
                    IconKt.Icon-ww6aTOc(PhoneAndroidKt.getPhoneAndroid(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.Companion, Dp.constructor-impl(64)), MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimary-0d7_KjU(), composer, 432, 0);
                    TextKt.Text--4IGK_g("Web Pairing", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography(composer, MaterialTheme.$stable).getHeadlineSmall(), composer, 6, 0, 65534);
                    TextKt.Text--4IGK_g("Start a temporary web server on this device. Open the URL on your phone or computer to configure API keys comfortably.", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getOnSurfaceVariant-0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, TextAlign.box-impl(TextAlign.Companion.getCenter-e0LSkKk()), 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography(composer, MaterialTheme.$stable).getBodyMedium(), composer, 6, 0, 65018);
                    composer.startReplaceGroup(743142468);
                    if (StringsKt.isBlank(PairingScreenKt.PairingScreen$lambda$2(state).getError())) {
                        i3 = 1;
                        f = 0.0f;
                        obj = null;
                    } else {
                        i3 = 1;
                        f = 0.0f;
                        obj = null;
                        CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), (Shape) null, CardDefaults.INSTANCE.cardColors-ro_MJ88(MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getErrorContainer-0d7_KjU(), 0L, 0L, 0L, composer, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.rememberComposableLambda(722230651, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.PairingScreenKt$PairingScreen$5$1$1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4) {
                                invoke((ColumnScope) obj2, (Composer) obj3, ((Number) obj4).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(ColumnScope columnScope2, Composer composer3, int i4) {
                                Intrinsics.checkNotNullParameter(columnScope2, "$this$Card");
                                if ((i4 & 17) != 16 || !composer3.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(722230651, i4, -1, "com.hermes.android.pairing.PairingScreen.<anonymous>.<anonymous>.<anonymous> (PairingScreen.kt:92)");
                                    }
                                    TextKt.Text--4IGK_g(PairingScreenKt.PairingScreen$lambda$2(state).getError(), PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16)), MaterialTheme.INSTANCE.getColorScheme(composer3, MaterialTheme.$stable).getOnErrorContainer-0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 48, 0, 131064);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer3.skipToGroupEnd();
                            }
                        }, composer, 54), composer, 196614, 26);
                    }
                    composer.endReplaceGroup();
                    composer.startReplaceGroup(743162696);
                    boolean zChangedInstance = composer.changedInstance(pairingViewModel);
                    Object objRememberedValue = composer.rememberedValue();
                    if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                        objRememberedValue = (KFunction) new PairingScreenKt$PairingScreen$5$1$2$1(pairingViewModel);
                        composer.updateRememberedValue(objRememberedValue);
                    }
                    composer.endReplaceGroup();
                    ButtonKt.Button((KFunction) objRememberedValue, SizeKt.fillMaxWidth$default(Modifier.Companion, f, i3, obj), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$PairingScreenKt.INSTANCE.m29getLambda3$app_release(), composer, 805306416, 508);
                    composer.endReplaceGroup();
                } else {
                    composer.startReplaceGroup(1563657249);
                    TextKt.Text--4IGK_g("Scan with your phone", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography(composer, MaterialTheme.$stable).getTitleLarge(), composer, 6, 0, 65534);
                    QrCodeKt.m63QrCodeuFdPcIQ(PairingScreenKt.PairingScreen$lambda$2(state).getUrl(), Dp.constructor-impl(280), null, composer, 48, 4);
                    float f3 = 12;
                    CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f3)), CardDefaults.INSTANCE.cardColors-ro_MJ88(MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getSurfaceVariant-0d7_KjU(), 0L, 0L, 0L, composer, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.rememberComposableLambda(-1762508887, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.PairingScreenKt$PairingScreen$5$1$3
                        public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4) {
                            invoke((ColumnScope) obj2, (Composer) obj3, ((Number) obj4).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(ColumnScope columnScope2, Composer composer3, int i4) {
                            Intrinsics.checkNotNullParameter(columnScope2, "$this$Card");
                            if ((i4 & 17) != 16 || !composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1762508887, i4, -1, "com.hermes.android.pairing.PairingScreen.<anonymous>.<anonymous>.<anonymous> (PairingScreen.kt:120)");
                                }
                                Modifier modifier2 = PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16));
                                State<PairingUiState> state2 = state;
                                ComposerKt.sourceInformationMarkerStart(composer3, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                                MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer3, 0);
                                ComposerKt.sourceInformationMarkerStart(composer3, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifier2);
                                Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
                                ComposerKt.sourceInformationMarkerStart(composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                if (!(composer3.getApplier() instanceof Applier)) {
                                    ComposablesKt.invalidApplier();
                                }
                                composer3.startReusableNode();
                                if (composer3.getInserting()) {
                                    composer3.createNode(constructor2);
                                } else {
                                    composer3.useNode();
                                }
                                Composer composer4 = Updater.constructor-impl(composer3);
                                Updater.set-impl(composer4, measurePolicyColumnMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                                Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                                Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                                if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                    composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                                    composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                                }
                                Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                                ComposerKt.sourceInformationMarkerStart(composer3, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                                ColumnScope columnScope3 = ColumnScopeInstance.INSTANCE;
                                TextKt.Text--4IGK_g("Or open this URL in a browser:", (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer3, MaterialTheme.$stable).getOnSurfaceVariant-0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getBodySmall(), composer3, 6, 0, 65530);
                                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(4)), composer3, 6);
                                TextKt.Text--4IGK_g(PairingScreenKt.PairingScreen$lambda$2(state2).getUrl(), (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer3, MaterialTheme.$stable).getPrimary-0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, TextStyle.copy-p1EtxEg$default(MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getTitleMedium(), 0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, FontFamily.Companion.getMonospace(), (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777183, (Object) null), composer3, 0, 0, 65530);
                                ComposerKt.sourceInformationMarkerEnd(composer3);
                                composer3.endNode();
                                ComposerKt.sourceInformationMarkerEnd(composer3);
                                ComposerKt.sourceInformationMarkerEnd(composer3);
                                ComposerKt.sourceInformationMarkerEnd(composer3);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            composer3.skipToGroupEnd();
                        }
                    }, composer, 54), composer, 196614, 24);
                    composer.startReplaceGroup(743216278);
                    if (PairingScreenKt.PairingScreen$lambda$2(state).getConfigReceived()) {
                        CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), (Shape) null, CardDefaults.INSTANCE.cardColors-ro_MJ88(MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getPrimaryContainer-0d7_KjU(), 0L, 0L, 0L, composer, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableLambdaKt.rememberComposableLambda(771627588, true, new Function3<ColumnScope, Composer, Integer, Unit>() { // from class: com.hermes.android.pairing.PairingScreenKt$PairingScreen$5$1$4
                            public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4) {
                                invoke((ColumnScope) obj2, (Composer) obj3, ((Number) obj4).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(ColumnScope columnScope2, Composer composer3, int i4) {
                                Intrinsics.checkNotNullParameter(columnScope2, "$this$Card");
                                if ((i4 & 17) != 16 || !composer3.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(771627588, i4, -1, "com.hermes.android.pairing.PairingScreen.<anonymous>.<anonymous>.<anonymous> (PairingScreen.kt:144)");
                                    }
                                    Modifier modifier2 = PaddingKt.padding-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16));
                                    Alignment.Vertical centerVertically = Alignment.Companion.getCenterVertically();
                                    State<PairingUiState> state2 = state;
                                    ComposerKt.sourceInformationMarkerStart(composer3, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                                    MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer3, 48);
                                    ComposerKt.sourceInformationMarkerStart(composer3, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                                    int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifier2);
                                    Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
                                    ComposerKt.sourceInformationMarkerStart(composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!(composer3.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor2);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composer4 = Updater.constructor-impl(composer3);
                                    Updater.set-impl(composer4, measurePolicyRowMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                                    Updater.set-impl(composer4, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                                    Function2 setCompositeKeyHash2 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                                    if (composer4.getInserting() || !Intrinsics.areEqual(composer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                                        composer4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                                        composer4.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                                    }
                                    Updater.set-impl(composer4, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                                    ComposerKt.sourceInformationMarkerStart(composer3, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                                    RowScope rowScope = RowScopeInstance.INSTANCE;
                                    IconKt.Icon-ww6aTOc(CheckCircleKt.getCheckCircle(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer3, MaterialTheme.$stable).getSecondary-0d7_KjU(), composer3, 48, 4);
                                    SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer3, 6);
                                    ComposerKt.sourceInformationMarkerStart(composer3, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                                    Modifier modifier3 = Modifier.Companion;
                                    MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer3, 0);
                                    ComposerKt.sourceInformationMarkerStart(composer3, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                                    CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifier3);
                                    Function0 constructor3 = ComposeUiNode.Companion.getConstructor();
                                    ComposerKt.sourceInformationMarkerStart(composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                                    if (!(composer3.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer3.startReusableNode();
                                    if (composer3.getInserting()) {
                                        composer3.createNode(constructor3);
                                    } else {
                                        composer3.useNode();
                                    }
                                    Composer composer5 = Updater.constructor-impl(composer3);
                                    Updater.set-impl(composer5, measurePolicyColumnMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                                    Updater.set-impl(composer5, currentCompositionLocalMap3, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                                    Function2 setCompositeKeyHash3 = ComposeUiNode.Companion.getSetCompositeKeyHash();
                                    if (composer5.getInserting() || !Intrinsics.areEqual(composer5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                                        composer5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                                        composer5.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
                                    }
                                    Updater.set-impl(composer5, modifierMaterializeModifier3, ComposeUiNode.Companion.getSetModifier());
                                    ComposerKt.sourceInformationMarkerStart(composer3, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                                    ColumnScope columnScope3 = ColumnScopeInstance.INSTANCE;
                                    TextKt.Text--4IGK_g("Configuration received!", (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getTitleSmall(), composer3, 6, 0, 65534);
                                    TextKt.Text--4IGK_g(PairingScreenKt.PairingScreen$lambda$2(state2).getLastEvent(), (Modifier) null, MaterialTheme.INSTANCE.getColorScheme(composer3, MaterialTheme.$stable).getOnSurfaceVariant-0d7_KjU(), 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, MaterialTheme.INSTANCE.getTypography(composer3, MaterialTheme.$stable).getBodySmall(), composer3, 0, 0, 65530);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    composer3.endNode();
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    composer3.endNode();
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer3.skipToGroupEnd();
                            }
                        }, composer, 54), composer, 196614, 26);
                    }
                    composer.endReplaceGroup();
                    CardKt.Card(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(f3)), CardDefaults.INSTANCE.cardColors-ro_MJ88(MaterialTheme.INSTANCE.getColorScheme(composer, MaterialTheme.$stable).getSurfaceVariant-0d7_KjU(), 0L, 0L, 0L, composer, CardDefaults.$stable << 12, 14), (CardElevation) null, (BorderStroke) null, ComposableSingletons$PairingScreenKt.INSTANCE.m30getLambda4$app_release(), composer, 196614, 24);
                    composer.startReplaceGroup(743303545);
                    boolean zChangedInstance2 = composer.changedInstance(pairingViewModel) | composer.changed(function0);
                    Object objRememberedValue2 = composer.rememberedValue();
                    if (zChangedInstance2 || objRememberedValue2 == Composer.Companion.getEmpty()) {
                        objRememberedValue2 = new Function0() { // from class: com.hermes.android.pairing.PairingScreenKt$PairingScreen$5$$ExternalSyntheticLambda0
                            public final Object invoke() {
                                return PairingScreenKt.AnonymousClass5.invoke$lambda$3$lambda$2$lambda$1(pairingViewModel, function0);
                            }
                        };
                        composer.updateRememberedValue(objRememberedValue2);
                    }
                    composer.endReplaceGroup();
                    ButtonKt.OutlinedButton((Function0) objRememberedValue2, SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$PairingScreenKt.INSTANCE.m31getLambda5$app_release(), composer, 805306416, 508);
                    composer.endReplaceGroup();
                }
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
        public static final Unit invoke$lambda$3$lambda$2$lambda$1(PairingViewModel pairingViewModel, Function0 function0) {
            pairingViewModel.stopServer();
            function0.invoke();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PairingUiState PairingScreen$lambda$2(State<PairingUiState> state) {
        return (PairingUiState) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult PairingScreen$lambda$5$lambda$4(final PairingViewModel pairingViewModel, DisposableEffectScope disposableEffectScope) {
        Intrinsics.checkNotNullParameter(disposableEffectScope, "$this$DisposableEffect");
        return new DisposableEffectResult() { // from class: com.hermes.android.pairing.PairingScreenKt$PairingScreen$lambda$5$lambda$4$$inlined$onDispose$1
            public void dispose() {
                pairingViewModel.stopServer();
            }
        };
    }
}
