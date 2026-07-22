package com.hermes.android.ui;

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
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.AndroidAlertDialog_androidKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.ChipKt;
import androidx.compose.material3.FilterChipDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.SelectableChipElevation;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.DialogProperties;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.R;
import com.hermes.android.ui.WebKeyDialogKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: WebKeyDialog.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u001aS\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u000326\u0010\u0004\u001a2\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00010\u0005H\u0007¢\u0006\u0002\u0010\u000b¨\u0006\f²\u0006\n\u0010\r\u001a\u00020\u000eX\u008a\u008e\u0002²\u0006\n\u0010\u000f\u001a\u00020\u0006X\u008a\u008e\u0002"}, d2 = {"WebKeyDialog", BuildConfig.FLAVOR, "onDismiss", "Lkotlin/Function0;", "onSave", "Lkotlin/Function2;", BuildConfig.FLAVOR, "Lkotlin/ParameterName;", AppMeasurementSdk.ConditionalUserProperty.NAME, "envVar", "apiKey", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "app_release", "selected", "Lcom/hermes/android/ui/WebSearchService;", "key"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class WebKeyDialogKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit WebKeyDialog$lambda$7(Function0 function0, Function2 function2, int i, Composer composer, int i2) {
        WebKeyDialog(function0, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1));
        return Unit.INSTANCE;
    }

    public static final void WebKeyDialog(final Function0<Unit> function0, final Function2<? super String, ? super String, Unit> function2, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(function0, "onDismiss");
        Intrinsics.checkNotNullParameter(function2, "onSave");
        Composer composerStartRestartGroup = composer.startRestartGroup(2145198230);
        if ((i & 6) == 0) {
            i2 = (composerStartRestartGroup.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= composerStartRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i2 & 19) != 18 || !composerStartRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2145198230, i2, -1, "com.hermes.android.ui.WebKeyDialog (WebKeyDialog.kt:42)");
            }
            composerStartRestartGroup.startReplaceGroup(-2137883317);
            Object objRememberedValue = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = CollectionsKt.listOf(new WebSearchService[]{new WebSearchService("Tavily", "TAVILY_API_KEY"), new WebSearchService("Exa", "EXA_API_KEY"), new WebSearchService("Firecrawl", "FIRECRAWL_API_KEY")});
                composerStartRestartGroup.updateRememberedValue(objRememberedValue);
            }
            List list = (List) objRememberedValue;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-2137875904);
            Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                objRememberedValue2 = SnapshotStateKt.mutableStateOf$default(CollectionsKt.first(list), (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
            }
            MutableState mutableState = (MutableState) objRememberedValue2;
            composerStartRestartGroup.endReplaceGroup();
            composerStartRestartGroup.startReplaceGroup(-2137873966);
            Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
            if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                objRememberedValue3 = SnapshotStateKt.mutableStateOf$default(BuildConfig.FLAVOR, (SnapshotMutationPolicy) null, 2, (Object) null);
                composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
            }
            MutableState mutableState2 = (MutableState) objRememberedValue3;
            composerStartRestartGroup.endReplaceGroup();
            composer2 = composerStartRestartGroup;
            AndroidAlertDialog_androidKt.AlertDialog-Oix01E0(function0, ComposableLambdaKt.rememberComposableLambda(53589214, true, new AnonymousClass1(function2, mutableState, mutableState2), composerStartRestartGroup, 54), (Modifier) null, ComposableLambdaKt.rememberComposableLambda(-2088271264, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.WebKeyDialogKt.WebKeyDialog.2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i3) {
                    if ((i3 & 3) == 2 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-2088271264, i3, -1, "com.hermes.android.ui.WebKeyDialog.<anonymous> (WebKeyDialog.kt:91)");
                    }
                    ButtonKt.TextButton(function0, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$WebKeyDialogKt.INSTANCE.m43getLambda2$app_release(), composer3, 805306368, 510);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composerStartRestartGroup, 54), (Function2) null, ComposableSingletons$WebKeyDialogKt.INSTANCE.m44getLambda3$app_release(), ComposableLambdaKt.rememberComposableLambda(1141388963, true, new AnonymousClass3(list, mutableState, mutableState2), composerStartRestartGroup, 54), (Shape) null, 0L, 0L, 0L, 0L, 0.0f, (DialogProperties) null, composer2, (i2 & 14) | 1772592, 0, 16276);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composerStartRestartGroup.skipToGroupEnd();
            composer2 = composerStartRestartGroup;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.WebKeyDialogKt$$ExternalSyntheticLambda0
                public final Object invoke(Object obj, Object obj2) {
                    return WebKeyDialogKt.WebKeyDialog$lambda$7(function0, function2, i, (Composer) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WebSearchService WebKeyDialog$lambda$2(MutableState<WebSearchService> mutableState) {
        return (WebSearchService) ((State) mutableState).getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String WebKeyDialog$lambda$5(MutableState<String> mutableState) {
        return (String) ((State) mutableState).getValue();
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.WebKeyDialogKt$WebKeyDialog$3, reason: invalid class name */
    /* JADX INFO: compiled from: WebKeyDialog.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    static final class AnonymousClass3 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ MutableState<String> $key$delegate;
        final /* synthetic */ MutableState<WebSearchService> $selected$delegate;
        final /* synthetic */ List<WebSearchService> $services;

        AnonymousClass3(List<WebSearchService> list, MutableState<WebSearchService> mutableState, MutableState<String> mutableState2) {
            this.$services = list;
            this.$selected$delegate = mutableState;
            this.$key$delegate = mutableState2;
        }

        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            final MutableState<WebSearchService> mutableState;
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(1141388963, i, -1, "com.hermes.android.ui.WebKeyDialog.<anonymous> (WebKeyDialog.kt:57)");
                }
                List<WebSearchService> list = this.$services;
                MutableState<WebSearchService> mutableState2 = this.$selected$delegate;
                final MutableState<String> mutableState3 = this.$key$delegate;
                ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                Modifier modifier = Modifier.Companion;
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.Companion.getStart(), composer, 0);
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
                MutableState<WebSearchService> mutableState4 = mutableState2;
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.web_key_dialog_hint, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(16)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.web_key_service, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
                Composer composer3 = composer;
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer3, 6);
                boolean z = true;
                Modifier modifierHorizontalScroll$default = ScrollKt.horizontalScroll$default(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), ScrollKt.rememberScrollState(0, composer3, 0, 1), false, (FlingBehavior) null, false, 14, (Object) null);
                ComposerKt.sourceInformationMarkerStart(composer3, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.Companion.getTop(), composer3, 0);
                ComposerKt.sourceInformationMarkerStart(composer3, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifierHorizontalScroll$default);
                Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer3, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer3.createNode(constructor2);
                } else {
                    composer.useNode();
                }
                Composer composer4 = Updater.constructor-impl(composer);
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
                composer3.startReplaceGroup(1928555408);
                for (final WebSearchService webSearchService : list) {
                    boolean zAreEqual = Intrinsics.areEqual(WebKeyDialogKt.WebKeyDialog$lambda$2(mutableState4), webSearchService);
                    composer3.startReplaceGroup(-510540191);
                    boolean zChanged = composer3.changed(webSearchService);
                    Object objRememberedValue = composer.rememberedValue();
                    if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                        mutableState = mutableState4;
                        objRememberedValue = new Function0() { // from class: com.hermes.android.ui.WebKeyDialogKt$WebKeyDialog$3$$ExternalSyntheticLambda0
                            public final Object invoke() {
                                return WebKeyDialogKt.AnonymousClass3.invoke$lambda$6$lambda$3$lambda$2$lambda$1$lambda$0(webSearchService, mutableState);
                            }
                        };
                        composer3.updateRememberedValue(objRememberedValue);
                    } else {
                        mutableState = mutableState4;
                    }
                    composer.endReplaceGroup();
                    ChipKt.FilterChip(zAreEqual, (Function0) objRememberedValue, ComposableLambdaKt.rememberComposableLambda(-1470197534, z, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.WebKeyDialogKt$WebKeyDialog$3$1$1$1$2
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer5, int i2) {
                            if ((i2 & 3) == 2 && composer5.getSkipping()) {
                                composer5.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1470197534, i2, -1, "com.hermes.android.ui.WebKeyDialog.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (WebKeyDialog.kt:67)");
                            }
                            TextKt.Text--4IGK_g(webSearchService.getLabel(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer5, 0, 0, 131070);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, composer3, 54), PaddingKt.padding-qDBjuR0$default(Modifier.Companion, 0.0f, 0.0f, Dp.constructor-impl(8), 0.0f, 11, (Object) null), false, (Function2) null, (Function2) null, (Shape) null, FilterChipDefaults.INSTANCE.filterChipColors(composer3, FilterChipDefaults.$stable), (SelectableChipElevation) null, (BorderStroke) null, (MutableInteractionSource) null, composer, 3456, 0, 3824);
                    composer3 = composer;
                    mutableState4 = mutableState;
                    z = true;
                }
                composer.endReplaceGroup();
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(12)), composer, 6);
                String strWebKeyDialog$lambda$5 = WebKeyDialogKt.WebKeyDialog$lambda$5(mutableState3);
                VisualTransformation passwordVisualTransformation = new PasswordVisualTransformation((char) 0, 1, (DefaultConstructorMarker) null);
                Modifier modifier2 = SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(64));
                composer.startReplaceGroup(-423779651);
                Object objRememberedValue2 = composer.rememberedValue();
                if (objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new Function1() { // from class: com.hermes.android.ui.WebKeyDialogKt$WebKeyDialog$3$$ExternalSyntheticLambda1
                        public final Object invoke(Object obj) {
                            return WebKeyDialogKt.AnonymousClass3.invoke$lambda$6$lambda$5$lambda$4(mutableState3, (String) obj);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue2);
                }
                composer.endReplaceGroup();
                OutlinedTextFieldKt.OutlinedTextField(strWebKeyDialog$lambda$5, (Function1) objRememberedValue2, modifier2, false, false, (TextStyle) null, ComposableSingletons$WebKeyDialogKt.INSTANCE.m45getLambda4$app_release(), (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, false, passwordVisualTransformation, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, composer, 1573296, 12582912, 0, 8241080);
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
        public static final Unit invoke$lambda$6$lambda$3$lambda$2$lambda$1$lambda$0(WebSearchService webSearchService, MutableState mutableState) {
            WebKeyDialogKt.WebKeyDialog$lambda$3(mutableState, webSearchService);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$6$lambda$5$lambda$4(MutableState mutableState, String str) {
            Intrinsics.checkNotNullParameter(str, "it");
            WebKeyDialogKt.WebKeyDialog$lambda$6(mutableState, str);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.WebKeyDialogKt$WebKeyDialog$1, reason: invalid class name */
    /* JADX INFO: compiled from: WebKeyDialog.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    static final class AnonymousClass1 implements Function2<Composer, Integer, Unit> {
        final /* synthetic */ MutableState<String> $key$delegate;
        final /* synthetic */ Function2<String, String, Unit> $onSave;
        final /* synthetic */ MutableState<WebSearchService> $selected$delegate;

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function2<? super String, ? super String, Unit> function2, MutableState<WebSearchService> mutableState, MutableState<String> mutableState2) {
            this.$onSave = function2;
            this.$selected$delegate = mutableState;
            this.$key$delegate = mutableState2;
        }

        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            invoke((Composer) obj, ((Number) obj2).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Composer composer, int i) {
            if ((i & 3) != 2 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(53589214, i, -1, "com.hermes.android.ui.WebKeyDialog.<anonymous> (WebKeyDialog.kt:85)");
                }
                composer.startReplaceGroup(945438009);
                boolean zChanged = composer.changed(this.$onSave);
                final Function2<String, String, Unit> function2 = this.$onSave;
                final MutableState<WebSearchService> mutableState = this.$selected$delegate;
                final MutableState<String> mutableState2 = this.$key$delegate;
                Object objRememberedValue = composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.WebKeyDialogKt$WebKeyDialog$1$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return WebKeyDialogKt.AnonymousClass1.invoke$lambda$1$lambda$0(function2, mutableState, mutableState2);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                ButtonKt.TextButton((Function0) objRememberedValue, (Modifier) null, !StringsKt.isBlank(WebKeyDialogKt.WebKeyDialog$lambda$5(this.$key$delegate)), (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$WebKeyDialogKt.INSTANCE.m42getLambda1$app_release(), composer, 805306368, 506);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invoke$lambda$1$lambda$0(Function2 function2, MutableState mutableState, MutableState mutableState2) {
            function2.invoke(WebKeyDialogKt.WebKeyDialog$lambda$2(mutableState).getEnvVar(), StringsKt.trim(WebKeyDialogKt.WebKeyDialog$lambda$5(mutableState2)).toString());
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void WebKeyDialog$lambda$3(MutableState<WebSearchService> mutableState, WebSearchService webSearchService) {
        mutableState.setValue(webSearchService);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void WebKeyDialog$lambda$6(MutableState<String> mutableState, String str) {
        mutableState.setValue(str);
    }
}
