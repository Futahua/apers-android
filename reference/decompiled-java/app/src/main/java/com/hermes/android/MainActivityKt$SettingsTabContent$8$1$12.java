package com.hermes.android;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.CodeKt;
import androidx.compose.material.icons.filled.GavelKt;
import androidx.compose.material.icons.filled.InfoKt;
import androidx.compose.material.icons.filled.MemoryKt;
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
final class MainActivityKt$SettingsTabContent$8$1$12 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<String> $hermesVersion;
    final /* synthetic */ MutableState<Boolean> $showLicenseDialog$delegate;
    final /* synthetic */ String $versionName;

    MainActivityKt$SettingsTabContent$8$1$12(String str, MutableState<String> mutableState, MutableState<Boolean> mutableState2) {
        this.$versionName = str;
        this.$hermesVersion = mutableState;
        this.$showLicenseDialog$delegate = mutableState2;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1825917880, i, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:3088)");
            }
            MainActivityKt.SettingsRow(InfoKt.getInfo(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.settings_version, composer, 0), this.$versionName, null, composer, 3072);
            ImageVector memory = MemoryKt.getMemory(Icons.INSTANCE.getDefault());
            String strStringResource = StringResources_androidKt.stringResource(R.string.settings_hermes_version, composer, 0);
            String value = this.$hermesVersion.getValue();
            composer.startReplaceGroup(-1333232083);
            if (value == null) {
                value = StringResources_androidKt.stringResource(R.string.settings_hermes_version_unknown, composer, 0);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(memory, strStringResource, value, null, composer, 3072);
            MainActivityKt.SettingsRow(CodeKt.getCode(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.settings_github, composer, 0), StringResources_androidKt.stringResource(R.string.settings_github_url, composer, 0), null, composer, 3072);
            ImageVector gavel = GavelKt.getGavel(Icons.INSTANCE.getDefault());
            String strStringResource2 = StringResources_androidKt.stringResource(R.string.settings_licenses, composer, 0);
            String strStringResource3 = StringResources_androidKt.stringResource(R.string.settings_licenses_desc, composer, 0);
            composer.startReplaceGroup(-1333210662);
            final MutableState<Boolean> mutableState = this.$showLicenseDialog$delegate;
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$12$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return MainActivityKt$SettingsTabContent$8$1$12.invoke$lambda$1$lambda$0(mutableState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(gavel, strStringResource2, strStringResource3, (Function0) objRememberedValue, composer, 3072);
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
        MainActivityKt.SettingsTabContent$lambda$236(mutableState, true);
        return Unit.INSTANCE;
    }
}
