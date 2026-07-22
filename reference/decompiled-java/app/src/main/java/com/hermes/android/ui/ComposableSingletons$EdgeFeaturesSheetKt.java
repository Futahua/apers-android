package com.hermes.android.ui;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.TextUnitKt;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EdgeFeaturesSheet.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ComposableSingletons$EdgeFeaturesSheetKt {
    public static final ComposableSingletons$EdgeFeaturesSheetKt INSTANCE = new ComposableSingletons$EdgeFeaturesSheetKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f5lambda1 = ComposableLambdaKt.composableLambdaInstance(-1979342735, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$EdgeFeaturesSheetKt$lambda-1$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$Button");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1979342735, i, -1, "com.hermes.android.ui.ComposableSingletons$EdgeFeaturesSheetKt.lambda-1.<anonymous> (EdgeFeaturesSheet.kt:297)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.edge_btn_unlock, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(15), (FontStyle) null, FontWeight.Companion.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199680, 0, 131030);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f6lambda2 = ComposableLambdaKt.composableLambdaInstance(-1880055132, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$EdgeFeaturesSheetKt$lambda-2$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$OutlinedButton");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1880055132, i, -1, "com.hermes.android.ui.ComposableSingletons$EdgeFeaturesSheetKt.lambda-2.<anonymous> (EdgeFeaturesSheet.kt:414)");
                }
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.edge_close, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(15), (FontStyle) null, FontWeight.Companion.getMedium(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 199680, 0, 131030);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                    return;
                }
                return;
            }
            composer.skipToGroupEnd();
        }
    });

    /* JADX INFO: renamed from: getLambda-1$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m35getLambda1$app_release() {
        return f5lambda1;
    }

    /* JADX INFO: renamed from: getLambda-2$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m36getLambda2$app_release() {
        return f6lambda2;
    }
}
