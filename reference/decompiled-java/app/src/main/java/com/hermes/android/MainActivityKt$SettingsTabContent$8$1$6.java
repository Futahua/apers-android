package com.hermes.android;

import android.content.Intent;
import android.net.Uri;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.OpenInNewKt;
import androidx.compose.material.icons.filled.DownloadKt;
import androidx.compose.material.icons.filled.SyncKt;
import androidx.compose.material.icons.filled.UpdateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.LifecycleCoroutineScope;
import com.hermes.android.BootstrapManager;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$8$1$6 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ MutableState<Boolean> $isUpdating$delegate;
    final /* synthetic */ LifecycleCoroutineScope $scope;
    final /* synthetic */ MutableState<Boolean> $updateChecking$delegate;
    final /* synthetic */ MutableState<BootstrapManager.UpdateInfo> $updateInfo$delegate;
    final /* synthetic */ MutableState<String> $updateProgress$delegate;

    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BootstrapManager.UpdateError.values().length];
            try {
                iArr[BootstrapManager.UpdateError.DNS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BootstrapManager.UpdateError.TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BootstrapManager.UpdateError.SSL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BootstrapManager.UpdateError.HTTP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BootstrapManager.UpdateError.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[BootstrapManager.UpdateError.NONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    MainActivityKt$SettingsTabContent$8$1$6(LifecycleCoroutineScope lifecycleCoroutineScope, BootstrapManager bootstrapManager, AppCompatActivity appCompatActivity, MutableState<Boolean> mutableState, MutableState<BootstrapManager.UpdateInfo> mutableState2, MutableState<String> mutableState3, MutableState<Boolean> mutableState4) {
        this.$scope = lifecycleCoroutineScope;
        this.$bootstrapManager = bootstrapManager;
        this.$activity = appCompatActivity;
        this.$updateChecking$delegate = mutableState;
        this.$updateInfo$delegate = mutableState2;
        this.$updateProgress$delegate = mutableState3;
        this.$isUpdating$delegate = mutableState4;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) throws NoWhenBranchMatchedException {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
    public final void invoke(Composer composer, int i) throws NoWhenBranchMatchedException {
        int i2;
        String strStringResource;
        int i3;
        String remoteVersion;
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(332603443, i, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:2700)");
        }
        ImageVector update = UpdateKt.getUpdate(Icons.INSTANCE.getDefault());
        if (MainActivityKt.SettingsTabContent$lambda$226(this.$updateChecking$delegate)) {
            composer.startReplaceGroup(-1333953688);
            i2 = R.string.settings_checking;
        } else {
            composer.startReplaceGroup(-1333952147);
            i2 = R.string.settings_check_updates;
        }
        String strStringResource2 = StringResources_androidKt.stringResource(i2, composer, 0);
        composer.endReplaceGroup();
        BootstrapManager.UpdateInfo updateInfoSettingsTabContent$lambda$223 = MainActivityKt.SettingsTabContent$lambda$223(this.$updateInfo$delegate);
        composer.startReplaceGroup(-1333948164);
        if (updateInfoSettingsTabContent$lambda$223 == null) {
            strStringResource = null;
        } else if (!updateInfoSettingsTabContent$lambda$223.getFetchOk()) {
            composer.startReplaceGroup(-1180627003);
            switch (WhenMappings.$EnumSwitchMapping$0[updateInfoSettingsTabContent$lambda$223.getError().ordinal()]) {
                case 1:
                    i3 = R.string.settings_check_failed_dns;
                    break;
                case 2:
                    i3 = R.string.settings_check_failed_timeout;
                    break;
                case 3:
                    i3 = R.string.settings_check_failed_ssl;
                    break;
                case 4:
                    i3 = R.string.settings_check_failed_http;
                    break;
                case 5:
                    i3 = R.string.settings_check_failed_unknown;
                    break;
                case 6:
                    i3 = R.string.settings_check_failed;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            strStringResource = StringResources_androidKt.stringResource(i3, composer, 0);
            composer.endReplaceGroup();
        } else if (updateInfoSettingsTabContent$lambda$223.getHasUpdate()) {
            composer.startReplaceGroup(-1180603338);
            strStringResource = StringResources_androidKt.stringResource(R.string.settings_update_available, new Object[]{updateInfoSettingsTabContent$lambda$223.getLocalVersion(), updateInfoSettingsTabContent$lambda$223.getRemoteVersion()}, composer, 0);
            composer.endReplaceGroup();
        } else {
            composer.startReplaceGroup(-1180599332);
            strStringResource = StringResources_androidKt.stringResource(R.string.settings_up_to_date, new Object[]{updateInfoSettingsTabContent$lambda$223.getLocalVersion()}, composer, 0);
            composer.endReplaceGroup();
        }
        composer.endReplaceGroup();
        if (strStringResource == null) {
            strStringResource = MainActivityKt.SettingsTabContent$lambda$229(this.$updateProgress$delegate);
        }
        composer.startReplaceGroup(-1333948462);
        if (strStringResource == null) {
            strStringResource = StringResources_androidKt.stringResource(R.string.settings_check_updates_desc, composer, 0);
        }
        composer.endReplaceGroup();
        composer.startReplaceGroup(-1333910569);
        boolean zChangedInstance = composer.changedInstance(this.$scope) | composer.changedInstance(this.$bootstrapManager);
        final LifecycleCoroutineScope lifecycleCoroutineScope = this.$scope;
        final MutableState<Boolean> mutableState = this.$updateChecking$delegate;
        final MutableState<Boolean> mutableState2 = this.$isUpdating$delegate;
        final MutableState<BootstrapManager.UpdateInfo> mutableState3 = this.$updateInfo$delegate;
        final BootstrapManager bootstrapManager = this.$bootstrapManager;
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
            objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$6$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return MainActivityKt$SettingsTabContent$8$1$6.invoke$lambda$2$lambda$1(lifecycleCoroutineScope, mutableState, mutableState2, mutableState3, bootstrapManager);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        composer.endReplaceGroup();
        MainActivityKt.SettingsRow(update, strStringResource2, strStringResource, (Function0) objRememberedValue, composer, 0);
        composer.startReplaceGroup(-1333889349);
        BootstrapManager.UpdateInfo updateInfoSettingsTabContent$lambda$2232 = MainActivityKt.SettingsTabContent$lambda$223(this.$updateInfo$delegate);
        if (updateInfoSettingsTabContent$lambda$2232 != null && !updateInfoSettingsTabContent$lambda$2232.getFetchOk() && !MainActivityKt.SettingsTabContent$lambda$232(this.$isUpdating$delegate)) {
            ImageVector openInNew = OpenInNewKt.getOpenInNew(Icons.AutoMirrored.Filled.INSTANCE);
            String strStringResource3 = StringResources_androidKt.stringResource(R.string.settings_open_github_releases, composer, 0);
            composer.startReplaceGroup(-1333878292);
            boolean zChangedInstance2 = composer.changedInstance(this.$activity);
            final AppCompatActivity appCompatActivity = this.$activity;
            Object objRememberedValue2 = composer.rememberedValue();
            if (zChangedInstance2 || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue2 = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$6$$ExternalSyntheticLambda1
                    public final Object invoke() {
                        return MainActivityKt$SettingsTabContent$8$1$6.invoke$lambda$4$lambda$3(appCompatActivity);
                    }
                };
                composer.updateRememberedValue(objRememberedValue2);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(openInNew, strStringResource3, "github.com/NousResearch/hermes-agent/releases", (Function0) objRememberedValue2, composer, 384);
        }
        composer.endReplaceGroup();
        composer.startReplaceGroup(-1333858633);
        BootstrapManager.UpdateInfo updateInfoSettingsTabContent$lambda$2233 = MainActivityKt.SettingsTabContent$lambda$223(this.$updateInfo$delegate);
        if (updateInfoSettingsTabContent$lambda$2233 != null && updateInfoSettingsTabContent$lambda$2233.getHasUpdate() && !MainActivityKt.SettingsTabContent$lambda$232(this.$isUpdating$delegate)) {
            ImageVector download = DownloadKt.getDownload(Icons.INSTANCE.getDefault());
            String strStringResource4 = StringResources_androidKt.stringResource(R.string.settings_install_update, composer, 0);
            int i4 = R.string.settings_install_update_desc;
            BootstrapManager.UpdateInfo updateInfoSettingsTabContent$lambda$2234 = MainActivityKt.SettingsTabContent$lambda$223(this.$updateInfo$delegate);
            if (updateInfoSettingsTabContent$lambda$2234 == null || (remoteVersion = updateInfoSettingsTabContent$lambda$2234.getRemoteVersion()) == null) {
                remoteVersion = "";
            }
            String strStringResource5 = StringResources_androidKt.stringResource(i4, new Object[]{remoteVersion}, composer, 0);
            composer.startReplaceGroup(-1333846925);
            boolean zChangedInstance3 = composer.changedInstance(this.$activity) | composer.changedInstance(this.$scope) | composer.changedInstance(this.$bootstrapManager);
            final AppCompatActivity appCompatActivity2 = this.$activity;
            final LifecycleCoroutineScope lifecycleCoroutineScope2 = this.$scope;
            final MutableState<Boolean> mutableState4 = this.$isUpdating$delegate;
            final MutableState<String> mutableState5 = this.$updateProgress$delegate;
            final BootstrapManager bootstrapManager2 = this.$bootstrapManager;
            final MutableState<BootstrapManager.UpdateInfo> mutableState6 = this.$updateInfo$delegate;
            Object objRememberedValue3 = composer.rememberedValue();
            if (zChangedInstance3 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue3 = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$6$$ExternalSyntheticLambda2
                    public final Object invoke() {
                        return MainActivityKt$SettingsTabContent$8$1$6.invoke$lambda$6$lambda$5(appCompatActivity2, lifecycleCoroutineScope2, mutableState4, mutableState5, bootstrapManager2, mutableState6);
                    }
                };
                composer.updateRememberedValue(objRememberedValue3);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(download, strStringResource4, strStringResource5, (Function0) objRememberedValue3, composer, 0);
        }
        composer.endReplaceGroup();
        if (MainActivityKt.SettingsTabContent$lambda$232(this.$isUpdating$delegate)) {
            ImageVector sync = SyncKt.getSync(Icons.INSTANCE.getDefault());
            String strStringResource6 = StringResources_androidKt.stringResource(R.string.settings_updating, composer, 0);
            String strSettingsTabContent$lambda$229 = MainActivityKt.SettingsTabContent$lambda$229(this.$updateProgress$delegate);
            composer.startReplaceGroup(-1333800835);
            if (strSettingsTabContent$lambda$229 == null) {
                strSettingsTabContent$lambda$229 = StringResources_androidKt.stringResource(R.string.settings_please_wait, composer, 0);
            }
            composer.endReplaceGroup();
            composer.startReplaceGroup(-1333797728);
            Object objRememberedValue4 = composer.rememberedValue();
            if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                objRememberedValue4 = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$8$1$6$$ExternalSyntheticLambda3
                    public final Object invoke() {
                        return Unit.INSTANCE;
                    }
                };
                composer.updateRememberedValue(objRememberedValue4);
            }
            composer.endReplaceGroup();
            MainActivityKt.SettingsRow(sync, strStringResource6, strSettingsTabContent$lambda$229, (Function0) objRememberedValue4, composer, 3072);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$2$lambda$1(LifecycleCoroutineScope lifecycleCoroutineScope, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, BootstrapManager bootstrapManager) {
        if (!MainActivityKt.SettingsTabContent$lambda$226(mutableState) && !MainActivityKt.SettingsTabContent$lambda$232(mutableState2)) {
            MainActivityKt.SettingsTabContent$lambda$227(mutableState, true);
            mutableState3.setValue(null);
            BuildersKt.launch$default(lifecycleCoroutineScope, Dispatchers.getIO(), (CoroutineStart) null, new MainActivityKt$SettingsTabContent$8$1$6$2$1$1(bootstrapManager, mutableState3, mutableState, null), 2, (Object) null);
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$4$lambda$3(AppCompatActivity appCompatActivity) {
        try {
            appCompatActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://github.com/NousResearch/hermes-agent/releases")));
        } catch (Exception unused) {
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$6$lambda$5(AppCompatActivity appCompatActivity, LifecycleCoroutineScope lifecycleCoroutineScope, MutableState mutableState, MutableState mutableState2, BootstrapManager bootstrapManager, MutableState mutableState3) {
        MainActivityKt.SettingsTabContent$lambda$233(mutableState, true);
        mutableState2.setValue(appCompatActivity.getString(R.string.settings_starting_update));
        BuildersKt.launch$default(lifecycleCoroutineScope, Dispatchers.getIO(), (CoroutineStart) null, new MainActivityKt$SettingsTabContent$8$1$6$4$1$1(bootstrapManager, lifecycleCoroutineScope, mutableState2, appCompatActivity, mutableState, mutableState3, null), 2, (Object) null);
        return Unit.INSTANCE;
    }
}
