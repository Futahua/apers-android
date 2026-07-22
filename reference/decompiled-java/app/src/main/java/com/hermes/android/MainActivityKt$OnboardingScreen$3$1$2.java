package com.hermes.android;

import androidx.compose.foundation.BorderStroke;
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
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.KeyboardActionScope;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowDropDownKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.SurfaceKt;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.hermes.android.data.AiProvider;
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
final class MainActivityKt$OnboardingScreen$3$1$2 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ String $apiBaseUrl;
    final /* synthetic */ String $apiKey;
    final /* synthetic */ String $apiModelId;
    final /* synthetic */ MutableState<List<String>> $modelSuggestions$delegate;
    final /* synthetic */ Function1<String, Unit> $onApiKeyChange;
    final /* synthetic */ Function1<String, Unit> $onBaseUrlChange;
    final /* synthetic */ Function1<String, Unit> $onModelIdChange;
    final /* synthetic */ Function1<AiProvider, Unit> $onOAuthSelected;
    final /* synthetic */ Function0<Unit> $onStartInstall;
    final /* synthetic */ AiProvider $selectedProvider;
    final /* synthetic */ MutableState<Boolean> $showKey$delegate;
    final /* synthetic */ MutableState<Boolean> $showProviderPicker$delegate;

    /* JADX WARN: Multi-variable type inference failed */
    MainActivityKt$OnboardingScreen$3$1$2(AiProvider aiProvider, String str, Function1<? super String, Unit> function1, String str2, Function1<? super String, Unit> function12, Function1<? super AiProvider, Unit> function13, Function0<Unit> function0, String str3, Function1<? super String, Unit> function14, MutableState<Boolean> mutableState, MutableState<List<String>> mutableState2, MutableState<Boolean> mutableState3) {
        this.$selectedProvider = aiProvider;
        this.$apiBaseUrl = str;
        this.$onBaseUrlChange = function1;
        this.$apiModelId = str2;
        this.$onModelIdChange = function12;
        this.$onOAuthSelected = function13;
        this.$onStartInstall = function0;
        this.$apiKey = str3;
        this.$onApiKeyChange = function14;
        this.$showProviderPicker$delegate = mutableState;
        this.$modelSuggestions$delegate = mutableState2;
        this.$showKey$delegate = mutableState3;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        final AiProvider aiProvider;
        Composer composer2;
        int i2;
        AiProvider aiProvider2;
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-494856044, i, -1, "com.hermes.android.OnboardingScreen.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:810)");
            }
            Modifier modifier = PaddingKt.padding-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(18));
            final AiProvider aiProvider3 = this.$selectedProvider;
            String str = this.$apiBaseUrl;
            Function1<String, Unit> function1 = this.$onBaseUrlChange;
            String str2 = this.$apiModelId;
            Function1<String, Unit> function12 = this.$onModelIdChange;
            final Function1<AiProvider, Unit> function13 = this.$onOAuthSelected;
            final Function0<Unit> function0 = this.$onStartInstall;
            String str3 = this.$apiKey;
            Function1<String, Unit> function14 = this.$onApiKeyChange;
            final MutableState<Boolean> mutableState = this.$showProviderPicker$delegate;
            MutableState<List<String>> mutableState2 = this.$modelSuggestions$delegate;
            MutableState<Boolean> mutableState3 = this.$showKey$delegate;
            ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, 0);
            ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
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
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.api_setup_title, composer, 0), (Modifier) null, MainActivityKt.TextPrimary, TextUnitKt.getSp(17), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 200064, 0, 131026);
            float f = 14;
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(f)), composer, 6);
            composer.startReplaceGroup(-399664774);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$3$1$2$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return MainActivityKt$OnboardingScreen$3$1$2.invoke$lambda$6$lambda$1$lambda$0(mutableState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            SurfaceKt.Surface-o_FOJdg((Function0) objRememberedValue, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null), false, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.m3807constructorimpl(12)), Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.1f, 0.0f, 0.0f, 0.0f, 14, null), 0L, 0.0f, 0.0f, (BorderStroke) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(412182323, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$3$1$2$1$2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i3) {
                    if ((i3 & 3) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(412182323, i3, -1, "com.hermes.android.OnboardingScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:826)");
                        }
                        Modifier modifier2 = PaddingKt.padding-VpY3zN4(Modifier.INSTANCE, Dp.m3807constructorimpl(16), Dp.m3807constructorimpl(14));
                        Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                        AiProvider aiProvider4 = aiProvider3;
                        ComposerKt.sourceInformationMarkerStart(composer3, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                        MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer3, 48);
                        ComposerKt.sourceInformationMarkerStart(composer3, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composer3.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer3, modifier2);
                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
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
                        Composer composerM661constructorimpl2 = Updater.m661constructorimpl(composer3);
                        Updater.m668setimpl(composerM661constructorimpl2, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m668setimpl(composerM661constructorimpl2, currentCompositionLocalMap2, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash2 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (composerM661constructorimpl2.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            composerM661constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                            composerM661constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
                        }
                        Updater.m668setimpl(composerM661constructorimpl2, modifierMaterializeModifier2, ComposeUiNode.INSTANCE.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer3, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                        Modifier modifierWeight$default = RowScope.weight$default(RowScopeInstance.INSTANCE, Modifier.INSTANCE, 1.0f, false, 2, (Object) null);
                        ComposerKt.sourceInformationMarkerStart(composer3, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
                        MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer3, 0);
                        ComposerKt.sourceInformationMarkerStart(composer3, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer3, 0);
                        CompositionLocalMap currentCompositionLocalMap3 = composer3.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer3, modifierWeight$default);
                        Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
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
                        Composer composerM661constructorimpl3 = Updater.m661constructorimpl(composer3);
                        Updater.m668setimpl(composerM661constructorimpl3, measurePolicyColumnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m668setimpl(composerM661constructorimpl3, currentCompositionLocalMap3, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash3 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                        if (composerM661constructorimpl3.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                            composerM661constructorimpl3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                            composerM661constructorimpl3.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
                        }
                        Updater.m668setimpl(composerM661constructorimpl3, modifierMaterializeModifier3, ComposeUiNode.INSTANCE.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composer3, -384784025, "C88@4444L9:Column.kt#2w3rfo");
                        ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
                        TextKt.Text--4IGK_g(aiProvider4.getName(), (Modifier) null, MainActivityKt.TextPrimary, TextUnitKt.getSp(15), (FontStyle) null, FontWeight.INSTANCE.getSemiBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 200064, 0, 131026);
                        TextKt.Text--4IGK_g(aiProvider4.getDescription(), (Modifier) null, MainActivityKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 3456, 0, 131058);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        composer3.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        IconKt.Icon-ww6aTOc(ArrowDropDownKt.getArrowDropDown(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, MainActivityKt.TextMuted, composer3, 3120, 4);
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
            }, composer, 54), composer, 24630, 6, 996);
            composer.startReplaceGroup(-399628101);
            if (aiProvider3.isCustom() || !StringsKt.isBlank(aiProvider3.getBaseUrlEnvVar())) {
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(10)), composer, 6);
                aiProvider = aiProvider3;
                composer2 = composer;
                i2 = 1;
                OutlinedTextFieldKt.OutlinedTextField(str, function1, SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null), false, false, (TextStyle) null, ComposableLambdaKt.rememberComposableLambda(-1964743607, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$3$1$2$1$3
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer3, int i3) {
                        if ((i3 & 3) != 2 || !composer3.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-1964743607, i3, -1, "com.hermes.android.OnboardingScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:846)");
                            }
                            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(aiProvider.isCustom() ? R.string.base_url_label : R.string.base_url_optional_label, composer3, 0), (Modifier) null, MainActivityKt.TextMuted, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 384, 0, 131066);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer3.skipToGroupEnd();
                    }
                }, composer2, 54), ComposableSingletons$MainActivityKt.INSTANCE.m4281getLambda5$app_release(), (Function2) null, (Function2) null, (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.m3807constructorimpl(f)), OutlinedTextFieldDefaults.INSTANCE.colors-0hiis_0(MainActivityKt.TextPrimary, MainActivityKt.TextPrimary, 0L, 0L, 0L, 0L, 0L, 0L, Color.INSTANCE.m1236getWhite0d7_KjU(), 0L, (TextSelectionColors) null, Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, null), MainActivityKt.GlassBorder, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, MainActivityKt.TextSecondary, MainActivityKt.TextMuted, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composer, 100663350, 432, 27648, 0, 3072, 2122311420, 4095), composer, 14156160, 12582912, 0, 1965880);
            } else {
                composer2 = composer;
                aiProvider = aiProvider3;
                i2 = 1;
            }
            composer.endReplaceGroup();
            composer2.startReplaceGroup(-399569410);
            if (aiProvider.isCustom() || aiProvider.getAllowsCustomModel()) {
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(8)), composer2, 6);
                aiProvider2 = aiProvider;
                ModelIdSuggestFieldKt.ModelIdSuggestField(str2, function12, MainActivityKt.OnboardingScreen$lambda$53(mutableState2), ComposableSingletons$MainActivityKt.INSTANCE.m4292getLambda6$app_release(), ComposableSingletons$MainActivityKt.INSTANCE.m4303getLambda7$app_release(), SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, i2, (Object) null), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.m3807constructorimpl(f)), OutlinedTextFieldDefaults.INSTANCE.colors-0hiis_0(MainActivityKt.TextPrimary, MainActivityKt.TextPrimary, 0L, 0L, 0L, 0L, 0L, 0L, Color.INSTANCE.m1236getWhite0d7_KjU(), 0L, (TextSelectionColors) null, Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, null), MainActivityKt.GlassBorder, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, MainActivityKt.TextSecondary, MainActivityKt.TextMuted, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composer, 100663350, 432, 27648, 0, 3072, 2122311420, 4095), composer, 224256, 0);
            } else {
                aiProvider2 = aiProvider;
            }
            composer.endReplaceGroup();
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(f)), composer, 6);
            if (!aiProvider2.isOAuth()) {
                final AiProvider aiProvider4 = aiProvider2;
                composer.startReplaceGroup(500842059);
                Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null);
                Shape shape = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.m3807constructorimpl(f));
                VisualTransformation none = MainActivityKt.OnboardingScreen$lambda$47(mutableState3) ? VisualTransformation.INSTANCE.getNone() : new PasswordVisualTransformation((char) 0, 1, null);
                TextFieldColors textFieldColors = OutlinedTextFieldDefaults.INSTANCE.colors-0hiis_0(MainActivityKt.TextPrimary, MainActivityKt.TextPrimary, 0L, 0L, 0L, 0L, 0L, 0L, Color.INSTANCE.m1236getWhite0d7_KjU(), 0L, (TextSelectionColors) null, Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.5f, 0.0f, 0.0f, 0.0f, 14, null), MainActivityKt.GlassBorder, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, MainActivityKt.TextSecondary, MainActivityKt.TextMuted, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composer, 100663350, 432, 27648, 0, 3072, 2122311420, 4095);
                KeyboardOptions keyboardOptions = new KeyboardOptions(0, (Boolean) null, 0, ImeAction.INSTANCE.m3463getDoneeUduSuo(), (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 119, (DefaultConstructorMarker) null);
                composer.startReplaceGroup(-399424463);
                boolean zChanged = composer.changed(function0);
                Object objRememberedValue2 = composer.rememberedValue();
                if (zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = new Function1() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$3$1$2$$ExternalSyntheticLambda2
                        public final Object invoke(Object obj) {
                            return MainActivityKt$OnboardingScreen$3$1$2.invoke$lambda$6$lambda$5$lambda$4(function0, (KeyboardActionScope) obj);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue2);
                }
                composer.endReplaceGroup();
                OutlinedTextFieldKt.OutlinedTextField(str3, function14, modifierFillMaxWidth$default, false, false, (TextStyle) null, ComposableLambdaKt.rememberComposableLambda(178122216, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$3$1$2$1$6
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
                            ComposerKt.traceEventStart(178122216, i3, -1, "com.hermes.android.OnboardingScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:918)");
                        }
                        TextKt.Text--4IGK_g(aiProvider4.getKeyLabel(), (Modifier) null, MainActivityKt.TextMuted, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 384, 0, 131066);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer, 54), ComposableLambdaKt.rememberComposableLambda(-470060887, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$3$1$2$1$7
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
                            ComposerKt.traceEventStart(-470060887, i3, -1, "com.hermes.android.OnboardingScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:919)");
                        }
                        composer3.startReplaceGroup(91719604);
                        String keyHint = aiProvider4.getKeyHint();
                        if (StringsKt.isBlank(keyHint)) {
                            keyHint = StringResources_androidKt.stringResource(R.string.api_key_placeholder, composer3, 0);
                        }
                        composer3.endReplaceGroup();
                        TextKt.Text--4IGK_g(keyHint, (Modifier) null, MainActivityKt.TextMuted, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 384, 0, 131066);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer, 54), (Function2) null, ComposableLambdaKt.rememberComposableLambda(-1766427093, true, new MainActivityKt$OnboardingScreen$3$1$2$1$8(mutableState3), composer, 54), (Function2) null, (Function2) null, (Function2) null, false, none, keyboardOptions, new KeyboardActions((Function1) objRememberedValue2, (Function1) null, (Function1) null, (Function1) null, (Function1) null, (Function1) null, 62, (DefaultConstructorMarker) null), true, 0, 0, (MutableInteractionSource) null, shape, textFieldColors, composer, 819462528, 12779520, 0, 1850680);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(6)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.api_key_later, composer, 0), (Modifier) null, MainActivityKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(499651039);
                composer.startReplaceGroup(-399520510);
                final AiProvider aiProvider5 = aiProvider2;
                boolean zChanged2 = composer.changed(function13) | composer.changed(aiProvider5);
                Object objRememberedValue3 = composer.rememberedValue();
                if (zChanged2 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue3 = new Function0() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$3$1$2$$ExternalSyntheticLambda1
                        public final Object invoke() {
                            return MainActivityKt$OnboardingScreen$3$1$2.invoke$lambda$6$lambda$3$lambda$2(function13, aiProvider5);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue3);
                }
                composer.endReplaceGroup();
                ButtonKt.Button((Function0) objRememberedValue3, SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null), Dp.m3807constructorimpl(48)), false, RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.m3807constructorimpl(f)), ButtonDefaults.INSTANCE.buttonColors-ro_MJ88(Color.INSTANCE.m1236getWhite0d7_KjU(), ColorKt.Color(4280640424L), 0L, 0L, composer, (ButtonDefaults.$stable << 12) | 54, 12), ButtonDefaults.INSTANCE.buttonElevation-R_JCAzs(Dp.m3807constructorimpl(0), 0.0f, 0.0f, 0.0f, 0.0f, composer, (ButtonDefaults.$stable << 15) | 6, 30), (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MainActivityKt.INSTANCE.m4314getLambda8$app_release(), composer, 805306416, 452);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(6)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_signin_hint, composer, 0), (Modifier) null, MainActivityKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
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
    public static final Unit invoke$lambda$6$lambda$1$lambda$0(MutableState mutableState) {
        MainActivityKt.OnboardingScreen$lambda$51(mutableState, true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$6$lambda$3$lambda$2(Function1 function1, AiProvider aiProvider) {
        function1.invoke(aiProvider);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$6$lambda$5$lambda$4(Function0 function0, KeyboardActionScope keyboardActionScope) {
        Intrinsics.checkNotNullParameter(keyboardActionScope, "$this$KeyboardActions");
        function0.invoke();
        return Unit.INSTANCE;
    }
}
