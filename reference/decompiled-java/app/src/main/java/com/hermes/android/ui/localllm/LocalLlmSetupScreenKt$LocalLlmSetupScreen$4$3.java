package com.hermes.android.ui.localllm;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$3 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<DlTarget> $confirmDelete$delegate;

    LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$3(MutableState<DlTarget> mutableState) {
        this.$confirmDelete$delegate = mutableState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(MutableState mutableState) {
        mutableState.setValue(null);
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-88538654, i, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:1011)");
        }
        composer.startReplaceGroup(229114289);
        final MutableState<DlTarget> mutableState = this.$confirmDelete$delegate;
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$3$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return LocalLlmSetupScreenKt$LocalLlmSetupScreen$4$3.invoke$lambda$1$lambda$0(mutableState);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        composer.endReplaceGroup();
        ButtonKt.TextButton((Function0) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m83getLambda15$app_release(), composer, 805306374, 510);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
