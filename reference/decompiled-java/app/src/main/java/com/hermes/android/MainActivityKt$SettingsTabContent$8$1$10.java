package com.hermes.android;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.SwitchColors;
import androidx.compose.material3.SwitchKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.google.android.play.core.splitinstall.SplitInstallManager;
import com.hermes.android.data.AiProvider;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$8$1$10 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ SnapshotStateMap<String, Boolean> $labsEnabled;
    final /* synthetic */ MutableState<String> $localLlmModuleError$delegate;
    final /* synthetic */ MutableState<Integer> $localLlmModuleProgress$delegate;
    final /* synthetic */ MutableState<Boolean> $showLocalLlmScreen$delegate;
    final /* synthetic */ SplitInstallManager $splitInstallManager;

    MainActivityKt$SettingsTabContent$8$1$10(SnapshotStateMap<String, Boolean> snapshotStateMap, SplitInstallManager splitInstallManager, AppCompatActivity appCompatActivity, MutableState<Boolean> mutableState, MutableState<String> mutableState2, MutableState<Integer> mutableState3) {
        this.$labsEnabled = snapshotStateMap;
        this.$splitInstallManager = splitInstallManager;
        this.$activity = appCompatActivity;
        this.$showLocalLlmScreen$delegate = mutableState;
        this.$localLlmModuleError$delegate = mutableState2;
        this.$localLlmModuleProgress$delegate = mutableState3;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        AiProvider aiProvider;
        String str;
        String str2;
        int i2;
        AppCompatActivity appCompatActivity;
        SnapshotStateMap<String, Boolean> snapshotStateMap;
        MutableState<Integer> mutableState;
        MutableState<Boolean> mutableState2;
        MutableState<String> mutableState3;
        SplitInstallManager splitInstallManager;
        final MutableState<Integer> mutableState4;
        final MutableState<Boolean> mutableState5;
        final MutableState<String> mutableState6;
        Composer composer2 = composer;
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(369598646, i, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:2976)");
            }
            composer2.startReplaceGroup(-1333414734);
            List labs = AiProvider.Companion.getLABS();
            SnapshotStateMap<String, Boolean> snapshotStateMap2 = this.$labsEnabled;
            SplitInstallManager splitInstallManager2 = this.$splitInstallManager;
            AppCompatActivity appCompatActivity2 = this.$activity;
            MutableState<Boolean> mutableState7 = this.$showLocalLlmScreen$delegate;
            MutableState<String> mutableState8 = this.$localLlmModuleError$delegate;
            MutableState<Integer> mutableState9 = this.$localLlmModuleProgress$delegate;
            Iterator it = labs.iterator();
            int i3 = 0;
            while (true) {
                final SnapshotStateMap<String, Boolean> snapshotStateMap3 = snapshotStateMap2;
                final SplitInstallManager splitInstallManager3 = splitInstallManager2;
                final AppCompatActivity appCompatActivity3 = appCompatActivity2;
                MutableState<Boolean> mutableState10 = mutableState7;
                MutableState<String> mutableState11 = mutableState8;
                MutableState<Integer> mutableState12 = mutableState9;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                int i4 = i3 + 1;
                if (i3 < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                AiProvider aiProvider2 = (AiProvider) next;
                composer2.startReplaceGroup(-1333415965);
                if (i3 > 0) {
                    aiProvider = aiProvider2;
                    str = "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo";
                    str2 = "C88@4444L9:Column.kt#2w3rfo";
                    DividerKt.HorizontalDivider-9IZ8Weo((Modifier) null, 0.0f, Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.08f, 0.0f, 0.0f, 0.0f, 14, null), composer, 384, 3);
                } else {
                    aiProvider = aiProvider2;
                    str = "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo";
                    str2 = "C88@4444L9:Column.kt#2w3rfo";
                }
                composer.endReplaceGroup();
                Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
                float f = 16;
                float f2 = 10;
                Modifier modifier = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null), Dp.m3807constructorimpl(f), Dp.m3807constructorimpl(f2));
                ComposerKt.sourceInformationMarkerStart(composer2, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer2, 48);
                ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer2, modifier);
                Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer2.createNode(constructor);
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
                ComposerKt.sourceInformationMarkerStart(composer2, -407840262, "C101@5126L9:Row.kt#2w3rfo");
                Modifier modifierWeight$default = RowScope.weight$default(RowScopeInstance.INSTANCE, Modifier.INSTANCE, 1.0f, false, 2, (Object) null);
                ComposerKt.sourceInformationMarkerStart(composer2, -483455358, str);
                MeasurePolicy measurePolicyColumnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer2, 0);
                ComposerKt.sourceInformationMarkerStart(composer2, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(composer2, 0);
                CompositionLocalMap currentCompositionLocalMap2 = composer.getCurrentCompositionLocalMap();
                Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composer2, modifierWeight$default);
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart(composer2, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                if (!(composer.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                composer.startReusableNode();
                if (composer.getInserting()) {
                    composer2.createNode(constructor2);
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
                ComposerKt.sourceInformationMarkerStart(composer2, -384784025, str2);
                ColumnScope columnScope = ColumnScopeInstance.INSTANCE;
                TextKt.Text--4IGK_g(aiProvider.getName(), (Modifier) null, Color.INSTANCE.m1236getWhite0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                String id = aiProvider.getId();
                if (Intrinsics.areEqual(id, "nous")) {
                    i2 = R.string.labs_nous_desc;
                } else {
                    i2 = Intrinsics.areEqual(id, LocalLlmModuleBridge.PROVIDER_ID) ? R.string.labs_local_llm_desc : R.string.labs_moa_desc;
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(i2, composer, 0), (Modifier) null, MainActivityKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(16), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                boolean zAreEqual = Intrinsics.areEqual(snapshotStateMap3.get(aiProvider.getId()), true);
                composer.startReplaceGroup(432190596);
                final AiProvider aiProvider3 = aiProvider;
                boolean zChanged = composer.changed(aiProvider3) | composer.changedInstance(appCompatActivity3);
                Object objRememberedValue = composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function1() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$10$$ExternalSyntheticLambda0
                        public final Object invoke(Object obj) {
                            return MainActivityKt$SettingsTabContent$8$1$10.invoke$lambda$7$lambda$3$lambda$2$lambda$1(snapshotStateMap3, aiProvider3, appCompatActivity3, ((Boolean) obj).booleanValue());
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                SwitchKt.Switch(zAreEqual, (Function1) objRememberedValue, (Modifier) null, (Function2) null, false, (SwitchColors) null, (MutableInteractionSource) null, composer, 0, 124);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.endNode();
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                ComposerKt.sourceInformationMarkerEnd(composer);
                composer.startReplaceGroup(-1333357960);
                if (Intrinsics.areEqual(aiProvider3.getId(), LocalLlmModuleBridge.PROVIDER_ID) && Intrinsics.areEqual(snapshotStateMap3.get(LocalLlmModuleBridge.PROVIDER_ID), true)) {
                    Alignment.Vertical centerVertically2 = Alignment.INSTANCE.getCenterVertically();
                    Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null);
                    composer.startReplaceGroup(-1180030348);
                    boolean zChangedInstance = composer.changedInstance(splitInstallManager3);
                    Object objRememberedValue2 = composer.rememberedValue();
                    if (zChangedInstance || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                        mutableState4 = mutableState12;
                        mutableState5 = mutableState10;
                        mutableState6 = mutableState11;
                        objRememberedValue2 = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$10$$ExternalSyntheticLambda1
                            public final Object invoke() {
                                return MainActivityKt$SettingsTabContent$8$1$10.invoke$lambda$7$lambda$5$lambda$4(splitInstallManager3, mutableState5, mutableState6, mutableState4);
                            }
                        };
                        composer.updateRememberedValue(objRememberedValue2);
                    } else {
                        mutableState4 = mutableState12;
                        mutableState5 = mutableState10;
                        mutableState6 = mutableState11;
                    }
                    composer.endReplaceGroup();
                    Modifier modifier2 = PaddingKt.padding-VpY3zN4(ClickableKt.clickable-XHw0xAI$default(modifierFillMaxWidth$default, false, (String) null, (Role) null, (Function0) objRememberedValue2, 7, (Object) null), Dp.m3807constructorimpl(f), Dp.m3807constructorimpl(f2));
                    ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
                    MeasurePolicy measurePolicyRowMeasurePolicy2 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically2, composer, 48);
                    ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                    int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
                    CompositionLocalMap currentCompositionLocalMap3 = composer.getCurrentCompositionLocalMap();
                    Modifier modifierMaterializeModifier3 = ComposedModifierKt.materializeModifier(composer, modifier2);
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
                    mutableState = mutableState4;
                    mutableState2 = mutableState5;
                    mutableState3 = mutableState6;
                    splitInstallManager = splitInstallManager3;
                    appCompatActivity = appCompatActivity3;
                    snapshotStateMap = snapshotStateMap3;
                    TextKt.Text--4IGK_g("⚙ " + StringResources_androidKt.stringResource(R.string.labs_local_llm_setup_entry, composer, 0), RowScope.weight$default(RowScopeInstance.INSTANCE, Modifier.INSTANCE, 1.0f, false, 2, (Object) null), ColorKt.Color(4287280376L), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131056);
                    TextKt.Text--4IGK_g("›", (Modifier) null, MainActivityKt.TextMuted, TextUnitKt.getSp(16), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3462, 0, 131058);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    composer.endNode();
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                    ComposerKt.sourceInformationMarkerEnd(composer);
                } else {
                    appCompatActivity = appCompatActivity3;
                    snapshotStateMap = snapshotStateMap3;
                    mutableState = mutableState12;
                    mutableState2 = mutableState10;
                    mutableState3 = mutableState11;
                    splitInstallManager = splitInstallManager3;
                }
                composer.endReplaceGroup();
                composer2 = composer;
                mutableState9 = mutableState;
                mutableState7 = mutableState2;
                mutableState8 = mutableState3;
                splitInstallManager2 = splitInstallManager;
                i3 = i4;
                appCompatActivity2 = appCompatActivity;
                snapshotStateMap2 = snapshotStateMap;
            }
            composer.endReplaceGroup();
            DividerKt.HorizontalDivider-9IZ8Weo((Modifier) null, 0.0f, Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.08f, 0.0f, 0.0f, 0.0f, 14, null), composer, 384, 3);
            Alignment.Vertical centerVertically3 = Alignment.INSTANCE.getCenterVertically();
            Modifier modifier3 = PaddingKt.padding-VpY3zN4(SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, (Object) null), Dp.m3807constructorimpl(16), Dp.m3807constructorimpl(10));
            final SnapshotStateMap<String, Boolean> snapshotStateMap4 = this.$labsEnabled;
            final AppCompatActivity appCompatActivity4 = this.$activity;
            ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy3 = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically3, composer, 48);
            ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash4 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap4 = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier4 = ComposedModifierKt.materializeModifier(composer, modifier3);
            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                composer.createNode(constructor4);
            } else {
                composer.useNode();
            }
            Composer composerM661constructorimpl4 = Updater.m661constructorimpl(composer);
            Updater.m668setimpl(composerM661constructorimpl4, measurePolicyRowMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m668setimpl(composerM661constructorimpl4, currentCompositionLocalMap4, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash4 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (composerM661constructorimpl4.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                composerM661constructorimpl4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash4));
                composerM661constructorimpl4.apply(Integer.valueOf(currentCompositeKeyHash4), setCompositeKeyHash4);
            }
            Updater.m668setimpl(composerM661constructorimpl4, modifierMaterializeModifier4, ComposeUiNode.INSTANCE.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
            Modifier modifierWeight$default2 = RowScope.weight$default(RowScopeInstance.INSTANCE, Modifier.INSTANCE, 1.0f, false, 2, (Object) null);
            ComposerKt.sourceInformationMarkerStart(composer, -483455358, "CC(Column)P(2,3,1)86@4330L61,87@4396L133:Column.kt#2w3rfo");
            MeasurePolicy measurePolicyColumnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer, 0);
            ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash5 = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap5 = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier5 = ComposedModifierKt.materializeModifier(composer, modifierWeight$default2);
            Function0<ComposeUiNode> constructor5 = ComposeUiNode.INSTANCE.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                composer.createNode(constructor5);
            } else {
                composer.useNode();
            }
            Composer composerM661constructorimpl5 = Updater.m661constructorimpl(composer);
            Updater.m668setimpl(composerM661constructorimpl5, measurePolicyColumnMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m668setimpl(composerM661constructorimpl5, currentCompositionLocalMap5, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash5 = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (composerM661constructorimpl5.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl5.rememberedValue(), Integer.valueOf(currentCompositeKeyHash5))) {
                composerM661constructorimpl5.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash5));
                composerM661constructorimpl5.apply(Integer.valueOf(currentCompositeKeyHash5), setCompositeKeyHash5);
            }
            Updater.m668setimpl(composerM661constructorimpl5, modifierMaterializeModifier5, ComposeUiNode.INSTANCE.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composer, -384784025, "C88@4444L9:Column.kt#2w3rfo");
            ColumnScope columnScope2 = ColumnScopeInstance.INSTANCE;
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.labs_chatskin_name, composer, 0), (Modifier) null, Color.INSTANCE.m1236getWhite0d7_KjU(), TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.labs_chatskin_desc, composer, 0), (Modifier) null, MainActivityKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(16), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
            ComposerKt.sourceInformationMarkerEnd(composer);
            composer.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            boolean zAreEqual2 = Intrinsics.areEqual(snapshotStateMap4.get("chatskin"), true);
            composer.startReplaceGroup(-1179976842);
            boolean zChangedInstance2 = composer.changedInstance(appCompatActivity4);
            Object objRememberedValue3 = composer.rememberedValue();
            if (zChangedInstance2 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue3 = new Function1() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$10$$ExternalSyntheticLambda2
                    public final Object invoke(Object obj) {
                        return MainActivityKt$SettingsTabContent$8$1$10.invoke$lambda$11$lambda$10$lambda$9(snapshotStateMap4, appCompatActivity4, ((Boolean) obj).booleanValue());
                    }
                };
                composer.updateRememberedValue(objRememberedValue3);
            }
            composer.endReplaceGroup();
            SwitchKt.Switch(zAreEqual2, (Function1) objRememberedValue3, (Modifier) null, (Function2) null, false, (SwitchColors) null, (MutableInteractionSource) null, composer, 0, 124);
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
    public static final Unit invoke$lambda$7$lambda$3$lambda$2$lambda$1(SnapshotStateMap snapshotStateMap, AiProvider aiProvider, AppCompatActivity appCompatActivity, boolean z) {
        snapshotStateMap.put(aiProvider.getId(), Boolean.valueOf(z));
        LabsSettings.INSTANCE.setEnabled((Context) appCompatActivity, aiProvider.getId(), z);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$7$lambda$5$lambda$4(SplitInstallManager splitInstallManager, MutableState mutableState, MutableState mutableState2, MutableState mutableState3) {
        MainActivityKt.SettingsTabContent$startLocalLlmFlow(splitInstallManager, mutableState, mutableState2, mutableState3);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$11$lambda$10$lambda$9(SnapshotStateMap snapshotStateMap, AppCompatActivity appCompatActivity, boolean z) {
        snapshotStateMap.put("chatskin", Boolean.valueOf(z));
        LabsSettings.INSTANCE.setEnabled((Context) appCompatActivity, "chatskin", z);
        if (z) {
            appCompatActivity.getSharedPreferences("hermes_prefs", 0).edit().putBoolean("chatskin_badge_pending", true).apply();
        }
        return Unit.INSTANCE;
    }
}
