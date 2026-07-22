package com.hermes.android.ui.localllm;

import android.content.Context;
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
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
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
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.R;
import com.hermes.android.llama.ModelDownloadState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: compiled from: LocalLlmSetupScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<String> $busyLabel$delegate;
    final /* synthetic */ Context $context;
    final /* synthetic */ MutableState<ModelDownloadState> $dlState$delegate;
    final /* synthetic */ MutableIntState $refreshKey$delegate;
    final /* synthetic */ CoroutineScope $scope;

    LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1(CoroutineScope coroutineScope, Context context, MutableState<String> mutableState, MutableState<ModelDownloadState> mutableState2, MutableIntState mutableIntState) {
        this.$scope = coroutineScope;
        this.$context = context;
        this.$busyLabel$delegate = mutableState;
        this.$dlState$delegate = mutableState2;
        this.$refreshKey$delegate = mutableIntState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1448413391, i, -1, "com.hermes.android.ui.localllm.LocalLlmSetupScreen.<anonymous>.<anonymous>.<anonymous> (LocalLlmSetupScreen.kt:580)");
            }
            boolean z = false;
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.local_llm_dirty_exit_warning, composer, 0), (Modifier) null, LocalLlmSetupScreenKt.WarnAmber, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, TextUnitKt.getSp(18), 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3456, 6, 130034);
            SpacerKt.Spacer(SizeKt.height-3ABfNKs(Modifier.Companion, Dp.constructor-impl(10)), composer, 6);
            if (LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$8(this.$busyLabel$delegate) == null && LocalLlmSetupScreenKt.LocalLlmSetupScreen$lambda$11(this.$dlState$delegate) == null) {
                z = true;
            }
            Modifier modifier = SizeKt.height-3ABfNKs(SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null), Dp.constructor-impl(44));
            Shape shape = RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(12));
            BorderStroke borderStroke = BorderStrokeKt.BorderStroke-cXLIe8U(Dp.constructor-impl(1), Color.copy-wmQWz5c$default(LocalLlmSetupScreenKt.WarnAmber, 0.5f, 0.0f, 0.0f, 0.0f, 14, (Object) null));
            ButtonColors buttonColors = ButtonDefaults.INSTANCE.outlinedButtonColors-ro_MJ88(0L, LocalLlmSetupScreenKt.WarnAmber, 0L, 0L, composer, (ButtonDefaults.$stable << 12) | 48, 13);
            composer.startReplaceGroup(272179720);
            boolean zChangedInstance = composer.changedInstance(this.$scope) | composer.changedInstance(this.$context);
            final CoroutineScope coroutineScope = this.$scope;
            final Context context = this.$context;
            final MutableIntState mutableIntState = this.$refreshKey$delegate;
            Object objRememberedValue = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.ui.localllm.LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1.invoke$lambda$1$lambda$0(coroutineScope, context, mutableIntState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            ButtonKt.OutlinedButton((Function0) objRememberedValue, modifier, z, shape, buttonColors, (ButtonElevation) null, borderStroke, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$LocalLlmSetupScreenKt.INSTANCE.m85getLambda2$app_release(), composer, 806879280, 416);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(CoroutineScope coroutineScope, Context context, MutableIntState mutableIntState) {
        BuildersKt.launch$default(coroutineScope, (CoroutineContext) null, (CoroutineStart) null, new LocalLlmSetupScreenKt$LocalLlmSetupScreen$3$3$1$1$1$1(context, mutableIntState, null), 3, (Object) null);
        return Unit.INSTANCE;
    }
}
