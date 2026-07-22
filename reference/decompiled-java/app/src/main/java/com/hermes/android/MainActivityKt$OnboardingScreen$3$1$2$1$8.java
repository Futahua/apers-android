package com.hermes.android;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.VisibilityKt;
import androidx.compose.material.icons.filled.VisibilityOffKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$OnboardingScreen$3$1$2$1$8 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<Boolean> $showKey$delegate;

    MainActivityKt$OnboardingScreen$3$1$2$1$8(MutableState<Boolean> mutableState) {
        this.$showKey$delegate = mutableState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(MutableState mutableState) {
        MainActivityKt.OnboardingScreen$lambda$48(mutableState, !MainActivityKt.OnboardingScreen$lambda$47(mutableState));
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1766427093, i, -1, "com.hermes.android.OnboardingScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:925)");
        }
        composer.startReplaceGroup(91734898);
        final MutableState<Boolean> mutableState = this.$showKey$delegate;
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
            objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$3$1$2$1$8$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return MainActivityKt$OnboardingScreen$3$1$2$1$8.invoke$lambda$1$lambda$0(mutableState);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        Function0 function0 = (Function0) objRememberedValue;
        composer.endReplaceGroup();
        final MutableState<Boolean> mutableState2 = this.$showKey$delegate;
        IconButtonKt.IconButton(function0, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableLambdaKt.rememberComposableLambda(-626191352, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$3$1$2$1$8.2
            public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                invoke((Composer) obj, ((Number) obj2).intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i2) {
                if ((i2 & 3) != 2 || !composer2.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(-626191352, i2, -1, "com.hermes.android.OnboardingScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:926)");
                    }
                    IconKt.Icon-ww6aTOc(MainActivityKt.OnboardingScreen$lambda$47(mutableState2) ? VisibilityOffKt.getVisibilityOff(Icons.INSTANCE.getDefault()) : VisibilityKt.getVisibility(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, MainActivityKt.TextMuted, composer2, 3120, 4);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                composer2.skipToGroupEnd();
            }
        }, composer, 54), composer, 196614, 30);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
