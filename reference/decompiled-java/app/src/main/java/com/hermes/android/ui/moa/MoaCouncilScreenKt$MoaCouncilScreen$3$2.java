package com.hermes.android.ui.moa;

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
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MoaCouncilScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class MoaCouncilScreenKt$MoaCouncilScreen$3$2 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ MoaCouncilViewModel $viewModel;

    MoaCouncilScreenKt$MoaCouncilScreen$3$2(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope) {
        this.$viewModel = moaCouncilViewModel;
        this.$scope = coroutineScope;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(MoaCouncilViewModel moaCouncilViewModel, CoroutineScope coroutineScope) {
        moaCouncilViewModel.confirmDelete(coroutineScope);
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) == 2 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1881388019, i, -1, "com.hermes.android.ui.moa.MoaCouncilScreen.<anonymous>.<anonymous> (MoaCouncilScreen.kt:152)");
        }
        composer.startReplaceGroup(2001484061);
        boolean zChangedInstance = composer.changedInstance(this.$viewModel) | composer.changedInstance(this.$scope);
        final MoaCouncilViewModel moaCouncilViewModel = this.$viewModel;
        final CoroutineScope coroutineScope = this.$scope;
        Object objRememberedValue = composer.rememberedValue();
        if (zChangedInstance || objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = new Function0() { // from class: com.hermes.android.ui.moa.MoaCouncilScreenKt$MoaCouncilScreen$3$2$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return MoaCouncilScreenKt$MoaCouncilScreen$3$2.invoke$lambda$1$lambda$0(moaCouncilViewModel, coroutineScope);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        composer.endReplaceGroup();
        ButtonKt.TextButton((Function0) objRememberedValue, (Modifier) null, false, (Shape) null, (ButtonColors) null, (ButtonElevation) null, (BorderStroke) null, (PaddingValues) null, (MutableInteractionSource) null, ComposableSingletons$MoaCouncilScreenKt.INSTANCE.m113getLambda2$app_release(), composer, 805306368, 510);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
