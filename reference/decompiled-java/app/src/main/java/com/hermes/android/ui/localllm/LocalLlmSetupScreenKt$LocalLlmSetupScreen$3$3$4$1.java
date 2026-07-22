package com.hermes.android.ui.localllm;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
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
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$4$1 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<String> $errorText$delegate;
    final /* synthetic */ String $msg;
    final /* synthetic */ MutableState<Function0<Unit>> $retryAction$delegate;

    LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$4$1(String str, MutableState<Function0<Unit>> mutableState, MutableState<String> mutableState2) {
        this.$msg = str;
        this.$retryAction$delegate = mutableState;
        this.$errorText$delegate = mutableState2;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-937452592, i, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:651)");
            }
            TextKt.Text--4IGK_g(this.$msg, (Modifier) null, LocalLlmSetupScreenKt.ErrorRed, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(18), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
            final Function0 function0LocalLlmSetupScreen$lambda$23 = LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$23(this.$retryAction$delegate);
            if (function0LocalLlmSetupScreen$lambda$23 != null) {
                final MutableState<String> mutableState = this.$errorText$delegate;
                final MutableState<Function0<Unit>> mutableState2 = this.$retryAction$delegate;
                SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(10)), composer, 6);
                Modifier modifier = SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(44));
                Shape shape = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(12));
                BorderStroke borderStroke = BorderStrokeKt.BorderStroke-cXLIe8U(Dp.constructor-impl(1), LocalLlmSetupScreenKt.GlassBorder);
                ButtonColors buttonColors = ButtonDefaults.INSTANCE.outlinedButtonColors-ro_MJ88(0L, LocalLlmSetupScreenKt.TextPrimary, 0L, 0L, composer, (ButtonDefaults.$stable << 12) | 48, 13);
                composer.startReplaceGroup(-1798751833);
                boolean zChanged = composer.changed(function0LocalLlmSetupScreen$lambda$23);
                Object objRememberedValue = composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$4$1$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$4$1.invoke$lambda$2$lambda$1$lambda$0(function0LocalLlmSetupScreen$lambda$23, mutableState, mutableState2);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                ButtonKt.OutlinedButton((Function0) objRememberedValue, modifier, false, shape, buttonColors, (ButtonElevation) null, borderStroke, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m86getLambda3$app_release(), composer, 806879280, 420);
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
    public static final Unit invoke$lambda$2$lambda$1$lambda$0(Function0 function0, MutableState mutableState, MutableState mutableState2) {
        mutableState.setValue(null);
        mutableState2.setValue(null);
        function0.invoke();
        return Unit.INSTANCE;
    }
}
