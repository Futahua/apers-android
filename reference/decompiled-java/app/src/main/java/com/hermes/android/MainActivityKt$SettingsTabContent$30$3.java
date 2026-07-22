package com.hermes.android;

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
import com.hermes.android.handoff.HandoffImporter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$30$3 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<String> $handoffImportedSessionId$delegate;
    final /* synthetic */ MutableState<HandoffImporter.Stats> $handoffResult$delegate;

    MainActivityKt$SettingsTabContent$30$3(MutableState<String> mutableState, MutableState<HandoffImporter.Stats> mutableState2) {
        this.$handoffImportedSessionId$delegate = mutableState;
        this.$handoffResult$delegate = mutableState2;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1750166772, i, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous> (MainActivity.kt:3632)");
            }
            if (MainActivityKt.SettingsTabContent$lambda$275(this.$handoffImportedSessionId$delegate) != null) {
                composer.startReplaceGroup(1941026615);
                final MutableState<HandoffImporter.Stats> mutableState = this.$handoffResult$delegate;
                Object objRememberedValue = composer.rememberedValue();
                if (objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$30$3$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return MainActivityKt$SettingsTabContent$30$3.invoke$lambda$1$lambda$0(mutableState);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                ButtonKt.TextButton((Function0) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MainActivityKt.INSTANCE.m4286getLambda54$app_release(), composer, 805306374, 510);
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
    public static final Unit invoke$lambda$1$lambda$0(MutableState mutableState) {
        mutableState.setValue(null);
        return Unit.INSTANCE;
    }
}
