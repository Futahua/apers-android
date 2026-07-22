package com.hermes.android;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.AutoAwesomeKt;
import androidx.compose.material.icons.filled.SearchKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.res.StringResources_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$8$1$3 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<Boolean> $edgeInstalled$delegate;
    final /* synthetic */ MutableState<Boolean> $showEdgeSheet$delegate;
    final /* synthetic */ MutableState<Boolean> $showWebKeyDialog$delegate;
    final /* synthetic */ MutableState<Boolean> $webKeyConfigured$delegate;

    MainActivityKt$SettingsTabContent$8$1$3(MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2, MutableState<Boolean> mutableState3, MutableState<Boolean> mutableState4) {
        this.$edgeInstalled$delegate = mutableState;
        this.$showEdgeSheet$delegate = mutableState2;
        this.$webKeyConfigured$delegate = mutableState3;
        this.$showWebKeyDialog$delegate = mutableState4;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        int i2;
        int i3;
        String strStringResource;
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-968940486, i, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:2621)");
            }
            ImageVector autoAwesome = AutoAwesomeKt.getAutoAwesome(Icons.INSTANCE.getDefault());
            if (MainActivityKt.SettingsTabContent$lambda$185(this.$edgeInstalled$delegate)) {
                composer.startReplaceGroup(-1334074642);
                i2 = R.string.settings_edge_installed;
            } else {
                composer.startReplaceGroup(-1334072916);
                i2 = R.string.settings_edge_install;
            }
            String strStringResource2 = StringResources_androidKt.stringResource(i2, composer, 0);
            composer.endReplaceGroup();
            if (MainActivityKt.SettingsTabContent$lambda$185(this.$edgeInstalled$delegate)) {
                composer.startReplaceGroup(-1334069780);
                i3 = R.string.settings_edge_desc_on;
            } else {
                composer.startReplaceGroup(-1334068115);
                i3 = R.string.settings_edge_desc_off;
            }
            String strStringResource3 = StringResources_androidKt.stringResource(i3, composer, 0);
            composer.endReplaceGroup();
            composer.startReplaceGroup(-1334065610);
            final MutableState<Boolean> mutableState = this.$showEdgeSheet$delegate;
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$3$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return MainActivityKt$SettingsTabContent$8$1$3.invoke$lambda$1$lambda$0(mutableState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(autoAwesome, strStringResource2, strStringResource3, (Function0) objRememberedValue, composer, 3072);
            if (MainActivityKt.SettingsTabContent$lambda$185(this.$edgeInstalled$delegate)) {
                ImageVector search = SearchKt.getSearch(Icons.INSTANCE.getDefault());
                String strStringResource4 = StringResources_androidKt.stringResource(R.string.web_key_row, composer, 0);
                if (MainActivityKt.SettingsTabContent$lambda$191(this.$webKeyConfigured$delegate)) {
                    composer.startReplaceGroup(1594072959);
                    strStringResource = StringResources_androidKt.stringResource(R.string.web_key_row_desc_set, composer, 0);
                    composer.endReplaceGroup();
                } else {
                    composer.startReplaceGroup(1594178979);
                    strStringResource = StringResources_androidKt.stringResource(R.string.web_key_row_desc, composer, 0);
                    composer.endReplaceGroup();
                }
                String str = strStringResource;
                composer.startReplaceGroup(-1334044007);
                final MutableState<Boolean> mutableState2 = this.$showWebKeyDialog$delegate;
                Object objRememberedValue2 = composer.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$3$$ExternalSyntheticLambda1
                        public final Object invoke() {
                            return MainActivityKt$SettingsTabContent$8$1$3.invoke$lambda$3$lambda$2(mutableState2);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue2);
                }
                composer.endReplaceGroup();
                MainActivityKt.SettingsRow(search, strStringResource4, str, (Function0) objRememberedValue2, composer, 3072);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(MutableState mutableState) {
        MainActivityKt.SettingsTabContent$lambda$183(mutableState, true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$3$lambda$2(MutableState mutableState) {
        MainActivityKt.SettingsTabContent$lambda$189(mutableState, true);
        return Unit.INSTANCE;
    }
}
