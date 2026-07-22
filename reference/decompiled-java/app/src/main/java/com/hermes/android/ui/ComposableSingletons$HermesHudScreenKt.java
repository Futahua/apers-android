package com.hermes.android.ui;

import androidx.compose.material.icons.Icons;
import androidx.compose.material.icons.automirrored.filled.ArrowBackKt;
import androidx.compose.material.icons.filled.RefreshKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TabPosition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.R;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HermesHudScreen.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ComposableSingletons$HermesHudScreenKt {
    public static final ComposableSingletons$HermesHudScreenKt INSTANCE = new ComposableSingletons$HermesHudScreenKt();

    /* JADX INFO: renamed from: lambda-1, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f7lambda1 = ComposableLambdaKt.composableLambdaInstance(1285727484, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$HermesHudScreenKt$lambda-1$1
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
                ComposerKt.traceEventStart(1285727484, i, -1, "com.hermes.android.ui.ComposableSingletons$HermesHudScreenKt.lambda-1.<anonymous> (HermesHudScreen.kt:108)");
            }
            IconKt.Icon-ww6aTOc(ArrowBackKt.getArrowBack(Icons.AutoMirrored.Filled.INSTANCE), StringResources_androidKt.stringResource(R.string.btn_back, composer, 0), (Modifier) null, HermesHudScreenKt.TextPrimary, composer, 3072, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-2, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f8lambda2 = ComposableLambdaKt.composableLambdaInstance(863991973, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$HermesHudScreenKt$lambda-2$1
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
                ComposerKt.traceEventStart(863991973, i, -1, "com.hermes.android.ui.ComposableSingletons$HermesHudScreenKt.lambda-2.<anonymous> (HermesHudScreen.kt:119)");
            }
            IconKt.Icon-ww6aTOc(RefreshKt.getRefresh(Icons.INSTANCE.getDefault()), StringResources_androidKt.stringResource(R.string.hud_refresh, composer, 0), (Modifier) null, HermesHudScreenKt.TextSecondary, composer, 3072, 4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-3, reason: not valid java name */
    public static Function3<List<TabPosition>, Composer, Integer, Unit> f9lambda3 = ComposableLambdaKt.composableLambdaInstance(1495213309, false, new Function3<List<? extends TabPosition>, Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$HermesHudScreenKt$lambda-3$1
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            invoke((List<TabPosition>) obj, (Composer) obj2, ((Number) obj3).intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(List<TabPosition> list, Composer composer, int i) {
            Intrinsics.checkNotNullParameter(list, "it");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1495213309, i, -1, "com.hermes.android.ui.ComposableSingletons$HermesHudScreenKt.lambda-3.<anonymous> (HermesHudScreen.kt:136)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: lambda-4, reason: not valid java name */
    public static Function2<Composer, Integer, Unit> f10lambda4 = ComposableLambdaKt.composableLambdaInstance(-1094756642, false, new Function2<Composer, Integer, Unit>() { // from class: com.hermes.android.ui.ComposableSingletons$HermesHudScreenKt$lambda-4$1
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
                ComposerKt.traceEventStart(-1094756642, i, -1, "com.hermes.android.ui.ComposableSingletons$HermesHudScreenKt.lambda-4.<anonymous> (HermesHudScreen.kt:137)");
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
    });

    /* JADX INFO: renamed from: getLambda-1$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m37getLambda1$app_release() {
        return f7lambda1;
    }

    /* JADX INFO: renamed from: getLambda-2$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m38getLambda2$app_release() {
        return f8lambda2;
    }

    /* JADX INFO: renamed from: getLambda-3$app_release, reason: not valid java name */
    public final Function3<List<TabPosition>, Composer, Integer, Unit> m39getLambda3$app_release() {
        return f9lambda3;
    }

    /* JADX INFO: renamed from: getLambda-4$app_release, reason: not valid java name */
    public final Function2<Composer, Integer, Unit> m40getLambda4$app_release() {
        return f10lambda4;
    }
}
