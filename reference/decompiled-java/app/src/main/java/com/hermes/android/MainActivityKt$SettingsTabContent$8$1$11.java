package com.hermes.android;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.LanguageKt;
import androidx.compose.material.icons.filled.QrCode2Kt;
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
final class MainActivityKt$SettingsTabContent$8$1$11 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<Boolean> $showLanguagePicker$delegate;
    final /* synthetic */ MutableState<Boolean> $showPairingScreen$delegate;

    MainActivityKt$SettingsTabContent$8$1$11(MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2) {
        this.$showPairingScreen$delegate = mutableState;
        this.$showLanguagePicker$delegate = mutableState2;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1049725385, i, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:3068)");
            }
            ImageVector qrCode2 = QrCode2Kt.getQrCode2(Icons.INSTANCE.getDefault());
            String strStringResource = StringResources_androidKt.stringResource(R.string.settings_web_pairing, composer, 0);
            String strStringResource2 = StringResources_androidKt.stringResource(R.string.settings_web_pairing_desc, composer, 0);
            composer.startReplaceGroup(-1333262662);
            final MutableState<Boolean> mutableState = this.$showPairingScreen$delegate;
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$11$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return MainActivityKt$SettingsTabContent$8$1$11.invoke$lambda$1$lambda$0(mutableState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(qrCode2, strStringResource, strStringResource2, (Function0) objRememberedValue, composer, 3072);
            ImageVector language = LanguageKt.getLanguage(Icons.INSTANCE.getDefault());
            String strStringResource3 = StringResources_androidKt.stringResource(R.string.settings_language, composer, 0);
            String strCurrentLanguageLabel = MainActivityKt.currentLanguageLabel(composer, 0);
            composer.startReplaceGroup(-1333252613);
            final MutableState<Boolean> mutableState2 = this.$showLanguagePicker$delegate;
            Object objRememberedValue2 = composer.rememberedValue();
            if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$11$$ExternalSyntheticLambda1
                    public final Object invoke() {
                        return MainActivityKt$SettingsTabContent$8$1$11.invoke$lambda$3$lambda$2(mutableState2);
                    }
                };
                composer.updateRememberedValue(objRememberedValue2);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(language, strStringResource3, strCurrentLanguageLabel, (Function0) objRememberedValue2, composer, 3072);
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
        MainActivityKt.SettingsTabContent$lambda$196(mutableState, true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$3$lambda$2(MutableState mutableState) {
        MainActivityKt.SettingsTabContent$lambda$205(mutableState, true);
        return Unit.INSTANCE;
    }
}
