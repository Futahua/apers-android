package com.hermes.android;

import android.content.Context;
import android.widget.Toast;
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
import com.hermes.android.ModelSwitchPrompt;
import com.termux.terminal.TerminalSession;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$HermesApp$4$12$3 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ ModelSwitchPrompt.Offer $offer;
    final /* synthetic */ TerminalSessionManager $sm;
    final /* synthetic */ Context $switchCtx;

    MainActivityKt$HermesApp$4$12$3(TerminalSessionManager terminalSessionManager, ModelSwitchPrompt.Offer offer, Context context) {
        this.$sm = terminalSessionManager;
        this.$offer = offer;
        this.$switchCtx = context;
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
            ComposerKt.traceEventStart(-2013505910, i, -1, "com.hermes.android.HermesApp.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:599)");
        }
        composer.startReplaceGroup(-977456335);
        boolean zChangedInstance = composer.changedInstance(this.$sm) | composer.changed(this.$offer) | composer.changedInstance(this.$switchCtx);
        final TerminalSessionManager terminalSessionManager = this.$sm;
        final ModelSwitchPrompt.Offer offer = this.$offer;
        final Context context = this.$switchCtx;
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
            objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$HermesApp$4$12$3$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return MainActivityKt$HermesApp$4$12$3.invoke$lambda$1$lambda$0(terminalSessionManager, offer, context);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        composer.endReplaceGroup();
        ButtonKt.TextButton((Function0) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MainActivityKt.INSTANCE.m4237getLambda1$app_release(), composer, 805306368, 510);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(TerminalSessionManager terminalSessionManager, ModelSwitchPrompt.Offer offer, Context context) {
        TerminalSession activeSession = terminalSessionManager.getActiveSession();
        if (activeSession != null && offer.getOriginSessionHandle() != null && Intrinsics.areEqual(activeSession.mHandle, offer.getOriginSessionHandle()) && activeSession.isRunning() && terminalSessionManager.hermesBinding(activeSession) != null && MainActivityKt.terminalSafeToType(activeSession)) {
            Intrinsics.checkNotNull(activeSession);
            activeSession.write(ModelSwitchPrompt.INSTANCE.command(offer));
            Toast.makeText(context, context.getString(R.string.model_switch_typed_hint), 1).show();
        } else {
            Toast.makeText(context, context.getString(R.string.model_switch_busy_hint), 1).show();
        }
        ModelSwitchPrompt.INSTANCE.dismiss();
        return Unit.INSTANCE;
    }
}
