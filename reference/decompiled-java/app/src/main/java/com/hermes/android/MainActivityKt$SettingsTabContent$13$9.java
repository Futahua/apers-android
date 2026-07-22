package com.hermes.android;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
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
import androidx.compose.ui.unit.TextUnitKt;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import com.hermes.android.ui.ModelIdSuggestFieldKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$13$9 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<String> $apiKeyDialogInput$delegate;
    final /* synthetic */ MutableState<String> $baseUrlInput$delegate;
    final /* synthetic */ HermesConfigRepository.CustomProviderConfig $customExisting;
    final /* synthetic */ MutableState<String> $modelIdInput$delegate;
    final /* synthetic */ MutableState<List<String>> $modelSuggestions$delegate;
    final /* synthetic */ AiProvider $provider;
    final /* synthetic */ MutableState<Boolean> $showKey$delegate;

    MainActivityKt$SettingsTabContent$13$9(AiProvider aiProvider, MutableState<String> mutableState, MutableState<String> mutableState2, MutableState<List<String>> mutableState3, MutableState<String> mutableState4, MutableState<Boolean> mutableState5, HermesConfigRepository.CustomProviderConfig customProviderConfig) {
        this.$provider = aiProvider;
        this.$baseUrlInput$delegate = mutableState;
        this.$modelIdInput$delegate = mutableState2;
        this.$modelSuggestions$delegate = mutableState3;
        this.$apiKeyDialogInput$delegate = mutableState4;
        this.$showKey$delegate = mutableState5;
        this.$customExisting = customProviderConfig;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void invoke(Composer composer, int i) {
        HermesConfigRepository.CustomProviderConfig customProviderConfig;
        MutableState<Boolean> mutableState;
        MutableState<String> mutableState2;
        MutableState<List<String>> mutableState3;
        MutableState<String> mutableState4;
        final AiProvider aiProvider;
        Composer composer2;
        final AiProvider aiProvider2;
        float f;
        DefaultConstructorMarker defaultConstructorMarker;
        ?? r15;
        final MutableState<String> mutableState5;
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1059316552, i, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous> (MainActivity.kt:3234)");
        }
        Arrangement.Vertical vertical = Arrangement.INSTANCE.spacedBy-0680j_4(Dp.m3807constructorimpl(10));
        AiProvider aiProvider3 = this.$provider;
        final MutableState<String> mutableState6 = this.$baseUrlInput$delegate;
        MutableState<String> mutableState7 = this.$modelIdInput$delegate;
        MutableState<List<String>> mutableState8 = this.$modelSuggestions$delegate;
        MutableState<String> mutableState9 = this.$apiKeyDialogInput$delegate;
        MutableState<Boolean> mutableState10 = this.$showKey$delegate;
        HermesConfigRepository.CustomProviderConfig customProviderConfig2 = this.$customExisting;
        ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
        Modifier.Companion companion = Modifier.INSTANCE;
        MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(vertical, Alignment.INSTANCE.getStart(), composer, 6);
        ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
        CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, companion);
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
        Updater.m668setimpl(composerM661constructorimpl, measurePolicyColumnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
            composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
        }
        Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
        ComposerKt.sourceInformationMarkerStart(composer, -384784025, "C88@4444L9:Column.kt#2w3rfo");
        ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
        if (aiProvider3.isCustom()) {
            composer.startReplaceGroup(1625657495);
            String strSettingsTabContent$lambda$330$lambda$317 = MainActivityKt.SettingsTabContent$lambda$330$lambda$317(mutableState6);
            Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null);
            composer.startReplaceGroup(-1333029805);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function1() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$13$9$$ExternalSyntheticLambda0
                    public final Object invoke(Object obj) {
                        return MainActivityKt$SettingsTabContent$13$9.invoke$lambda$10$lambda$1$lambda$0(mutableState6, (String) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            customProviderConfig = customProviderConfig2;
            mutableState = mutableState10;
            mutableState2 = mutableState9;
            mutableState3 = mutableState8;
            aiProvider = aiProvider3;
            OutlinedTextFieldKt.OutlinedTextField(strSettingsTabContent$lambda$330$lambda$317, (Function1) objRememberedValue, modifierFillMaxWidth$default, false, false, (TextStyle) null, ComposableSingletons$MainActivityKt.INSTANCE.m4264getLambda34$app_release(), (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, composer, 1573296, 12582912, 0, 8257464);
            String strSettingsTabContent$lambda$330$lambda$322 = MainActivityKt.SettingsTabContent$lambda$330$lambda$322(mutableState7);
            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null);
            composer.startReplaceGroup(-1333020237);
            Object objRememberedValue2 = composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                mutableState5 = mutableState7;
                objRememberedValue2 = new Function1() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$13$9$$ExternalSyntheticLambda1
                    public final Object invoke(Object obj) {
                        return MainActivityKt$SettingsTabContent$13$9.invoke$lambda$10$lambda$3$lambda$2(mutableState5, (String) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue2);
            } else {
                mutableState5 = mutableState7;
            }
            composer.endReplaceGroup();
            mutableState4 = mutableState5;
            OutlinedTextFieldKt.OutlinedTextField(strSettingsTabContent$lambda$330$lambda$322, (Function1) objRememberedValue2, modifierFillMaxWidth$default2, false, false, (TextStyle) null, ComposableSingletons$MainActivityKt.INSTANCE.m4265getLambda35$app_release(), (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, composer, 1573296, 12582912, 0, 8257464);
            composer.endReplaceGroup();
        } else {
            customProviderConfig = customProviderConfig2;
            mutableState = mutableState10;
            mutableState2 = mutableState9;
            mutableState3 = mutableState8;
            mutableState4 = mutableState7;
            aiProvider = aiProvider3;
            if (StringsKt.isBlank(aiProvider.getBaseUrlEnvVar())) {
                composer2 = composer;
                composer2.startReplaceGroup(1626904036);
                composer.endReplaceGroup();
                composer2.startReplaceGroup(-1332991122);
                if (aiProvider.getAllowsCustomModel()) {
                    aiProvider2 = aiProvider;
                    f = 0.0f;
                    defaultConstructorMarker = null;
                    r15 = 1;
                } else {
                    String strSettingsTabContent$lambda$330$lambda$3222 = MainActivityKt.SettingsTabContent$lambda$330$lambda$322(mutableState4);
                    composer2.startReplaceGroup(-1332979661);
                    Object objRememberedValue3 = composer.rememberedValue();
                    if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                        final MutableState<String> mutableState11 = mutableState4;
                        objRememberedValue3 = new Function1() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$13$9$$ExternalSyntheticLambda3
                            public final Object invoke(Object obj) {
                                return MainActivityKt$SettingsTabContent$13$9.invoke$lambda$10$lambda$7$lambda$6(mutableState11, (String) obj);
                            }
                        };
                        composer2.updateRememberedValue(objRememberedValue3);
                    }
                    composer.endReplaceGroup();
                    aiProvider2 = aiProvider;
                    r15 = 1;
                    defaultConstructorMarker = null;
                    f = 0.0f;
                    ModelIdSuggestFieldKt.ModelIdSuggestField(strSettingsTabContent$lambda$330$lambda$3222, (Function1) objRememberedValue3, MainActivityKt.SettingsTabContent$lambda$330$lambda$325(mutableState3), ComposableSingletons$MainActivityKt.INSTANCE.m4267getLambda37$app_release(), ComposableLambdaKt.rememberComposableLambda(1551227307, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$13$9$1$6
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer3, int i2) {
                            if ((i2 & 3) == 2 && composer3.getSkipping()) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1551227307, i2, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:3265)");
                            }
                            TextKt.Text--4IGK_g(aiProvider2.getHermesDefaultModel(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 0, 0, 131070);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, composer2, 54), SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null), (Shape) null, (TextFieldColors) null, composer, 224304, 192);
                }
                composer.endReplaceGroup();
                if (StringsKt.isBlank(aiProvider2.getEnvVar())) {
                    composer.startReplaceGroup(1628270764);
                    String strSettingsTabContent$lambda$241 = MainActivityKt.SettingsTabContent$lambda$241(mutableState2);
                    Modifier modifierFillMaxWidth$default3 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, f, (int) r15, defaultConstructorMarker);
                    VisualTransformation none = MainActivityKt.SettingsTabContent$lambda$330$lambda$312(mutableState) ? VisualTransformation.INSTANCE.getNone() : new PasswordVisualTransformation((char) 0, r15, defaultConstructorMarker);
                    composer.startReplaceGroup(-1332941832);
                    Object objRememberedValue4 = composer.rememberedValue();
                    if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                        final MutableState<String> mutableState12 = mutableState2;
                        objRememberedValue4 = new Function1() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$13$9$$ExternalSyntheticLambda4
                            public final Object invoke(Object obj) {
                                return MainActivityKt$SettingsTabContent$13$9.invoke$lambda$10$lambda$9$lambda$8(mutableState12, (String) obj);
                            }
                        };
                        composer.updateRememberedValue(objRememberedValue4);
                    }
                    composer.endReplaceGroup();
                    final HermesConfigRepository.CustomProviderConfig customProviderConfig3 = customProviderConfig;
                    OutlinedTextFieldKt.OutlinedTextField(strSettingsTabContent$lambda$241, (Function1) objRememberedValue4, modifierFillMaxWidth$default3, false, false, (TextStyle) null, ComposableLambdaKt.rememberComposableLambda(1220226020, r15, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$13$9$1$8
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer3, int i2) {
                            if ((i2 & 3) == 2 && composer3.getSkipping()) {
                                composer3.skipToGroupEnd();
                                return;
                            }
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(1220226020, i2, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:3284)");
                            }
                            TextKt.Text--4IGK_g(aiProvider2.getKeyLabel(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 0, 0, 131070);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                            }
                        }
                    }, composer, 54), ComposableLambdaKt.rememberComposableLambda(-2058521149, r15, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$13$9$1$9
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                            invoke((Composer) obj, ((Number) obj2).intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer3, int i2) {
                            String keyHint;
                            if ((i2 & 3) != 2 || !composer3.getSkipping()) {
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2058521149, i2, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:3288)");
                                }
                                composer3.startReplaceGroup(-1179611397);
                                HermesConfigRepository.CustomProviderConfig customProviderConfig4 = customProviderConfig3;
                                if (customProviderConfig4 != null && customProviderConfig4.getHasApiKey()) {
                                    keyHint = StringResources_androidKt.stringResource(R.string.custom_key_keep_existing, composer3, 0);
                                } else {
                                    keyHint = aiProvider2.getKeyHint();
                                }
                                composer3.endReplaceGroup();
                                TextKt.Text--4IGK_g(keyHint, (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 0, 0, 131070);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                    return;
                                }
                                return;
                            }
                            composer3.skipToGroupEnd();
                        }
                    }, composer, 54), (Function2) null, ComposableLambdaKt.rememberComposableLambda(-26080895, r15, new MainActivityKt$SettingsTabContent$13$9$1$10(mutableState), composer, 54), (Function2) null, (Function2) null, (Function2) null, false, none, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, composer, 819462576, 12582912, 0, 8240440);
                    composer.endReplaceGroup();
                } else {
                    composer2.startReplaceGroup(1627737967);
                    TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.litertlm_hint, composer2, 0), (Modifier) null, ColorKt.Color(4287137960L), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(18), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
                    composer.endReplaceGroup();
                }
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                if (ComposerKt.isTraceInProgress()) {
                    return;
                }
                ComposerKt.traceEventEnd();
                return;
            }
            composer.startReplaceGroup(1626319748);
            String strSettingsTabContent$lambda$330$lambda$3172 = MainActivityKt.SettingsTabContent$lambda$330$lambda$317(mutableState6);
            Modifier modifierFillMaxWidth$default4 = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null);
            composer.startReplaceGroup(-1333003853);
            Object objRememberedValue5 = composer.rememberedValue();
            if (objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue5 = new Function1() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$13$9$$ExternalSyntheticLambda2
                    public final Object invoke(Object obj) {
                        return MainActivityKt$SettingsTabContent$13$9.invoke$lambda$10$lambda$5$lambda$4(mutableState6, (String) obj);
                    }
                };
                composer.updateRememberedValue(objRememberedValue5);
            }
            composer.endReplaceGroup();
            OutlinedTextFieldKt.OutlinedTextField(strSettingsTabContent$lambda$330$lambda$3172, (Function1) objRememberedValue5, modifierFillMaxWidth$default4, false, false, (TextStyle) null, ComposableSingletons$MainActivityKt.INSTANCE.m4266getLambda36$app_release(), ComposableLambdaKt.rememberComposableLambda(-82826261, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$13$9$1$4
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i2) {
                    if ((i2 & 3) == 2 && composer3.getSkipping()) {
                        composer3.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-82826261, i2, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:3252)");
                    }
                    TextKt.Text--4IGK_g(aiProvider.getDefaultBaseUrl(), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 0, 0, 131070);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }, composer, 54), (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, (Shape) null, (TextFieldColors) null, composer, 14156208, 12582912, 0, 8257336);
            composer.endReplaceGroup();
        }
        composer2 = composer;
        composer2.startReplaceGroup(-1332991122);
        if (aiProvider.getAllowsCustomModel()) {
        }
        composer.endReplaceGroup();
        if (StringsKt.isBlank(aiProvider2.getEnvVar())) {
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        composer.endNode();
        ComposerKt.sourceInformationMarkerEnd(composer);
        ComposerKt.sourceInformationMarkerEnd(composer);
        ComposerKt.sourceInformationMarkerEnd(composer);
        if (ComposerKt.isTraceInProgress()) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10$lambda$1$lambda$0(MutableState mutableState, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        mutableState.setValue(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10$lambda$3$lambda$2(MutableState mutableState, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        mutableState.setValue(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10$lambda$5$lambda$4(MutableState mutableState, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        mutableState.setValue(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10$lambda$7$lambda$6(MutableState mutableState, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        mutableState.setValue(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10$lambda$9$lambda$8(MutableState mutableState, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        mutableState.setValue(str);
        return Unit.INSTANCE;
    }
}
