package com.hermes.android.ui;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ModelIdSuggestField.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class ModelIdSuggestFieldKt$ModelIdSuggestField$1$2 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<Boolean> $expanded$delegate;

    ModelIdSuggestFieldKt$ModelIdSuggestField$1$2(MutableState<Boolean> mutableState) {
        this.$expanded$delegate = mutableState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(MutableState mutableState) {
        ModelIdSuggestFieldKt.ModelIdSuggestField$lambda$2(mutableState, !ModelIdSuggestFieldKt.ModelIdSuggestField$lambda$1(mutableState));
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-106926629, i, -1, "com.hermes.android.ui.ModelIdSuggestField.<anonymous>.<anonymous> (ModelIdSuggestField.kt:75)");
        }
        composer.startReplaceGroup(899635760);
        final MutableState<Boolean> mutableState = this.$expanded$delegate;
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new Function0() { // from class: com.hermes.android.ui.ModelIdSuggestFieldKt$ModelIdSuggestField$1$2$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return ModelIdSuggestFieldKt$ModelIdSuggestField$1$2.invoke$lambda$1$lambda$0(mutableState);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        composer.endReplaceGroup();
        IconButtonKt.IconButton((Function0) objRememberedValue, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$ModelIdSuggestFieldKt.INSTANCE.m41getLambda1$app_release(), composer, 196614, 30);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
