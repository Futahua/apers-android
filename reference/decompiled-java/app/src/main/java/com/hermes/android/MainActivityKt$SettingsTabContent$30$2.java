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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$30$2 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<String> $handoffImportedSessionId$delegate;
    final /* synthetic */ MutableState<HandoffImporter.Stats> $handoffResult$delegate;
    final /* synthetic */ Function1<String, Unit> $onHandoffImported;

    /* JADX WARN: Multi-variable type inference failed */
    MainActivityKt$SettingsTabContent$30$2(Function1<? super String, Unit> function1, MutableState<String> mutableState, MutableState<HandoffImporter.Stats> mutableState2) {
        this.$onHandoffImported = function1;
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
                ComposerKt.traceEventStart(204082870, i, -1, "com.hermes.android.SettingsTabContent.<anonymous>.<anonymous> (MainActivity.kt:3621)");
            }
            final String strSettingsTabContent$lambda$275 = MainActivityKt.SettingsTabContent$lambda$275(this.$handoffImportedSessionId$delegate);
            if (strSettingsTabContent$lambda$275 != null) {
                composer.startReplaceGroup(41786365);
                composer.startReplaceGroup(1941011858);
                boolean zChanged = composer.changed(this.$onHandoffImported) | composer.changed(strSettingsTabContent$lambda$275);
                final Function1<String, Unit> function1 = this.$onHandoffImported;
                final MutableState<HandoffImporter.Stats> mutableState = this.$handoffResult$delegate;
                Object objRememberedValue = composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$30$2$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return MainActivityKt$SettingsTabContent$30$2.invoke$lambda$1$lambda$0(function1, strSettingsTabContent$lambda$275, mutableState);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                ButtonKt.TextButton((Function0) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MainActivityKt.INSTANCE.m4284getLambda52$app_release(), composer, 805306368, 510);
                composer.endReplaceGroup();
            } else {
                composer.startReplaceGroup(42017315);
                composer.startReplaceGroup(1941019319);
                final MutableState<HandoffImporter.Stats> mutableState2 = this.$handoffResult$delegate;
                Object objRememberedValue2 = composer.rememberedValue();
                if (objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue2 = new Function0() { // from class: com.hermes.android.MainActivityKt$SettingsTabContent$30$2$$ExternalSyntheticLambda1
                        public final Object invoke() {
                            return MainActivityKt$SettingsTabContent$30$2.invoke$lambda$3$lambda$2(mutableState2);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue2);
                }
                composer.endReplaceGroup();
                ButtonKt.TextButton((Function0) objRememberedValue2, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MainActivityKt.INSTANCE.m4285getLambda53$app_release(), composer, 805306374, 510);
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
    public static final Unit invoke$lambda$1$lambda$0(Function1 function1, String str, MutableState mutableState) {
        mutableState.setValue(null);
        function1.invoke(str);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$3$lambda$2(MutableState mutableState) {
        mutableState.setValue(null);
        return Unit.INSTANCE;
    }
}
