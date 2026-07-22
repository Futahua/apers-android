package com.hermes.android.ui;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.ArrowDropDownKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ModelIdSuggestField.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ComposableSingletons$ModelIdSuggestFieldKt {
    public static final ComposableSingletons$ModelIdSuggestFieldKt INSTANCE = new ComposableSingletons$ModelIdSuggestFieldKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f11lambda1 = ComposableLambdaKt.composableLambdaInstance(705408056, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$ModelIdSuggestFieldKt$lambda-1$1
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
                ComposerKt.traceEventStart(705408056, i, -1, "com.hermes.android.ui.ComposableSingletons$ModelIdSuggestFieldKt.lambda-1.<anonymous> (ModelIdSuggestField.kt:76)");
            }
            IconKt.Icon-ww6aTOc(ArrowDropDownKt.getArrowDropDown(Icons.INSTANCE.getDefault()), (String) null, (Modifier) null, 0L, composer, 48, 12);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: getLambda-1$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m41getLambda1$app_release() {
        return f11lambda1;
    }
}
