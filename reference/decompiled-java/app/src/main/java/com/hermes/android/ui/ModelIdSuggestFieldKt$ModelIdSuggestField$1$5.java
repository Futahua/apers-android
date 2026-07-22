package com.hermes.android.ui;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.MenuItemColors;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.TextUnitKt;
import com.goterl.lazysodium.interfaces.Box;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ModelIdSuggestField.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
final class ModelIdSuggestFieldKt$ModelIdSuggestField$1$5 implements Function3<ColumnScope, Composer, Integer, Unit> {
    final /* synthetic */ MutableState<Boolean> $expanded$delegate;
    final /* synthetic */ List<String> $filtered;
    final /* synthetic */ Function1<String, Unit> $onValueChange;

    /* JADX WARN: Multi-variable type inference failed */
    ModelIdSuggestFieldKt$ModelIdSuggestField$1$5(List<String> list, Function1<? super String, Unit> function1, MutableState<Boolean> mutableState) {
        this.$filtered = list;
        this.$onValueChange = function1;
        this.$expanded$delegate = mutableState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        invoke((ColumnScope) obj, (Composer) obj2, ((Number) obj3).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(ColumnScope columnScope, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(columnScope, "$this$DropdownMenu");
        if ((i & 17) != 16 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-585835270, i, -1, "com.hermes.android.ui.ModelIdSuggestField.<anonymous>.<anonymous> (ModelIdSuggestField.kt:90)");
            }
            List<String> listTake = CollectionsKt.take(this.$filtered, 50);
            final Function1<String, Unit> function1 = this.$onValueChange;
            final MutableState<Boolean> mutableState = this.$expanded$delegate;
            for (final String str : listTake) {
                Function2 function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-1034246534, true, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ModelIdSuggestFieldKt$ModelIdSuggestField$1$5$1$1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        invoke((Composer) obj, ((Number) obj2).intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer2, int i2) {
                        if ((i2 & 3) == 2 && composer2.getSkipping()) {
                            composer2.skipToGroupEnd();
                            return;
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1034246534, i2, -1, "com.hermes.android.ui.ModelIdSuggestField.<anonymous>.<anonymous>.<anonymous>.<anonymous> (ModelIdSuggestField.kt:92)");
                        }
                        TextKt.Text--4IGK_g(str, (Modifier) null, 0L, TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 1, 0, (Function1) null, (TextStyle) null, composer2, 3072, 3072, 122870);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                    }
                }, composer, 54);
                composer.startReplaceGroup(-1642867391);
                boolean zChanged = composer.changed(function1) | composer.changed(str);
                Object objRememberedValue = composer.rememberedValue();
                if (zChanged || objRememberedValue == Composer.Companion.getEmpty()) {
                    objRememberedValue = new Function0() { // from class: com.hermes.android.ui.ModelIdSuggestFieldKt$ModelIdSuggestField$1$5$$ExternalSyntheticLambda0
                        public final Object invoke() {
                            return ModelIdSuggestFieldKt$ModelIdSuggestField$1$5.invoke$lambda$2$lambda$1$lambda$0(function1, str, mutableState);
                        }
                    };
                    composer.updateRememberedValue(objRememberedValue);
                }
                composer.endReplaceGroup();
                AndroidMenu_androidKt.DropdownMenuItem(function2RememberComposableLambda, (Function0) objRememberedValue, (Modifier) null, (Function2) null, (Function2) null, false, (MenuItemColors) null, (PaddingValues) null, (MutableInteractionSource) null, composer, 6, 508);
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
    public static final Unit invoke$lambda$2$lambda$1$lambda$0(Function1 function1, String str, MutableState mutableState) {
        function1.invoke(str);
        ModelIdSuggestFieldKt.ModelIdSuggestField$lambda$2(mutableState, false);
        return Unit.INSTANCE;
    }
}
