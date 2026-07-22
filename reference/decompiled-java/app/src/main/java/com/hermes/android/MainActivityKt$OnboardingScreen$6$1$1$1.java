package com.hermes.android;

import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import com.hermes.android.MainActivityKt;
import com.hermes.android.data.AiProvider;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$OnboardingScreen$6$1$1$1 implements Function4<LazyItemScope, Integer, Composer, Integer, Unit> {
    final /* synthetic */ String $apiProvider;
    final /* synthetic */ Function1<AiProvider, Unit> $onOAuthSelected;
    final /* synthetic */ Function1<String, Unit> $onProviderChange;
    final /* synthetic */ List<AiProvider> $popular;
    final /* synthetic */ MutableState<Boolean> $showProviderPicker$delegate;

    /* JADX WARN: Multi-variable type inference failed */
    MainActivityKt$OnboardingScreen$6$1$1$1(List<AiProvider> list, String str, Function1<? super AiProvider, Unit> function1, Function1<? super String, Unit> function12, MutableState<Boolean> mutableState) {
        this.$popular = list;
        this.$apiProvider = str;
        this.$onOAuthSelected = function1;
        this.$onProviderChange = function12;
        this.$showProviderPicker$delegate = mutableState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        invoke((LazyItemScope) obj, ((Number) obj2).intValue(), (Composer) obj3, ((Number) obj4).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
        Intrinsics.checkNotNullParameter(lazyItemScope, "$this$items");
        if ((i2 & 48) == 0) {
            i2 |= composer.changed(i) ? 32 : 16;
        }
        if ((i2 & 145) == 144 && composer.getSkipping()) {
            composer.skipToGroupEnd();
            return;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(103860521, i2, -1, "com.hermes.android.OnboardingScreen.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:1032)");
        }
        final AiProvider aiProvider = this.$popular.get(i);
        boolean zAreEqual = Intrinsics.areEqual(aiProvider.getId(), this.$apiProvider);
        composer.startReplaceGroup(-399300600);
        boolean zChanged = composer.changed(this.$onOAuthSelected) | composer.changed(this.$onProviderChange) | composer.changed(aiProvider);
        final Function1<AiProvider, Unit> function1 = this.$onOAuthSelected;
        final Function1<String, Unit> function12 = this.$onProviderChange;
        final MutableState<Boolean> mutableState = this.$showProviderPicker$delegate;
        Object objRememberedValue = composer.rememberedValue();
        if (zChanged || objRememberedValue == Composer.INSTANCE.getEmpty()) {
            objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$OnboardingScreen$6$1$1$1$$ExternalSyntheticLambda0
                public final Object invoke() {
                    return MainActivityKt$OnboardingScreen$6$1$1$1.invoke$lambda$1$lambda$0(aiProvider, function1, function12, mutableState);
                }
            };
            composer.updateRememberedValue(objRememberedValue);
        }
        composer.endReplaceGroup();
        MainActivityKt.ProviderPickerRow(aiProvider, zAreEqual, (Function0) objRememberedValue, composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$1$lambda$0(AiProvider aiProvider, Function1 function1, Function1 function12, MutableState mutableState) {
        MainActivityKt.AnonymousClass6.invoke$lambda$2$lambda$1$pick(function1, function12, mutableState, aiProvider);
        return Unit.INSTANCE;
    }
}
