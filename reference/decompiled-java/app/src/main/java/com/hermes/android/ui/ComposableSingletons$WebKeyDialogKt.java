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
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.R;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebKeyDialog.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ComposableSingletons$WebKeyDialogKt {
    public static final ComposableSingletons$WebKeyDialogKt INSTANCE = new ComposableSingletons$WebKeyDialogKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f12lambda1 = ComposableLambdaKt.composableLambdaInstance(994915355, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$WebKeyDialogKt$lambda-1$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$TextButton");
            if ((i & 17) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(994915355, i, -1, "com.hermes.android.ui.ComposableSingletons$WebKeyDialogKt.lambda-1.<anonymous> (WebKeyDialog.kt:88)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_save, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f13lambda2 = ComposableLambdaKt.composableLambdaInstance(-1146945123, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$WebKeyDialogKt$lambda-2$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$TextButton");
            if ((i & 17) == 16 && composer.getSkipping()) {
                composer.skipToGroupEnd();
                return;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1146945123, i, -1, "com.hermes.android.ui.ComposableSingletons$WebKeyDialogKt.lambda-2.<anonymous> (WebKeyDialog.kt:91)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.btn_cancel, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-3, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f14lambda3 = ComposableLambdaKt.composableLambdaInstance(64835554, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$WebKeyDialogKt$lambda-3$1
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
                ComposerKt.traceEventStart(64835554, i, -1, "com.hermes.android.ui.ComposableSingletons$WebKeyDialogKt.lambda-3.<anonymous> (WebKeyDialog.kt:55)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.web_key_dialog_title, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-4, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f15lambda4 = ComposableLambdaKt.composableLambdaInstance(496331059, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$WebKeyDialogKt$lambda-4$1
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
                ComposerKt.traceEventStart(496331059, i, -1, "com.hermes.android.ui.ComposableSingletons$WebKeyDialogKt.lambda-4.<anonymous> (WebKeyDialog.kt:77)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.web_key_field, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 0, 0, 131070);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: getLambda-1$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m42getLambda1$app_release() {
        return f12lambda1;
    }

    /* JADX INFO: renamed from: getLambda-2$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m43getLambda2$app_release() {
        return f13lambda2;
    }

    /* JADX INFO: renamed from: getLambda-3$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m44getLambda3$app_release() {
        return f14lambda3;
    }

    /* JADX INFO: renamed from: getLambda-4$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m45getLambda4$app_release() {
        return f15lambda4;
    }
}
