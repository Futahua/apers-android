package com.hermes.android;

import android.content.SharedPreferences;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$TerminalTabContent$20$1$1$1$1$6 implements Function3<BoxScope, Composer, Integer, Unit> {
    final /* synthetic */ MutableState<Boolean> $chatBadgePending$delegate;
    final /* synthetic */ MutableState<Boolean> $chatMode$delegate;
    final /* synthetic */ MutableState<Long> $chatSurfaceGen$delegate;
    final /* synthetic */ SharedPreferences $prefs;

    MainActivityKt$TerminalTabContent$20$1$1$1$1$6(SharedPreferences sharedPreferences, MutableState<Boolean> mutableState, MutableState<Long> mutableState2, MutableState<Boolean> mutableState3) {
        this.$prefs = sharedPreferences;
        this.$chatMode$delegate = mutableState;
        this.$chatSurfaceGen$delegate = mutableState2;
        this.$chatBadgePending$delegate = mutableState3;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((BoxScope) obj, (Composer) obj2, ((Number) obj3).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(BoxScope boxScope, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(boxScope, "$this$BadgedBox");
        if ((i & 17) != 16 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(684790889, i, -1, "com.hermes.android.TerminalTabContent.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:4796)");
            }
            composer.startReplaceGroup(-1075819269);
            boolean zChangedInstance = composer.changedInstance(this.$prefs);
            final SharedPreferences sharedPreferences = this.$prefs;
            final MutableState<Boolean> mutableState = this.$chatMode$delegate;
            final MutableState<Long> mutableState2 = this.$chatSurfaceGen$delegate;
            final MutableState<Boolean> mutableState3 = this.$chatBadgePending$delegate;
            Object objRememberedValue = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$TerminalTabContent$20$1$1$1$1$6$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return MainActivityKt$TerminalTabContent$20$1$1$1$1$6.invoke$lambda$1$lambda$0(sharedPreferences, mutableState, mutableState2, mutableState3);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            SurfaceKt.Surface-o_FOJdg((Function0) objRememberedValue, (Modifier) null, false, RoundedCornerShapeKt.getCircleShape(), Color.m1198copywmQWz5c$default(Color.INSTANCE.m1236getWhite0d7_KjU(), 0.15f, 0.0f, 0.0f, 0.0f, 14, null), 0L, 0.0f, 0.0f, (BorderStroke) null, (MutableInteractionSource) null, ComposableSingletons$MainActivityKt.INSTANCE.m4312getLambda78$app_release(), composer, 24576, 6, 998);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(SharedPreferences sharedPreferences, MutableState mutableState, MutableState mutableState2, MutableState mutableState3) {
        MainActivityKt.TerminalTabContent$lambda$420(mutableState, true);
        MainActivityKt.TerminalTabContent$lambda$423(mutableState2, MainActivityKt.TerminalTabContent$lambda$422(mutableState2) + 1);
        sharedPreferences.edit().putBoolean("chatskin_mode", true).apply();
        if (MainActivityKt.TerminalTabContent$lambda$425(mutableState3)) {
            MainActivityKt.TerminalTabContent$lambda$426(mutableState3, false);
            sharedPreferences.edit().putBoolean("chatskin_badge_pending", false).apply();
        }
        return Unit.INSTANCE;
    }
}
