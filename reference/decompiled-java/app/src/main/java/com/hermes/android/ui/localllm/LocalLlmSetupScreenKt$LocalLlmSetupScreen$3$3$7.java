package com.hermes.android.ui.localllm;

import android.content.Context;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.google.android.play.core.splitinstall.SplitInstallManager;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.R;
import com.hermes.android.llama.BackendPreference;
import com.hermes.android.llama.ModelDownloadState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<String> $busyLabel$delegate;
    final /* synthetic */ MutableState<DlTarget> $confirmDelete$delegate;
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<Job> $dlJob$delegate;
    final /* synthetic */ MutableState<ModelDownloadState> $dlState$delegate;
    final /* synthetic */ MutableState<DlTarget> $dlTarget$delegate;
    final /* synthetic */ MutableState<String> $errorText$delegate;
    final /* synthetic */ boolean $interactionEnabled;
    final /* synthetic */ boolean $npuActive;
    final /* synthetic */ MutableState<Integer> $npuModuleProgress$delegate;
    final /* synthetic */ MutableState<Boolean> $npuNeedsRestart$delegate;
    final /* synthetic */ Function1<Continuation<? super Unit>, Object> $onActivated;
    final /* synthetic */ Function0<Unit> $onBack;
    final /* synthetic */ MutableIntState $refreshKey$delegate;
    final /* synthetic */ MutableState<Function0<Unit>> $retryAction$delegate;
    final /* synthetic */ SetupSnapshot $s;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ MutableState<Boolean> $showPicker$delegate;
    final /* synthetic */ SplitInstallManager $splitManager;
    final /* synthetic */ String $strFailedChecksum;
    final /* synthetic */ String $strFailedFormat;
    final /* synthetic */ String $strFailedLoad;
    final /* synthetic */ String $strFailedNetwork;
    final /* synthetic */ String $strFailedRate;
    final /* synthetic */ String $strFailedStorage;
    final /* synthetic */ String $strFailedUnknown;
    final /* synthetic */ String $strStarting;

    LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7(SetupSnapshot setupSnapshot, boolean z, SplitInstallManager splitInstallManager, String str, CoroutineScope coroutineScope, String str2, Context context, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Function0<Unit> function0, String str3, String str4, String str5, String str6, String str7, String str8, boolean z2, MutableState<Boolean> mutableState, MutableState<Integer> mutableState2, MutableState<String> mutableState3, MutableState<Boolean> mutableState4, MutableState<DlTarget> mutableState5, MutableState<Job> mutableState6, MutableState<ModelDownloadState> mutableState7, MutableIntState mutableIntState, MutableState<String> mutableState8, MutableState<Function0<Unit>> mutableState9, MutableState<DlTarget> mutableState10) {
        this.$s = setupSnapshot;
        this.$interactionEnabled = z;
        this.$splitManager = splitInstallManager;
        this.$strFailedUnknown = str;
        this.$scope = coroutineScope;
        this.$strStarting = str2;
        this.$context = context;
        this.$onActivated = function1;
        this.$onBack = function0;
        this.$strFailedLoad = str3;
        this.$strFailedNetwork = str4;
        this.$strFailedStorage = str5;
        this.$strFailedChecksum = str6;
        this.$strFailedFormat = str7;
        this.$strFailedRate = str8;
        this.$npuActive = z2;
        this.$npuNeedsRestart$delegate = mutableState;
        this.$npuModuleProgress$delegate = mutableState2;
        this.$errorText$delegate = mutableState3;
        this.$showPicker$delegate = mutableState4;
        this.$dlTarget$delegate = mutableState5;
        this.$dlJob$delegate = mutableState6;
        this.$dlState$delegate = mutableState7;
        this.$refreshKey$delegate = mutableIntState;
        this.$busyLabel$delegate = mutableState8;
        this.$retryAction$delegate = mutableState9;
        this.$confirmDelete$delegate = mutableState10;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        Composer composer2;
        boolean z;
        int npuContextSize;
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1988057748, i, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:859)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_npu_model_desc, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.TextSecondary, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(18), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_backend_npu_desc, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(17), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
            composer.startReplaceGroup(272692061);
            if (this.$s.getNpuBundleReady() && 1 <= (npuContextSize = this.$s.getNpuContextSize()) && npuContextSize < 4096) {
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_npu_context_warn, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.WarnAmber, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(17), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
            }
            composer.endReplaceGroup();
            composer.startReplaceGroup(272708732);
            if (this.$s.getNpuBundleReady()) {
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(6)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_npu_bundle_ready, new Object[]{Integer.valueOf(this.$s.getNpuDownloadMb())}, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.TextSecondary, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                if (this.$s.getNpuContextSize() > 0) {
                    SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(2)), composer, 6);
                    TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_npu_context_info, new Object[]{this.$s.getNpuContextSize() % 1024 == 0 ? (this.$s.getNpuContextSize() / 1024) + "K" : String.valueOf(this.$s.getNpuContextSize())}, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.TextSecondary, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                }
            }
            composer.endReplaceGroup();
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(12)), composer, 6);
            if (LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$35(this.$npuNeedsRestart$delegate) || (this.$s.getNpuModuleInstalled() && !this.$s.getNpuModuleVisible())) {
                composer.startReplaceGroup(-134616514);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_backend_npu_restart, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.WarnAmber, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(18), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
                composer.endReplaceGroup();
            } else if (!this.$s.getNpuModuleInstalled()) {
                composer.startReplaceGroup(-134239306);
                Integer numLocalLlmSetupScreen$lambda$32 = LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$32(this.$npuModuleProgress$delegate);
                composer.startReplaceGroup(272765211);
                if (numLocalLlmSetupScreen$lambda$32 == null) {
                    z = false;
                } else {
                    z = false;
                    LocalLlmSetupScreenKt.ProgressBarLine(numLocalLlmSetupScreen$lambda$32.intValue(), composer, 0);
                    SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer, 6);
                    Unit unit = Unit.INSTANCE;
                    Unit unit2 = Unit.INSTANCE;
                }
                composer.endReplaceGroup();
                boolean z2 = (this.$interactionEnabled && LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$32(this.$npuModuleProgress$delegate) == null) ? true : z;
                Modifier modifier = SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(44));
                Shape shape = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(14));
                BorderStroke borderStroke = BorderStrokeKt.BorderStroke-cXLIe8U(Dp.constructor-impl(1), LocalLlmSetupScreenKt.GlassBorder);
                ButtonColors buttonColors = ButtonDefaults.INSTANCE.outlinedButtonColors-ro_MJ88(0L, LocalLlmSetupScreenKt.TextPrimary, 0L, 0L, composer, (ButtonDefaults.$stable << 12) | 48, 13);
                composer.startReplaceGroup(272773075);
                boolean zChangedInstance = composer.changedInstance(this.$splitManager) | composer.changed(this.$strFailedUnknown);
                final SplitInstallManager splitInstallManager = this.$splitManager;
                final MutableState<Integer> mutableState = this.$npuModuleProgress$delegate;
                final MutableState<String> mutableState2 = this.$errorText$delegate;
                final String str = this.$strFailedUnknown;
                Object objRememberedValue = composer.rememberedValue();
                if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7.invoke$lambda$2$lambda$1(splitInstallManager, mutableState, mutableState2, str);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                ButtonKt.OutlinedButton((Function0) objRememberedValue, modifier, z2, shape, buttonColors, (ButtonElevation) null, borderStroke, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m79getLambda11$app_release(), composer, 806879280, 416);
                composer.endReplaceGroup();
            } else if (!this.$s.getNpuBundleReady()) {
                composer.startReplaceGroup(-133266154);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_backend_npu_missing_bundle, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.TextMuted, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 0, 131058);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer, 6);
                Modifier modifier2 = SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(44));
                Shape shape2 = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(14));
                BorderStroke borderStroke2 = BorderStrokeKt.BorderStroke-cXLIe8U(Dp.constructor-impl(1), LocalLlmSetupScreenKt.GlassBorder);
                ButtonColors buttonColors2 = ButtonDefaults.INSTANCE.outlinedButtonColors-ro_MJ88(0L, LocalLlmSetupScreenKt.TextPrimary, 0L, 0L, composer, (ButtonDefaults.$stable << 12) | 48, 13);
                composer.startReplaceGroup(272806804);
                boolean zChanged = composer.changed(this.$strFailedUnknown) | composer.changedInstance(this.$scope) | composer.changed(this.$strStarting) | composer.changedInstance(this.$context) | composer.changedInstance(this.$onActivated) | composer.changed(this.$onBack) | composer.changed(this.$strFailedLoad) | composer.changed(this.$strFailedNetwork) | composer.changed(this.$strFailedStorage) | composer.changed(this.$strFailedChecksum) | composer.changed(this.$strFailedFormat) | composer.changed(this.$strFailedRate);
                final Context context = this.$context;
                final String str2 = this.$strFailedUnknown;
                final CoroutineScope coroutineScope = this.$scope;
                final MutableState<String> mutableState3 = this.$errorText$delegate;
                final MutableState<Boolean> mutableState4 = this.$showPicker$delegate;
                final MutableState<DlTarget> mutableState5 = this.$dlTarget$delegate;
                final MutableState<Job> mutableState6 = this.$dlJob$delegate;
                final MutableState<ModelDownloadState> mutableState7 = this.$dlState$delegate;
                final MutableIntState mutableIntState = this.$refreshKey$delegate;
                final String str3 = this.$strStarting;
                final Function0<Unit> function0 = this.$onBack;
                final String str4 = this.$strFailedLoad;
                final MutableState<String> mutableState8 = this.$busyLabel$delegate;
                final Function1<Continuation<? super Unit>, Object> function1 = this.$onActivated;
                final String str5 = this.$strFailedNetwork;
                final String str6 = this.$strFailedStorage;
                final String str7 = this.$strFailedChecksum;
                final String str8 = this.$strFailedFormat;
                final String str9 = this.$strFailedRate;
                final MutableState<Function0<Unit>> mutableState9 = this.$retryAction$delegate;
                Object objRememberedValue2 = composer.rememberedValue();
                if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
                    objRememberedValue2 = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda1
                        public final Object invoke() {
                            return LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7.invoke$lambda$4$lambda$3(context, str2, coroutineScope, mutableState3, mutableState4, mutableState5, mutableState6, mutableState7, mutableIntState, str3, function0, str4, mutableState8, function1, str5, str6, str7, str8, str9, mutableState9);
                        }
                    };
                    composer2 = composer;
                    composer2.updateRememberedValue(objRememberedValue2);
                } else {
                    composer2 = composer;
                }
                composer.endReplaceGroup();
                final SetupSnapshot setupSnapshot = this.$s;
                ButtonKt.OutlinedButton((Function0) objRememberedValue2, modifier2, this.$interactionEnabled, shape2, buttonColors2, (ButtonElevation) null, borderStroke2, (PaddingValues) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-1044829662, true, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7.4
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                        invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(RowScope rowScope, Composer composer3, int i2) {
                        Intrinsics.checkNotNullParameter(rowScope, "$this$OutlinedButton");
                        if ((i2 & 17) == 16 && composer3.getSkipping()) {
                            composer3.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1044829662, i2, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:940)");
                        }
                        TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_npu_bundle_button, new Object[]{Integer.valueOf(setupSnapshot.getNpuDownloadMb())}, composer3, 0), (Modifier) null, 0L, TextUnitKt.getSp(14), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer3, 3072, 0, 131062);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer2, 54), composer, 806879280, 416);
                composer.endReplaceGroup();
            } else if (!this.$npuActive) {
                composer.startReplaceGroup(-132106568);
                Modifier modifier3 = SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(48));
                Shape shape3 = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(14));
                ButtonColors buttonColors3 = ButtonDefaults.INSTANCE.buttonColors-ro_MJ88(Color.Companion.getWhite-0d7_KjU(), LocalLlmSetupScreenKt.ButtonBlueText, Color.copy-wmQWz5c$default(Color.Companion.getWhite-0d7_KjU(), 0.07f, 0.0f, 0.0f, 0.0f, 14, (Object) null), LocalLlmSetupScreenKt.TextMuted, composer, (ButtonDefaults.$stable << 12) | 3510, 0);
                ButtonElevation buttonElevation = ButtonDefaults.INSTANCE.buttonElevation-R_JCAzs(Dp.constructor-impl(0), 0.0f, 0.0f, 0.0f, 0.0f, composer, (ButtonDefaults.$stable << 15) | 6, 30);
                composer.startReplaceGroup(272834398);
                boolean zChangedInstance2 = composer.changedInstance(this.$scope) | composer.changed(this.$strStarting) | composer.changedInstance(this.$context) | composer.changedInstance(this.$onActivated) | composer.changed(this.$onBack) | composer.changed(this.$strFailedLoad);
                final CoroutineScope coroutineScope2 = this.$scope;
                final String str10 = this.$strStarting;
                final Function0<Unit> function02 = this.$onBack;
                final String str11 = this.$strFailedLoad;
                final MutableState<String> mutableState10 = this.$busyLabel$delegate;
                final MutableState<String> mutableState11 = this.$errorText$delegate;
                final Context context2 = this.$context;
                final Function1<Continuation<? super Unit>, Object> function12 = this.$onActivated;
                final MutableIntState mutableIntState2 = this.$refreshKey$delegate;
                Object objRememberedValue3 = composer.rememberedValue();
                if (zChangedInstance2 || objRememberedValue3 == Composer.Companion.getEmpty()) {
                    objRememberedValue3 = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda2
                        public final Object invoke() {
                            return LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7.invoke$lambda$6$lambda$5(coroutineScope2, str10, function02, str11, mutableState10, mutableState11, context2, function12, mutableIntState2);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue3);
                }
                composer.endReplaceGroup();
                ButtonKt.Button((Function0) objRememberedValue3, modifier3, this.$interactionEnabled, shape3, buttonColors3, buttonElevation, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m80getLambda12$app_release(), composer, 805306416, 448);
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(8)), composer, 6);
                String strStringResource = StringResources_androidKt.stringResource(R.string.local_llm_npu_delete, composer, 0);
                boolean z3 = this.$interactionEnabled;
                composer.startReplaceGroup(272873343);
                final MutableState<DlTarget> mutableState12 = this.$confirmDelete$delegate;
                Object objRememberedValue4 = composer.rememberedValue();
                if (objRememberedValue4 == Composer.Companion.getEmpty()) {
                    objRememberedValue4 = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda3
                        public final Object invoke() {
                            return LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7.invoke$lambda$8$lambda$7(mutableState12);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue4);
                }
                composer.endReplaceGroup();
                LocalLlmSetupScreenKt.DeleteTextButton(strStringResource, z3, (Function0) objRememberedValue4, composer, 384);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(-130583972);
                String strStringResource2 = StringResources_androidKt.stringResource(R.string.local_llm_npu_delete, composer, 0);
                boolean z4 = this.$interactionEnabled;
                composer.startReplaceGroup(272889599);
                final MutableState<DlTarget> mutableState13 = this.$confirmDelete$delegate;
                Object objRememberedValue5 = composer.rememberedValue();
                if (objRememberedValue5 == Composer.Companion.getEmpty()) {
                    objRememberedValue5 = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7$$ExternalSyntheticLambda4
                        public final Object invoke() {
                            return LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$7.invoke$lambda$10$lambda$9(mutableState13);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue5);
                }
                composer.endReplaceGroup();
                LocalLlmSetupScreenKt.DeleteTextButton(strStringResource2, z4, (Function0) objRememberedValue5, composer, 384);
                composer.endReplaceGroup();
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
    public static final Unit invoke$lambda$2$lambda$1(SplitInstallManager splitInstallManager, MutableState mutableState, MutableState mutableState2, String str) {
        LocalLlmSetupScreenKt.LocalLlmSetupScreen$startNpuModuleInstall(splitInstallManager, mutableState, mutableState2, str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$4$lambda$3(Context context, String str, CoroutineScope coroutineScope, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableIntState mutableIntState, String str2, Function0 function0, String str3, MutableState mutableState6, Function1 function1, String str4, String str5, String str6, String str7, String str8, MutableState mutableState7) {
        LocalLlmSetupScreenKt.LocalLlmSetupScreen$startNpuBundleDownload(context, str, coroutineScope, mutableState, mutableState2, mutableState3, mutableState4, mutableState5, mutableIntState, str2, function0, str3, mutableState6, function1, str4, str5, str6, str7, str8, mutableState7);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$6$lambda$5(CoroutineScope coroutineScope, String str, Function0 function0, String str2, MutableState mutableState, MutableState mutableState2, Context context, Function1 function1, MutableIntState mutableIntState) {
        LocalLlmSetupScreenKt.LocalLlmSetupScreen$activateEngine(coroutineScope, str, function0, str2, mutableState, mutableState2, context, function1, mutableIntState, BackendPreference.VALUE_NPU, true);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$8$lambda$7(MutableState mutableState) {
        mutableState.setValue(DlTarget.NPU_BUNDLE);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$10$lambda$9(MutableState mutableState) {
        mutableState.setValue(DlTarget.NPU_BUNDLE);
        return Unit.INSTANCE;
    }
}
