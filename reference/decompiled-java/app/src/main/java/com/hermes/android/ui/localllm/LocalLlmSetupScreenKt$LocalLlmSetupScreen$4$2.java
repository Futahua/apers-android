package com.hermes.android.ui.localllm;

import android.content.Context;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<String> $busyLabel$delegate;
    final /* synthetic */ MutableState<DlTarget> $confirmDelete$delegate;
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<String> $errorText$delegate;
    final /* synthetic */ MutableIntState $refreshKey$delegate;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ String $strDeleteFailed;
    final /* synthetic */ String $strDeleting;
    final /* synthetic */ String $strEngineBusy;
    final /* synthetic */ DlTarget $target;

    LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2(DlTarget dlTarget, CoroutineScope coroutineScope, String str, Context context, String str2, String str3, MutableState<DlTarget> mutableState, MutableState<String> mutableState2, MutableState<String> mutableState3, MutableIntState mutableIntState) {
        this.$target = dlTarget;
        this.$scope = coroutineScope;
        this.$strDeleting = str;
        this.$context = context;
        this.$strDeleteFailed = str2;
        this.$strEngineBusy = str3;
        this.$confirmDelete$delegate = mutableState;
        this.$busyLabel$delegate = mutableState2;
        this.$errorText$delegate = mutableState3;
        this.$refreshKey$delegate = mutableIntState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-575612380, i, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:1004)");
        }
        composer.startReplaceGroup(229102227);
        boolean zChanged = composer.changed(this.$target) | composer.changedInstance(this.$scope) | composer.changed(this.$strDeleting) | composer.changedInstance(this.$context) | composer.changed(this.$strDeleteFailed) | composer.changed(this.$strEngineBusy);
        final DlTarget dlTarget = this.$target;
        final MutableState<DlTarget> mutableState = this.$confirmDelete$delegate;
        final CoroutineScope coroutineScope = this.$scope;
        final String str = this.$strDeleting;
        final String str2 = this.$strDeleteFailed;
        final String str3 = this.$strEngineBusy;
        final MutableState<String> mutableState2 = this.$busyLabel$delegate;
        final MutableState<String> mutableState3 = this.$errorText$delegate;
        final Context context = this.$context;
        final MutableIntState mutableIntState = this.$refreshKey$delegate;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$2.invoke$lambda$1$lambda$0(dlTarget, mutableState, coroutineScope, str, str2, str3, mutableState2, mutableState3, context, mutableIntState);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        composer.endReplaceGroup();
        ButtonKt.TextButton((Function0) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m82getLambda14$app_release(), composer, 805306368, 510);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(DlTarget dlTarget, MutableState mutableState, CoroutineScope coroutineScope, String str, String str2, String str3, MutableState mutableState2, MutableState mutableState3, Context context, MutableIntState mutableIntState) {
        mutableState.setValue(null);
        if (dlTarget == DlTarget.NPU_BUNDLE) {
            LocalLlmSetupScreenKt.LocalLlmSetupScreen$deleteNpuBundle(coroutineScope, str, str2, str3, mutableState2, mutableState3, context, mutableIntState);
        } else {
            LocalLlmSetupScreenKt.LocalLlmSetupScreen$deleteGgufModel(coroutineScope, str, str2, str3, mutableState2, mutableState3, context, mutableIntState);
        }
        return Unit.INSTANCE;
    }
}
