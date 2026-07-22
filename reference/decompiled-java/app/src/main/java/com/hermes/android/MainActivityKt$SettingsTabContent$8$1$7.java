package com.hermes.android;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.BuildKt;
import androidx.compose.material.icons.filled.HealthAndSafetyKt;
import androidx.compose.material.icons.filled.RestartAltKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.LifecycleCoroutineScope;
import com.hermes.android.BootstrapManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$8$1$7 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ MutableState<Boolean> $confirmReinstall$delegate;
    final /* synthetic */ MutableState<BootstrapManager.HealthReport> $healthReport$delegate;
    final /* synthetic */ MutableState<String> $repairError$delegate;
    final /* synthetic */ MutableState<BootstrapManager.Progress> $repairProgress$delegate;
    final /* synthetic */ LifecycleCoroutineScope $scope;

    MainActivityKt$SettingsTabContent$8$1$7(LifecycleCoroutineScope lifecycleCoroutineScope, BootstrapManager bootstrapManager, MutableState<BootstrapManager.HealthReport> mutableState, MutableState<BootstrapManager.Progress> mutableState2, MutableState<String> mutableState3, MutableState<Boolean> mutableState4) {
        this.$scope = lifecycleCoroutineScope;
        this.$bootstrapManager = bootstrapManager;
        this.$healthReport$delegate = mutableState;
        this.$repairProgress$delegate = mutableState2;
        this.$repairError$delegate = mutableState3;
        this.$confirmReinstall$delegate = mutableState4;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void invoke(Composer composer, int i) {
        int i2;
        String strStringResource;
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1086720588, i, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:2790)");
            }
            ImageVector healthAndSafety = HealthAndSafetyKt.getHealthAndSafety(Icons.INSTANCE.getDefault());
            String strStringResource2 = StringResources_androidKt.stringResource(R.string.settings_check_install, composer, 0);
            BootstrapManager.HealthReport healthReportSettingsTabContent$lambda$211 = MainActivityKt.SettingsTabContent$lambda$211(this.$healthReport$delegate);
            composer.startReplaceGroup(-1333783749);
            String str = null;
            if (healthReportSettingsTabContent$lambda$211 == null) {
                strStringResource = null;
            } else {
                if (healthReportSettingsTabContent$lambda$211.isHealthy()) {
                    composer.startReplaceGroup(-1180463674);
                    i2 = R.string.settings_healthy;
                } else {
                    composer.startReplaceGroup(-1180462171);
                    i2 = R.string.settings_issues;
                }
                strStringResource = StringResources_androidKt.stringResource(i2, composer, 0);
                composer.endReplaceGroup();
            }
            composer.endReplaceGroup();
            composer.startReplaceGroup(-1333784127);
            if (strStringResource == null) {
                strStringResource = StringResources_androidKt.stringResource(R.string.settings_check_install_desc, composer, 0);
            }
            String str2 = strStringResource;
            composer.endReplaceGroup();
            composer.startReplaceGroup(-1333775806);
            boolean zChangedInstance = composer.changedInstance(this.$scope) | composer.changedInstance(this.$bootstrapManager);
            final LifecycleCoroutineScope lifecycleCoroutineScope = this.$scope;
            final BootstrapManager bootstrapManager = this.$bootstrapManager;
            final MutableState<BootstrapManager.HealthReport> mutableState = this.$healthReport$delegate;
            Object objRememberedValue = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$7$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return MainActivityKt$SettingsTabContent$8$1$7.invoke$lambda$2$lambda$1(lifecycleCoroutineScope, bootstrapManager, mutableState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(healthAndSafety, strStringResource2, str2, (Function0) objRememberedValue, composer, 0);
            ImageVector build = BuildKt.getBuild(Icons.INSTANCE.getDefault());
            String strStringResource3 = StringResources_androidKt.stringResource(R.string.settings_repair, composer, 0);
            BootstrapManager.Progress progressSettingsTabContent$lambda$214 = MainActivityKt.SettingsTabContent$lambda$214(this.$repairProgress$delegate);
            if (progressSettingsTabContent$lambda$214 != null) {
                String str3 = progressSettingsTabContent$lambda$214.getStepName() + "... (" + progressSettingsTabContent$lambda$214.getStep() + "/" + progressSettingsTabContent$lambda$214.getTotalSteps() + ")";
                if (str3 == null) {
                    String strSettingsTabContent$lambda$217 = MainActivityKt.SettingsTabContent$lambda$217(this.$repairError$delegate);
                    if (strSettingsTabContent$lambda$217 != null) {
                        str = "Failed: " + strSettingsTabContent$lambda$217;
                    }
                } else {
                    str = str3;
                }
            }
            composer.startReplaceGroup(-1333761202);
            String strStringResource4 = str == null ? StringResources_androidKt.stringResource(R.string.settings_repair_desc, composer, 0) : str;
            composer.endReplaceGroup();
            composer.startReplaceGroup(-1333752515);
            boolean zChangedInstance2 = composer.changedInstance(this.$scope) | composer.changedInstance(this.$bootstrapManager);
            final LifecycleCoroutineScope lifecycleCoroutineScope2 = this.$scope;
            final MutableState<BootstrapManager.Progress> mutableState2 = this.$repairProgress$delegate;
            final MutableState<String> mutableState3 = this.$repairError$delegate;
            final BootstrapManager bootstrapManager2 = this.$bootstrapManager;
            final MutableState<BootstrapManager.HealthReport> mutableState4 = this.$healthReport$delegate;
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$7$$ExternalSyntheticLambda1
                    public final Object invoke() {
                        return MainActivityKt$SettingsTabContent$8$1$7.invoke$lambda$6$lambda$5(lifecycleCoroutineScope2, mutableState2, mutableState3, bootstrapManager2, mutableState4);
                    }
                };
                composer.updateRememberedValue(objRememberedValue2);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(build, strStringResource3, strStringResource4, (Function0) objRememberedValue2, composer, 0);
            ImageVector restartAlt = RestartAltKt.getRestartAlt(Icons.INSTANCE.getDefault());
            String strStringResource5 = StringResources_androidKt.stringResource(R.string.settings_reinstall, composer, 0);
            String strStringResource6 = StringResources_androidKt.stringResource(R.string.settings_reinstall_desc, composer, 0);
            composer.startReplaceGroup(-1333705671);
            final MutableState<Boolean> mutableState5 = this.$confirmReinstall$delegate;
            Object objRememberedValue3 = composer.rememberedValue();
            if (objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue3 = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$7$$ExternalSyntheticLambda2
                    public final Object invoke() {
                        return MainActivityKt$SettingsTabContent$8$1$7.invoke$lambda$8$lambda$7(mutableState5);
                    }
                };
                composer.updateRememberedValue(objRememberedValue3);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(restartAlt, strStringResource5, strStringResource6, (Function0) objRememberedValue3, composer, 3072);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$2$lambda$1(LifecycleCoroutineScope lifecycleCoroutineScope, BootstrapManager bootstrapManager, MutableState mutableState) {
        BuildersKt.launch$default(lifecycleCoroutineScope, Dispatchers.getIO(), (CoroutineStart) null, new MainActivityKt$SettingsTabContent$8$1$7$2$1$1(bootstrapManager, mutableState, null), 2, (Object) null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$6$lambda$5(LifecycleCoroutineScope lifecycleCoroutineScope, MutableState mutableState, MutableState mutableState2, BootstrapManager bootstrapManager, MutableState mutableState3) {
        if (MainActivityKt.SettingsTabContent$lambda$214(mutableState) != null) {
            return Unit.INSTANCE;
        }
        MainActivityKt.SettingsTabContent$lambda$218(mutableState2, null);
        BuildersKt.launch$default(lifecycleCoroutineScope, (CoroutineContext) null, (CoroutineStart) null, new MainActivityKt$SettingsTabContent$8$1$7$5$1$1(bootstrapManager, lifecycleCoroutineScope, mutableState, mutableState3, mutableState2, null), 3, (Object) null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$8$lambda$7(MutableState mutableState) {
        MainActivityKt.SettingsTabContent$lambda$221(mutableState, true);
        return Unit.INSTANCE;
    }
}
