package com.hermes.android;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonElevation;
import androidx.compose.material3.ButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: renamed from: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-3$1, reason: invalid class name */
/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class ComposableSingletons$MainActivityKt$lambda3$1 implements Function2<Composer, Integer, Unit> {
    public static final ComposableSingletons$MainActivityKt$lambda3$1 INSTANCE = new ComposableSingletons$MainActivityKt$lambda3$1();

    ComposableSingletons$MainActivityKt$lambda3$1() {
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0() {
        ModelSwitchPrompt.INSTANCE.dismiss();
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-534960116, i, -1, "com.hermes.android.ComposableSingletons$MainActivityKt.lambda-3.<anonymous> (MainActivity.kt:652)");
            }
            composer.startReplaceGroup(-1885377485);
            Object objRememberedValue = composer.rememberedValue();
            if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.ComposableSingletons$MainActivityKt$lambda-3$1$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return ComposableSingletons$MainActivityKt$lambda3$1.invoke$lambda$1$lambda$0();
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            ButtonKt.TextButton((Function0) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MainActivityKt.INSTANCE.m4248getLambda2$app_release(), composer, 805306374, 510);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }
}
