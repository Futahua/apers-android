package com.hermes.android;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.filled.OpenInBrowserKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NousAuthDialog.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
public final class ComposableSingletons$NousAuthDialogKt {
    public static final ComposableSingletons$NousAuthDialogKt INSTANCE = new ComposableSingletons$NousAuthDialogKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f93lambda1 = ComposableLambdaKt.composableLambdaInstance(-1714104114, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$NousAuthDialogKt$lambda-1$1
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
                ComposerKt.traceEventStart(-1714104114, i, -1, "com.hermes.android.ComposableSingletons$NousAuthDialogKt.lambda-1.<anonymous> (NousAuthDialog.kt:85)");
            }
            TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.nous_login_title, composer, 0), (Modifier) null, 0L, 0L, (FontStyle) null, FontWeight.INSTANCE.getBold(), (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 0, 131038);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-2, reason: not valid java name */
    public static Function3<RowScope, Composer, Integer, Unit> f94lambda2 = ComposableLambdaKt.composableLambdaInstance(615071557, false, new Function3<RowScope, Composer, Integer, Unit>() { // from class: com.hermes.android.ComposableSingletons$NousAuthDialogKt$lambda-2$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((RowScope) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(RowScope rowScope, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(rowScope, "$this$OutlinedButton");
            if ((i & 17) != 16 || !composer.getSkipping()) {
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(615071557, i, -1, "com.hermes.android.ComposableSingletons$NousAuthDialogKt.lambda-2.<anonymous> (NousAuthDialog.kt:136)");
                }
                IconKt.Icon-ww6aTOc(OpenInBrowserKt.getOpenInBrowser(Icons.INSTANCE.getDefault()), (String) null, SizeKt.size-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(16)), 0L, composer, 432, 8);
                SpacerKt.Spacer(SizeKt.width-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(6)), composer, 6);
                TextKt.Text--4IGK_g(StringResources_androidKt.stringResource(R.string.oauth_reopen_browser, composer, 0), (Modifier) null, 0L, TextUnitKt.getSp(12), (FontStyle) null, (FontWeight) null, (FontFamily) null, 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3072, 0, 131062);
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
    public final Function2<Composer, Integer, Unit> m4323getLambda1$app_release() {
        return f93lambda1;
    }

    /* JADX INFO: renamed from: getLambda-2$app_release, reason: not valid java name */
    public final Function3<RowScope, Composer, Integer, Unit> m4324getLambda2$app_release() {
        return f94lambda2;
    }
}
